<?php //echo "<pre>";
//var_dump($_SESSION);
//echo "string";
// ?>
<div id="loginModal" class="modal fade" role="dialog">  
  <div class="modal-dialog">  
   <!-- Modal content-->  
    <div class="modal-content">
      <div class="modal-header">  
        <button type="button" class="close" data-dismiss="modal">&times;</button>  
        <h4 class="modal-title">Login</h4>  
      </div>  
           
      <div class="modal-body">
        <form action="" method="POST">
  
          <input type="text" name="name" id="name" class="form-control" placeholder="Enter Your Name" value="<?php if(!empty($data['name'])): echo $data['name']; endif;?>">
          <div class="error">
            <?php if(!empty($_SESSION['name_error'])): ?>
            <?php echo $_SESSION['name_error']; ?>
            <?php endif; ?>
          </div>

          <input type="password" name="password" id="password" class="form-control" placeholder="Enter Password..." value="<?php if(!empty($data['password'])): echo $data['password']; endif;?>">
          <div class="error">
            <?php if(!empty($_SESSION['password_error'])): ?>
            <?php echo $_SESSION['password_error']; ?>
            <?php endif; ?>
          </div>
          <input type="submit" name="login" id="#login_button" class="btn btn-submit" value="Login">
        </form> 
        </div>  <!-- modal-body--> 
      </div>  
    </div>  
 </div>  

 <div id="registerModal" class="modal fade" role="dialog">  
  <div class="modal-dialog">  
   <!-- Modal content-->  
    <div class="modal-content">
      <?php 
      if(isset($_SESSION['account_created'])):?>
      <div class="success">
          <?php echo $_SESSION['account_created']; ?>
      </div>
      <?php endif; ?>
      <?php unset($_SESSION['account_created']); ?>
      <div class="modal-header">  
        <button type="button" class="close" data-dismiss="modal">&times;</button>  
        <h4 class="modal-title">Register</h4>  
      </div>  
           
      <div class="modal-body">
        <form action="" method="POST">

        <input type="text" name="name" class="form-control" placeholder="Enter Name..." value="<?php if(!empty($data['name'])): echo $data['name']; endif;?>">
      <div class="error">
        <?php if(!empty($_SESSION['name_error'])): ?>
          <?php echo $_SESSION['name_error']; ?>
        <?php endif; ?>
      </div>


      <input type="email" name="email" class="form-control" placeholder="Enter Email.." value="<?php if(!empty($data['email'])): echo $data['email']; endif; ?>">
      <div class="error">
        <?php if(!empty($_SESSION['email_error'])): ?>
          <?php echo $_SESSION['email_error']; ?>
        <?php endif; ?>
      </div>
   

      <input type="password" name="password" class="form-control" placeholder="Create Password..." value="<?php if(!empty($data['password'])): echo $data['password']; endif; ?>">
      <div class="error">
        <?php if(!empty($_SESSION['password_error'])): ?>
          <?php echo $_SESSION['password_error']; ?>
        <?php endif; ?>
      </div>
    

      <input type="password" name="confirm" class="form-control" placeholder="Confirm Password..." value="<?php if(!empty($data['confirm_password'])): echo $data['confirm_password']; endif; ?>">
      <div class="error">
        <?php if(!empty($_SESSION['confirm_error'])): ?>
          <?php echo $_SESSION['confirm_error']; ?>
        <?php endif; ?>
      </div>
          <input type="submit" name="signup" class="btn btn-submit" value="Create Account">
        </form> 
        </div>  <!-- modal-body--> 
      </div>  
    </div>  
 </div> 