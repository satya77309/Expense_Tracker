<?php
session_start();
require_once('db_config.php');

	if(isset($_POST['submit']) && !empty($_POST['amount']) && !empty($_POST['expense_name'])){ 
   
     $amount = mysqli_real_escape_string($con,$_POST['amount']);
     $expense_name = mysqli_real_escape_string($con,$_POST['expense_name']);
     $expense_category_id = mysqli_real_escape_string($con,$_POST['getID']);
     // exit;
    $update = mysqli_query($con, "UPDATE expense_category_tbl SET amount = '".$amount."', expense_category_name= '".$expense_name."' 
      WHERE expense_category_id = '".$expense_category_id."' ");
// exit;
    if($update === TRUE)
    {
      echo '
         <script type="text/javascript">
          alert("Success!");
          window.location.replace("expense_category.php");
         </script>';
    
    }

else{
		echo '
         <script type="text/javascript">
          alert("Error!");
          window.location.replace("update.php ");
         </script>';
	}

}
// unset($_SESSION['expense_category_id']);
mysqli_close($con);

		?>
