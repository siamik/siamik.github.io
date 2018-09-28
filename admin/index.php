<?php



?>
<!Doctype html>
<html>
<head>
    
    <link rel="stylesheet" href="../css/bootstrap/css/bootstrap.css"/>
    
    <script src="../css/bootstrap/js/bootstrap.js"></script>
    <link rel="stylesheet" href="../css/admin.css" />
    <title></title></head>
    <body>
      
        <div class="header"><a href='logout.php'><button>logout</button></a></div>
        <div class="sidebar">
            <form class="form" method="get" action="createuser.php">
    <div><input type="text" class="text" name="username" placeholder="username"/></div>
    <div><input type="text" class="text" name="password" placeholder="password"/></div>
                
        <div><select name="level" size="0.80" id="level">
                    <option selected="selected" value="Pilih Salah Satu">Pilih Salah Satu</option>
                    <option value="dosen">Dosen</option>
                    <option value="mahasiswa">Mahasiswa</option>
                   <option value="admin">Admin</option>
        </select></div>
        <div><input type="submit" name="submit" value="Tambah" class="btn btn-primary"></div>
    </form>
        </div>
    
         
    <?php include "selectuser.php"; ?>
            
          
    </body>

</html>