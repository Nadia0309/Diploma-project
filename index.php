<?php
session_start();
?>
<?php include "init.php"; ?>
<?php if(isset($_SESSION['id'])): ?>
  <?php header("location:profile.php"); ?>
  <?php endif; ?>
<?php
$post= new Post();
$post->login();
$post->signup();

?>
 <?php if(isset($_SESSION['account_created'])): ?>
  <?php header("location:templates/profile"); ?>
  <?php endif; ?>

<?php include("includes/head.php")?>
<?php include("includes/index_content.php")?>
<?php include("includes/footer.php")?>

  </header>
  </body>
</html>
<?php include("includes/modal_form.php") ?>
  <script>  
 $(document).ready(function(){  
  $('#login_button').click(function(){  
    var email = $('#email').val();  
    var password = $('#password').val();  
    if(email != '' && password != '')  
    {  
      $.ajax({  
        url:"index.php",  
        method:"POST",  
        data: {email:email, password:password},  
        success:function(data)  
        {  
          //alert(data);  
          if(data == 'No')  
          {  
                alert("Wrong Data");  
          }  
          else  
          {  
                $('#loginModal').hide();  
                location.reload();  
          }  
        }  
      });  
    }  
    else  
    {  
      alert("Both Fields are required");  
    }  
  });  
 });  
 </script>   

