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
		<h1>Aqui va la información de contacto</h1>

	</xsl:template>

	<xsl:template name="Cliente">
		<h1>Aqui va los comentarios de los clientes</h1>

	</xsl:template>
</xsl:stylesheet>
