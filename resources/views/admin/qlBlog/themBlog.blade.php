@extends('admin.layout.index')

@section('content')
<div class="card">
                <div class="card-body">
                  <h4 class="card-title">Tạo Blog Mới</h4>
                  <p class="card-description">
                    
                  </p>
                  @if(count($errors) > 0 )
                  		<div class= "alert alert-danger" >
                  			@foreach($errors -> all() as $err)
                  				{{ $err }}<br>


                  			@endforeach

                  		</div>
                  @endif

                  @if(session('thongbao'))
                  		<div class= "alert alert-success" >
                  			{{session('thongbao')}}

                  		</div>
                  @endif
                  <form class="forms-sample" action="admin/qlBlog/themBlog" method="POST" enctype="multipart/form-data">
                  	<input type="hidden" name="_token" value="{{csrf_token()}}" />
                    
                    <div class="form-group">
                      <label for="exampleInputName1">Tiêu Đề</label>
                      <input type="text" class="form-control"  name="TieuDe"  required="">
                    </div>
                    <div class="form-group">
                      <label for="exampleInputCity1" >Tóm Tắt</label>
                      <textarea class="form-control"  name="TomTat"  required></textarea>
                    </div>
                    <div class="form-group">
                      <label for="exampleInputCity5" >Hình Ảnh</label>
                      <input type="file" class="form-control"  name="HinhAnh"  >
                    </div>

                                     
                    <div class="form-group">
                      <label for="exampleInputCity6" >Nội Dung</label>
                      <textarea class="form-control ckeditor"  name="NoiDung"  id="editor1" required></textarea>
                    </div>
                    <input type="text" class="form-control"  name="MaNV" value="{{Auth::id()}}" style="display: none" >
                    
                    <button type="submit" class="thembtn btn btn-success mr-2">Post</button>
                    <button type="Reset" class="btn btn-light">Reset</button>
                  </form>
                </div>
              </div>
@endsection
@section('script')
  <script src="admin_asset/js/js/jquery.min.js"></script>
  <script src="ckeditor/ckeditor.js"></script>

<script type="text/javascript">  
   CKEDITOR.replace( 'editor1' );  
</script>


 
@endsection