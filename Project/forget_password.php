<?php 
session_start();
if(!empty($_SESSION['after_sent'])){
  header('Location:login.php');
  exit();
}
?>
<html lang="en">
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, shrink-to-fit=no, initial-scale=1">
  <meta name="description" content="">
  <meta name="author" content="">
  <link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet" >
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <script src="http://ajax.aspnetcdn.com/ajax/jquery.validate/1.11.1/jquery.validate.min.js"></script>

  <title>PULSER 2.0</title>

  <!-- Bootstrap Core CSS -->
  <link href="css/bootstrap.min.css" rel="stylesheet">
  <link href="css/bootstrap.css" rel="stylesheet">
  <link href="font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
  <!-- Custom CSS -->
  <link href="custom_css/forget_password_css.css" rel="stylesheet">

</head>

<body>

  <nav class="navbar navbar-fixed-top navbar-default topnav_css" role="navigation">
    <div class="container-fluid">
      <div class="navbar-header">
        <button id="theButton" type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
          <span class="icon-bar"></span>
          <span class="icon-bar"></span>
          <span class="icon-bar"></span>                        
        </button>
        <a class="navbar-brand" href="index.php"><span id="navbar_brand_span" class="fa fa-home"></span></a>
        <label class="navbar-brand">PULSER 2.0</label>
      </div>
      <div class="collapse navbar-collapse" id="myNavbar">
        <ul class="nav navbar-nav navbar-left">
          <li><a href="#"><label>產品</label></a></li>
          <li><a href="#"><label>應用程式</label></a></li>
          <li><a href="#"><label>說明</label></a></li>
          <li><a href="#"><label>服務</label></a></li>
          <!--<li><a href="index.php"><label class="fa fa-home"></label></a></li>-->
        </ul>
        <ul class="nav navbar-nav navbar-right">
          <li><a href="login.php"><label>登入</label></a></li>
          <li><a href="register.php"><label>註冊</label></a></li>
        </ul>
      </div>
    </div>
  </nav>

  <div id="content_padding"></div>

  <div class="content_size">
    <div class="container-fluid">
      <form id="myForm" method="post" action="sent_mail.php">
        <div class="form_inside_padding0"></div>
        <div class="form-group">
          <div class="text-left"><label class="title">重新設置密碼</label></div>
          <div class="form_inside_padding1"></div>
          <label class="formlabel">請輸入你的信箱</label>
          <div class="form_inside_padding"></div>
          <input id="mail_address" type="text" class="form-control input-lg" name="type_mail_address" autocomplete="off" spellcheck="false">
          <span class='emsg_mail'></span>
          <div class="form_inside_padding1"></div>

          <div class="text-right">
            <input type="hidden" name="refer" value=" <?php echo (isset($_GET['refer'])) ?$_GET['refer']:'forget_password.php';?>">
            <button id="submitBtn" type="submit" class="btn btn-primary" disabled="true">確定</button>
          </div>

        </div>
        <div class="form_inside_padding2"></div>
      </form>

    </div>
  </div>

</body>
<script>
</script>
<script type="text/javascript" >
  $('#mail_address').on('input', function(){
    var $validation = /^[a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9-]+(?:\.[a-zA-Z0-9-]+)*$/;
    if($(this).val().match($validation)){
      $('.emsg_mail').html(' ');
      $.post('forget_password_find_mail.php',{mail:$(this).val()},function(data){
        if(data == '1'){
          $('.emsg_mail').html(' ');
          $('#submitBtn').prop('disabled', false);
        }
        else if(data == '0'){
          $('.emsg_mail').html('找不到此信箱');
          $('#submitBtn').prop('disabled', true);
        }
        else{
          $('.emsg_mail').html('不知道哪裡出錯了，不好意思');
          $('#submitBtn').prop('disabled', true);
        }
      });
    }
    else{
      $('.emsg_mail').html('請輸入正確的信箱格式');
      $('#submitBtn').prop('disabled', true);
    }
  });
</script>

</html>
