<?php

$db = mysqli_connect('localhost','root', '', 'contact');

// //cek koneksi
// if(!$db){
//     echo 'gagal';
// } else {
//     echo 'berhasil';
// }

// fungsi menambahkan data form
function tambah_form($post)
{
  global $db;

  $nama   = strip_tags($post['nama']);
  $nim    = strip_tags($post['nim']);
  $kelas  = strip_tags($post['kelas']);
  $email  = strip_tags($post['email']);
  $telp   = strip_tags($post['telp']);
  $gender = strip_tags($post['gender']);
  $pesan  = strip_tags($post['pesan']);

  // query tambah data
  $query = "INSERT INTO data_contact VALUES(null, '$nama', '$nim', '$kelas', '$email', '$telp', '$gender', '$pesan')";

  mysqli_query($db, $query);

  return mysqli_affected_rows($db);
}

// check apakah tombol tambah ditekan
if(isset ($_POST['submit'])) {
    if (tambah_form($_POST) > 0) {
        echo "<script>
                alert('Data Form Berhasil Ditambahkan');
                document.location.href = 'data-form.php';
            </script>";
    } else {
        echo "<script>
                alert('Data Form Gagal Ditambahkan');
                document.location.href = 'data-form.php';
            </script>";
    }
}