<?php 

session_start();

if ( defined( 'RESTRICTED' ) ) {
    if ( !isset( $_SESSION['user'] ) ) {
      header( 'Location: index.php' );
      exit();
    }
}
else {
    if ( isset( $_SESSION['user'])){
      header( 'Location: perfilExp.php' );
      exit();
    }
}

?>