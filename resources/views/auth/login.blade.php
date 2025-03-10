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
                <li itemscope="">
                    <a itemprop="url" href="/" title="Home">
                        <span itemprop="title">Trang chủ</span>
                    </a>
                </li>
                <li itemscope="">
                    <a itemprop="url" href="#" title="Tài khoản">
                        <span itemprop="title">Tài khoản</span>
                    </a>
                </li>
                <li itemscope="">
                    <a itemprop="url" href="#" title="Đăng nhập">
                        <span itemprop="title">Đăng nhập</span>
                    </a>
                </li>
            </ul>
        </div>
        
        <!-- Form đăng nhập -->
        <div class="auth" style="background: white;">
            <form class="from_cart_register" action="" method="post" style="width: 500px; margin: 0 auto; padding: 30px 0;">
                @csrf <!-- Token CSRF bảo vệ form chống tấn công giả mạo -->
                
                <!-- Trường nhập Email -->
                <div class="form-group">
                    <label for="email">Email <span class="cRed">(*)</span></label>
                    <input name="email" id="email" type="email" class="form-control" placeholder="nguyenvana@gmail.com">
                    @if ($errors->first('email'))
                        <span class="text-danger">{{ $errors->first('email') }}</span>
                    @endif
                </div>
                
                <!-- Trường nhập Mật khẩu -->
                <div class="form-group">
                    <label for="password">Mật khẩu <span class="cRed">(*)</span></label>
                    <input name="password" id="password" type="password" class="form-control" placeholder="********">
                    @if ($errors->first('password'))
                        <span class="text-danger">{{ $errors->first('password') }}</span>
                    @endif
                </div>
                
                <!-- Các nút hành động -->
                <div class="form-group">
                    <button class="btn btn-purple btn-xs">Đăng nhập</button>
                    <a href="{{ route('get.email_reset_password') }}">Quên mật khẩu</a>
                    <a class="btn btn-danger btn-sm" href="{{ url('auth/google') }}">Đăng nhập Google</a>
                    <a class="btn btn-primary btn-sm" href="{{ url('auth/facebook') }}">Đăng nhập Facebook</a>
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
