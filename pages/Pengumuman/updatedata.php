<?php
include 'koneksidatapmb.php';
//menyimpan data kedalam variabel
$No_Pendaftaran = $_POST['No_Pendaftaran'];
$Nama = $_POST['Nama'];
$Jalur_Pendaftaran = $_POST['Jalur_Pendaftaran'];
$Program_Studi = $_POST['Program_Studi'];
$Fakultas = $_POST['Fakultas'];
$Email = $_POST['Email'];
$No_Hp = $_POST['No_Hp'];
$Jenis_Kelamin = $_POST['Jenis_Kelamin'];
$Alamat = $_POST['Alamat'];
$Status = $_POST['Status'];

//query sql untuk update data
$sql="UPDATE pmb SET No_Pendaftaran='$No_Pendaftaran', Nama='$Nama', Jalur_Pendaftaran='$Jalur_Pendaftaran', Program_Studi='$Program_Studi', Fakultas='$Fakultas', Email='$Email', No_Hp='$No_Hp', Jenis_Kelamin='$Jenis_Kelamin', Alamat='$Alamat', Status='$Status' WHERE No_Pendaftaran='$No_Pendaftaran'";
mysqli_query($conn,$sql);

echo "<script type='text/javascript'>alert('Data dengan No Pendaftaran $No_Pendaftaran atas nama $Nama telah berhasil di update');document.location='tampildatapmb.php';</script>";

//mengalihkan ke halaman view tabel
//header("location:pertemuan301db.php");
?> 
