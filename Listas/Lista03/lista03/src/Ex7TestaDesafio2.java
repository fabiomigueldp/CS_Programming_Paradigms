public class Ex7TestaDesafio2 {
    public static void main(String[] args) {
        Ex7Lampada lamp1 = new Ex7Lampada();
        lamp1.ligar();
        lamp1.trocarTipo("LED");

        Ex7Lampada lamp2 = new Ex7Lampada();
        lamp2.ligar();
        lamp2.trocarTipo("LED");

        int i = 10;
        if (lamp1 == lamp2) {
            System.out.println(i++);
        }
        lamp1.trocarTipo("Halógena");
        lamp2.mostrarInformacoesGerais();
    }
}
