<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
  <!DOCTYPE html>
  <html lang="en">

  <head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="css/index.css">
    <title>Figuras</title>
  </head>

  <body>
    <img src="https://i.pinimg.com/736x/88/2f/a7/882fa7a1daa4f0dc914c1a615aaf1171.jpg" alt="Fondo" class="fondo">
    <header>
      <h2>Figuras Geométricas</h2>
    </header>
    <div class="contenido">
      <div class="texto">
        <p>
        <h2>BIENVENIDO</h2>
        </p>
        <hr>
        <p>
        <h4>Este es un programa que te permitirá saber el área y perímetro de una figura que elijas.
          Solo tienes que seleccionar la figura de la que le quieras calcular el área y su perímetro.
          </p>
        </h4>
      </div>
    </div>
    <!-- <h2> Usando expresiones </h2>
  <p> <%=
     new String("Edwin").toUpperCase()%>
  </p>
  <p> <%
    for(int i=0; i<4;i++){
      out.println("<BR>Iteracion "+i);
    }
    %>
  </p>
  <p>
    <%!
    private int res;

    public int sumar(int n1, int n2){
      res = n1+n2;
      return res;
    }
    %>
  </p> -->
    <!-- <p> el resultado de suma es: <%= sumar(15,25) %></p> -->
    <div class="contenedor">
      <div class="figura-contenedor">
        <a href="figura?control=circulo"><img class="figuras" src="https://pngimg.com/uploads/circle/circle_PNG4.png"
            alt=""></a>
        <div class="nombre">1.Círculo</div>
      </div>
      <div class="figura-contenedor">
        <a href="figura?control=rectangulo"><img class="figuras"
            src="https://www.imagensempng.com.br/wp-content/uploads/2021/06/05.png" alt=""></a>
        <div class="nombre">2.Rectángulo</div>
      </div>
      <div class="figura-contenedor">
        <a href="figura?control=triangulo"><img class="figuras"
            src="https://th.bing.com/th/id/R.900122e0034aca4949ad96e9c31142b4?rik=lKAqBdgrnLzEjA&pid=ImgRaw&r=0"
            alt=""></a>
        <div class="nombre">3.Triángulo</div>
      </div>
      <div class="figura-contenedor">
        <a href="figura?control=pentagono"><img class="figuras"
            src="https://th.bing.com/th/id/R.dde4abd8a7a51f947c0e42cb93bffd3e?rik=MAyOZqOiCp6L2Q&riu=http%3a%2f%2ficon-icons.com%2ficons2%2f321%2fPNG%2f512%2fPentagon_34543.png&ehk=bn0OWioH70NzK5APLLLW76zgdb4IXwsU92tuWmt37J0%3d&risl=&pid=ImgRaw&r=0"
            alt=""></a>
        <div class="nombre">4.Pentágono</div>
      </div>
    </div>
    <br>
    <br>
    <footer>@2023</footer>
  </body>

  </html>