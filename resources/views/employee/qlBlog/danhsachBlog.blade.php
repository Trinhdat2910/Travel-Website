@extends('employee.layout.index')

@section('contentNV')

<div class="card">
                <div class="card-body">
                  <div><h4 class="card-title" style=" float: left; line-height: 40px" >Danh sách Blog Đang Ẩn </h4>
                    
                  </div>
                  <div class="table-responsive">
                    @if(session('thongbao'))
                      <div class= "alert alert-success">
                        {{session('thongbao')}}

                      </div>
                    @endif
                    <table class="table-striped" id="dsblog">
                      <thead  bgcolor="#308ee0" style="color: #fff; text-align: center;">
                        <tr>
                          <th>
                            ID
                          </th>
                          <th>
                            Tiêu đề
                          </th>
                          
                          <th>
                            Tóm Tắt
                          </th>
                                 
                          <th>
                            Người Tạo
                          </th>
                          <th >
                            Trạng Thái
                          </th>
                          <th >
                            Action
                          </th>
                        </tr>
                      </thead>
                      <tbody>
                        @foreach($blog as $b)
                          <tr>
                            <td class="font-weight-medium" width="20px;">
                              {{ $b -> MaBlog}}
                            </td>
                            <td width="200px;" >
                            {{ $b -> TieuDe}}
                             <img src="upload/blog/{{ $b -> HinhAnh}}" style="border-radius: 5px; width: 70px; height: 70px;">
                            </td>
                            
                            <td>
                             <div style="width: 400px;height: 150px; overflow-y: scroll ">
                             {{ $b -> TomTat}}
                             </div>
                            </td>
                            
                            
                            <td>
                              
                             <li>{{ $b -> user -> TenNV}}</li>
                             <li>{{ $b -> NgayPost}}</li>
                            </td>
                            <td>
                              
                            @if($b -> TrangThai == 0)
                            	<a class=" btn-warning" data-id="{{$b -> MaBlog}}"> Đang Ẩn</a>
                            @else
                            	<a class=" btn-success" style="color:#fff" data-id="{{$b -> MaBlog}}">Đang Hiển Thị</a>
                            @endif
                             
                            </td>
                            
                                                        
                            <td>
                            	<a class="editbtn btn btn-primary btn-fw"  style="color: white" href="employee/qlBlog/chitietBlog/{{$b -> MaBlog}}">Chi Tiết</a><br>
                              <a class="editbtn btn btn-dark btn-fw"  style="color: white" href="employee/qlBlog/suaBlog/{{$b -> MaBlog}}">
                          				Update</a><br>
                              <a class="deletebtn btn btn-danger btn-fw" data-id="{{$b -> MaBlog}}">                   	Delete</a>
                            </td>
                            
                          </tr>
                        
                        @endforeach
                      </tbody>
                    </table>
                  </div>
                </div>
              </div>

<div class="modal fade" id="XoaModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">Xóa Blog</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
         <form class="forms-sample"  method="POST" id="Xoaform">
                    <input type="hidden" name="_token" value="{{csrf_token()}}" />
                                                           
                    <h3 > Bạn chắc chắn muốn xóa bài viết này</h3>
                       
      </div>
     <div class="modal-footer">
        <button type="submit"  class="btn btn-danger mr-2">Xóa</button>
        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
        
      </div>
      </form>
      
    </div>
  </div>
</div>
<div class="modal fade" id="showModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">Hiển Thị</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
         <form class="forms-sample"  method="POST" id="showform">
                    <input type="hidden" name="_token" value="{{csrf_token()}}" />
                                                           
                    <h3 > Bạn chắc chắn muốn hiển thị bài viết này</h3>
                       
      </div>
     <div class="modal-footer">
        <button type="submit"  class="btn btn-success mr-2">Hiển Thị</button>
        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
        
      </div>
      </form>
      
    </div>
  </div>
</div>
<div class="modal fade" id="hideModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">Hiển Thị</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
         <form class="forms-sample"  method="POST" id="hideform">
                    <input type="hidden" name="_token" value="{{csrf_token()}}" />
                                                           
                    <h3 > Bạn chắc chắn muốn ẩn bài viết này</h3>
                       
      </div>
     <div class="modal-footer">
        <button type="submit"  class="btn btn-warning mr-2">Ẩn</button>
        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
        
      </div>
      </form>
      
    </div>
  </div>
</div>


@endsection

@section('scriptNV')

<script type="text/javascript">
  $(document).ready( function () {
    $('#dsblog').DataTable();
    $('#dsblog').click(function(){
    	$('.deletebtn').click(function(){

    		$('#XoaModal').modal('show');
            
            $('#Xoaform').attr('action','employee/qlBlog/XoaBlog/'+ $(this).data("id"));
    	});
    	$('.hienthibtn').click(function(){

    		$('#showModal').modal('show');
            
            $('#showform').attr('action','employee/qlBlog/showBlog/'+ $(this).data("id"));
    	});
    	$('.anbtn').click(function(){

    		$('#hideModal').modal('show');
            
            $('#hideform').attr('action','employee/qlBlog/hideBlog/'+ $(this).data("id"));
    	});


    });

} );

  </script>

 
@endsection