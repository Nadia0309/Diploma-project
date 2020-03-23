<?php include "head.php"?>
<?php include "../classes/Db_query.php"?>


<nav class="navbar blue static-top">
    <div class="container navbar-pink">
        <a class="navbar-brand" href="#">MOVIES</a>
        <a href="../logout.php" id="logout" class="btn btn-white">Log out</a>
    </div>
</nav>
<header>
<div class="container">
<div class="row m-y-2">
        <!-- edit form column -->
        <div class="col-md-12 text-md-left">
            <h3>Add new Admin</h3>
        </div>

        <div class="col-lg-8">
             <form method="post" action="post.php" enctype="multipart/form-data" role="form">

                <div class="form-group row">
                    <label class="col-lg-3 col-form-label form-control-label">Name</label>
                    <div class="col-lg-9">
                    <input type="text" class="form-control adminName"  placeholder="Enter name">
                    </div>
                </div>
                <div class="form-group row">
                    <label class="col-lg-3 col-form-label form-control-label">Email</label>
                    <div class="col-lg-9">
                    <input type="text" class="form-control adminEmail"  placeholder="Enter email">
                    </div>
                </div>
                <div class="form-group row">
                    <label for="exampleInputEmail1" class="col-lg-3 col-form-label form-control-label">Password</label>
                    <div class="col-lg-9">
                    <input type="text" class="form-control adminEmail"  placeholder="Enter password">
                    </div>
                </div>
                <div class="form-group row">
                    <label class="col-lg-3 col-form-label form-control-label"></label>
                    <div class="col-lg-9">
                        <input type="submit" class="btn btn-submit addAdmin" name="save" value="Add" />
                    </div>
                </div>
            </form>
        </div>
    </div>


<div class="col-xs-2 ">
    <h3>Delete User</h3>

    <table class="table table-hover">
    <thead>
    <tr>
        <th scope="col">ID</th>
        <th scope="col">Name</th>
        <th scope="col">Email</th>
        <th scope="col">Role</th>
        <th scope="col">Tools</th>
    </tr>
    </thead>
    <tbody>
    <?php
    $db = new Db_query();
    $result =$db->getAllUser();
    for($i=0;$i<count($result);$i++){?>
     <tr att="<?= $result[$i]->id?>">
      <th scope='row'><?= $result[$i]->id?></th>
      <th scope='row'><?=$result[$i]->name?></th>
      <th scope='row'><?=$result[$i]->email?></th>
      <th scope='row'><?=$result[$i]->role?></th>
      <th <button type="button"  atr="<?= $result[$i]->id?>" class="btn btn-danger deleteUser"> <span class="fa fa-close"></span></button>
         </th>
    </tr>
    <?php  }?>
    </tbody>
</table>
</div>
    <div class="col-xs-2 ">
        <h3>Add Questions</h3>

        <form action="post.php" method="post">

            <div class="form-group">
                <br>
                <input type="text" class="form-control questions" name="questions"  placeholder="Enter questions">
            </div>

            <input type="submit" class="btn btn-submit addQuestions" name="addQuestions" value="Add" >
        </form>
        <table class="table table-hover">
            <thead>
            <tr>
                <th scope="col">№</th>
                <th scope="col">Questions</th>
            </tr>
            </thead>
            <tbody>
            <?php
            $db = new Db_query();
            $result =$db->getQuestions();
            for($i=0;$i<count($result);$i++){?>
                <tr att="<?= $result[$i]->id?>">
                    <th scope='row'><?= $result[$i]->id?></th>
                    <th scope='row'><?=$result[$i]->text_questions?></th>

            <?php  }?>
            </tbody>
        </table>
    </div>

    <div class="col-xs-2 ">
        <h3 style="font-size: 50px;color: #393232;">Add Choices</h3>

        <form action="post.php" method="post">

            <div class="form-group">
                <br>
                <input type="text" class="form-control questions" name="numberQuestions"  placeholder="Enter number questions">
            </div>
            <div class="form-group">
                <input type="text" class="form-control questions" name="choices"  placeholder="Enter choices">
            </div>

            <input type="submit" class="btn btn-submit addQuestions" name="addChoices" value="Add" >
        </form>
        <table class="table table-hover">
            <thead>
            <tr>
                <th scope="col">ID</th>
                <th scope="col">№ Question</th>
                <th scope="col">Text</th>
            </tr>
            </thead>
            <tbody>
            <?php
            $db = new Db_query();
            $result =$db->getChoices();
            for($i=0;$i<count($result);$i++){?>
                <tr att="<?= $result[$i]->id?>">
                    <th scope='row'><?= $result[$i]->id?></th>
                    <th scope='row'><?=$result[$i]->id_question?></th>
                    <th scope='row'><?=$result[$i]->text?></th>

            <?php  }?>
            </tbody>
        </table>
    </div>
</div>
<?php include("../includes/footer.php")?>

  </header>
  </body>
</html>

<script>


    $( ".deleteUser" ).click(function() {
        $(this).closest('tr').remove();


        var deleteUser  = $(this).attr('atr');
        console.log(deleteUser);
        $.ajax({
            url:"../includes/ajax.php",
            
            type:"POST",
            data: {
                deleteUser:deleteUser
            },
            success:function(data)
            {
            }
        });
    });
    $( ".addAdmin" ).click(function() {
        var adminName = $('.adminName').val();
        var adminEmail = $('.adminEmail').val();
        var adminPassword = $('.adminPassword').val();
        $('.adminName').val('');
        $('.adminEmail').val('');
        $('.adminPassword').val('');
        console.log(adminEmail);
        console.log(adminName);
        console.log(adminPassword);
        $.ajax({
            url:"../includes/ajax.php",
            type:"POST",
            data: {
                adminEmail:adminEmail,
                adminName:adminName,
                adminPassword:adminPassword
            },
            success:function(data)
            {
                $.ajax({
                    url:"../includes/ajax.php",
                    type:"POST",
                    data: {
                        email:adminEmail,
                        name:adminName,
                        password:adminPassword
                    },
                    success:function(response)
                    {
                        response = JSON.parse(response);
                        var id =response[0].id;

                        $('.table').append(' <tr att='+id+'>\n' +
                            '                        <th scope="row">'+id+'</th>\n' +
                            '                        <th scope="row">'+adminName+'</th>\n' +
                            '                        <th scope="row">'+adminEmail+'</th>\n' +
                            '                        <th scope="row">Admin</th>\n' +
                            '                        <th <button type="button"  atr="'+id+'" class="btn btn-danger deleteUser"> <span class="fa fa-close"></span></button>\n' +
                            '                    </th>\n' +
                            '                    </tr>');

                    }
                });
            }
        });
    });

</script>