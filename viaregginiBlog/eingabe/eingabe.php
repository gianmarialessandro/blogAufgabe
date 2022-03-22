<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8"/>
  <meta name="viewports" content="width=device-width, initial-scale=1.0">  <!-- Kompabilität mit verschiedene Geräte-->
  <title>Blog di Viareggini in Deutschland</title>
<style>
  
  * {
    box-sizing: border-box;
  }

  body {
    font-family: Arial;
    padding: 10px;
    background: #f0f0f0;
  }

  /* Blog Title */
  .header {
    padding: 30px;
    text-align: center;
    background: #414d58;
  }

  .header h1 {
    font-size: 50px;
    color: #f2f2f2;
    text-shadow: 2px 2px 2px black;
  }

  .header h1:hover {
    color:black;
    text-shadow: 2px 2px 2px #f0f0f0;
  }

  .header p {
    font-size: 25px;
    color: #f2f2f2;
    text-shadow: 2px 2px 2px black;
  }

  /* Style der Navigationbar */
  .nav {
    overflow: hidden;
    background-color: #414d58;
  }

  
  .nav a {
    display: block;
    float: left;
    color: #f2f2f2;
    text-align: center;
    padding: 14px 16px;
    text-decoration: none;
  }

  
  .nav a:hover {
    background-color: #f2f2f2;
    color: black;
    font-size: 20px;
  }

  /* Eingabe Feld */
  .eingabe {
  	margin-top: 10px;
  	padding-top: 1px;
  	background-color: #414d58;
  }

  .eingabe fieldset {
  	margin-top: 20px;
  }

  .eingabe input {
  	margin-top: 10px;
  }

  .manda {
  	margin-left: 20px;
  	margin-bottom: 5px;
  }


  /* Footer */
  .footer {
	margin: 5px;
    text-align: right;
    background: none;    
  }

  
  </style>
  </head>
  <body>

  <div class="header">
    <h1>Viareggini in Germania</h1>
    <p>ein Blog von Viareggini in Deutschland</p>
  </div>

  <hr>

  <div class="nav">
    <a href="../index/index.php">Homepage</a>
  </div>

  <?php 	// PHP 

		// Funktion zum Löschen von Leerzeichen und zur Validierung von Sonderzeichen 

		function pruefEingabe ($Daten) {
			$Daten=htmlspecialchars($Daten);
			$Daten=trim($Daten);
			$Daten=stripslashes($Daten);
			return $Daten;
		}
		//Variablen für Post-Inhalte
		$Vorname=$Name=$Ueberschrift=$Artikel="";
				
		//Überprufüng ob Werte eingegeben sind

		if($_SERVER["REQUEST_METHOD"]==="POST"
			&& !empty($_POST["vorname"])
			&& !empty($_POST["name"])
			&& !empty($_POST["ueberschrift"])
			&& !empty($_POST ["artikel"])
		){

			$Vorname=pruefEingabe ($_POST["vorname"]);
			$Name=pruefEingabe ($_POST["name"]);
			$Ueberschrift=pruefEingabe ($_POST["ueberschrift"]);
			$Artikel=pruefEingabe ($_POST["artikel"]);

			//Datenbankverbindungsaufbaudaten
			$Servername="localhost"; 
			$User="root";
			$Password="";
			$DBName="projektebas";
			$Conn=new mysqli($Servername,$User,$Password,$DBName);

			$Statement="INSERT INTO ins (vorname,name,ueberschrift,artikel) VALUES ('$Vorname','$Name','$Ueberschrift','$Artikel')";

			//Abschicken der Anweisung und überprüfen, ob es geklappt hat
			if($Conn->query($Statement)===TRUE){
				echo "Die Daten sind eingetragen";
			}else{
				echo "Die Daten sind nicht eingetragen";
			}

			$Conn->close();

		}
	?>
<div class="eingabe">		<!-- Eingabe Feld -->
	<form method="post" action="<?php echo htmlspecialchars($_SERVER["PHP_SELF"]);?>">		
	<fieldset>   			<!-- Vorname und Name Feld -->
	<legend style="color: white;">Autor</legend>
	<label for="vorname" style="color: white;">Vorname: </label>
	<input id="vorname" type="text" name="vorname" value="">
	<label for="name" style="color: white;">Name: </label>
	<input id="name" type="text" name="name" value="">		
	</fieldset>	
	<fieldset>				<!-- Überschrift un Artikel Feld -->
	<legend style="color: white;">Artikel</legend>
	<label for="ueberschrift" style="color: white;">Überschrift: </label>
	<input id="ueberschrift" type="text" name="ueberschrift" value="">
	<br><br>	
	<textarea name="artikel" rows="30" cols="100"></textarea>
	</fieldset>	
	<input class="manda" type="submit" name="submit" value="Abschicken">
</div>
			

<div class="footer">			<!-- Footer -->
    <b>viareggini@nelmondo.de</b>
</div>

</body>
</html>
