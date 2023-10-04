<?php  
//export.php  
include 'db.php';
$output = '';
if(isset($_POST["export"]))
{
 $query = "SELECT * FROM card_activation order by 1 desc";
 $result = mysqli_query($con, $query);
 if(mysqli_num_rows($result) > 0)
 {
  $output .= '
   <table class="table" bordered="1">  
                    <tr>  
                         <th>N.R</th>  
                         <th>Student ID</th>  
                         <th>Mobile Number</th>  
                         <th>Name</th>  
                         <th>Father Name</th>  
                         <th>University Profile</th>
                         <th>Email</th>  
                         <th>Passaport ID</th>
                         <th>Gender</th>  
                         <th>Date of Birth</th>
                         <th>Family member</th>  
                         <th>State</th>
                         <th>Staff Id</th>  
                    </tr>
  ';
  $i = 0;
  while($row = mysqli_fetch_array($result))
  {
    $nr = ++$i;
   $output .= '
    <tr>  
                         <td > '.$nr.' </td>
                         <td>'.$row["u_card"].'</td>  
                         <td>'.$row["u_phone"].'</td> 
                         <td>'.$row["u_f_name"]  .$row["u_l_name"].'</td>  
                         <td>'.$row["u_father"].'</td>  
                         <td>'.$row["u_degree"].'</td>  
                         <td>'.$row["u_email"].'</td> 
                         <td>'.$row["u_passaport"].'</td>  
                         <td>'.$row["u_gender"].'</td> 
                         <td>'.$row["u_birthday"].'</td>  
                         <td>'.$row["u_family"].'</td>
                         <td>'.$row["u_village"] .$row["u_pstation"] .$row["u_dist"] .$row["u_pincode"] .$row["u_state"].'</td> 
                         <td>'.$row["staff_id"].'</td>  
                    </tr>
   ';
  }
  $output .= '</table>';
  header('Content-Type: application/xls');
  header('Content-Disposition: attachment; filename=Lista e Studenteve te UBT.xls');
  echo $output;
 }
}
?>