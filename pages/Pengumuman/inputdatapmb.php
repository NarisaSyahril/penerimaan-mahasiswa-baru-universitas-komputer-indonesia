<html>
    <head>
        <title>PHP PMB UNIKOM</title>
    </head>
    <body align="center" bgcolor="gray">
        <h1>Input Data PMB</h1>
        <hr> 
        <form name="fpenambahan" action="simpandatapmb.php" method="post">
            <table align="center" bgcolor="#f0efeb">
            <tr>
                    <td>No Pendaftaran</td>
                    <td>: <input name="No_Pendaftaran" size="30" placeholder="No Pendaftaran" required></td>
                </tr>
                <tr>
                    <td>Nama</td>
                    <td>: <input name="Nama" size="55" placeholder="Nama Lengkap" required></td>
                </tr>
                <tr>
                    <td>Jalur Pendaftaran</td>
                    <td>: 
                        <select name="Jalur_Pendaftaran" required>
                            <option value="USM (Ujian Saring Masuk)">Ujian Saring Masuk</option>
                            <option value="Rapor">Rapor</option>
                            <option value="Prestasi">Prestasi</option>
                            <option value="Alumni">Alumni</option>
                            <option value="Anak Guru">Anak Guru</option>
                        </select>
                    </td>
                </tr>
                <tr>
                    <td>Program Studi</td>
                    <td>: 
                        <select name="Program_Studi" required>
                            <option value="S1 - Teknik Informatika">Teknik Informatika</option>
                            <option value="S1 - Sistem Informasi">Sistem Informasi</option>
                            <option value="S1 - Ilmu Komputer">Ilmu Komputer</option>
                            <option value="S1 - Teknik Sipil">Teknik Sipil</option>
                            <option value="S1 - Teknik Industri">Teknik Industri</option>
                            <option value="S1 - Arsitektur">Arsitektur</option>
                            <option value="S1 - Perencanaan Wilayah dan Kota">Perencanaan Wilayah dan Kota</option>
                            <option value="S1 - Akuntansi">Akuntansi</option>
                            <option value="S1 - Manajemen">Manajemen</option>
                            <option value="S1 - Ilmu Hukum">Ilmu Hukum</option>
                            <option value="S1 - Ilmu Pemerintahan">Ilmu Pemerintahan</option>
                            <option value="S1 - Hubungan Internasional">Hubungan Internasional</option>
                            <option value="S1 - Ilmu Komunikasi">Ilmu Komunikasi</option>
                            <option value="S1 - Sastra Inggris">Sastra Inggris</option>
                            <option value="S1 - Desain Komunikasi Visual">Desain Komunikasi Visual</option>
                            <option value="S1 - Desain">Desain</option>
                            <option value="S1 - Desain Interior">Desain Interior</option>
                        </select>
                    </td>
                </tr>
                <tr>
                    <td>Fakultas</td>
                    <td>: 
                        <select name="Fakultas" required>
                            <option value="Fakultas Teknik dan Ilmu Komputer (FTIK)">Fakultas Teknik dan Ilmu Komputer</option>
                            <option value="Fakultas Desain">Fakultas Desain</option>
                            <option value="Fakultas Sastra">Fakultas Sastra</option>
                            <option value="Fakultas Ilmu Sosial dan Ilmu Politik (FISIP)">Fakultas Ilmu Sosial dan Ilmu Politik</option>
                            <option value="Fakultas Hukum (FH)">Fakultas Hukum</option>
                            <option value="Fakultas Ekonomi dan Bisnis (FEB)">Fakultas Ekonomi dan Bisnis</option>
                        </select>
                    </td>
                </tr>
                <tr>
                    <td>Email</td>
                    <td>: <input name="Email" type="email" size="30" placeholder="Alamat email" required></td>
                </tr>
                <tr>
                    <td>No Handphone</td>
                    <td>: <input name="No_Hp" size="30" placeholder="No HP" required></td>
                </tr>
                <tr>
                    <td>Jenis Kelamin</td>
                    <td>: 
                        <select name="Jenis_Kelamin" required>
                            <option value="Laki-laki">Laki-laki</option>
                            <option value="Perempuan">Perempuan</option>
                        </select>
                    </td>
                </tr>
                <tr>
                    <td>Alamat</td>
                    <td>: <input name="Alamat" size="100" placeholder="Alamat rumah" required></td>
                </tr>
                <tr>
                    <td>Status</td>
                    <td>: 
                        <select name="Status" required>
                            <option value="LULUS">LULUS</option>
                            <option value="TIDAK LULUS">TIDAK LULUS</option>
                        </select>
                    </td>
                </tr>
            </table>
            <hr>
            <input type="submit" value="Simpan">
            <input type="reset" value="Reset">
            &nbsp; <a href="tampildatapmb.php">Kembali</a>
        </form>
    </body>
</html>
