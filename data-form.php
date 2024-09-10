<!DOCTYPE html>
<html>
<head>
    <title>Data Form</title>
    <link rel="stylesheet" href="form.css" />
</head>
<body>
    <main>
        <div class="title">
            <h2>DATA FORM</h2>
        </div>
        <div class="data">
            <table class="table1" border="1px solid black" cellpadding="5">
                <thead style="background-color: rgb(0, 191, 255);">
                    <tr>
                        <th>No.</th>
                        <th>Nama</th>
                        <th>NIM</th>
                        <th>Kelas</th>
                        <th>Email</th>
                        <th>Telepon</th>
                        <th>Gender</th>
                        <th>Pesan</th>
                    </tr>
                </thead>
                <tbody>
                    <?php
                    include 'tambah-data.php';

                    $query = "SELECT * FROM data_contact";
                    $result = mysqli_query($db, $query);

                    if (mysqli_num_rows($result) > 0) {
                        $no = 1;
                        while ($row = mysqli_fetch_assoc($result)) {
                            echo "<tr>";
                            echo "<td>" . $no++ . "</td>";
                            echo "<td>" . $row['nama'] . "</td>";
                            echo "<td>" . $row['nim'] . "</td>";
                            echo "<td>" . $row['kelas'] . "</td>";
                            echo "<td>" . $row['email'] . "</td>";
                            echo "<td>" . $row['telp'] . "</td>";
                            echo "<td>" . ($row['gender'] == 'L' ? 'Laki-laki' : 'Perempuan') . "</td>";
                            echo "<td>" . $row['pesan'] . "</td>";
                            echo "</tr>";
                        }
                    } else {
                        echo "<tr><td colspan='8'>Tidak ada data.</td></tr>";
                    }
                    ?>
                </tbody>
            </table>
            <p>
                <a href="form.html" class="button2">Kembali</a>
            </p>
        </div>
    </main>
</body>
</html>