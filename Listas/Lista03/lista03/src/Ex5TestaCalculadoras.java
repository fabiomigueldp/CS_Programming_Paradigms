public class Ex5TestaCalculadoras {
    public static void main(String[] args) {
        Ex5Calculadora calc = new Ex5Calculadora();
        Ex5CalculadoraCientifica calcCientifica = new Ex5CalculadoraCientifica();

        System.out.println("Soma: " + calc.somar(3, 4));
        System.out.println("Subtração: " + calc.subtrair(10, 4));
        System.out.println("Multiplicação: " + calc.multiplicar(2, 3));
        System.out.println("Divisão: " + calc.dividir(10, 2));
        System.out.println("Potência: " + calcCientifica.potencia(2, 3));
    }
}
