<?php
	$sql = "SELECT * FROM BlogPosts";
	include_once("php/_DB.php");
	try {
    	$core = Core::getInstance();
    	//$stmt = $core->dbh->prepare($sql);
    	$result = $core->dbh->query($sql);

    	// Intentionally not secure against HTML injections!
		while($row = $result->fetch()){
			echo "<b>" . stripslashes($row['Title']) . "</b><br> " . stripslashes($row['Content']) . "<br>";
			echo "<br />";
		}
    } catch(expression $e) {
    	echo $e;
    }

?>