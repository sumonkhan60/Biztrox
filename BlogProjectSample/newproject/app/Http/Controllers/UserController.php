<?php

namespace App\Http\Controllers;

use App\Models\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Crypt;

class UserController extends Controller
{
    private $user;
    private $users;
    private $en_password;

    public function index()
    {
        return view('admin.user.add');
    }

    public function create(Request $request)
    {
        User::newUser($request);
        return redirect()->back()->with('message', 'User Created Successfully');
    }

    public function manage()
    {
        $this->users = User::orderBy('id', 'desc')->get();
        // $en_password = Crypt::encryptString($this->users->password);
        // $this->users->password = $en_password;
        return view('admin.user.manage', ['users' => $this->users]);
    }

    public function edit($id)
    {
        $this->user = User::find($id);
        return view('admin.user.edit', ['user' => $this->user]);
    }

    public function update(Request $request, $id)
    {
        User::updateUser($request, $id);
        return redirect('/manage-user')->with('message', 'User Info Updated Successfully');
    }

    public function delete($id)
    {
        $this->user = User::find($id);
        $this->user->delete();
        return redirect('/manage-user')->with('message', 'User Info Deleted Successfully');
    }

}
