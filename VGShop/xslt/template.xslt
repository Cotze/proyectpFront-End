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

				<!--sweetalert-->
				<link rel="stylesheet" href="css/sweetalert.css"/>
				<script src="js/sweetalert.min.js"></script>

				<!--dranpanddrop-->
				<script src="js/dranpanddrop.js"></script>
				<script type="text/javascript" src="js/geolocalizacion.js"/>


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
					<xsl:when test="$TipoTienda=3">
						<xsl:call-template name="Contacto"></xsl:call-template>
					</xsl:when>
					<xsl:when test="$TipoTienda=2">
						<xsl:call-template name="Cliente"></xsl:call-template>
					</xsl:when>
					<xsl:when test="$TipoTienda=1">
						<xsl:call-template name="Juegos"></xsl:call-template>
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
								<div class="foot-menu pull-right">
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
		<script src="//maps.googleapis.com/maps/api/js?key=AIzaSyCWeeateTaYGqsHhNcmoDfT7Us-vLDZVPs&amp;sensor=false&amp;language=en"></script>
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
				<h2 class="section-header text-center">Localiza nuestra tienda</h2>
				<div class="col-lg-6 col-md-6">
					<div id="google-street">
						<div id="street"></div>
					</div>
				</div>
				<div class="col-lg-6 col-md-6">
					<div id="google-map">
						<div id="mapa"></div>
					</div>
				</div>
			</div>
		</section>
		<script>
			<![CDATA[
			getGeo();
			dibujaMapa(19.296764,-98.8832785)
			]]>
		</script>

	</xsl:template>

	<xsl:template name="Contacto">
		<section  class="contact">
			<div class="container">
				<div class="contact-details">
					<div class="section-header contact-head  text-center">
						<h2>Contactanos</h2>
						<p>
							<xsl:value-of select="Contacto/Informacion"/>
						</p>
					</div>
					<div class="contact-content">
						<div class="row">
							<div class="col-sm-7">
								<div class="single-contact-box">
									<div class="contact-form">
										<h3>Haz tu reservacion en el siguiente formulario</h3>
										<form action="Contacto.aspx" method="post" oninput="total.value=contact_personas.valueAsNumber+contact_adicionales.valueAsNumber">
											<div class="row">
												<div class="col-sm-6 col-xs-12">
													<div class="form-group">
														<labbel class="form-label">Nombre</labbel>
														<input type="text" id="contact_name" name="contact_name" class="form-control" placeholder="Nombre(s)" required="true" />
													</div>
												</div>
												<div class="col-sm-6 col-xs-12">
													<div class="form-group">
														<labbel class="form-label">Apellido</labbel>
														<input type="text" id="contact_lname" name="contact_lname" class="form-control" placeholder="Apellido(s)" required="true" />
													</div>
												</div>
												<div class="col-sm-6 col-xs-12">
													<div class="form-group">
														<labbel class="form-label">Correo</labbel>
														<input type="email" id="contact_email" name="contact_email" class="form-control" placeholder="Correo electronico" required="true"/>
													</div>
												</div>
												<div class="col-sm-6 col-xs-12">
													<div class="form-group">
														<labbel class="form-label">Número de personas</labbel>
														<input type="number" id="contact_personas" name="contact_personas" class="form-control" required="true" max="12" min="1" value="1"/>
													</div>
												</div>

												<div class="col-sm-6 col-xs-12">
													<div class="form-group">
														<labbel class="form-label">Fecha</labbel>
														<input type="date" id="contact_fecha" name="contact_fecha" class="form-control" required="true" />
													</div>
												</div>
												<div class="col-sm-6 col-xs-12">
													<div class="form-group">
														<labbel class="form-label formLabel">Hora</labbel>
														<input type="time" id="contact_hora" name="contact_hora" class="form-control" required="true" max="21:00:00" min="11:00:00"/>
													</div>
												</div>

												<div class="col-sm-12">
													<div class="form-group">
														<label class="form-label formLabel"> Comentario</label>
														<textarea class="form-control" rows="7" id="comment" name="comment" placeholder="Comentario o problema" required="true"></textarea>
													</div>
												</div>
												<div class="col-sm-12 col-xs-12">
													<div class="form-group">
														<labbel class="form-label">Total</labbel>
														<output id="total" class="form-control">1</output>
													</div>
												</div>
												<div class="single-contact-btn pull-right">
													<div class="form-group">
														<button class="contact-btn" type="submit" name="submit">Hacer reservacion</button>
													</div>
												</div>
											</div>
										</form>
									</div>
								</div>
							</div>
							<div clas="col-sm-5">
								<div class="col-sm-offset-1 col-sm-5">
									<div class="single-contact-box">
										<div class="contact-right">
											<div class="contact-adress">
												<div class="contact-office-address">
													<h3>Información de contacto</h3>
													<p>
														<xsl:value-of select="Contacto/Direccion"/>
													</p>
													<div class="contact-online-address">
														<div class="single-online-address">
															<i class="fa fa-phone"></i>
															<xsl:value-of select="Contacto/Telefono	"/>
														</div>

														<div class="single-online-address">
															<i class="fa fa-envelope-o"></i>
															<xsl:value-of select="Contacto/Correo	"/>
														</div>
													</div>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>

		</section>
		<script>
			<![CDATA[$(document).ready(function(){
    var timeControl = document.getElementById("contact_hora");
    var now = new Date(Date.now());
    var horas = now.getHours();
    var minutos = now.getMinutes();
    if( horas < 10){
        horas = "0" + horas;
    }
    if( minutos < 10){
        minutos = "0" + minutos;
    }
    var formatted = horas + ":" + minutos; //09:03
    // timeControl.value = formatted;
    // $("#contact_hora").val(formatted);
    $("#contact_hora").attr("value",formatted);	
    $("#contact_hora").attr("min",formatted);	
    var dd = now.getDate();
    var mm = now.getMonth()+1;
    var yyyy = now.getFullYear();
    if(dd<10){dd='0'+dd;}
    if(mm<10){mm='0'+mm;}
    var today = yyyy + '-' + mm + '-' + dd; //2022-01-03
    $("#contact_fecha").attr("min",today);
    $("#contact_fecha").val(today);
});]]>
		</script>
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
		<section>
			<h1> Desliza el mando sobre el texto para descubrir un dato sorprendente</h1>
			<div id="cuadro1" ondragenter="return enter(event)" ondragover="return over(event)" ondragleave="return leave(event)" ondrop="return drop(event)">

				<div class="cuadradito" id="nombre1" draggable="true" ondragstart="start(event)" ondragend="end(event)" >

				</div>
			</div>
			<div id="img1" ondragenter="return enter(event)" ondragover="return over(event)" ondragleave="return leave(event)" ondrop="return descripcion1(event)">

			</div>
			<div id="img2" ondragenter="return enter(event)" ondragover="return over(event)" ondragleave="return leave(event)" ondrop="return descripcion2(event)">

			</div>
			<div id="img3" ondragenter="return enter(event)" ondragover="return over(event)" ondragleave="return leave(event)" ondrop="return descripcion3(event)">
			</div>
			<div id="img4" ondragenter="return enter(event)" ondragover="return over(event)" ondragleave="return leave(event)" ondrop="return descripcion4(event)">

			</div>
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

	<xsl:template name="Juegos">
		<div class="tm-main-section light-gray-bg">
			<div class="container" id="main">
				<section class="tm-section row">
					<div>
						<div class="project-header text-left">
							<h2>Juegos mas populares</h2>
							<hr />
						</div>
						<div class="row">
							<div class="col">
								<div class="col-lg-3 col-md-3">
									<div class="tm-position-relative margin-bottom-30">
										<nav class="tm-side-menu">
											<ul>
												<xsl:for-each select="Compañias/Tipo">

													<li>
														<a class="tipomenu active" id="li{@Nombre}" data-identificador="{@Nombre}" style="cursor: pointer;">
															<xsl:value-of select="@Nombre"/>

														</a>

													</li>

												</xsl:for-each>
												
											</ul>
										</nav>
										
									</div>
								</div>

							</div>
							<div class="col">
								<!--Inicio del for-each de las tarjetas-->
								<xsl:for-each select="Compañias/Tipo">
									<div class="tm-menu-product-content col-lg-9 col-md-9 contenedores" id="{@Nombre}">
										<!-- menu content -->
										<!--for-each anidado para las tarjetas-->

										<div class="project-content">
											<div class="gallery-content">
												<div class="isotope">
													<div class="row">
														<xsl:for-each select="Juego">
															<div class="col-md-4 col-sm-12">
																<div class="item big-height" >
																	<img src="{Imagen}" alt="portfolio image" class="imagenPlatillo" id="imgItem"/>
																	<div class="isotope-overlay">
																		<h3 class="tm-product-title">
																			<xsl:value-of select="@Nombre"/>
																		</h3>
																		<p class="tm-product-description">
																			<xsl:value-of select="Descripcion"/>
																		</p>
																		<a>
																			<xsl:value-of select="Precio"/>
																		</a>
																	</div>
																</div>
															</div>
														</xsl:for-each>
													</div>
												</div>
											</div>
										</div>
									</div>
								</xsl:for-each>

							</div>
						</div>



					</div>
				</section>
			</div>
		</div>

		<script>

			$("#liNINTENDO").addClass("active");
			$(".contenedores").hide();
			$("#NINTENDO").show();
			$(".tipomenu").click(function(){
			$(".contenedores").hide();
			var nombre = $(this).data("identificador");
			$(".tipomenu").removeClass("active");
			$(this).addClass("active");
			$("#" + nombre).show();
			});

		</script>
	</xsl:template>
</xsl:stylesheet>
