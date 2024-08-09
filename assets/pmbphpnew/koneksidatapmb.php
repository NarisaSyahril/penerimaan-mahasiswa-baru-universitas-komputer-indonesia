<?php
// Konfigurasi koneksi database
$servername = "localhost";
$username = "root";
$password = "";
$database = "pmb_unikom";

// // Membuat koneksi ke database
    $conn = new mysqli($servername, $username, $password, $database);

    // Memeriksa koneksi
    if ($conn->connect_error) {
        throw new Exception("Connection failed: " . $conn->connect_error);
    }

    // Menjalankan query
    $sql = "SELECT * FROM pmb";
    $result = $conn->query($sql);

    // if ($result) {
    //     if ($result->num_rows > 0) {
    //         while($row = $result->fetch_assoc()) {
    //             echo "No_Pendaftaran: " . $row["No_Pendaftaran"]. " - Nama: " . $row["Nama"]. "<br>";
    //         }
    //     } else {
    //         echo "No data found";
    //     }
    // } else {
    //     throw new Exception("Error: " . $conn->error);
    // }

// Jangan lupa untuk menutup koneksi setelah selesai menggunakan database
// mysqli_close($conn);
?>
