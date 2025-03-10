@extends('layouts.app_master_admin')

@section('content')
    <!-- Tiêu đề trang -->
    <section class="content-header">
        <h1>Quản lý đơn hàng</h1>
        <ol class="breadcrumb">
            <li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
            <li><a href="{{ route('xemdonhang') }}">Đơn hàng</a></li>
            <li class="active">Chi tiết đơn hàng</li>
        </ol>
    </section>

    <!-- Nội dung chính -->
    <section class="content">
        <div class="box">
            <div class="box-header with-border">
                <div class="box-body">
                    <div class="col-md-12">
                        <table class="table table-bordered">
                            <thead>
                                <tr>
                                    <th>Tên sản phẩm</th>
                                    <th>Số lượng</th>
                                    <th>Giá tiền</th>
                                    <th>Thành tiền</th>
                                </tr>
                            </thead>
                            <tbody>
                                @php $total = 0; @endphp
                                @foreach($order as $or)
                                    @php
                                        $subtotal = $or->od_qty * $or->product->pro_price;
                                        $total += $subtotal;
                                    @endphp
                                    <tr>
                                        <td>{{ $or->product->pro_name }}</td>
                                        <td>{{ $or->od_qty }}</td>
                                        <td>{{ number_format($or->product->pro_price, 0, ',', '.') }}đ</td>
                                        <td>{{ number_format($subtotal, 0, ',', '.') }}đ</td>
                                    </tr>
                                @endforeach
                                <tr>
                                    <td colspan="3" class="text-right"><strong>Tổng tiền thanh toán:</strong></td>
                                    <td><strong>{{ number_format($total, 0, ',', '.') }}đ</strong></td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </section>
@stop
