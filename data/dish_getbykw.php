<?php
header("Content-Type:application/json");

@$kw = $_REQUEST['kw'];
if(empty($kw))
{
    echo '[]';
    return;
}

$conn = mysqli_connect("127.0.0.1",'root','','lol');
$sql = "SET NAMES UTF8";
mysqli_query($conn,$sql);

$sql = "select did,name,img_sm,price,material from lol_dish where name like '%$kw%' or material like '%$kw%'";
$result = mysqli_query($conn,$sql);
$output = [];
while(true)
{
    $row = mysqli_fetch_assoc($result);
    if(!$row)
    {
        break;
    }
    $output[] = $row;
}

echo json_encode($output);



?>