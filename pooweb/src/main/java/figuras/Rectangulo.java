package figuras;

import java.util.Scanner;
public class Rectangulo extends Figura {
    private double largo;
    private double ancho;

    public Rectangulo() {
    }

    public Rectangulo(double largo, double ancho) {
        super();
        this.largo = largo;
        this.ancho = ancho;
    }
    
    public double getLargo() {
        return largo;
    }

    public void setLargo(double largo) {
        this.largo = largo;
    }

    public double getAncho() {
        return ancho;
    }

    public void setAncho(double ancho) {
        this.ancho = ancho;
    }

    Scanner entrada = new Scanner(System.in);

    public void registrarDatos() {
        System.out.println("Ingrese el valor del largo");
        largo = entrada.nextDouble();
        System.out.println("Ingrese el valor del ancho");
        ancho = entrada.nextDouble();
    }

    @Override
    public double calcularArea() {
        double area = largo * ancho;
        return area;
    }
    @Override
    public double calcularPerimetro(){
        double perimetro = (largo * 2)+(ancho * 2 );
        return perimetro;
    }
}