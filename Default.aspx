<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Site de Noticias</title>
    <meta charset="utf-8" />

    <!-- Incluindo o CSS do Bootstrap -->
<link href="bootstrap/css/bootstrap.min.css" rel="stylesheet" media="screen" />
    <!-- Incluindo o jQuery que é requisito do JavaScript do Bootstrap localmente-->
<script src="bootstrap/js/jquery-3.2.1.min.js"></script>

<!-- Incluindo o JavaScript do Bootstrap -->
<script src="bootstrap/js/bootstrap.min.js"></script>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <div class="container">
                <!-- INICIO MENU FIXISADO -->
                <nav class="navbar navbar-inverse navbar-fixed-top">
                  <div class="container">
                    <div class="navbar-header">
                      <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                      </button>
                      <a class="navbar-brand" href="#">Blog de Noticia</a>
                    </div>
                    <div id="navbar" class="navbar-collapse collapse">
                      <ul class="nav navbar-nav">
                        <li class="active"><a href="#">Home</a></li>
                        <li><a href="#noticia">Noticias</a></li>
                        <li><a href="#contato">Contatos</a></li>
                        <li class="dropdown">
                          <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Projetos <span class="caret"></span></a>
                          <ul class="dropdown-menu">
                            <li><a href="#hqs">Hqs</a></li>
                            <li><a href="#doces">Filmes</a></li>
                            <li><a href="#bolos">Seriados</a></li>
                          </ul>
                        </li>
                      </ul>
                    </div><!-- FINAL DO MENU FIXISADO -->
                  </div>
                </nav>
                    <!-- FINAL DO MENU FIXISADO -->
                    <!-- INICIO DO CARROUSEL -->
                    <div id="carousel-example-generic" class="carousel slide" data-ride="carousel">

                        <ol class="carousel-indicators">
                          <li data-target="images/1.jpg" data-slide-to="0" class="active"></li>
                          <li data-target="images/2.jpg" data-slide-to="1"></li>
                          <li data-target="images/3.jpg" data-slide-to="2"></li>
                        </ol>

                    <div class="carousel-inner" role="listbox">
                      <div class="item active">
                        <img data-src="images/1.jpg" alt="First slide">
                      </div>
                      <div class="item">
                        <img data-src="images/2.jpg" alt="Second slide">
                      </div>
                      <div class="item">
                        <img data-src="images/3.jpg" alt="Third slide">
                      </div>
                    </div>

                    <a class="left carousel-control" href="#carousel-example-generic" role="button" data-slide="prev">
                      <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
                      <span class="sr-only">Voltar</span>
                    </a>

                <a class="right carousel-control" href="#carousel-example-generic" role="button" data-slide="next">
                  <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
                  <span class="sr-only">Avançar</span>
                </a>
              </div>
                    <!-- FINAL DO CARROUSEL -->
                <!-- COMEÇO DAS NOTICIAS -->
            <div class="container">
                <div class="row">
                    <div class="col-lg-4">
                        <img class="img-circle" src="images/trunks.jpg" width="140" height="140">
                      <h2>Trunks</h2>
                      <p>Personagem filho do Principe dos saiajins retorna na nova série Dragob Ball Super.</p>
                      <p><a class="btn btn-default" href="#" role="button">Ver mais Detalhes &raquo;</a></p>
                    </div><!-- /.col-lg-4 -->
                    <div class="col-lg-4">
                        <img class="img-circle" src="images/goku.jpg" width="140" height="140">
                      <h2>Son Goku</h2>
                      <p>Son Goku, mais conhecido como Kakaroto, Um Saiajin Mais Forte do Universo.</p>
                      <p><a class="btn btn-default" href="#" role="button">Ver mais Detalhes &raquo;</a></p>
                    </div><!-- /.col-lg-4 -->
                     <div class="col-lg-4">
                        <img class="img-circle" src="images/vegeta.jpg" width="140" height="140">
                      <h2>Principe Vegeta</h2>
                      <p>Vegeta Principe dos Saiajin, sempre fica frustado em ser o numero 2 perdendo para o kakaroto</p>
                      <p><a class="btn btn-default" href="#" role="button">Ver mais Detalhes &raquo;</a></p>
                    </div><!-- /.col-lg-4 -->
                </div>
            </div>
        </div>
    </div>
    </form>

   
</body>
</html>
