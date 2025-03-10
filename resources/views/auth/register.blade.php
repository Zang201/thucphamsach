@extends('layouts.app_master_frontend')

@section('css')
    <style>
        /* Nhúng trực tiếp file CSS vào trong trang */
        <?php echo file_get_contents('css/auth.min.css'); ?>
    </style>
@stop

@section('content')
    <div class="container">
        <!-- Breadcrumb điều hướng -->
        <div class="breadcrumb">
            <ul>
                <li>
                    <a itemprop="url" href="/" title="Home">
                        <span itemprop="title">Trang chủ</span>
                    </a>
                </li>
                <li>
                    <a itemprop="url" href="#" title="Tài khoản">
                        <span itemprop="title">Account</span>
                    </a>
                </li>
                <li>
                    <a itemprop="url" href="#" title="Đăng ký">
                        <span itemprop="title">Đăng ký</span>
                    </a>
                </li>
            </ul>
        </div>
        
        <!-- Form đăng ký -->
        <div class="auth" style="background: white;">
            <form class="from_cart_register" action="" method="post" style="width: 500px; margin: 0 auto; padding: 30px 0;">
                @csrf <!-- Token CSRF bảo vệ form chống tấn công giả mạo -->
                
                <!-- Trường nhập Họ và Tên -->
                <div class="form-group">
                    <label for="name">Name <span class="cRed">(*)</span></label>
                    <input name="name" id="name" type="text" value="{{ old('name') }}" class="form-control" placeholder="Nguyen Van A">
                    @if ($errors->first('name'))
                        <span class="text-danger">{{ $errors->first('name') }}</span>
                    @endif
                </div>
                
                <!-- Trường nhập Email -->
                <div class="form-group">
                    <label for="email">Email <span class="cRed">(*)</span></label>
                    <input name="email" id="email" type="email" value="{{ old('email') }}" class="form-control" placeholder="nguyenvana@gmail.com">
                    @if ($errors->first('email'))
                        <span class="text-danger">{{ $errors->first('email') }}</span>
                    @endif
                </div>
                
                <!-- Trường nhập Mật khẩu -->
                <div class="form-group">
                    <label for="password">Password <span class="cRed">(*)</span></label>
                    <input name="password" id="password" type="password" placeholder="********" class="form-control">
                    @if ($errors->first('password'))
                        <span class="text-danger">{{ $errors->first('password') }}</span>
                    @endif
                </div>
                
                <!-- Trường nhập Số điện thoại -->
                <div class="form-group">
                    <label for="phone">Điện thoại <span class="cRed">(*)</span></label>
                    <input name="phone" id="phone" type="number" value="{{ old('phone') }}" placeholder="123456789" class="form-control">
                    @if ($errors->first('phone'))
                        <span class="text-danger">{{ $errors->first('phone') }}</span>
                    @endif
                </div>
                
                <!-- Các nút hành động -->
                <div class="form-group">
                    <button class="btn btn-purple btn-xs">Đăng ký</button>
                    <a href="{{ route('get.email_reset_password') }}">Quên mật khẩu</a>
                </div>
            </form>
        </div>
    </div>
@endsection

@section('script')
    <script type="text/javascript">
        // Nhúng trực tiếp file JavaScript vào trang
        <?php echo file_get_contents('js/home.js'); ?>
    </script>
@stop
