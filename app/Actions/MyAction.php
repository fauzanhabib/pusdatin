<?php

namespace App\Actions;

use TCG\Voyager\Actions\AbstractAction;

class MyAction extends AbstractAction
{
    public function getTitle()
    {
        return 'My Action';
    }

    public function getIcon()
    {
        return 'voyager-eye';
    }

    public function getPolicy()
    {
        return 'read';
    }

    public function getAttributes()
    {
        return [
            'class' => 'btn btn-sm btn-primary pull-right',
        ];
    }

    public function getDefaultRoute()
    {
        return route('voyager.dashboard');
    }

    public function shouldActionDisplayOnDataType()
    {
        return $this->dataType->slug == 'foods';
    }
}
