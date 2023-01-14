@extends('master.admin.master')

@section('body')

    <div class="d-sm-flex align-items-center justify-content-between mb-4">
        <h1 class="h3 mb-0 text-gray-800">Add User Form</h1>
    </div>
    <div class="row">
        <div class="col-md-12">
            <div class="card">
                <p class="text-center text-success">{{Session::get('message')}}</p>
                <div class="card-header text-center">Please Fill All Field</div>
                <div class="card-body">
                    <form action="{{route('user.new')}}" method="POST">
                        @csrf
                        <div class="row mb-3">
                            <label for="" class="col-md-3">User Name</label>
                            <div class="col-md-9">
                                <input type="text" class="form-control" name="name">
                            </div>
                        </div>
                        <div class="row mb-3">
                            <label for="" class="col-md-3">Email</label>
                            <div class="col-md-9">
                                <input type="email" class="form-control" name="email">
                            </div>
                        </div>
                        <div class="row mb-3">
                            <label for="" class="col-md-3">Password</label>
                            <div class="col-md-9">
                                <input type="password" class="form-control" name="password">
                            </div>
                        </div>
                        <div class="row mb-3">
                            <label for="" class="col-md-3"></label>
                            <div class="col-md-9">
                                <input type="submit" class="btn btn-success" value="Create New User"/>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>

@endsection