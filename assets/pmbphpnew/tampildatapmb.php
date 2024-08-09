<!DOCTYPE html>
<html>
<head>
    <title>Tampil Data Mahasiswa</title>
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
        th {
            background-color: pink;
        }
        .center {
            text-align: center;
        }
        .font-size-7 {
            font-size: 2em; /* Set the font size to 2em for a similar effect to size=7 */
        }
        .link {
            margin: 10px;
        }
    </style>
</head>
<body>
    <center>
        <div class="font-size-7">
            Tampil Data PMB
            <hr>
        </div>
        <table>
            <thead>
                <tr>
                    <th class="center">No Pendaftaran</th>
                    <th class="center">Nama</th>
                    <th class="center">Jalur Pendaftaran</th>
                    <th class="center">Program Studi</th>
                    <th class="center">Fakultas</th>
                    <th class="center">Email</th>
                    <th class="center">No HP</th>
                    <th class="center">Jenis Kelamin</th>
                    <th class="center">Alamat</th>
                    <th class="center">Status</th>
                    <th class="center">Proses</th>
                </tr>
            </thead>
            <tbody>
                <?php
                require("koneksidatapmb.php");

                // Query untuk mendapatkan data mahasiswa
                $sql = "SELECT * FROM pmb";
                $hasil = mysqli_query($conn, $sql);

                if ($hasil) {
                    // Menampilkan data dalam tabel
                    while ($row = mysqli_fetch_assoc($hasil)) {
                        echo "<tr>
                                <td>{$row['No_Pendaftaran']}</td>
                                <td>{$row['Nama']}</td>
                                <td>{$row['Jalur_Pendaftaran']}</td>
                                <td>{$row['Program_Studi']}</td>
                                <td>{$row['Fakultas']}</td>
                                <td>{$row['Email']}</td>
                                <td>{$row['No_Hp']}</td>
                                <td>{$row['Jenis_Kelamin']}</td>
                                <td>{$row['Alamat']}</td>
                                <td>{$row['Status']}</td>
                                <td class='center'>
                                    <a href='viewdatapmb.php?No_Pendaftaran={$row['No_Pendaftaran']}'>View</a> |
                                    <a href='updatedatapmb.php?No_Pendaftaran={$row['No_Pendaftaran']}'>Edit</a> |
                                    <a href='hapusdatapmb.php?No_Pendaftaran={$row['No_Pendaftaran']}' onclick=\"return confirm('Anda yakin mau menghapus data ini?')\">Delete</a>
                                </td>
                              </tr>";
                    }
                } else {
                    echo "<tr><td colspan='11' class='center'>Tidak ada data ditemukan</td></tr>";
                }

                // Menutup koneksi database
                mysqli_close($conn);
                ?>
            </tbody>
        </table>
        <div class="link">
            <a href="inputdatapmb.php">Tambah data</a>
        </div>
    </center>
</body>
</html>
