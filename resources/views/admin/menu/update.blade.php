@extends('layouts.app_master_admin')

@section('content')
    <!-- Tiêu đề trang -->
    <section class="content-header">
        <h1>Cập nhật menu</h1>
        <ol class="breadcrumb">
            <li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
            <li><a href="{{ route('admin.menu.index') }}">Menu</a></li>
            <li class="active">Update</li>
        </ol>
    </section>

    <!-- Nội dung chính -->
    <section class="content">
        <div class="box">
            <div class="box-header with-border">
                <div class="box-body">
                    <!-- Form cập nhật menu -->
                    <form role="form" action="" method="POST">
                        @csrf <!-- Token bảo vệ chống CSRF -->
                        
                        <div class="row">
                            <div class="col-sm-8">
                                <div class="form-group {{ $errors->has('mn_name') ? 'has-error' : '' }}">
                                    <label for="mn_name">Tên <span class="text-danger">(*)</span></label>
                                    <input type="text" class="form-control" value="{{ $menu->mn_name }}" name="mn_name" placeholder="Nhập tên menu...">
                                    @if ($errors->has('mn_name'))
                                        <span class="text-danger">{{ $errors->first('mn_name') }}</span>
                                    @endif
                                </div>
                            </div>
                            <div class="col-sm-4"></div>
                        </div>
                        
                        <!-- Nút thao tác -->
                        <div class="box-footer text-center">
                            <a href="{{ route('admin.menu.index') }}" class="btn btn-danger">
                                Quay lại <i class="fa fa-undo"></i>
                            </a>
                            <button type="submit" class="btn btn-success">
                                Cập nhật <i class="fa fa-save"></i>
                            </button>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </section>
@stop
