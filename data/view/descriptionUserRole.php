<?php

/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

//include "../../../data/view/dataExtractor.php";

$option = $_SESSION['levelID'];

$levelRole = getTingkatan($option);
$levelDescription = levelDescription($option);

echo "<h4>".$levelRole."</h4>";
echo "<p>".$levelDescription."</p>";