<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8"/>
  <meta name="viewports" content="width=device-width, initial-scale=1.0">  <!-- Kompabilität mit verschiedene Geräte-->
  <title>ein Blog von Viareggini in Deutschland</title>
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

  /* Erstellung von zwie ungleiche Spalten, die nebeneinander schweben */
  
  .leftcolumn {   
    float: left;
    width: 75%;
    font-size: 18px;
  }

  
  .rightcolumn {
    float: left;
    width: 25%;
    height: 2000px;
    overflow:auto;
    background-color: #f1f1f1;
    padding-left: 20px;
  }

  /* Photos */
  .img {
    height: : 100%;
    padding: 20px;
    
  }

  /* Artikels Background */
  .box {
    background-color: white;
    padding: 20px;
    margin-top: 20px;
  }

  /* Floats nach den Spalten löschen  */
  .row:after {
    content: "";
    display: table;
    clear: both;
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

  <div class="nav">     <!-- Navigationbar -->
    <a href="../eingabe/eingabe.php" style="float:right">Schreibe deinen Artikel</a>
  </div>

  <div class="row">           <!-- Main Part -->
    <div class="leftcolumn">        <!-- Linke Spalte -->
      <div class="box">
        <div class="img"><img src="../img/apuane.jpg" alt="Viareggio e le Apuane" title="Viareggio e le Apuane" width="98%" ></div>
        <h2>Letze Posts</h2>
      </div>
      <div class="box">    <!-- Letzter Artikerl -->
          <?php      
            $Servername="localhost";    //Variable für die Verbindung erstellen
            $User="root";
            $Password="";
            $DBName="projektEBAS";

            $Conn=new mysqli($Servername,$User,$Password,$DBName); // Verbindung mit mysqli
            $Conn-> set_charset("utf8");

            $Statement="SELECT * FROM ins ORDER BY ID DESC LIMIT 1";    // Variable für mysql Anweisung

            $Output=$Conn->query($Statement);   //Variable zum Speichern des Ergebniesses der Anfrage

            // Zeilen Zeigen

            if($Output->num_rows > 0) {
              while($Line=$Output->fetch_assoc()){
                echo "Autor: <b>".$Line["vorname"]." ".$Line["name"]."</b><br><br>";
                echo "<b>".$Line["ueberschrift"]."<br><br>".$Line["artikel"]."</b><br><br>";
                echo "<sub>Datum: <b>".$Line["datum"]."</b></sub><br><br><br><br>";
              }
            }else{
              echo "Keine Daten vorhanden";
            } 

            $Conn->close();   // Verbindung schliessen
          
          ?>
      </div>
      <div class="box">       <!-- Vorletzter Artikerl -->
          <?php     
            $Servername="localhost";    //Variable für die Verbindung erstellen
            $User="root";
            $Password="";
            $DBName="projektEBAS";

            $Conn=new mysqli($Servername,$User,$Password,$DBName); // Verbindung mit mysqli
            $Conn-> set_charset("utf8");

            $Statement="SELECT * FROM ins ORDER BY ID DESC LIMIT 1,1";    // Variable für mysql Anweisung

            $Output=$Conn->query($Statement);   //Variable zum Speichern des Ergebniesses der Anfrage

            // Zeilen Zeigen

            if($Output->num_rows > 0) {
              while($Line=$Output->fetch_assoc()){
                echo "Autor: <b>".$Line["vorname"]." ".$Line["name"]."</b><br><br>";
                echo "<b>".$Line["ueberschrift"]."<br><br>".$Line["artikel"]."</b><br><br>";
                echo "<sub>Datum: <b>".$Line["datum"]."</b></sub><br><br><br><br>";
              }
            }else{
              echo "Keine Daten vorhanden";
            } 

            $Conn->close();   // Verbindung schliessen
          ?>
      
    </div>
    <div class="box">       <!-- Drittletzter Artikerl -->
          <?php     
            $Servername="localhost";    //Variable für die Verbindung erstellen
            $User="root";
            $Password="";
            $DBName="projektEBAS";

            $Conn=new mysqli($Servername,$User,$Password,$DBName); // Verbindung mit mysqli
            $Conn-> set_charset("utf8");

            $Statement="SELECT * FROM ins ORDER BY ID DESC LIMIT 2,1";    // Variable für mysql Anweisung

            $Output=$Conn->query($Statement);   //Variable zum Speichern des Ergebniesses der Anfrage

            // Zeilen Zeigen

           if($Output->num_rows > 0) {
              while($Line=$Output->fetch_assoc()){
                echo "Autor: <b>".$Line["vorname"]." ".$Line["name"]."</b><br><br>";
                echo "<b>".$Line["ueberschrift"]."<br><br>".$Line["artikel"]."</b><br><br>";
                echo "<sub>Datum: <b>".$Line["datum"]."</b></sub><br><br><br><br>";
              }
            }else{
              echo "Keine Daten vorhanden";
            } 

            $Conn->close();   // Verbindung schliessen
          
          ?>
      
    </div>
    </div>
    <div class="rightcolumn">         <!-- Rechte Spalte -->
      <div class="box">               <!-- Alle Artikel -->
        <div class="img"><img src="../img/viareggio e apuane.jpg" alt="Viareggio e le Apuane" title="Viareggio e le Apuane" width="100%" ></div>
        <h2>Alle Posts</h2>
        <?php     
            $Servername="localhost";    //Variable für die Verbindung erstellen
            $User="root";
            $Password="";
            $DBName="projektEBAS";

            $Conn=new mysqli($Servername,$User,$Password,$DBName); // Verbindung mit mysqli
            $Conn-> set_charset("utf8");

            $Statement="SELECT * FROM ins ORDER BY ID";   // Variable für mysql Anweisung

            $Output=$Conn->query($Statement);   //Variable zum Speichern des Ergebniesses der Anfrage

            // Zeilen Zeigen

            if($Output->num_rows > 0) {
              while($Line=$Output->fetch_assoc()){
                echo "Autor: <b>".$Line["vorname"]." ".$Line["name"]."</b><br><br>";
                echo "<b>".$Line["ueberschrift"]."<br><br>".$Line["artikel"]."</b><br><br>";
                echo "<sub>Datum: <b>".$Line["datum"]."</b></sub><br><br><br><br>";
              }
            }else{
              echo "Keine Daten vorhanden";
            } 

            $Conn->close();   // Verbindung schliessen
          
      ?>
                  <!-- Photo am Ende der rechte Spalte -->
      <div class="img"><img src="../img/hotel royal.jpg" alt="Hotel Royal sul lungomare" title="Hotel Royal" width="100%" ></div>
      </div>        
    </div>
  </div>

  <div class="footer">      <!-- Footer -->
    <b>viareggini@nelmondo.de</b>
  </div>

</body>
</html>
