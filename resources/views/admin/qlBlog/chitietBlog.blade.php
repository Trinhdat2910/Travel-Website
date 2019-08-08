@extends('admin.layout.index')

@section('content')

<div class="card">
                <div class="card-body">
                  <div><h4 class="card-title" style=" float: left; line-height: 40px" >{{ $blog -> TieuDe}}</h4>

                    
                  </div>
                  
                  <p style="width: 200px; ">By : {{ $blog -> user -> TenNV}} - {{ $blog -> NgayPost}}</p>
                  <div class="table-responsive">
                    <div>
                    	{{ $blog -> TomTat}}
                    </div>
                    <div style="text-align: center;">
                    	<img src="upload/blog/{{ $blog -> HinhAnh}}" style="border-radius: 5px; width: 700px; height: 500px;">
                   	</div>
                   	<div>
                   		<?php echo $blog -> NoiDung ?>
                   	</div>
                   
                  </div>
                </div>
              </div>




@endsection

@section('script')



 
@endsection