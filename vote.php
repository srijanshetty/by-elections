<?php
session_start();
include('dbconnect.php');

//echo $_SERVER['REMOTE_ADDR'];
if($_SERVER['REMOTE_ADDR']!="::1") {
	//die("Invalid Access");
}

$apost=$_SESSION['post'];
$total=2;
$next="final";

//No of checked radio buttons to be modified in validate
$no_polling=array("Senator, UG Y9", "Senator, UG Y10", "Senator, UG Y10 (Dual)", "Senator, UG Y12","Senator, UG Y13", "Senator, M.Tech. Y12", "Senator, M.Tech. Y13", "Senator, MBA + M.Des. Y12", "Senator, MBA + M.Des. Y13", "Senator, M.Sc. Y12", "Senator, M.Sc. Y13");

if(in_array($apost, $no_polling)) {
	header("Location: final.php");
}

if($_SESSION['user']==1) {
?>
	<html>
	<head>
        <link rel="stylesheet" href="./bootstrap.min.css"/>
		<link rel="stylesheet" type="text/css" href="styles.css">
		<script type="text/javascript" src="jquery.min.js"></script>
		<script type="text/javascript" src="myvote.js"></script>
	</head>
	<body>
		<form method="POST" action="castvote.php" width="900px">
		<h1><?php echo $apost; ?></h1>
        <div class="container">
        <div class="row">
		<?php
		$sql="SELECT * FROM candidates WHERE post = '".$apost."' ORDER BY Name";
		$result=mysql_query($sql) or die(mysql_error());

		while($row=mysql_fetch_assoc($result)) {
            echo "<div class='col-md-2 text-center'>";
            echo "<br>";
			echo '<p><b>'.$row['Name'].'</b></p>';
			echo '<img class="candpic" src="pics/senators/'.$row['pic'].'"/>';
			echo "<div>";
            echo "<br>";
			echo '<input type="radio" class="pref" name="pref1" value="'.$row['id'].'" />1<sup>st</sup> preference<br/>';
			echo '<input type="radio" class="pref" name="pref2" value="'.$row['id'].'" />2<sup>nd</sup> preference<br/>';
			echo '<input type="radio" class="pref" name="pref3" value="'.$row['id'].'" />3<sup>rd</sup> preference<br/>';
			echo "</div>";
            echo "</div>";
		}
        ?>
    </div>
    </div>

		<script type="text/javascript">
			$(document).ready(function() {
				$('input[type="submit"]').on('click', function() {
					sub = validate(3);
					if(sub) {
						$(this).prop('disabled', true);
						this.form.submit();
					}
					else {
						return false;
					}
				});
			});
		</script>

		<div align="center">
			<br/><br/>
			<input type="hidden" name="total" value="<?php echo $total; ?>" />
			<input type="hidden" name="next" value="<?php echo $next; ?>" />
			<input type="submit" value="Cast My Vote" />
		</div>
		</form>
		<audio id="sound" src="audio/beep-1.mp3"></audio>
	</body>
	</html>
<?php
}
else {
	header('Location:index.php');
}
?>
