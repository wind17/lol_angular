<?php
header("Content-Type:application/json");

@$user_name = $_REQUEST['user_name'];
@$sex = $_REQUEST['sex'];
@$phone = $_REQUEST['phone'];
@$addr = $_REQUEST['addr'];
@$did  = $_REQUEST['did'];
$order_time = time()*1000;

if(empty($user_name) ||empty($sex) || empty($phone) ||
 empty($addr) || empty($did))
{
    echo '[]';
    return;
}

$conn = mysqli_connect("127.0.0.1",'root','','lol');
$sql = "SET NAMES UTF8";
mysqli_query($conn,$sql);

$sql = "INSERT INTO lol_order VALUES(null,'$phone','$user_name','$sex','$order_time','$addr','$did')";
$result = mysqli_query($conn,$sql);

$output = [];
if($result)
{
    $id = mysqli_insert_id( $conn );
    $arr = [];
    $arr['oid'] = $id;
    $arr['msg'] = 'succ';
    $output[] = $arr;
}
else
{
    $arr = [];
    $arr['msg'] = 'error';
    $output[] = $arr;
}
   echo json_encode($output);

?>