<?php 
include("../controlers/includes/header.php");
include("../controlers/includes/classes/User.php");
include("../controlers/includes/classes/Post.php");
require '../controlers/includes/handlers/clockin_handler.php';


if(isset($_POST['post'])){
	$post = new Post($con, $userLoggedIn);
	$post->submitPost($_POST['post_text'], 'none');
}

 ?>
	<div class="user_details column">
		<a href="<?php echo $userLoggedIn; ?>">  <img src="<?php echo $user['profile_pic']; ?>"> </a>

		<div class="user_details_left_right">
			<a href="<?php echo $userLoggedIn; ?>">
			<?php 
			echo $user['first_name'] . " " . $user['last_name']. "<br>";

			 ?>
			</a>
			<br>
			<?php echo "Posts: " . $user['num_posts']. "<br>"; 
			?>
		</div>

	</div>

	<div class="main_column column">

		<br>

		<hr>
		<form class="post_form" action="profile.php" method="POST">
			<textarea name="post_text" id="post_text" placeholder="¿Tienes algo que comentar?"></textarea>
			<input type="submit" name="post" id="post_button" value="Comentar" >
			<hr>

		</form>

		<div class="posts_area"></div>
		<img id="loading" src="../additional_resources/images/icons/loading.gif">

	</div>

	<script>
	var userLoggedIn = '<?php echo $userLoggedIn; ?>';

	$(document).ready(function() {

		$('#loading').show();

		//ajax que carga el primer comentario 
		$.ajax({
			url: "../controlers/includes/handlers/ajax_load_posts.php",
			type: "POST",
			data: "page=1&userLoggedIn=" + userLoggedIn,
			cache:false,

			success: function(data) {
				$('#loading').hide();
				$('.posts_area').html(data);
			}
		});

		$(window).scroll(function() {
			var height = $('.posts_area').height(); //Div que contien los comentarios(post)
			var scroll_top = $(this).scrollTop();
			var page = $('.posts_area').find('.nextPage').val();
			var noMorePosts = $('.posts_area').find('.noMorePosts').val();

			if ((document.body.scrollHeight == document.body.scrollTop + window.innerHeight) && noMorePosts == 'false') {
				$('#loading').show();

				var ajaxReq = $.ajax({
					url: "../controlers/includes/handlers/ajax_load_posts.php",
					type: "POST",
					data: "page=" + page + "&userLoggedIn=" + userLoggedIn,
					cache:false,

					success: function(response) {
						$('.posts_area').find('.nextPage').remove(); //Elimina  .nextpage 
						$('.posts_area').find('.noMorePosts').remove(); //Elimina  .nextpage 

						$('#loading').hide();
						$('.posts_area').append(response);
					}
				});

			} //End if 

			return false;

		}); //End (window).scroll(function())  //Comprobacion de prueba

	});

	</script>

	</div>
</body>
</html>