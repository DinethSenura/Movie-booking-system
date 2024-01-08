<?php
include '../controllers/theatersController.php';
require_once('../controllers/movieController.php');
?>

<!DOCTYPE html>
<html>
	<head>
		<title>Team Section</title>
		<link rel="stylesheet" href="../css/aboutUs.css">
        <link rel="stylesheet" href="../css/header.css">
        <link rel="stylesheet" href="../css/footer.css">
	</head>
	<body>
	<?php require "../common/header.php" ?>
	  <div class="section">
			<div class="container">
				<div class="content-section">
					<div class="title">
						<h1>About Us</h1>
					</div>
					<div class="content">
						<h3>EzBidder is an online auction system that provides services to both bidders and auctioneers all over the world. 
						This online platform supports bidders to bid for products and for auctioneers to place auctions. 
						People all over the world can use our website as an online business platform.  
						In our system there is an admin who is responsible for generating reports on latest auctions,
						featured actions, upcoming auctions, closing auctions, closed auctions and generating charts on trending list per month, monthly income, and customer interaction per month. 
						To do these things, there are some requirements that need to be considered. </p>
						 
					</div>
				</div>
				<div class="image-section">
					<img src="../images/team-3.jpg">
				</div>
			</div>
		</div>
	  <section class="team-section">
		 <div class="container">
			 <div class="row">
				 <div class="section-title">
					 <h1>Our Team</h1>
					 <p>Our team consists of passionate and talented individuals invested in your success.</p>
				 </div>
			 </div>
			 <div class="row">
				 <div class="team-items">
				 
					  <div class="item">
						  <img src="../image/team/1.jpg" alt="team" />
						  <div class="inner">
							  <div class="info">
								   <h5>Janani Jayasuriya</h5>
							  </div>
						  </div>
					  </div>
					  
					  <div class="item">
						  <img src="../image/team/2.jpeg" alt="team" />
						  <div class="inner">
							  <div class="info">
								   <h5>Shashiprabha P.K.I</h5>
							  </div>
						  </div>
					  </div>
					  
					  <div class="item">
						  <img src="../image/team/3.jpg" alt="team" />
						  <div class="inner">
							  <div class="info">
								   <h5>W.W.M Malitha</h5>	
							  </div>
						  </div>
					  </div>
					  
					  <div class="item">
						  <img src="../image/team/4.jpg" alt="team" />
						  <div class="inner">
							  <div class="info">
								   <h5>Dineth Kusumsiri </h5>
							  </div>
						  </div>
					  </div>
					  
					  <div class="item">
						  <img src="../image/team/5.jpeg" alt="team" />
						  <div class="inner">
							  <div class="info">
								   <h5>Dissanayake A.L</h5>           
							  </div>
						  </div>
					  </div>
					  
				 </div>
			 </div>
		 </div>
		 
	  </section>
		<?php require "../common/footer.php" ?>
	</body>
</html>
