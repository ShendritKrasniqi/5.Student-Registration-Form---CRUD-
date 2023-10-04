<?php
//database connection
include('db.php');

//adding data to the database
if(isset($_POST['submit'])){
	$u_card = $_POST['card_no'];
	$u_f_name = $_POST['user_first_name'];
	$u_l_name = $_POST['user_last_name'];
	$u_father = $_POST['user_father'];
	$u_passaport = $_POST['user_passaport'];
	$u_birthday = $_POST['user_dob'];
	$u_gender = $_POST['user_gender'];
	$u_email = $_POST['user_email'];
	$u_phone = $_POST['user_phone'];
	$u_state = $_POST['state'];
	$u_dist = $_POST['dist'];
	$u_village = $_POST['village'];
	$u_pstation = $_POST['pstation'];
	$u_pincode = $_POST['pincode'];
	$u_degree = $_POST['user_degree'];
	$u_family = $_POST['family'];
	$u_staff_id = $_POST['staff_id'];
	
	//image upload
	$msg = "";
	$image = $_FILES['image']['name'];
	$target = "upload_images/".basename($image);

	if (move_uploaded_file($_FILES['image']['tmp_name'], $target)) {
  		$msg = "Image uploaded successfully";
  	}else{
  		$msg = "Failed to upload image";
  	}

  	$insert_data = "INSERT INTO card_activation(u_card, u_f_name, u_l_name, u_father, u_passaport, u_birthday, u_gender, u_email, u_phone, u_state, u_dist, u_village, u_pstation, u_pincode, u_degree, u_family, staff_id,image,uploaded) VALUES ('$u_card','$u_f_name','$u_l_name','$u_father','$u_passaport','$u_birthday','$u_gender','$u_email','$u_phone','$u_state','$u_dist','$u_village','$u_profile','$u_pincode','$u_degree','$u_family','$u_staff_id','$image',NOW())";
  	$run_data = mysqli_query($con,$insert_data);

  	if($run_data){
  		header('location:index.php');
  	}else{
  		echo "Data not insert";
  	}

}

?>
