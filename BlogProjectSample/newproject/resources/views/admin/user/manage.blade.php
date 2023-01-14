@extends('master.admin.master')

@section('body')

    <div class="d-sm-flex align-items-center justify-content-between mb-4">
        <h1 class="h3 mb-0 text-gray-800">All User Info</h1>
    </div>
    <div class="row">
        <div class="col-md-12">
            <div class="card">
                    <div class="card-body">
                        <div class="table-responsive">
                            <p class="text-center text-success">{{Session::get('message')}}</p>
                            <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                                <thead>
                                    <tr>
                                        <th>#</th>
                                        <th>User Name</th>
                                        <th>Email</th>
                                        <th>Password</th>
                                        <th>Action</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    @foreach ($users as $user)
                                    <tr>
                                        <td>{{$loop->iteration}}</td>
                                        <td>{{$user->name}}</td>
                                        <td>{{$user->email}}</td>
                                        <td>{{$user->password}}</td>
                                        <td>
                                            <a href="{{route('user.edit', ['id' => $user->id])}}" class="btn btn-success btn-sm mb-3" title="Edit User">
                                                <i class="fa fa-edit"></i>
                                            </a>
                                            <a href="{{route('user.delete', ['id' => $user->id])}}" class="btn btn-danger btn-sm" title="Delete User">
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