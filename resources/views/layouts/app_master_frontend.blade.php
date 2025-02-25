<!DOCTYPE html>
<html lang="vi">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
        <META NAME="ROBOTS" CONTENT="NOINDEX, NOFOLLOW">
        <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=0">
        <title>{{ strtolower($title_page ?? "Đồ án tốt nghiệp")   }}</title>
        <meta name="csrf-token" content="{{ csrf_token() }}">
        <link rel="icon" sizes="32x32" type="image/png" href="{{ asset('images/organicfood.com_shortcut.gif') }}" />
        <!-- Latest compiled and minified CSS -->
            <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">

          

        @yield('css')

        {{-- Thông báo --}}
        @if(session('toastr'))
            <script>
                var TYPE_MESSAGE = "{{session('toastr.type')}}";
                var MESSAGE = "{{session('toastr.message')}}";
            </script>
        @endif
    </head>
    <body>
        @include('frontend.components.header')
        @yield('content')
        @include('frontend.components.footer')
        <script>
            var DEVICE = '{{  device_agent() }}'
        </script>
////////////
        </script>
        <script type="text/javascript">
            $('#keywords').keyup(function(){
              
                var query = $(this).val();

                  if(query != '')
                    {
                     

                     $.ajax({
                      url:"{{url('/autocomplete-ajax')}}",
                      method:"GET",
                      data:{query:query},
                      success:function(data){
                       $('#search_ajax').fadeIn();  
                        $('#search_ajax').html(data);
                      }
                     });

                    }else{

                        $('#search_ajax').fadeOut();  
                    }
            });

            $(document).on('click', '.li_search_ajax', function(){  
                $('#keywords').val($(this).text());  
                $('#search_ajax').fadeOut();  
            }); 
        </script>
    </body>
</html>
