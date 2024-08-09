<?php
// Menghubungkan ke database
include 'koneksidatapmb.php';

// Menyimpan data No_Pendaftaran ke dalam variabel dengan validasi
$No_Pendaftaran = isset($_GET['No_Pendaftaran']) ? mysqli_real_escape_string($conn, $_GET['No_Pendaftaran']) : null;

if ($No_Pendaftaran) {
    // Query SQL untuk menghapus data berdasarkan No_Pendaftaran
    $query = "DELETE FROM pmb WHERE No_Pendaftaran='$No_Pendaftaran'";
    
    if (mysqli_query($conn, $query)) {
        // Jika penghapusan berhasil, alihkan ke halaman tabel
        header("Location: tampildatapmb.php");
    } else {
        // Jika penghapusan gagal, tampilkan pesan error
        echo "Error: " . mysqli_error($conn);
    }
} else {
    echo "No_Pendaftaran tidak ditemukan.";
}

// Tutup koneksi database
mysqli_close($conn);
?>
