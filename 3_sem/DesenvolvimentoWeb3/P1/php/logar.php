<?php
  session_start();   
  include 'conexao.php';
		 
		 $usuario = $_POST["txt_usuario"];
		 $senha = $_POST["txt_senha"];
			 
		 $sql=mysql_query ("SELECT  * FROM tb_usuarios 
		            WHERE (nome='$usuario'  or email='$usuario') 
					and senha='$senha'"); 
		 if (mysql_num_rows($sql) > 0) {
			 
		    ?>
				<!DOCTYPE html>
				<html>
				
				<head>
					<meta charset="UTF-8">
					<meta name="viewport" content="width=device-width, initial-scale=1.0">
					<meta name="description" content="Bolos para sua festa de aniversário, casamento ou comemorações.">
					<link rel="icon" href="../img/icone.png" type="image/x-icon">
					<title>Dolcevitta</title>
					<link rel="stylesheet"
						href="https://unpkg.com/boxicons@latest/css/boxicons.min.css">
				
					<link rel="stylesheet" 
						href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
				
					<link rel="stylesheet"
						href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css"
						integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
						crossorigin="anonymous">
				
						<link rel="stylesheet" href="../css/style.css">
					</head>
				
				<body>
					<header class="header">
            <a href="#"><img src="../img/logo.png" class="logo"></i></a>
						<nav class="navbar" onclick="abrirMenu()">
							<a href="../index.php#home">home</a>
							<a href="../index.php#sobre">sobre</a>
							<a href="../index.php#produtos">produtos</a>
							<a href="../index.php#pedidos">fazer pedido</a>
							<?php 
							if(isset($_SESSION['logged_in']) && $_SESSION['logged_in'] == true && $_SESSION['username'] == 'admin') {
								echo '<a href="pedidos_admin.php">pedidos</a>';
							} elseif (isset($_SESSION['logged_in']) && $_SESSION['logged_in'] == true) {
								echo '<a href="pedidos.php">meus pedidos</a>';
							} else {
								echo '<a href="login.php">meus pedidos</a>';}
										
							?>
						</nav>
				
				

						<div class="icons">
						<?php
							if(isset($_SESSION['logged_in']) && $_SESSION['logged_in'] == true){
								echo 'Olá, '.$_SESSION['username'].'<div id="btn_logout_sub" class="bx bx-log-out-circle"></div>';
							} else {
								echo '<div id="btn_login_sub" class="bx bx-log-in-circle"></div>';
							}
						?>
						<div id="btn_carrinho_sub" class="bx bx-cart"></div>
						<div id="menu-btn" class="bx bx-menu"></div>
						</div>
					</header>
				
					<section class="secao-login">
						<container class="cont-login">
								<p>Usuário logado com sucesso.</p>
						</container>
					</section>
					<script src="../js/script.js"></script>
				</body>
				
				</html>
			<?php
			
			$_SESSION['logged_in'] = true;
			$linha = mysql_fetch_assoc($sql);
			$_SESSION['usermail'] = $linha['email'];
			$_SESSION['username'] = $linha['nome'];
			$_SESSION['errado'] = false;
		
			if(isset($_SESSION['form_preench'])) {
				header("Location: ../index.php#pedidos");
			} elseif ($usuario == "admin@admin" || $usuario == "admin") {
				header("Location: pedidos_admin.php");
			} else {
				header("Location: ../index.php");
			}
			
			
			} else {
				$_SESSION['errado'] = true;
				header("Location: login.php");
		  }