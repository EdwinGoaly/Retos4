<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
    <!DOCTYPE html>
    <html lang="en">

    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="css/estilosFiguras.css">
        <title>Figuras</title>
    </head>

    <body>
        <img src="https://i.pinimg.com/736x/88/2f/a7/882fa7a1daa4f0dc914c1a615aaf1171.jpg" alt="Fondo" class="fondo">
        <header>
            <h3>Calcular el área y perímetro</h3>
        </header>
        <nav>
            <ul>
                <div class="indices">
                    <li><a href="figura?control=circulo"><img class="icono"
                                src="https://pngimg.com/uploads/circle/circle_PNG4.png" alt=""></a></li>
                    <div class="indice"><a href="figura?control=circulo">Círculo</a></div>
                </div>
                <div class="indices">
                    <li><a href="figura?control=triangulo"><img class="icono"
                                src="https://th.bing.com/th/id/R.900122e0034aca4949ad96e9c31142b4?rik=lKAqBdgrnLzEjA&pid=ImgRaw&r=0"
                                alt=""> </a></li>
                    <div class="indice"><a href="figura?control=triangulo">Triángulo</a></div>
                </div>
                <div class="indices">
                    <li><a href="figura?control=rectangulo"><img class="icono"
                                src="https://www.imagensempng.com.br/wp-content/uploads/2021/06/05.png" alt=""></a></li>
                    <div class="indice"> <a href="figura?control=rectangulo">Rectángulo</a></div>
                </div>
                <div class="indices">
                    <li><a href="index.jsp"><img class="icono" src="https://pngimg.com/uploads/exit/exit_PNG29.png"
                                alt=""> </a></li>
                    <div class="indice"><a href="index.jsp">Salir</a></div>
                </div>
            </ul>
        </nav>
        <div class="contenedor">
            <div class="figura-contenedor">
                <img class="figuras"
                    src="https://th.bing.com/th/id/R.dde4abd8a7a51f947c0e42cb93bffd3e?rik=MAyOZqOiCp6L2Q&riu=http%3a%2f%2ficon-icons.com%2ficons2%2f321%2fPNG%2f512%2fPentagon_34543.png&ehk=bn0OWioH70NzK5APLLLW76zgdb4IXwsU92tuWmt37J0%3d&risl=&pid=ImgRaw&r=0"
                    alt=""></a>
                <div class="nombre">4.Pentágono</div>
            </div>
            <div class="campos">
                <form action="figura" method="post">
                    <center><p>Área y Perímetro</p></center>
                    <label class="formulario" name="lado">Ingrese el valor del lado:</label>
                    <input class="formulario" type="number"  name="lado" id="lado">
                    <br>
                    <label class="formulario" >Ingrese el valor de la apotema:</label>
                    <input class="formulario" type="number" name="apotema" id="apotema">
                    <br>
                    <button class="formulario" type="submit"  name="control" value="areape">Calcular</button>
                </form>
            </div>
            <p style="text-align: center; border: 2px solid black; ">
                <% if (request.getAttribute("area") !=null) { %>
                    El área de la figura es <span style="color: blue;" class="resultado"><%=request.getAttribute("area")%></span>
                <% } %>
                <br>
                <% if (request.getAttribute("perimetro") !=null) { %>
                    El perímetro de la figura es <span style="color: blue;" class="resultado"><%=request.getAttribute("perimetro")%></span>
                <% } %>
            </p>
        </div>
        
        <br>
        <br>
        <footer>@2023</footer>
    </body>

    </html>