<!DOCTYPE html>
<html><head>
<title>SIAKAD ITN
    </title>
<link rel="stylesheet" href="css/style.css"/>
    
    <link rel="stylesheet" href="css/bootstrap/css/bootstrap-responsive.css"/>
    <link rel="stylesheet" href="css/bootstrap/css/bootstrap.css"/>
    <script src="css/bootstrap/js/bootstrap.js"></script>
    <?php
session_start();
if(!empty($_SESSION['username']) && !empty($_SESSION['password'])){
 header("location:mahasiswa/dasboard.php");   
    
}


?>
</head>

<body>
<div class="header">
  <div class="logo"></div>
      <div class="title">
          
        <div>INSTITUT TEKNOLOGI NASIONAL MALANG</div>

      </div>
</div>


  <div class="body">
    <div class="value">
        
     
        <div class="description">
         <div>Sistem Informasi Akademik (SIAKAD) Online    </div>
            <strong>
              <span>Mahasiswa</span>          </strong>
            <ol>
              <li><strong>Kode Akses Mahasiswa dapat digunakan sebagai 
login Hotspot. Harap kode akses disimpan dengan baik karena jika ada 
pihak yang mengetahui kode akses Anda maka resikonya akan dapat masuk ke
 SIAKAD menggunakan login Anda. <blink><span>Penting !</span></blink></strong></li>
              <li><strong>Mahasiswa dapat melihat KHS Online. </strong></li>
	      <li><strong>Wisuda dilaksanakan 3 periode dalam waktu satu tahun 
dengan kuota 800, sehingga Mahasiswa yang sudah Yudisium harus mendaftar
 wisuda online untuk mendapatkan kuota tersebut. <blink><span>New !</span></blink> </strong></li>		
	      <li><strong>Pembetulan biodata dan judul skripsi pada wisuda online dapat dilakukan di Jurusan.</strong></li>	   
	      <li><strong>Mahasiswa dapat melakukan pembayaran wisuda di Bank setelah diklik Yudisium oleh Fakultas dan mendaftar wisuda online. <blink><span>New !</span></blink> </strong></li>
	      <li><strong>Mahasiswa dapat melakukan Pendaftaran Beasiswa. </strong></li> 
        <li><strong>Mahasiswa semua angkatan dapat melakukan Pembayaran 
SPP dan Wisuda di Bank Mandiri, Bank Syariah Mandiri, Bank BRI, Bank BTN
 dan Bank BNI.</strong></li>
	      <li><strong>Untuk NIM Mahasiswa PBA ada perubahan karena 
dipindahkan ke Fakultas Tarbiyah dan Keguruan sehingga untuk Login 
SIAKAD dan Hotspot menggunakan 
		NIM yang baru (NIM pada digit ke 3 dan 4 adalah 15, misalnya 12330021 
menjadi 12150021). </strong></li>
        <li><strong>Login SIAKAD menggunakan Password yang tertera pada slip pembayaran SPP Tahun Akademik 2014/2015 Semester Genap. <blink><span>New !</span></blink> </strong></li>
        
	      </ol>
		  <strong><span>Jurusan</span>
		    <ol>
		      <li><strong>Jurusan dapat memasukkan mahasiswa yang lulus skripsi dan merubah judul skripsi.</strong></li>
		      <li><strong>Jurusan dapat menentukan Wali Dosen bagi Mahasiswa Baru.</strong></li>
		      <li><strong>Jurusan dapat memasukkan Matakuliah Paket bagi Mahasiswa Baru.</strong></li>
		      <li><strong>Jurusan dapat mengklik Lulus Skripsi.</strong></li>
		
		     </ol>
		  </strong>
            <strong><span>Dosen</span>
              <ol>
             
		<li><strong>Dosen dapat memasukkan Jurnal Perkuliahan Tahun Akademik 2014/2015 Semester Ganjil</strong></li>
        <li><strong>Dosen dapat memasukkan ketidakhadiran mahasiswa pada Presensi Perkuliahan 2014/2015 Semester Ganjil</strong></li>
		</ol>
		  </strong>
            <strong><span>Links</span>
  <ol><li>Daftar segera Blog UIN Maulana Malik Ibrahim Malang <a href="http://blog.uin-malang.ac.id/" target="_blank">klik di sini</a></li>
	          </ol>
		  </strong>
	<strong><span>Info</span>
  	<ol><li>Gunakan web browser Mozilla Firefox untuk hasil tampilan yang optimal!</li>
                  </ol>
                  </strong>
            </div></div>
          <div class="form login">
            <form id="form1" name="form1" method="post" action="login.php">
			             
                <div >
                  <div><div>ID User </div></div>
                <div>
                  <input class="inputtext" type="text" name="username" maxlength="13" type="text">
                  </div>
              </div>
                <div >
                  <div><div >Kode Akses/PIN</div></div>
                <div>
                  <input class="inputtext" type="text" name="password" maxlength="10" type="password">
                  </div>
              </div>
                <div >
                  <div><div>Level</div></div>
                <div>
               <select name="level" size="0.80" id="level">
                    <option selected="selected" value="Pilih Salah Satu">Pilih Salah Satu</option>
                 
                    <option value="dosen">Dosen</option>
                    <option value="mahasiswa">Mahasiswa</option>
                   <option value="admin">Admin</option>
                   
                   
                     </select>
                  </div>
              </div>
                
                <div>
                  <div>
                    <input name="reset" class="btn btn-danger" id="reset" value="Reset" type="reset">
                    <input name="login" class="btn btn-success" id="login" value="Login" type="submit">
                   			  </div>
              </div>              
        
		  </form>
		  </div>
        </div>
     
	      </div>
  </div>
  <div>
    <div>
	
	
    
	</div>
  </div>

  <div class="footer">
    
    <p class="copyright">Lembaga Pengembangan Sistem Informasi Institut Teknologi Nasional Malang</p>
</div>
  
</body></html>