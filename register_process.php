<?php
$showAlert = false;
$showError = false;
$exists=false;

if($_SERVER["REQUEST_METHOD"] == "POST") {

// Include file which makes the
// Database connlection.
include "koneksi.php";

$username = $_POST["username"];
$password = $_POST["password"];
$cpassword = $_POST["cpassword"];


$sql = "SELECT * FROM admin where username='$username'";

$result = mysqli_query($mysqli, $sql);

$num = mysqli_num_rows($result);

// This sql query is use to check if
// the username is already present
// or not in our Database
if($num == 0) {
if(($password == $cpassword) && $exists==false) {



// Password Hashing is used here.
$sql = "INSERT INTO `admin` ( `username`,
`password`, `date`) VALUES ('$username',
'$password', current_timestamp())";



$result = mysqli_query($mysqli, $sql);

if ($result) {
$showAlert = true;

	header("location:login.php?");
}
}
}
else {
$showError = "Password tidak cocok";
}

if($num>0)
{
$exists="Username tidak tersedia";
}
}// end if



//end if

?>