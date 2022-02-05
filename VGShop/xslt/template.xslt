<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">

	<xsl:output method="html" indent="yes"/>
	<xsl:param name="TipoTienda" select="TipoTienda"></xsl:param>

	<xsl:template match="Tienda">
		<html lang="en">
			<head>
				<!--font-family-->
				<link href="https://fonts.googleapis.com/css?family=Playfair+Display:400,400i,700,700i,900,900i" rel="stylesheet"/>

				<link href="https://fonts.googleapis.com/css?family=Poppins:100,200,300,400,500,600,700,800,900" rel="stylesheet"/>

				<link href="https://fonts.googleapis.com/css?family=Lato:100,300,400,700,900" rel="stylesheet"/>

				<!-- for title img -->
				<link rel="shortcut icon" type="image/icon" href="assets/images/logo/favicon.png" />

				<!--font-awesome.min.css-->
				<link rel="stylesheet" href="css/font-awesome.min.css"/>

				<!--linear icon css-->
				<link rel="stylesheet" href="https://cdn.linearicons.com/free/1.0.0/icon-font.min.css"/>

				<!--animate.css-->
				<link rel="stylesheet" href="css/animate.css"/>

				<!--hover.css-->
				<link rel="stylesheet" href="css/hover-min.css"/>

				<!--vedio player css-->
				<link rel="stylesheet" href="css/magnific-popup.css"/>

				<!--owl.carousel.css-->
				<link rel="stylesheet" href="css/owl.carousel.min.css"/>
				<link href="assets/css/owl.theme.default.min.css" rel="stylesheet" />


				<!--bootstrap.min.css-->
				<link rel="stylesheet" href="css/bootstrap.min.css"/>

				<!-- bootsnav -->
				<link href="assets/css/bootsnav.css" rel="stylesheet" />

				<!--style.css-->
				<link rel="stylesheet" href="css/style.css"/>

				<!--responsive.css-->
				<link rel="stylesheet" href="css/responsive.css"/>

				<!-- jaquery link -->

				<script src="js/jquery.js"></script>
				<!-- Include all compiled plugins (below), or include individual files as needed -->

				<!--modernizr.min.js-->
				<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/modernizr/2.8.3/modernizr.min.js"></script>


				<!--bootstrap.min.js-->
				<script type="text/javascript" src="assets/js/bootstrap.min.js"></script>

				<!-- bootsnav js -->
				<script src="js/bootsnav.js"></script>

				<!-- for manu -->
				<script src="js/jquery.hc-sticky.min.js" type="text/javascript"></script>


				<!-- vedio player js -->
				<script src="js/jquery.magnific-popup.min.js"></script>


				<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/jquery-easing/1.4.1/jquery.easing.min.js"></script>

				<!--owl.carousel.js-->
				<script type="text/javascript" src="assets/js/owl.carousel.min.js"></script>

				<!-- counter js -->
				<script src="js/jquery.counterup.min.js"></script>
				<script src="js/waypoints.min.js"></script>

				<!--Custom JS-->
				<script type="text/javascript" src="js/jak-menusearch.js"></script>
				<script type="text/javascript" src="js/custom.js"></script>
			</head>
			<body>
				<div class="navbar-header">
					<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
						<span class="sr-only">Toggle navigation</span>
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
					</button>
					<a class="navbar-brand" href="index.html">
						<img src="images/logo/logo.png" alt="logo"/>
					</a>
				</div>
				<section id="menu">
					<div class="container">
						<div class="menubar">
							<nav class="navbar navbar-default">
								<div class="navbar-header">
									<br/>
									<h3>Retro Game</h3>

								</div>
								<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
									<ul class="nav navbar-nav navbar-right">
										<xsl:for-each select="Opciones/Opcion">
											<xsl:choose>
												<xsl:when test="$TipoTienda=@Id">
													<li>
														<a href="{@Url}" class="active">
															<xsl:value-of select="@Texto"/>
														</a>
													</li>
												</xsl:when>
												<xsl:otherwise>
													<li>
														<a href="{@Url}">
															<xsl:value-of select="@Texto"/>
														</a>
													</li>
												</xsl:otherwise>
											</xsl:choose>
										</xsl:for-each>
									</ul>
								</div>
							</nav>
						</div>
					</div>
				</section>
				<!-- Fin del navbar -->
				<xsl:choose>
					<xsl:when test="$TipoTienda=1">
						<xsl:call-template name="Contacto"></xsl:call-template>
					</xsl:when>
					<xsl:when test="$TipoTienda=2">
						<xsl:call-template name="Cliente"></xsl:call-template>
					</xsl:when>
					<xsl:otherwise>
						<xsl:call-template name="Home"></xsl:call-template>
					</xsl:otherwise>
				</xsl:choose>

				<footer class="footer-copyright">
					<div class="container">
						<div class="row">
							<div class="col-sm-7">
								<div class="foot-copyright pull-left">
									<p>
										All Rights Reserved. Designed and Developed by
										<a href="https://www.themesine.com">ThemeSINE</a>
									</p>
								</div>
							</div>
							<!--/.col-->
							<div class="col-sm-5">
								<div class="foot-menu pull-right
						">
									<ul>
										<li >
											<a href="#">legal</a>
										</li>
										<li >
											<a href="#">sitemap</a>
										</li>
										<li >
											<a href="#">privacy policy</a>
										</li>
									</ul>
								</div>
							</div>
						</div>
						<div id="scroll-Top">
							<i class="fa fa-angle-double-up return-to-top" id="scroll-top" data-toggle="tooltip" data-placement="top" title="" data-original-title="Back to Top" aria-hidden="true"></i>
						</div>
					</div>

				</footer>
			</body>
		</html>
	</xsl:template>

	<xsl:template name="Home">
		<section  class="we-do">
			<div class="container">
				<div class="we-do-details">
					<div class="section-header text-center">
						<h2>
							<xsl:value-of select="Contacto/NombreTienda"/>
						</h2>
						<p>
							<xsl:value-of select="Contacto/Descripcion"/>
						</p>
					</div>
					<div class="we-do-carousel">
						<div class="row">
							<xsl:for-each select="Compañias/Tipo">
								<div class="col-sm-4 col-xs-12">
									<div class="single-we-do-box text-center">
										<div class="we-do-description">
											<div class="we-do-info">
												<div class="we-do-img">
													<img src="{Logo}" alt="image of consultency" />
												</div>
												<div class="we-do-topics">
													<h2>
														<a href="#">
															<xsl:value-of select="@Nombre"/>
														</a>
													</h2>
												</div>
											</div>
											<div class="we-do-comment">
												<p>
													<xsl:value-of select="DescripcionCompañia"/>
												</p>
											</div>
										</div>
									</div>
								</div>
							</xsl:for-each>

						</div>
					</div>
				</div>
			</div>
		</section>
		<section  class="service">
			<div class="container">
				<div class="service-details">
					<div class="section-header text-center">
						<h2>Juegos mas populares</h2>
					</div>

					<div class="service-content-one">
						<div class="row">
							<xsl:for-each select="Compañias/Tipo/Juego">
								<div class="col-sm-4 col-xs-12">
									<div class="service-single text-center ">
										<div class="service-img">
											<img src="{Imagen}" alt="image of service" />
											<div class="service-txt">
												<h2>
													<a href="#">
														<xsl:value-of select="@Nombre"/>
													</a>
												</h2>
											</div>
										</div>
									</div>
								</div>
							</xsl:for-each>
							<!-- Button trigger modal -->
							<button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#exampleModal">
								Launch demo modal
							</button>

							<!-- Modal -->
							<div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
								<div class="modal-dialog">
									<div class="modal-content">
										<div class="modal-header">
											<h5 class="modal-title" id="exampleModalLabel">Modal title</h5>
											<button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
										</div>
										<div class="modal-body">
											...
										</div>
										<div class="modal-footer">
											<button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
											<button type="button" class="btn btn-primary">Save changes</button>
										</div>
									</div>
								</div>
							</div>


						</div>
					</div>
				</div>
			</div>

		</section>
	</xsl:template>

	<xsl:template name="Contacto">
		<section  class="contact">
			<div class="container">
				<div class="contact-details">
					<div class="section-header contact-head  text-center">
						<h2>contact us</h2>
						<p>
							Pallamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.
						</p>
					</div>
					<!--/.section-header-->
					<div class="contact-content">
						<div class="row">
							<div class="col-sm-7">
								<div class="single-contact-box">
									<div class="contact-form">
										<h3>Leave us a Massage Here</h3>
										<form id="formulario">
											<div class="row">
												<div class="col-sm-6 col-xs-12">
													<div class="form-group">
														<input type="text" class="form-control" id="firstname" placeholder="First Name" name="firstname"/>
													</div>
												</div>
												<div class="col-sm-6 col-xs-12">
													<div class="form-group">
														<input type="text" class="form-control" id="lastname" placeholder="Last Name" name="laststname"/>
													</div>
													<!--/.form-group-->
												</div>
												<!--/.col-->
											</div>
											<!--/.row-->
											<div class="row">
												<div class="col-sm-6 col-xs-12">
													<div class="form-group">
														<input type="email" class="form-control" id="email" placeholder="Email" name="email"/>
													</div>
													<!--/.form-group-->
												</div>
												<!--/.col-->
												<div class="col-sm-6 col-xs-12">
													<div class="form-group">
														<input type="text" class="form-control" id="phone" placeholder="Phone" name="phone"/>
													</div>
													<!--/.form-group-->
												</div>
												<!--/.col-->
											</div>
											<!--/.row-->
											<div class="row">
												<div class="col-sm-12">
													<div class="form-group">
														<textarea class="form-control" rows="7" id="comment" placeholder="Message" ></textarea>
													</div>
													<!--/.form-group-->
												</div>
												<!--/.col-->
											</div>
											<!--/.row-->
											<div class="row">
												<div class="col-sm-12">
													<div class="single-contact-btn pull-right">
														<button class="contact-btn" type="button">send message</button>
													</div>
													<!--/.single-single-contact-btn-->
												</div>
												<!--/.col-->
											</div>
											<!--/.row-->
										</form>
										<!--/form-->
									</div>
									<!--/.contact-form-->
								</div>
								<!--/.single-contact-box-->
							</div>
							<div class="col-sm-5">
								<div id="google-map">
									<div id="mapa">ASASa</div>
								</div>
							</div>
							<!--/.col-->
						</div>
						<!--/.row-->
					</div>
					<!--/.contact-content-->
				</div>
				<!--/.contact-details-->
			</div>
			<!--/.container-->

		</section>
	</xsl:template>

	<xsl:template name="Cliente">
		<section class="contact">
			<div class="container">
				<div class="contact-details">
					<div class="section-header contact-head  text-center">
						<h2>Conocenos</h2>

						<p class="gray-text tm-welcome-description">
							<text id="direccion" class="gold-text">
								<![CDATA[Video, Audio, y Drag & Drop]]>
							</text>
						</p>
						<div id="video">
							<video width="70%" controls="true" poster="/images/games/b1.jpg">
								<source src="multimedia/anuncio.mp4"></source>
							</video>
						</div>

					</div>

				</div>

			</div>


		</section>
		<section class="tm-section row">
			<h2 class="col-lg-12 margin-bottom-30"><![CDATA[Drag & Drop]]></h2>
			<div id="cuadro1" ondragenter="return enter(event)" ondragover="return over(event)" ondragleave="return leave(event)" ondrop="return drop(event)">
				<div class="cuadradito" id="arrastrable1" draggable="true" ondragstart="start(event)" ondragend="end(event)"></div>
				<div class="cuadradito" id="arrastrable2" draggable="true" ondragstart="start(event)" ondragend="end(event)"></div>
				<div class="cuadradito" id="arrastrable3" draggable="true" ondragstart="start(event)" ondragend="end(event)"></div>
			</div>
			<div id="cuadro2" ondragenter="return enter(event)" ondragover="return over(event)" ondragleave="return leave(event)" ondrop="return drop(event)"></div>
			<div id="cuadro3" ondragenter="return enter(event)" ondragover="return over(event)" ondragleave="return leave(event)" ondrop="return clonar(event)"></div>
			<div id="papelera" ondragenter="return enter(event)" ondragover="return over(event)" ondragleave="return leave(event)" ondrop="return eliminar(event)"></div>
		</section>

		<section class="row">
			<div class="container">
				<div id="ContenedorAudio">
					<div id="fotoAudio" style="width: 50%">
						<hr />
						<img src="images/games/b3.jpg" width="100%">

						</img>
						<audio controls="true" style="width: 100%">
							<source src="/multimedia/audio.mp3"></source>
						</audio>
					</div>
				</div>
			</div>
		</section>

	</xsl:template>
</xsl:stylesheet>
