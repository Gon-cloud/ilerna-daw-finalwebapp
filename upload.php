<?php 
include("../controlers/includes/header.php");

$profile_id = $user['username'];
$imgSrc = "";
$result_path = "";
$msg = "";

/**********************************************************
	0 - Quitar la imagen temporal si existe 
***********************************************************/
	if (!isset($_POST['x']) && !isset($_FILES['image']['name']) ){
		//Eliminar la imagen emporal del usuario
			$temppath = '../additional_resources/images/profile_pics/'.$profile_id.'_temp.jpeg';
			if (file_exists ($temppath)){ @unlink($temppath); }
	} 

if(isset($_FILES['image']['name'])){	

/***********************************************************
	1 - Subir imagen original al servidor
***********************************************************/	
	//Obtener Name | Size | Temp Location		    
		$ImageName = $_FILES['image']['name'];
		$ImageSize = $_FILES['image']['size'];
		$ImageTempName = $_FILES['image']['tmp_name'];
	//Obetener archivo externo   
		$ImageType = @explode('/', $_FILES['image']['type']);
		$type = $ImageType[1]; //tipo de archivo
	//Establecer carpeta donde subir el archivo
		//$uploaddir = $_SERVER['DOCUMENT_ROOT'].'/Telefichaje.0.2/additional_resources/images/profile_pics';
		$uploaddir = '../additional_resources/images/profile_pics';
	//Establecer nombre del archivo
		$file_temp_name = $profile_id.'_original.'.md5(time()).'n'.$type; //El nombre del archivo temporal
		$fullpath = $uploaddir."/".$file_temp_name; //ruta archivo temporal
		$file_name = $profile_id.'_temp.jpeg'; //$profile_id.'_temp.'.$type; //Reajuste de la imagen
		$fullpath_2 = $uploaddir."/".$file_name; //Reajuste de la ruta
	//Mover el archivo a la carpeta adecuada
		$move = move_uploaded_file($ImageTempName ,$fullpath) ; 
		chmod($fullpath, 0777);  
		//Comprobación de la subida
		if (!$move) { 
			die ('File didnt upload');
		} else { 
			$imgSrc= "../additional_resources/images/profile_pics/".$file_name; //la imagen para mostrar en crop area
			$msg= "Upload Complete!";  	//mensaje de resultado
			$src = $file_name;	 		//el nombre del archivo que nos quedamos despues de salir de crop area		
		} 

/***********************************************************
	2  - Redimensionar imgenes para usarlas en Cropping Area(Area de recorte)
***********************************************************/		
		//Conseguir el tamaño de imagen de la imagen subida
			clearstatcache();				
			$original_size = getimagesize($fullpath);
			$original_width = $original_size[0];
			$original_height = $original_size[1];	
		//Especificar el nuevo tamaño de imagen
			$main_width = 500; //Establecer ancho de imagen
			$main_height = $original_height / ($original_width / $main_width);	//Calcula la altura mediante el ratio ancho/alto original							
		//crear nueva imagen usando funciones de Jquery			
			if($_FILES["image"]["type"] == "image/gif"){
				$src2 = imagecreatefromgif($fullpath);
			}elseif($_FILES["image"]["type"] == "image/jpeg" || $_FILES["image"]["type"] == "image/pjpeg"){
				$src2 = imagecreatefromjpeg($fullpath);
			}elseif($_FILES["image"]["type"] == "image/png"){ 
				$src2 = imagecreatefrompng($fullpath);
			}else{ 
				$msg .= "There was an error uploading the file. Please upload a .jpg, .gif or .png file. <br />";
			}
		//crear un nueva imgan recortada
			$main = imagecreatetruecolor($main_width,$main_height);
			imagecopyresampled($main,$src2,0, 0, 0, 0,$main_width,$main_height,$original_width,$original_height);
		//subir nueva versión
			$main_temp = $fullpath_2;
			imagejpeg($main, $main_temp, 90);
			chmod($main_temp,0777);
		//liberar memoria
			imagedestroy($src2);
			imagedestroy($main);
			//imagedestroy($fullpath);
			@ unlink($fullpath); //eliminar la imagen original subida					
									
}//añadir imagen 	

/***********************************************************
	3- Recorte  y conversión de la imagen en JPG
***********************************************************/
if (isset($_POST['x'])){
	
	//tipo de archivo subido
		$type = $_POST['type'];	
	//src 
		$src = '../additional_resources/images/profile_pics/'.$_POST['src'];	
		$finalname = $profile_id.md5(time());	
	
	if($type == 'jpg' || $type == 'jpeg' || $type == 'JPG' || $type == 'JPEG'){	
	
		//dimensiones objetivo 150x150
			$targ_w = $targ_h = 150;
		//calidad de salida
			$jpeg_quality = 90;
		//crear una imagen copia de la recortada
			$img_r = imagecreatefromjpeg($src);
			$dst_r = imagecreatetruecolor( $targ_w, $targ_h );
			imagecopyresampled($dst_r,$img_r,0,0,$_POST['x'],$_POST['y'],
			$targ_w,$targ_h,$_POST['w'],$_POST['h']);
		//guardar la versión recortada 
			imagejpeg($dst_r, "../additional_resources/images/profile_pics/".$finalname."n.jpeg", 90); 	
			 		
	}else if($type == 'png' || $type == 'PNG'){
		
		//dimensiones objetivo 150x150
			$targ_w = $targ_h = 150;
		//calidad de salida
			$jpeg_quality = 90;
		//Crear copia de la imagen recortada
			$img_r = imagecreatefrompng($src);
			$dst_r = imagecreatetruecolor( $targ_w, $targ_h );		
			imagecopyresampled($dst_r,$img_r,0,0,$_POST['x'],$_POST['y'],
			$targ_w,$targ_h,$_POST['w'],$_POST['h']);
		//Guardar la versión recortada
			imagejpeg($dst_r, "../additional_resources/images/profile_pics/".$finalname."n.jpeg", 90); 	
						
	}else if($type == 'gif' || $type == 'GIF'){
		
		//dimensiones objetivo 150x150
			$targ_w = $targ_h = 150;
		//calidad del resultado
			$jpeg_quality = 90;
		//crear una imagen recortada de la copia de la imagen
			$img_r = imagecreatefromgif($src);
			$dst_r = imagecreatetruecolor( $targ_w, $targ_h );		
			imagecopyresampled($dst_r,$img_r,0,0,$_POST['x'],$_POST['y'],
			$targ_w,$targ_h,$_POST['w'],$_POST['h']);
		//Guardar versión recortada
			imagejpeg($dst_r, "../additional_resources/images/profile_pics/".$finalname."n.jpeg", 90); 	
		
	}
		//liberar memoria
			imagedestroy($img_r);  
			imagedestroy($dst_r); 
			@ unlink($src); // Elimina el original subido					
		
		//Devuele la imagen recortada 
		$result_path ="../additional_resources/images/profile_pics/".$finalname."n.jpeg";

		//Insertar imagen en bbdd
		$insert_pic_query = mysqli_query($con, "UPDATE users SET profile_pic='$result_path' WHERE username='$userLoggedIn'");
		header("Location: ".$userLoggedIn);
														
}// post x
?>
<div id="Overlay" style=" width:100%; height:100%; border:0px #990000 solid; position:absolute; top:0px; left:0px; z-index:2000; display:none;"></div>
<div class="main_column column">

	<div id="formExample">
		
	    <p><b> <?=$msg?> </b></p>
	    
	    <form action="upload.php" method="post"  enctype="multipart/form-data">
	        Sube la nueva imagen<br /><br />
	        <input type="file" id="image" name="image" style="width:200px; height:30px; " /><br /><br />
	        <input type="submit" value="Continuar" style="width:85px; height:25px;" />
	    </form><br /><br />
	    
	</div> <!-- Form-->  

    <?php
    if($imgSrc){ //Si se ha subido una imagen muestra cropping area?>
	    <script>
	    	$('#Overlay').show();
			$('#formExample').hide();
	    </script>
	    <div id="CroppingContainer" style="width:800px; max-height:600px; background-color:#FFF; margin-left: -200px; position:relative; overflow:hidden; border:2px #666 solid; z-index:2001; padding-bottom:0px;">  
	    
	        <div id="CroppingArea" style="width:500px; max-height:400px; position:relative; overflow:hidden; margin:40px 0px 40px 40px; border:2px #666 solid; float:left;">	
	            <img src="<?=$imgSrc?>" border="0" id="jcrop_target" style="border:0px #990000 solid; position:relative; margin:0px 0px 0px 0px; padding:0px; " />
	        </div>  

	        <div id="InfoArea" style="width:180px; height:150px; position:relative; overflow:hidden; margin:40px 0px 0px 40px; border:0px #666 solid; float:left;">	
	           <p style="margin:0px; padding:0px; color:#444; font-size:18px;">          
	                <b>Adapta la imagen de perfil</b><br /><br />
	                <span style="font-size:14px;">
	                	Adapta la imagen de perfil subida. <br />
	                    Cuando hayas acabado de adaptar la imagen pulsa el boton guardar.

	                </span>
	           </p>
	        </div>  

	        <br />

	        <div id="CropImageForm" style="width:100px; height:30px; float:left; margin:10px 0px 0px 40px;" >  
	            <form action="upload.php" method="post" onsubmit="return checkCoords();">
	                <input type="hidden" id="x" name="x" />
	                <input type="hidden" id="y" name="y" />
	                <input type="hidden" id="w" name="w" />
	                <input type="hidden" id="h" name="h" />
	                <input type="hidden" value="jpeg" name="type" /> <?php // $type ?> 
	                <input type="hidden" value="<?=$src?>" name="src" />
	                <input type="submit" value="Guardar" style="width:100px; height:30px;"   />
	            </form>
	        </div>

	        <div id="CropImageForm2" style="width:100px; height:30px; float:left; margin:10px 0px 0px 40px;" >  
	            <form action="upload.php" method="post" onsubmit="return cancelCrop();">
	                <input type="submit" value="Cancelar" style="width:100px; height:30px;"   />
	            </form>
	        </div>            
	            
	    </div><!-- CroppingContainer -->
	<?php 
	} ?>
</div>
 
 <?php if($result_path) {
	 ?>
     
     <img src="<?=$result_path?>" style="position:relative; margin:10px auto; width:150px; height:150px;" />
	 
 <?php } ?>
  
    <br /><br />
