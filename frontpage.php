<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
    <?php
        $db =  new mysqli("localhost", "root", "", "post");
        $q = "SELECT * from post ORDER BY timestamp DESC";
        $preparedQ = $db->prepare($q);

        $preparedQ->execute();

        $result = $preparedQ->get_result();

        while ($row = $result->fetch_assoc()) {
            echo "<img width='200px' src='img/" . $row['filename'] . "'><br>";
        }
        ?>
</body>
</html>