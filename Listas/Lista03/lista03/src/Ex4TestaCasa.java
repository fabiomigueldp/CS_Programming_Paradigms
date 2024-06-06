public class Ex4TestaCasa {
    public static void main(String[] args) {
        Ex4Casa casa = new Ex4Casa();
        casa.pinta("Vermelha");
        casa.getPorta1().abre();
        casa.getPorta2().abre();
        System.out.println("Número de portas abertas: " + casa.quantasPortasEstaoAbertas());
    }
}
