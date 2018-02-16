<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>Sistema de Chamados - CRECISP</title>    
    <link href="Content/bootstrap.min.css" rel="stylesheet" />
    <link href="Content/custom-layout.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <!-- Inicio Navbar -->
        <nav class="navbar navbar-expand-md navbar-dark fixed-top bg-dark">
            <div class="navbar-title"><a class="navbar-brand" href="Default.aspx">CRECI<span style="color: red;">SP</span></a></div>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarCollapse" aria-controls="navbarCollapse" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarCollapse">
                <ul class="navbar-nav mr-auto">
                    <li class="nav-item">
                        <a class="nav-link" href="#">Categorias</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#">Abrir Chamado</a>
                    </li>
                </ul>
                <div class="form-inline mt-2 mt-md-0">
                    <!--<input class="form-control mr-sm-2" type="text" placeholder="Search" aria-label="Search">-->
                    <!--<button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button>-->
                    <asp:TextBox ID="searchTextBox" Text="" Placeholder="Buscar" CssClass="form-control mr-sm-2" runat="server" />
                    <asp:Button Text="Buscar" ID="searchButton" CssClass="common-button my-2 my-sm-0" OnClick="searchButton_Click" runat="server" />
                </div>
            </div>
        </nav>
        <!-- Fim da Navbar-->
        <!-- Inicio Carousel -->
        <div id="myCarousel" class="carousel slide" data-ride="carousel">
            <ol class="carousel-indicators">
                <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
                <li data-target="#myCarousel" data-slide-to="1"></li>
                <li data-target="#myCarousel" data-slide-to="2"></li>
            </ol>
            <div class="carousel-inner">
                <div class="carousel-item active">
                    <img class="first-slide" src="Imagens/1.png" alt="First slide" style="width: 100%; height: auto; max-height: 500px; min-height: 400px;" />
                    <div class="container">
                        <div class="carousel-caption text-left">
                            <div class="text-shadow">
                                <h1>Imagem 1</h1>
                                <p>Cras justo odio, dapibus ac facilisis in, egestas eget quam. Donec id elit non mi porta gravida at eget metus. Nullam id dolor id nibh ultricies vehicula ut id elit.</p>
                            </div>
                            <p><a class="btn btn-lg btn-primary" href="#" role="button">Botão 1</a></p>
                        </div>
                    </div>
                </div>
                <div class="carousel-item">
                    <img class="second-slide" src="Imagens/2.png" alt="Second slide" style="width: 100%; height: auto; max-height: 500px; min-height: 400px;" />
                    <div class="container">
                        <div class="carousel-caption">
                            <div class="text-shadow">
                                <h1>Imagem 2</h1>
                                <p>Cras justo odio, dapibus ac facilisis in, egestas eget quam. Donec id elit non mi porta gravida at eget metus. Nullam id dolor id nibh ultricies vehicula ut id elit.</p>
                            </div>
                            <p><a class="btn btn-lg btn-primary" href="#" role="button">Botão 2</a></p>
                        </div>
                    </div>
                </div>
                <div class="carousel-item">
                    <img class="third-slide" src="Imagens/3.png" alt="Third slide" style="width: 100%; height: auto; max-height: 500px; min-height: 400px;" />
                    <div class="container">
                        <div class="carousel-caption text-right">
                            <div class="text-shadow">
                                <h1>Imagem 3</h1>
                                <p>Cras justo odio, dapibus ac facilisis in, egestas eget quam. Donec id elit non mi porta gravida at eget metus. Nullam id dolor id nibh ultricies vehicula ut id elit.</p>
                            </div>
                            <p><a class="btn btn-lg btn-primary" href="#" role="button">Botão 3</a></p>
                        </div>
                    </div>
                </div>
            </div>
            <a class="carousel-control-prev" href="#myCarousel" role="button" data-slide="prev">
                <img src="Imagens/caret-left-4x.png" alt="left" aria-hidden="true" />
                <span class="sr-only">Anterior</span>
            </a>
            <a class="carousel-control-next" href="#myCarousel" role="button" data-slide="next">
                <img src="Imagens/caret-right-4x.png" alt="right" aria-hidden="true" />
                <span class="sr-only">Próximo</span>
            </a>
        </div>
        <!-- Fim Carousel -->
        <main role="main" class="container">
            <div>
                <asp:Label ID="contentLabel" Text="" runat="server" />
            </div>
        </main>
    </form>
    <script src="Scripts/jquery-3.3.1.min.js"></script>
    <script src="Scripts/popper.min.js"></script>
    <script src="Scripts/bootstrap.min.js"></script>
</body>
</html>