$(document).ready(function(){

    $('.btn-hide-show').click(function(){
        let typeInputsaatIni = $('.input-password').attr('type');

        console.log(typeInputsaatIni);

        if(typeInputsaatIni == "password"){
            $('.input-password').attr('type', 'text');
            $(this).removeClass('fa-eye-slash');
            $(this).addClass('fa-eye');
            $(this).attr('title', 'Hide Password');

        }
        else if(typeInputsaatIni == "text"){
            $('.input-password').attr('type', 'password');
            $(this).removeClass('fa-eye');
            $(this).addClass('fa-eye-slash');
            $(this).attr('title', 'Show Password');
        }
    });

});