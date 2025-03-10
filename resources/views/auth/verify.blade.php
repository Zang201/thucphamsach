@extends('layouts.app')

@section('content')
<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-8">
            <div class="card">
                <div class="card-header">{{ __('Xác nhận địa chỉ email của bạn') }}</div>

                <div class="card-body">
                    @if (session('resent'))
                        <div class="alert alert-success" role="alert">
                            {{ __('Một liên kết xác minh mới đã được gửi đến email của bạn.') }}
                        </div>
                    @endif

                    <p>{{ __('Trước khi tiếp tục, vui lòng kiểm tra email của bạn để tìm liên kết xác minh.') }}</p>
                    <p>{{ __('Nếu bạn không nhận được email') }},</p>

                    <form class="d-inline" method="POST" action="{{ route('verification.resend') }}">
                        @csrf
                        <button type="submit" class="btn btn-link p-0 m-0 align-baseline">
                            {{ __('nhấn vào đây để yêu cầu gửi lại') }}
                        </button>.
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>
@endsection
