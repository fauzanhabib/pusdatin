@extends('voyager::bread.edit-add')
@section('submit-buttons')
    @parent
    <button type="submit" class="btn btn-primary save">Save And Publish</button>
@endsection

@section('content')
    @parent

    <div class="page-content browse container-fluid">
        <button type="submit" class="btn btn-primary save">Additonal</button>
    </div>
@endsection
