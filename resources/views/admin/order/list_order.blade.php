@extends('layouts.app_master_admin')

@section('content')
    <!-- Tiêu đề trang -->
    <section class="content-header">
        <h1>Quản lý đơn hàng</h1>
        <ol class="breadcrumb">
            <li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
            <li><a href="{{ route('xemdonhang') }}">Đơn hàng</a></li>
            <li class="active">List</li>
        </ol>
    </section>

    <!-- Nội dung chính -->
    <section class="content">
        <div class="box">
            <div class="box-header with-border">
                <div class="box-body">
                    <div class="col-md-12">
                        <table class="table table-bordered table-striped">
                            <thead>
                                <tr>
                                    <th style="width: 10px">#</th>
                                    <th>Tên</th>
                                    <th>Code đơn hàng</th>
                                    <th>Email</th>
                                    <th>Địa chỉ</th>
                                    <th>Phone</th>
                                    <th>Note</th>
                                    <th>Tổng tiền</th>
                                    <th>Ngày tạo</th>
                                    <th>Hành động</th>
                                </tr>
                            </thead>
                            <tbody>
                                @foreach($transaction as $tran)
                                    <tr>
                                        <td>{{ $tran->id }}</td>
                                        <td>{{ $tran->tst_name }}</td>
                                        <td>{{ $tran->tst_code }}</td>
                                        <td>{{ $tran->tst_email }}</td>
                                        <td>{{ $tran->tst_address }}</td>
                                        <td>{{ $tran->tst_phone }}</td>
                                        <td>{{ $tran->tst_note }}</td>
                                        <td>{{ number_format($tran->tst_total_money, 0, ',', '.') }}đ</td>
                                        <td>{{ $tran->created_at }}</td>
                                        <td>
                                            <a href="{{ route('chitietdonhang', [$tran->id]) }}" class="btn btn-xs btn-primary">
                                                <i class="fa fa-eye"></i> Xem đơn hàng
                                            </a>
                                            <a href="{{ route('xoadonhang', [$tran->id]) }}" class="btn btn-xs btn-danger js-delete-confirm">
                                                <i class="fa fa-trash"></i> Xóa
                                            </a>
                                        </td>
                                    </tr>
                                @endforeach
                            </tbody>
                        </table>
                    </div>
                </div>
                <!-- Phân trang -->
                <div class="box-footer text-center">
                    {!! $transaction->links() !!}
                </div>
            </div>
        </div>
    </section>
@stop
