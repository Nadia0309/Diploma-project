<?php if(!isset($_SESSION['id'])): ?>

    <?php endif; ?>
    <?php include "../templates/head.php"; ?>
<?php
session_start();

$name=$_SESSION['name'];
$description=$_SESSION['description'];
$email=$_SESSION['email'];
$id= $_SESSION['id'];

?>
<nav class="navbar blue static-top">
    <div class="container navbar-pink">
        <a class="navbar-brand" href="#">MOVIES</a>
        <a href="../logout.php" id="logout" class="btn btn-white">Log out</a>
    </div>
</nav>
<div class="container">
    <div class="row m-y-2">
        <!-- edit form column -->
        <div class="col-md-2">
        </div>
        <div class="col-md-10 text-md-left">
            <h2>Edit Profile</h2>
        </div>

        <div class="col-lg-8">
             <form method="post" action="post.php" enctype="multipart/form-data" role="form">

                 <div class="form-group row">
                     <div class="col-lg-9" style="display:none;">
                         <input class="form-control" type="text" name="id"  value="<?=$id?>"  />
                     </div>
                 </div>
                <div class="form-group row">
                    <label class="col-lg-3 col-form-label form-control-label">Name</label>
                    <div class="col-lg-9">
                        <input class="form-control" type="text" name="name" value="<?=$name?>" />
                    </div>
                </div>
                <div class="form-group row">
                    <label class="col-lg-3 col-form-label form-control-label">Email</label>
                    <div class="col-lg-9">
                        <input class="form-control" type="email" name="email" value="<?=$email?>" />
                    </div>
                </div>
                <div class="form-group row">
                    <label class="col-lg-3 col-form-label form-control-label">Description</label>
                    <div class="col-lg-9">
                        <input class="form-control" type="text" name="description" value="<?=$description?>" placeholder="Description" />
                    </div>
                </div>
                 <div class="form-group row">
                     <label class="col-lg-3 col-form-label form-control-label">Photo</label>
                     <div class="col-lg-9">
                         <input type="file" name="file" class="file" id="file" class="custom-file-input">

                     </div>
                 </div>
                <div class="form-group row">
                    <label class="col-lg-3 col-form-label form-control-label"></label>
                    <div class="col-lg-9">
                        <a href="profile.php" type="reset" class="btn login_btn cancel"  >Cancel <a/>
                        <input type="submit" class="btn reg_btn" name="save" value="Save Changes" />
                    </div>
                </div>
            </form>
        </div>
    </div>
</div>
<hr />
<script>
    var fileInput = document.getElementById("inputfile");

    // files is a FileList object 
    var files = fileInput.files;

    // array with acceptable file types
    var accept = ["image/png"];

    // img is a HTMLImgElement: <img id="myimg">
    var img = document.getElementById("myimg");

    // if we accept the first selected file type
    if (accept.indexOf(files[0].mediaType) > -1) {
        // display the image
        // same as <img src="data:image/png,<imagedata>">
        img.src = files[0].getAsDataURL();
    }
</script>
