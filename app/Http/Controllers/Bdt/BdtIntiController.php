<?php

namespace App\Http\Controllers\Bdt;

use Illuminate\Http\Request;
use TCG\Voyager\Facades\Voyager;
use TCG\Voyager\Http\Controllers\VoyagerBaseController;

class BdtIntiController extends VoyagerBaseController
{
    /**
     * Get BREAD relations data.
     *
     * @param Request $request
     *
     * @return mixed
     */
    public function relation(Request $request)
    {
        $slug = $this->getSlug($request);
        $page = $request->input('page');
        $on_page = 50;
        $search = $request->input('search', false);
        $dataType = Voyager::model('DataType')->where('slug', '=', $slug)->first();

        $rows = $request->input('method', 'add') == 'add' ? $dataType->addRows : $dataType->editRows;
        foreach ($rows as $key => $row) {
            if ($row->field === $request->input('type')) {
                $options = $row->details;
                $skip = $on_page * ($page - 1);

                // If search query, use LIKE to filter results depending on field label
                if ($search) {

                    // $total_count = app($options->model)
                    //     ->where('kode', 'LIKE', '%'.$search.'%')
                    //     ->orWhere('nama', 'LIKE', '%'.$search.'%')
                    //     ->count();
                    // $relationshipOptions = app($options->model)->take($on_page)->skip($skip)
                    //     ->where('kode', 'LIKE', '%'.$search.'%')
                    //     ->orWhere('nama', 'LIKE', '%'.$search.'%')
                    //     ->get();

                    $details_search = $this->searchRelation($rows, $options->column);

                    if(isset($details_search->details->search)){
                        $search_fields = $details_search->details->search;
                        
                        $total_count = app($options->model);
                        $relationshipOptions = app($options->model)->take($on_page)->skip($skip);

                        foreach ($search_fields as $key_field => $search_field) {
                            $total_count = $total_count->orWhere($search_field, 'LIKE', '%'.$search.'%');
                            $relationshipOptions = $relationshipOptions->orWhere($search_field, 'LIKE', '%'.$search.'%');
                        }

                        $total_count = $total_count->count();
                        $relationshipOptions = $relationshipOptions->get();

                    }else{
                        $total_count = app($options->model)->where($options->label, 'LIKE', '%'.$search.'%')->count();
                        $relationshipOptions = app($options->model)->take($on_page)->skip($skip)
                            ->where($options->label, 'LIKE', '%'.$search.'%')
                            ->get();
                    }

                } else {
                    $total_count = app($options->model)->count();
                    $relationshipOptions = app($options->model)->take($on_page)->skip($skip)->get();
                }

                $results = [];
                foreach ($relationshipOptions as $relationshipOption) {
                    $results[] = [
                        'id'   => $relationshipOption->{$options->key},
                        'text' => $relationshipOption->{$options->label},
                    ];
                }

                return response()->json([
                    'results'    => $results,
                    'pagination' => [
                        'more' => ($total_count > ($skip + $on_page)),
                    ],
                ]);
            }
        }

        // No result found, return empty array
        return response()->json([], 404);
    }

    private function searchRelation($array, $field)
    {
        $item = null;
        foreach($array as $struct) {
            if ($field == $struct->field) {
                $item = $struct;
                break;
            }
        }
        return $item;
    }
}
