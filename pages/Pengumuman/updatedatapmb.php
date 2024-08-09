<!DOCTYPE html>
<html>
<head>
    <title>PHP PMB UNIKOM</title>
    <style>
        body {
            text-align: center;
            font-family: Arial, sans-serif;
        }
        table {
            margin: 0 auto;
            border-collapse: collapse;
        }
        td {
            padding: 10px;
        }
        input, select {
            margin: 5px 0;
        }
    </style>
</head>
<body>
    <h1>Update Data Mahasiswa</h1>
    <hr>
    <?php
    include 'koneksidatapmb.php';

    // Mengambil No_Pendaftaran dari parameter GET dan sanitasi input menggunakan filter_input
$No_Pendaftaran = filter_input(INPUT_GET, 'No_Pendaftaran', FILTER_SANITIZE_STRING);
    $sql = "SELECT * FROM pmb WHERE No_Pendaftaran = '$No_Pendaftaran'";
    $query = mysqli_query($conn, $sql);

    if ($query && mysqli_num_rows($query) > 0) {
        $row = mysqli_fetch_assoc($query);

        // Daftar program studi dan fakultas
        $program_studi = array(
            'S1-Teknik Informatika', 'S1-Sistem Informasi', 'S1-Ilmu Komputer',
            'S1-Teknik Sipil', 'S1-Teknik Industri', 'S1-Arsitektur',
            'S1-Perencanaan Wilayah dan Kota', 'S1-Akuntansi', 'S1-Manajemen',
            'S1-Ilmu Hukum', 'S1-Ilmu Pemerintahan', 'S1-Hubungan Internasional',
            'S1-Ilmu Komunikasi', 'S1-Sastra Inggris', 'S1-Desain Komunikasi Visual',
            'S1-Desain', 'S1-Desain Interior'
        );

        $fakultas = array(
            'Fakultas Teknik dan Ilmu Komputer', 'Fakultas Desain', 
            'Fakultas Sastra', 'Fakultas Ilmu Sosial dan Ilmu Politik', 
            'Fakultas Hukum', 'Fakultas Ekonomi dan Bisnis'
        );

        // Fungsi untuk mengatur radio button aktif
        function active_radio_button($value, $input) {
            return $value == $input ? 'checked' : '';
        }
    } else {
        echo "<p>Data tidak ditemukan.</p>";
        exit;
    }
    ?>
    <form name="fupdate" action="updatedata.php" method="post">
        <input type="hidden" name="No_Pendaftaran" value="<?php echo htmlspecialchars($No_Pendaftaran); ?>"/>
        <table>
            <tr>
                <td>Nama</td>
                <td>: <input name="Nama" size="55" value="<?php echo htmlspecialchars($row['Nama']); ?>" required></td>
            </tr>
            <tr>
                <td>No Pendaftaran</td>
                <td>: <input name="No_Pendaftaran" size="30" value="<?php echo htmlspecialchars($row['No_Pendaftaran']); ?>" readonly></td>
            </tr>
            <tr>
                <td>Jenis Kelamin</td>
                <td>: 
                    <input type="radio" name="Jenis_Kelamin" value="L" <?php echo active_radio_button("L", $row['Jenis_Kelamin']); ?>>Laki-laki
                    <input type="radio" name="Jenis_Kelamin" value="P" <?php echo active_radio_button("P", $row['Jenis_Kelamin']); ?>>Perempuan
                </td>
            </tr>
            <tr>
                <td>Alamat</td>
                <td>: <input name="Alamat" size="75" placeholder="Alamat" value="<?php echo htmlspecialchars($row['Alamat']); ?>" required></td>
            </tr>
            <tr>
                <td>No. Handphone</td>
                <td>: <input name="No_Hp" size="15" placeholder="No Hp" value="<?php echo htmlspecialchars($row['No_Hp']); ?>" required></td>
            </tr>
            <tr>
                <td>Email</td>
                <td>: <input name="Email" type="email" size="30" placeholder="Email" value="<?php echo htmlspecialchars($row['Email']); ?>" required></td>
            </tr>
            <tr>
                <td>Program Studi</td>
                <td>:
                    <select name="Program_Studi" required>
                       <?php
                       foreach ($program_studi as $jur) {
                            echo "<option value='$jur' ";
                            echo $row['Program_Studi'] == $jur ? 'selected="selected"' : '';
                            echo ">$jur</option>";
                       }
                       ?>
                    </select>
                </td>
            </tr>
            <tr>
                <td>Fakultas</td>
                <td>:
                    <select name="Fakultas" required>
                       <?php
                       foreach ($fakultas as $fak) {
                            echo "<option value='$fak' ";
                            echo $row['Fakultas'] == $fak ? 'selected="selected"' : '';
                            echo ">$fak</option>";
                       }
                       ?>
                    </select>
                </td>
            </tr>
            <tr>
                <td>Jalur Pendaftaran</td>
                <td>:
                    <select name="Jalur_Pendaftaran" required>
                        <option value="USM (Ujian Saring Masuk)" <?php echo $row['Jalur_Pendaftaran'] == 'USM (Ujian Saring Masuk)' ? 'selected="selected"' : ''; ?>>Ujian Saring Masuk</option>
                        <option value="Rapor" <?php echo $row['Jalur_Pendaftaran'] == 'Rapor' ? 'selected="selected"' : ''; ?>>Rapor</option>
                        <option value="Prestasi" <?php echo $row['Jalur_Pendaftaran'] == 'Prestasi' ? 'selected="selected"' : ''; ?>>Prestasi</option>
                        <option value="Alumni" <?php echo $row['Jalur_Pendaftaran'] == 'Alumni' ? 'selected="selected"' : ''; ?>>Alumni</option>
                        <option value="Anak Guru" <?php echo $row['Jalur_Pendaftaran'] == 'Anak Guru' ? 'selected="selected"' : ''; ?>>Anak Guru</option>
                    </select>
                </td>
            </tr>
            <tr>
                <td>Status</td>
                <td>:
                    <select name="Status" required>
                        <option value="LULUS" <?php echo $row['Status'] == 'LULUS' ? 'selected="selected"' : ''; ?>>LULUS</option>
                        <option value="TIDAK LULUS" <?php echo $row['Status'] == 'TIDAK LULUS' ? 'selected="selected"' : ''; ?>>TIDAK LULUS</option>
                    </select>
                </td>
            </tr>
            <tr>
                <td colspan="2">
                    <input type="submit" value="Update Data">
                    <input type="button" value="Cancel" onclick="window.location.href='tampildatapmb.php'">
                </td>
            </tr>
        </table>
    </form>
</body>
</html>
