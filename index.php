<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
    <form action="" method="post" enctype="multipart/form-data">
        <label for="uploadedFileInput">
            Wybierz plik do wgrania na serwer:
        </label>
        <input type="file" name="uploadedFile" id="uploadedFileInput">
        <input type="submit" value="Wyślij plik" name="submit">
    </form>
<?php

if(isset($_POST['submit']))
{
    $fileName = $_FILES['uploadedFile']['name'];
    $targetDir = "img/";

    $targetExtension = pathinfo($fileName, PATHINFO_EXTENSION);
    $targetExtension = strtolower($targetExtension);

    $targetFileName = $fileName . hrtime(true);
    $targetFileName = hash("sha256", $targetFileName);
    
    $targetUrl = $targetDir . $targetFileName . "." . $targetExtension;
    if(file_exists($targetUrl)) 
    {
        die("ERROR: juz jest");
    
    }
    move_uploaded_file($_FILES["uploadedFile"]["tmp_name"], $targetUrl);
    var_dump($_FILES);
}

?>
</body>
</html>