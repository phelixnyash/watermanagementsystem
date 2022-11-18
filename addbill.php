<?php
include 'db.php';
	
	$owners_id = $_POST['owners_id'];
	$prev = $_POST['prev'];
	$pres = $_POST['pres'];
	$totalcun = $pres - $prev;
	$price = $_POST['price'];
	$pricetotal = $totalcun * $price;
	$date=$_POST['date'] ;
    $lname=$_POST['lname'] ;
    $fname=$_POST['fname'] ;
    $contact=$_POST['contact'] ;
	mysqli_query($conn,"INSERT INTO  bill (owners_id,prev,pres,price,date) 
		 VALUES ('$owners_id','$prev','$pres','$pricetotal','$date')"); 
		 	$smsmessage = "Hello $fname  $lname Your previous water bill was $prev units and current is $pres units.Your balance this month is $pricetotal .Thank you.";
			 $mobile = $contact;
			 $message =$smsmessage;//message
			 $shortcode="JuaMobile";
			 $partnerID='5277';
			 $api_key = "07cfeb15f7d20a19b308b6f7b004f1a9";
			  $data = array('apikey' => $api_key, 'partnerID' => $partnerID, "mobile" => $mobile, "message" => $message, "shortcode" => $shortcode);
			 $ch = curl_init('https://quicksms.advantasms.com/api/services/sendsms/?');
			 curl_setopt($ch, CURLOPT_POST, true);
			 curl_setopt($ch, CURLOPT_POSTFIELDS, $data);
			 curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
			 $response = curl_exec($ch);
			 curl_close($ch);
	mysqli_query($conn,"UPDATE tempo_bill SET Prev = '$pres' where id ='$owners_id'");
		
				echo '<script>alert("success")</script>';
				echo '<script>windows: location="bill.php"</script>';
 