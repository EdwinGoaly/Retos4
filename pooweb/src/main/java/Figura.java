
import java.io.IOException;
import figuras.*;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class Figura extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        System.out.println("ENTRO AL SERVLET");
        String control = req.getParameter("control");
        switch (control) {
            case "circulo":
                req.getRequestDispatcher("Circulo.jsp").forward(req, resp);
                break;
            case "rectangulo":
                req.getRequestDispatcher("Rectangulo.jsp").forward(req, resp);
                break;
            case "triangulo":
                req.getRequestDispatcher("Triangulo.jsp").forward(req, resp);
                break;
            case "pentagono":
                req.getRequestDispatcher("Pentagono.jsp").forward(req, resp);
                break;
            default:
                break;
        }
        System.out.println(control);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        System.out.println("Estoy entrando al do post");
        String control = req.getParameter("control");
        System.out.println(control);
        switch (control) {
            case "areaci":
                double radio = Double.parseDouble(req.getParameter("radio"));
                Circulo circulo = new Circulo(radio);
                req.setAttribute("area", circulo.calcularArea());
                System.out.println("El area del círculo es: " + circulo.calcularArea());
                req.getRequestDispatcher("Circulo.jsp").forward(req, resp);
                break;
            case "areare":
                double largo = Double.parseDouble(req.getParameter("largo"));
                double ancho = Double.parseDouble(req.getParameter("ancho"));
                Rectangulo rectangulo = new Rectangulo(largo, ancho);
                req.setAttribute("area", rectangulo.calcularArea());
                req.setAttribute("perimetro", rectangulo.calcularPerimetro());
                System.out.println("El area del rectángulo es: " + rectangulo.calcularArea());
                System.out.println("El perimetro del rectángulo es: " + rectangulo.calcularPerimetro());
                req.getRequestDispatcher("Rectangulo.jsp").forward(req, resp);
                break;
            case "areatri":
                double base = Double.parseDouble(req.getParameter("base"));
                double altura = Double.parseDouble(req.getParameter("altura"));
                Triangulo triangulo = new Triangulo(base, altura);
                req.setAttribute("area", triangulo.calcularArea());
                System.out.println("El area del triángulo es: " + triangulo.calcularArea());
                req.getRequestDispatcher("Triangulo.jsp").forward(req, resp);
                break;
            case "areape":
                double lado = Double.parseDouble(req.getParameter("lado"));
                double apotema = Double.parseDouble(req.getParameter("apotema"));
                Pentagono pentagono = new Pentagono(lado, apotema);
                req.setAttribute("area", pentagono.calcularArea());
                req.setAttribute("perimetro", pentagono.calcularPerimetro());
                System.out.println("El area del pentágono es: " + pentagono.calcularArea());
                System.out.println("El perimetro del pentágono es: " + pentagono.calcularPerimetro());
                req.getRequestDispatcher("Pentagono.jsp").forward(req, resp);
                break;
            case "pericir":
                float diametro = Float.parseFloat(req.getParameter("diametro"));
                Circulo circulo2 = new Circulo(diametro);
                req.setAttribute("perimetro", circulo2.calcularPerimetro());
                System.out.println("El perimetro del circulo es: " + circulo2.calcularPerimetro());
                req.getRequestDispatcher("Circulo.jsp").forward(req, resp);  
                break;
            case "peritri":
                double lado1 = Double.parseDouble(req.getParameter("lado1"));
                double lado2 = Double.parseDouble(req.getParameter("lado2"));
                double lado3 = Double.parseDouble(req.getParameter("lado3"));
                Triangulo triangulo2 = new Triangulo(lado1, lado2, lado3);
                req.setAttribute("perimetro", triangulo2.calcularPerimetro());
                req.getRequestDispatcher("Triangulo.jsp").forward(req,resp);
                break;


        }

    }

}
