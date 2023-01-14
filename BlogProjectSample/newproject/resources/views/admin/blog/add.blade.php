@extends('master.admin.master')

@section('body')

    <div class="d-sm-flex align-items-center justify-content-between mb-4">
        <h1 class="h3 mb-0 text-gray-800">Add Blog Form</h1>
    </div>
    <div class="row">
        <div class="col-md-12">
            <div class="card">
                <p class="text-center text-success">{{Session::get('message')}}</p>
                <div class="card-body">
                    <form action="{{route('blog.new')}}" method="POST" enctype="multipart/form-data">
                        @csrf
                        <div class="row mb-3">
                            <label for="" class="col-md-3">Category Name</label>
                            <div class="col-md-9">
                                <select name="category_id" class="form-control" id="" required>
                                    <option value="" disabled selected>-- Select Category Name --</option>
                                    @foreach ($categories as $category)
                                    <option value="{{$category->id}}">{{$category->name}}</option>
                                    @endforeach
                                </select>
                            </div>
                        </div>
                        <div class="row mb-3">
                            <label for="" class="col-md-3">Blog Title</label>
                            <div class="col-md-9">
                                <input type="text" class="form-control" name="main_title"/>
                            </div>
                        </div>
                        <div class="row mb-3">
                            <label for="" class="col-md-3">Short Description</label>
                            <div class="col-md-9">
                                <textarea class="form-control" name="short_description"></textarea>
                            </div>
                        </div>
                        <div class="row mb-3">
                            <label for="" class="col-md-3">Long Description</label>
                            <div class="col-md-9">
                                <textarea class="form-control" name="long_description"></textarea>
                            </div>
                        </div>
                        <div class="row mb-3">
                            <label for="" class="col-md-3">Image</label>
                            <div class="col-md-9">
                                <input type="file" class="form-control-file" name="image"/>
                            </div>
                        </div>
                        <div class="row mb-3">
                            <label for="" class="col-md-3"></label>
                            <div class="col-md-9">
                                <input type="submit" class="btn btn-success" value="Create New Blog"/>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>

@endsection