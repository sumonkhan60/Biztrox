@extends('master.admin.master')

@section('body')
<div class="row">
    <div class="col-12">
        <div class="card">
            <div class="card-body">
                <h4 class="card-title">Blog Detail Info</h4>
                <table class="table table-bordered" width="100%">
                    <tr>
                        <th>Blog Id</th>
                        <td>{{$blog->id}}</td>
                    </tr>
                    <tr>
                        <th>Blog Title</th>
                        <td>{{$blog->main_title}}</td>
                    </tr>
                    <tr>
                        <th>Blog Author</th>
                        <td>{{$blog->author_id}}</td>
                    </tr>
                    <tr>
                        <th>Blog Short Description</th>
                        <td>{{$blog->short_description}}</td>
                    </tr>
                    <tr>
                        <th>Blog Long Description</th>
                        <td>{{$blog->long_description}}</td>
                    </tr>
                    <tr>
                        <th>Blog Image</th>
                        <td><img src="{{asset($blog->image)}}" alt="" height="150" width="200"></td>
                    </tr>
                </table>
            </div>
        </div>
    </div> <!-- end col -->
</div> <!-- end row -->
@endsection