import java.util.InputMismatchException;
import java.util.Scanner;

public class Main {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        System.out.println("\nLista de Exercícios 3 - Paradigma OO");

        // Exercicio 1
        System.out.println("\nExercício 1:");
        Ex1ClasseExemplo ex1 = new Ex1ClasseExemplo();
        ex1.metodoExemplo();

        // Exercicio 2
        System.out.println("\nExercício 2:");
        Ex2Senha ex2 = new Ex2Senha("1234");
        for (int i = 0; i < 5; i++) {
            System.out.print("Digite a senha: ");
            String senha = scanner.nextLine();
            ex2.autentica(senha);
        }

        // Exercicio 3
        System.out.println("\nExercício 3:");
        Ex3Porta porta = new Ex3Porta();
        porta.abre();
        System.out.println("Porta está aberta? " + porta.estaAberta());

        // Exercicio 4
        System.out.println("\nExercício 4:");
        Ex4Casa casa = new Ex4Casa();
        casa.pinta("Vermelha");
        casa.getPorta1().abre();
        casa.getPorta2().abre();
        System.out.println("Número de portas abertas: " + casa.quantasPortasEstaoAbertas());
        System.out.println("Cor da casa: " + casa.getCor());

        // Exercicio 5
        System.out.println("\nExercício 5:");
        Ex5Calculadora calc = new Ex5Calculadora();
        Ex5CalculadoraCientifica calcCientifica = new Ex5CalculadoraCientifica();

        int a = 0, b = 0;
        boolean validInput = false;

        while (!validInput) {
            try {
                System.out.print("Digite dois números para soma: ");
                a = scanner.nextInt();
                b = scanner.nextInt();
                validInput = true;
            } catch (InputMismatchException e) {
                System.out.println("Entrada inválida. Por favor, digite números inteiros.");
                scanner.next(); // Limpa a entrada inválida
            }
        }
        System.out.println("Soma: " + calc.somar(a, b));

        validInput = false;
        while (!validInput) {
            try {
                System.out.print("Digite dois números para subtração: ");
                a = scanner.nextInt();
                b = scanner.nextInt();
                validInput = true;
            } catch (InputMismatchException e) {
                System.out.println("Entrada inválida. Por favor, digite números inteiros.");
                scanner.next(); // Limpa a entrada inválida
            }
        }
        System.out.println("Subtração: " + calc.subtrair(a, b));

        validInput = false;
        while (!validInput) {
            try {
                System.out.print("Digite dois números para multiplicação: ");
                a = scanner.nextInt();
                b = scanner.nextInt();
                validInput = true;
            } catch (InputMismatchException e) {
                System.out.println("Entrada inválida. Por favor, digite números inteiros.");
                scanner.next(); // Limpa a entrada inválida
            }
        }
        System.out.println("Multiplicação: " + calc.multiplicar(a, b));

        validInput = false;
        while (!validInput) {
            try {
                System.out.print("Digite dois números para divisão: ");
                a = scanner.nextInt();
                b = scanner.nextInt();
                System.out.println("Divisão: " + calc.dividir(a, b));
                validInput = true;
            } catch (InputMismatchException e) {
                System.out.println("Entrada inválida. Por favor, digite números inteiros.");
                scanner.next(); // Limpa a entrada inválida
            } catch (ArithmeticException e) {
                System.out.println("Divisão por zero não é permitida. Por favor, digite outro número.");
                scanner.next(); // Limpa a entrada inválida
            }
        }

        validInput = false;
        while (!validInput) {
            try {
                System.out.print("Digite a base e o expoente para a potência: ");
                double base = scanner.nextDouble();
                double expoente = scanner.nextDouble();
                System.out.println("Potência: " + calcCientifica.potencia(base, expoente));
                validInput = true;
            } catch (InputMismatchException e) {
                System.out.println("Entrada inválida. Por favor, digite números válidos.");
                scanner.next(); // Limpa a entrada inválida
            }
        }

        // Exercicio 6
        System.out.println("\nExercício 6:");
        validInput = false;
        int dia = 0, mes = 0, ano = 0;
        while (!validInput) {
            try {
                System.out.print("Digite uma data (dia, mês, ano): ");
                dia = scanner.nextInt();
                mes = scanner.nextInt();
                ano = scanner.nextInt();
                validInput = true;
            } catch (InputMismatchException e) {
                System.out.println("Entrada inválida. Por favor, digite números inteiros.");
                scanner.next(); // Limpa a entrada inválida
            }
        }
        Ex6Data data = new Ex6Data(dia, mes, ano);
        if (data.dataValida()) {
            data.imprimeData();
            data.proximoDia();
            data.imprimeData();
        } else {
            System.out.println("Data inválida.");
        }

        // Exercicio 7
        System.out.println("\nExercício 7:");
        Ex7Lampada lamp1 = new Ex7Lampada();
        Ex7Lampada lamp2 = lamp1;
        int i = 10;
        if (lamp1 == lamp2) {
            System.out.println(i++);
        }
        lamp1.trocarTipo("Halógena");
        lamp2.mostrarInformacoesGerais();

        lamp1.ligar();
        lamp1.trocarTipo("LED");

        lamp2 = new Ex7Lampada();
        lamp2.ligar();
        lamp2.trocarTipo("LED");

        if (lamp1 == lamp2) {
            System.out.println(i++);
        }
        lamp1.trocarTipo("Halógena");
        lamp2.mostrarInformacoesGerais();

        scanner.close();
    }
}
