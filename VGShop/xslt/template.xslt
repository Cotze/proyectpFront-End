<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">

	<xsl:output method="html" indent="yes"/>
	<xsl:param name="TipoTienda" select="TipoTienda"></xsl:param>

	<xsl:template match="Tienda">
		<html lang="en">
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
														<a href="{@Url}" class="activate">
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
						<h2>Juegos mas populares de cada compañia</h2>
					</div>
					<div class="service-content-one">
						<div class="row">
							<xsl:for-each select="Compañias/Tipo/Juego">
								<div class="col-sm-4 col-xs-12">
									<div class="service-single text-center">
										<div class="service-img">
											<img src="{Imagen}" alt="image of service" />
										</div>
										<div class="service-txt">
											<h2>
												<xsl:value-of select="@Nombre"/>
											</h2>
											<p>
												<xsl:value-of select="Descripcion"/>
											</p>
										</div>
									</div>
								</div>
							</xsl:for-each>
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
						<h2>Contactanos</h2>
						<p>
							<xsl:value-of select="Contacto/Descripcion"/>
						</p>
					</div>
					<!--TODO	Falta obtener informacion del xml y concatenarlo-->
					<div class="contact-content">
						<div class="row">
							<div class="col-sm-offset-1 col-sm-5">
								<div class="single-contact-box">
									<div class="contact-right">
										<div class="contact-adress">
											<div class="contact-office-address">
												<h3>contact info</h3>
												<p>
													125, Park street avenue, Brocklyn, Newyork.
												</p>
												<div class="contact-online-address">
													<div class="single-online-address">
														<i class="fa fa-phone"></i>
														+11253678958
													</div>

													<div class="single-online-address">
														<i class="fa fa-envelope-o"></i>
														<span>info@mail.com</span>
													</div>
												</div>
											</div>
											<div class="contact-office-address">
												<h3>social partner</h3>
												<div class="contact-icon">
													<ul>
														<li>
															<a href="#">
																<i class="fa fa-facebook" aria-hidden="true"></i>
															</a>
														</li>
														<!--/li-->
														<li>
															<a href="#">
																<i class="fa fa-google-plus" aria-hidden="true"></i>
															</a>
														</li>
														<!--/li-->
														<li>
															<a href="#">
																<i class="fa fa-linkedin" aria-hidden="true"></i>
															</a>
														</li>
														<!--/li-->
														<li>
															<a href="#">
																<i class="fa fa-twitter" aria-hidden="true"></i>
															</a>
														</li>
													</ul>
												</div>
											</div>

										</div>
									</div>
								</div>
							</div>
							<div class="col-sm-5">
								<div class="single-contact-box">
									<div class="contact-form">
										<h3>Si necesitas mas información</h3>
										<h5>Mandanos un mensaje</h5>
										<form>
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
												</div>
											</div>
											<div class="row">
												<div class="col-sm-6 col-xs-12">
													<div class="form-group">
														<input type="email" class="form-control" id="email" placeholder="Email" name="email"/>
													</div>
												</div>
												<div class="col-sm-6 col-xs-12">
													<div class="form-group">
														<input type="text" class="form-control" id="phone" placeholder="Phone" name="phone"/>
													</div>
												</div>
											</div>
											<div class="row">
												<div class="col-sm-12">
													<div class="form-group">
														<textarea class="form-control" rows="7" id="comment" placeholder="Message" ></textarea>
													</div>
												</div>
											</div>
											<div class="row">
												<div class="col-sm-12">
													<div class="single-contact-btn pull-right">
														<button class="contact-btn" type="button">send message</button>
													</div>
												</div>
											</div>
										</form>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>

		</section>

	</xsl:template>

	<xsl:template name="Cliente">
		<h1>Aqui va los comentarios de los clientes</h1>

	</xsl:template>
</xsl:stylesheet>
