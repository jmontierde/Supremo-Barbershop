	<?php 
include('includes/dbconnection.php');
session_start();
error_reporting(0);
if(isset($_POST['submit']))
{

	$name=$_POST['name'];
	$email=$_POST['email'];
	$services=$_POST['services'];
	$adate=$_POST['adate'];
	$atime=$_POST['atime'];
	$phone=$_POST['phone'];
	$barbername=$_POST['barbername'];
	$aptnumber = mt_rand(100000000, 999999999);

	$query=mysqli_query($con,"insert into tblappointment(AptNumber,Name,Email,PhoneNumber,AptDate,AptTime,Services,BarberName) value('$aptnumber','$name','$email','$phone','$adate','$atime','$services','$barbername')");
	if ($query) 
	{
		echo "<script>alert('Thank you for booking, your appointment number is $aptnumber, we will give you phone call shortly.');</script>";  		
		echo "<script>window.location.href='index.php'</script>";	
	}
	else
	{
		echo "<script>alert('Something Went Wrong. Please try again.');</script>";  	 	
	}

}

?>
<!DOCTYPE html>
<html lang="en">
<head>
	<title>	</title>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
	
	<link href="https://fonts.googleapis.com/css2?family=Roboto:wght@300;400;500;700;900&display=swap" rel="stylesheet">
	<link href="https://fonts.googleapis.com/css2?family=Dancing+Script:wght@400;500;600;700&display=swap" rel="stylesheet">

	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">

	<link rel="stylesheet" href="css/animate.css">
	
	<link rel="stylesheet" href="css/owl.carousel.min.css">
	<link rel="stylesheet" href="css/owl.theme.default.min.css">
	<link rel="stylesheet" href="css/magnific-popup.css">

	<link rel="stylesheet" href="css/bootstrap-datepicker.css">
	<link rel="stylesheet" href="css/jquery.timepicker.css">

	
	<link rel="stylesheet" href="css/flaticon.css">
	<link rel="stylesheet" href="css/style.css">
</head>
<body>
	<?php include('includes/header.php') ?>
	
	<!-- END nav -->
	
	<section class="hero-wrap">
		<div class="home-slider owl-carousel js-fullheight">
			<div class="slider-item js-fullheight" style="background-image:url(supremo_images/2.jpg);">
				<div class="overlay"></div>
				<div class="container">
					<div class="row no-gutters slider-text js-fullheight align-items-center justify-content-center">
						<div class="col-md-12 ftco-animate">
							<div class="text w-100 mt-5 text-center">
								<span class="subheading">CUT YOUR'S NOW!</span>
								<h2 style="color: #ffffff; font-family: sans-serif; font-size: 70px;">Serving Since 2018</h2>
							</div>
						</div>
					</div>

				</div>
			</div>

			<div class="slider-item js-fullheight" style="background-image:url(supremo_images/3.jpg);">
				<div class="overlay"></div>
				<div class="container">
					<div class="row no-gutters slider-text js-fullheight align-items-center justify-content-center">
						<div class="col-md-12 ftco-animate">
							<div class="text w-100 mt-5 text-center">
								<span class="subheading">CUT YOUR'S NOW!</h2></span>
								<h2 style="color: #ffffff; font-family: sans-serif; font-size: 70px;">Our Hairstyle<br>Enhance Your Smile</h2>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>

	

	<section class="ftco-section ftco-wrap-about ftco-no-pb ftco-no-pt">
		<div class="container">
			<div class="row no-gutters">
				<div class="col-sm-4 p-4 p-md-5 d-flex align-items-center justify-content-center bg-info">
					<form action="#" method="post" class="appointment-form">
						<h3 class="mb-3">Book your Service</h3>
						<div class="row">
							<div class="col-md-12">
								<div class="form-group">
									<input type="name" name="name" class="form-control" placeholder="Name"required>
								</div>
							</div>
							<div class="col-md-12">
								<div class="form-group">
									<input type="email" name="email" class="form-control" placeholder="Email"required>
								</div>
							</div>
							<div class="col-md-12">
								<div class="form-group">
									<input type="text" name="phone" class="form-control" placeholder="Phone"required>
								</div>
							</div>
							<div class="col-md-12">
								<div class="form-group">
									<div class="input-wrap">
										<div class="icon"><span class="fa fa-calendar"></span></div>
										<input type="text" name="adate" class="form-control book_date" placeholder="Date"required>
									</div>
								</div>
							</div>
							<div class="col-md-12">
								<div class="form-group">
									<div class="input-wrap">
										<div class="icon"><span class="fa fa-clock-o"></span></div>
										<input type="text" name="atime" class="form-control book_time" placeholder="Time"required>
									</div>
								</div>
							</div>
							<div class="col-md-12">
								<div class="form-group">
									<div class="form-field">
										<div class="select-wrap">
											<div class="icon"><span class="fa fa-chevron-down"></span></div>
											<select name="services" id="services" class="form-control mb-3"required>
												<option value="">Select Service</option>
												<?php $query=mysqli_query($con,"select * from tblservices");
												while($row=mysqli_fetch_array($query))
												{
													?>
													<option style="color: black;" value="<?php echo $row['ServiceName'];?>" ><?php echo $row['ServiceName'];?></option>
													<?php
												} ?>
									</div>
								</div>
							</div>
								<div class="col-md-12">
								<div class="form-group">
									<div class="form-field">
										<div class="select-wrap">
											</select>
											<div class="icon"><span class="fa fa-chevron-down"></span></div>
											<select name="barbername" id="barbername" class="form-control mb-3"required>
												<option value="">Select Barbers</option>
												<?php $query=mysqli_query($con,"select * from tblbarber");
												while($row=mysqli_fetch_array($query))
												{
													?>
													<option style="color: black;" value="<?php echo $row['BarberName'];?>" ><?php echo $row['BarberName'];?></option>
													<?php
												} ?> 
											</select> 
										</div>
									</div>
								</div>
							</div>
							<div class="col-md-12 ">
								<div class="form-group ">
									<input type="submit" name="submit" value="Book Now" class="btn btn-white py-3 px-4">
								</div>
							</div>
						</div>
					</form>
				</div>
				<div class="col-sm-8 wrap-about py-5 ftco-animate img" style="background-image: url(supremo_images/5.jpg);">
					<div class="row pb-5 pb-md-0">
						<div class="col-md-12 col-lg-7">
							<div class="heading-section mt-5 mb-4">
								<div class="pl-lg-3 ml-md-5">
									<span class="subheading"></span>
									<h2 class="mb-4">SUPREMO BARBERSHOP</h2>
								</div>
							</div>
							<div class="pl-lg-3 ml-md-5 text-white">
								<p></p>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>

	<section class="ftco-section ftco-intro" style="background-image: url(supremo_images/supremo.jpg);">
		<div class="overlay"></div>
		<div class="container">
			<div class="row">
				<div class="col-md-12 text-center">
					<span>Now Booking</span>
					<h2>Valenzuela Barber Clean &amp; Good Style </h2>
				</div>
			</div>
		</div>
	</section>

	<section class="ftco-section ftco-no-pt ftco-no-pb">
		<div class="container">
			<div class="row d-flex">
				<div class="col-md-6 d-flex">
					<div class="img img-2 w-100 mr-md-2" style="background-image: url(supremo_images/4.jpg);">
						
					</div>
				</div>
				<div class="col-md-6 ftco-animate makereservation p-4 p-md-5">
					<div class="heading-section ftco-animate mb-5">
						<span class="subheading"></span>
						<h2 class="mb-4">Perfect Hairstyle</h2>
						<p>Our Barbershop is well-equipped with cutting-edge technology and offers high-quality services. Our staff is highly trained and experienced, and we provide cutting-edge services in Skin, Hair, various hairstyles.
						</p>
					</div>
				</div>
			</div>
		</div>
	</section>

	<section class="ftco-section bg-light">
		<div class="container">
			<div class="row justify-content-center mb-5 pb-2">
				<div class="col-md-7 text-center heading-section ftco-animate">
					<span class="subheading"></span>
					<h2 class="mb-4">Recent Fashions</h2>
				</div>
			</div>
			<div class="row">
				<div class="col-md-4 ftco-animate">
					<div class="blog-entry">
						<a href="#" class="block-20" style="background-image: url('supremo_images/6.jpg');">
						</a>
					</div>
				</div>
				<div class="col-md-4 ftco-animate">
					<div class="blog-entry">
						<a href="#" class="block-20" style="background-image: url('supremo_images/7.jpg');">
						</a>
					</div>
				</div>
				<div class="col-md-4 ftco-animate">
					<div class="blog-entry">
						<a href="#" class="block-20" style="background-image: url('supremo_images/8.jpg');">
						</a>
					</div>
				</div>
			</div>
			<div class="row">
				<div class="col-md-4 ftco-animate">
					<div class="blog-entry">
						<a href="#" class="block-20" style="background-image: url('supremo_images/9.jpg');">
						</a>
					</div>
				</div>
				<div class="col-md-4 ftco-animate">
					<div class="blog-entry">
						<a href="#" class="block-20" style="background-image: url('supremo_images/10.jpg');">
						</a>
					</div>
				</div>
				<div class="col-md-4 ftco-animate">
					<div class="blog-entry">
						<a href="#" class="block-20" style="background-image: url('supremo_images/11.jpg');">
						</a>
					</div>
				</div>
			</div>
		</div>
	</section>

	<section class="ftco-section ftco-no-pt ftco-no-pb ftco-intro bg-info">
		<div class="container py-5">
			<div class="row py-2">
				<div class="col-md-12 text-center ">
					<h2>We Make New &amp; Latest Hairstyle</h2>
					<a href="services.php" class="btn btn-white btn-outline-white">Book Now</a>
				</div>
			</div>
		</div>
	</section>

	<?php include('includes/footer.php') ?>

	<!-- loader -->
	<div id="ftco-loader" class="show fullscreen"><svg class="circular" width="48px" height="48px"><circle class="path-bg" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke="#eeeeee"/><circle class="path" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke-miterlimit="10" stroke="#F96D00"/></svg></div>


	<script src="js/jquery.min.js"></script>
	<script src="js/jquery-migrate-3.0.1.min.js"></script>
	<script src="js/popper.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
	<script src="js/jquery.easing.1.3.js"></script>
	<script src="js/jquery.waypoints.min.js"></script>
	<script src="js/jquery.stellar.min.js"></script>
	<script src="js/owl.carousel.min.js"></script>
	<script src="js/jquery.magnific-popup.min.js"></script>
	<script src="js/jquery.animateNumber.min.js"></script>
	<script src="js/bootstrap-datepicker.js"></script>
	<script src="js/jquery.timepicker.min.js"></script>
	<script src="js/scrollax.min.js"></script>
	<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBVWaKrjvy3MaE7SQ74_uJiULgl1JY0H2s&sensor=false"></script>
	<script src="js/google-map.js"></script>
	<script src="js/main.js"></script>
	
</body>
</html>