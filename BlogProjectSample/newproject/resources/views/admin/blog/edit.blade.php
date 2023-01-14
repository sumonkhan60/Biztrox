@extends('master.admin.master')

@section('body')

    <div class="d-sm-flex align-items-center justify-content-between mb-4">
        <h1 class="h3 mb-0 text-gray-800">Update Blog Form</h1>
    </div>
    <div class="row">
        <div class="col-md-12">
            <div class="card">
                <div class="card-body">
                    <form action="{{route('blog.update', ['id' => $blog->id])}}" method="POST" enctype="multipart/form-data">
                        @csrf
                        <div class="row mb-3">
                            <label for="" class="col-md-3">Category Name</label>
                            <div class="col-md-9">
                                <select name="category_id" class="form-control" id="" required>
                                    <option value="" disabled selected>-- Select Category Name --</option>
                                    @foreach ($categories as $category)
                                    <option value="{{$category->id}}" {{$blog->category_id == $category->id ? 'selected' : ''}}>{{$category->name}}</option>
                                    @endforeach
                                </select>
                            </div>
                        </div>
                        <div class="row mb-3">
                            <label for="" class="col-md-3">Blog Title</label>
                            <div class="col-md-9">
                                <input type="text" class="form-control" value="{{$blog->main_title}}" name="main_title"/>
                            </div>
                        </div>
                        <div class="row mb-3">
                            <label for="" class="col-md-3">Short Description</label>
                            <div class="col-md-9">
                                <textarea class="form-control" name="short_description">{{$blog->short_description}}</textarea>
                            </div>
                        </div>
                        <div class="row mb-3">
                            <label for="" class="col-md-3">Long Description</label>
                            <div class="col-md-9">
                                <textarea class="form-control" name="long_description">{{$blog->long_description}}</textarea>
                            </div>
                        </div>
                        <div class="row mb-3">
                            <label for="" class="col-md-3">Image</label>
                            <div class="col-md-9">
                                <input type="file" class="form-control-file" name="image"/>
                                <img src="{{asset($blog->image)}}" alt="" height="100" width="150" />
                            </div>
                        </div>
                        <div class="row mb-3">
                            <label for="" class="col-md-3"></label>
                            <div class="col-md-9">
                                <input type="submit" class="btn btn-success" value="Update Blog Info"/>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>

@endsection