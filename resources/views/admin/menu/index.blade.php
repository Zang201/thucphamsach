@extends('layouts.app_master_admin')

@section('content')
    <!-- Tiêu đề trang -->
    <section class="content-header">
        <h1>Quản lý menu</h1>
        <ol class="breadcrumb">
            <li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
            <li><a href="{{ route('admin.menu.index') }}">Menu</a></li>
            <li class="active">List</li>
        </ol>
    </section>

    <!-- Nội dung chính -->
    <section class="content">
        <div class="box">
            <div class="box-header with-border">
                <div class="box-header">
                    <!-- Nút thêm mới menu -->
                    <h3 class="box-title">
                        <a href="{{ route('admin.menu.create') }}" class="btn btn-primary">
                            Thêm mới <i class="fa fa-plus"></i>
                        </a>
                    </h3>
                </div>
                <div class="box-body">
                    <div class="col-md-12">
                        <table class="table">
                            <thead>
                                <tr>
                                    <th style="width: 10px">#</th>
                                    <th>Tên</th>
                                    <th>Ảnh</th>
                                    <th>Trạng thái</th>
                                    <th>Hot</th>
                                    <th>Ngày tạo</th>
                                    <th>Hành động</th>
                                </tr>
                            </thead>
                            <tbody>
                                @if ($menus)
                                    @foreach($menus as $menu)
                                        <tr>
                                            <td>{{ $menu->id }}</td>
                                            <td>{{ $menu->mn_name }}</td>
                                            <td>
                                                <img src="{{ pare_url_file($menu->mn_avatar) }}" style="width: 80px;height: 80px;">
                                            </td>
                                            <td>
                                                <a href="{{ route('admin.menu.active', $menu->id) }}" 
                                                   class="label {{ $menu->mn_status == 1 ? 'label-info' : 'label-default' }}">
                                                    {{ $menu->mn_status == 1 ? 'Show' : 'Hide' }}
                                                </a>
                                            </td>
                                            <td>
                                                <a href="{{ route('admin.menu.hot', $menu->id) }}" 
                                                   class="label {{ $menu->mn_hot == 1 ? 'label-info' : 'label-default' }}">
                                                    {{ $menu->mn_hot == 1 ? 'Hot' : 'None' }}
                                                </a>
                                            </td>
                                            <td>{{ $menu->created_at }}</td>
                                            <td>
                                                <a href="{{ route('admin.menu.update', $menu->id) }}" class="btn btn-xs btn-primary">
                                                    <i class="fa fa-pencil"></i> Edit
                                                </a>
                                                <a href="{{ route('admin.menu.delete', $menu->id) }}" 
                                                   class="btn btn-xs btn-danger js-delete-confirm">
                                                    <i class="fa fa-trash"></i> Delete
                                                </a>
                                            </td>
                                        </tr>
                                    @endforeach
                                @endif
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </section>
@stop
