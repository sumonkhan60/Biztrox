@extends('master.front-end.master')

@section('body')
    <section class="page-title overlay" style="background-image: url({{asset('/frontend-assets')}}/images/background/page-title.jpg);">
    <div class="container">
        <div class="row">
            <div class="col-12 text-center">
                <h2 class="text-white font-weight-bold">Blog Single</h2>
                <ol class="breadcrumb">
                    <li>
                        <a href="index-2.html">Home</a>
                    </li>
                    <li>Blog Single</li>
                </ol>
            </div>
        </div>
    </div>
</section>

<!-- blog single -->
<section>
  <div class="container">
    <div class="row">
      <div class="col-lg-8 py-100">
        <div class="border rounded bg-white">
          <img class="img-fluid w-100 rounded-top" src="{{asset($blog->image)}}" alt="blog-image">
          <div class="p-4">
            <h3>{{$blog->main_title}}</h3>
            <ul class="list-inline d-block pb-4 border-bottom mb-3">
              <li class="list-inline-item text-color">Posted By Admin</li>
              <li class="list-inline-item text-color">On 25 November</li>
              <li class="list-inline-item text-color">Tag: Advice, Fitness</li>
            </ul>
            <p>{{$blog->short_description}}</p>
            <div class="bg-gray p-5 rounded mb-60">
              <p class="text-dark font-primary mb-30">{{$blog->long_description}}</p>
            </div>
          </div>
        </div>
        <div class="py-4 border-bottom mb-100">
          <div class="row">
            <div class="col-lg-5 mb-4 mb-lg-0">
              <!-- share-icon -->
              <div class="d-flex">
                <span class="font-weight-light mt-2 mr-3">Share:</span>
                <ul class="list-inline d-inline-block">
                  <li class="list-inline-item">
                    <a class="share-icon bg-facebook" href="#">
                      <i class="ti-facebook"></i>
                    </a>
                  </li>
                  <li class="list-inline-item">
                    <a class="share-icon bg-twitter" href="#">
                      <i class="ti-twitter-alt"></i>
                    </a>
                  </li>
                  <li class="list-inline-item">
                    <a class="share-icon bg-linkedin" href="#">
                      <i class="ti-linkedin"></i>
                    </a>
                  </li>
                  <li class="list-inline-item">
                    <a class="share-icon bg-google" href="#">
                      <i class="ti-google"></i>
                    </a>
                  </li>
                </ul>
              </div>
            </div>
            <div class="col-lg-7">
              <!-- tags -->
              <div class="d-flex">
                <span class="font-weight-light mt-2 mr-3">Tags:</span>
                <ul class="list-inline tag-list">
                  <li class="list-inline-item">
                    <a href="#">Business</a>
                  </li>
                  <li class="list-inline-item">
                    <a href="#">Marketing</a>
                  </li>
                  <li class="list-inline-item">
                    <a href="#">Finance</a>
                  </li>
                </ul>
              </div>
            </div>
          </div>
        </div>
        <!-- comments -->
        <div>
          <h4 class="mb-20">Comments (6)</h4>
          <!-- comment item -->
          <div class="d-flex mb-4">
            <div class="mr-3">
              <img class="img-fluid rounded w-100" src="{{asset('/frontend-assets')}}/images/blog/comment-1.jpg" alt="user-image">
            </div>
            <div class="border rounded py-3 px-4">
              <div class="border-bottom mb-10">
                <h5>Johnathan</h5>
                <h6 class="font-weight-light">Few Hours Ago</h6>
                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore
                  et dolore magna aliqua.</p>
              </div>
              <div class="d-flex justify-content-between">
                <div>
                  <a class="d-inline-block text-dark mr-2" href="#">
                    <i class="mr-1 ti-thumb-up"></i>62</a>
                  <a class="d-inline-block text-dark mr-2" href="#">Reply</a>
                </div>
                <!-- ratings -->
                <div>
                  <span class="text-color mr-2">Rated</span>
                  <ul class="list-inline d-inline-block">
                    <li class="list-inline-item">
                      <a href="#">
                        <i class="ti-star golden"></i>
                      </a>
                    </li>
                    <li class="list-inline-item">
                      <a href="#">
                        <i class="ti-star golden"></i>
                      </a>
                    </li>
                    <li class="list-inline-item">
                      <a href="#">
                        <i class="ti-star golden"></i>
                      </a>
                    </li>
                    <li class="list-inline-item">
                      <a href="#">
                        <i class="ti-star golden"></i>
                      </a>
                    </li>
                    <li class="list-inline-item">
                      <a href="#">
                        <i class="ti-star text-color"></i>
                      </a>
                    </li>
                  </ul>
                </div>
              </div>
            </div>
          </div>
          <!-- comment item -->
          <div class="d-flex mb-4">
            <div class="mr-3">
              <img class="img-fluid rounded w-100" src="{{asset('/frontend-assets')}}/images/blog/comment-2.jpg" alt="user-image">
            </div>
            <div class="border rounded py-3 px-4">
              <div class="border-bottom mb-10">
                <h5>Mikymouse</h5>
                <h6 class="font-weight-light">Few Hours Ago</h6>
                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore
                  et dolore magna aliqua.</p>
              </div>
              <div class="d-flex justify-content-between">
                <div>
                  <a class="d-inline-block text-dark mr-2" href="#">
                    <i class="mr-1 ti-thumb-up"></i>62</a>
                  <a class="d-inline-block text-dark mr-2" href="#">Reply</a>
                </div>
                <!-- ratings -->
                <div>
                  <span class="text-color mr-2">Rated</span>
                  <ul class="list-inline d-inline-block">
                    <li class="list-inline-item">
                      <a href="#">
                        <i class="ti-star golden"></i>
                      </a>
                    </li>
                    <li class="list-inline-item">
                      <a href="#">
                        <i class="ti-star golden"></i>
                      </a>
                    </li>
                    <li class="list-inline-item">
                      <a href="#">
                        <i class="ti-star golden"></i>
                      </a>
                    </li>
                    <li class="list-inline-item">
                      <a href="#">
                        <i class="ti-star golden"></i>
                      </a>
                    </li>
                    <li class="list-inline-item">
                      <a href="#">
                        <i class="ti-star text-color"></i>
                      </a>
                    </li>
                  </ul>
                </div>
              </div>
            </div>
          </div>
          <div class="mb-50 ml-65">
            <a class="text-color text-underline" href="#">View All Comments</a>
          </div>
          <!-- comment form -->
          <div>
            <h4>Add your comment:</h4>
            <p class="mb-30">Your email address will not be published. Required fields are marked *</p>
            <form action="#" class="row">
              <div class="col-12">
                <textarea name="comment" id="comment" class="form-control mb-30 p-2" placeholder="Your comment here"
                  style="height: 180px;"></textarea>
              </div>
              <div class="col-lg-6">
                <input type="text" class="form-control mb-30" id="user-name" name="name" placeholder="Your name here">
              </div>
              <div class="col-lg-6">
                <input type="email" id="user-email" name="email" class="form-control mb-30"
                  placeholder="Your email address here">
              </div>
              <div class="col-12">
                <button class="btn btn-sm btn-primary" type="submit" value="send">Submit</button>
              </div>
            </form>
          </div>
        </div>
      </div>
    </div>
  </div>
</section>
<!-- /blog-single -->
@endsection