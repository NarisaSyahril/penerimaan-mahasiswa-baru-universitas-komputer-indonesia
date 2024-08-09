<!DOCTYPE html>
<html>
<head>
    <title>Informasi Data Mahasiswa</title>
    <style>
        table {
            width: 100%;
            border-collapse: collapse;
        }
        table, th, td {
            border: 1px solid black;
        }
        th, td {
            padding: 8px;
            text-align: left;
        }
    </style>
</head>
<body>
    <center>
        <h1>Informasi Data Mahasiswa</h1>
        <hr width="320">
        <table>
            <?php
            // Menghubungkan ke database
            require("koneksidatapmb.php");
            
            // Menangkap data dari form
            $No_Pendaftaran = isset($_POST['No_Pendaftaran']) ? mysqli_real_escape_string($conn, $_POST['No_Pendaftaran']) : '';
            $Nama = isset($_POST['Nama']) ? mysqli_real_escape_string($conn, $_POST['Nama']) : '';
            $Jalur_Pendaftaran = isset($_POST['Jalur_Pendaftaran']) ? mysqli_real_escape_string($conn, $_POST['Jalur_Pendaftaran']) : '';
            $Program_Studi = isset($_POST['Program_Studi']) ? mysqli_real_escape_string($conn, $_POST['Program_Studi']) : '';
            $Fakultas = isset($_POST['Fakultas']) ? mysqli_real_escape_string($conn, $_POST['Fakultas']) : '';
            $Email = isset($_POST['Email']) ? mysqli_real_escape_string($conn, $_POST['Email']) : '';
            $No_Hp = isset($_POST['No_Hp']) ? mysqli_real_escape_string($conn, $_POST['No_Hp']) : '';
            $Jenis_Kelamin = isset($_POST['Jenis_Kelamin']) ? mysqli_real_escape_string($conn, $_POST['Jenis_Kelamin']) : '';
            $Alamat = isset($_POST['Alamat']) ? mysqli_real_escape_string($conn, $_POST['Alamat']) : '';
            $Status = isset($_POST['Status']) ? mysqli_real_escape_string($conn, $_POST['Status']) : '';

            // Menampilkan data
            echo "<tr><td>No Pendaftaran:</td><td>$No_Pendaftaran</td></tr>";
            echo "<tr><td>Nama:</td><td>$Nama</td></tr>";
            echo "<tr><td>Jalur Pendaftaran:</td><td>$Jalur_Pendaftaran</td></tr>";
            echo "<tr><td>Program Studi:</td><td>$Program_Studi</td></tr>";
            echo "<tr><td>Fakultas:</td><td>$Fakultas</td></tr>";
            echo "<tr><td>Email:</td><td>$Email</td></tr>";
            echo "<tr><td>No Handphone:</td><td>$No_Hp</td></tr>";
            echo "<tr><td>Jenis Kelamin:</td><td>$Jenis_Kelamin</td></tr>";
            echo "<tr><td>Alamat:</td><td>$Alamat</td></tr>";
            echo "<tr><td>Status:</td><td>$Status</td></tr>";
            echo "</table>";
            echo "<hr width=320>";

            // Memeriksa dan menyimpan data
            if ($No_Pendaftaran != '') {
                $sql = "INSERT INTO pmb (No_Pendaftaran, Nama, Jalur_Pendaftaran, Program_Studi, Fakultas, Email, No_Hp, Jenis_Kelamin, Alamat, Status) 
                        VALUES ('$No_Pendaftaran', '$Nama', '$Jalur_Pendaftaran', '$Program_Studi', '$Fakultas', '$Email', '$No_Hp', '$Jenis_Kelamin', '$Alamat', '$Status')";
                $hasil = mysqli_query($conn, $sql);
                if ($hasil) {
                    echo "Data telah ditambahkan";
                } else {
                    echo "Gagal menambahkan data: " . mysqli_error($conn);
                }
            } else {
                echo "No Pendaftaran Tidak Boleh Kosong";
            }

            // Menutup koneksi database
            mysqli_close($conn);
            ?>
            <br/>
            <a href="tampildatapmb.php">View Mahasiswa</a>
        </center>
    </body>
</html>
