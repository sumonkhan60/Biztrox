@extends('master.admin.master')

@section('body')

    <div class="d-sm-flex align-items-center justify-content-between mb-4">
        <h4 class="h3 mb-0 text-gray-800">All Blog Info</h4>
    </div>
    <div class="row">
        <div class="col-12">
            <div class="card">
                    <div class="card-body">
                        <p class="text-center text-success">{{Session::get('message')}}</p>
                        <div class="table-responsive">
                            <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                                <thead>
                                    <tr>
                                        <th>#</th>
                                        <th>Category Name</th>
                                        <th>Blog Title</th>
                                        <th>Author Name</th>
                                        <th>Feature Image</th>
                                        <th>Status</th>
                                        <th>Action</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    @foreach ($blogs as $blog)
                                    <tr>
                                        <td>{{$loop->iteration}}</td>
                                        <td>{{$blog->category->name}}</td>
                                        <td>{{$blog->main_title}}</td>
                                        {{-- {{\App\Models\User::find($blog->author_id)}} --}}
                                        <td>{{$blog->author_id}}</td>
                                        <td> <img src="{{asset($blog->image)}}" alt="" height="50" width="80"></td>
                                        <td>{{$blog->status == 1 ? 'Published' : 'Unpublished'}}</td>
                                        <td>
                                            <a href="{{route('blog.detail', ['id' => $blog->id])}}" class="btn btn-primary btn-sm" title="View Blog Detail">
                                                <i class="fa fa-book-open"></i>
                                            </a>
                                            <a href="{{route('blog.status', ['id' => $blog->id])}}" class="btn btn-info btn-sm" title="Published Blog">
                                                <i class="fa fa-arrow-up"></i>
                                            </a>
                                            <a href="{{route('blog.edit', ['id' => $blog->id])}}" class="btn btn-success btn-sm" title="Edit Blog">
                                                <i class="fa fa-edit"></i>
                                            </a>
                                            <a href="{{route('blog.delete', ['id' => $blog->id])}}" class="btn btn-danger btn-sm" title="Delete Blog">
                                                <i class="fa fa-trash"></i>
                                            </a>
                                        </td>
                                    </tr>
                                    @endforeach
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

@endsection