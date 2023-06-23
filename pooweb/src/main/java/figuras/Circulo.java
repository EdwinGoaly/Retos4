package figuras;

import java.util.Scanner;

public class Circulo extends Figura {
    private double radio;
    private float diametro;


    public Circulo() {

    }

    public Circulo(double radio) {
        super();
        this.radio = radio;
    }
    public Circulo(float diametro) {
        super();
        this.diametro = diametro;
    }

    public double getRadio() {
        return radio;
    }


    public void setRadio(double radio) {
        this.radio = radio;
    }
    

    public double getDiametro() {
        return diametro;
    }

    public void setDiametro(float diametro) {
        this.diametro = diametro;
    }


    Scanner entrada = new Scanner(System.in);

    public void registrarDatos() {
        System.out.println("Ingrese el valor del radio");
        radio = entrada.nextInt();
    }

    @Override
    public double calcularArea() {
        double area = 3.14159 * (radio * radio);
        return area;

    }
    @Override
    public double calcularPerimetro(){
        double perimetro = 3.14 * diametro;
        return perimetro;
    }
}
