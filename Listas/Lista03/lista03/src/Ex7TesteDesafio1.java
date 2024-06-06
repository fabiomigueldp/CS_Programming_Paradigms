public class Ex7TesteDesafio1 {
    public static void main(String[] args) {
        Ex7Lampada lamp1 = new Ex7Lampada();
        Ex7Lampada lamp2 = lamp1;
        int i = 10;
        if (lamp1 == lamp2) {
            System.out.println(i++);
        }
        lamp1.trocarTipo("Halógena");
        lamp2.mostrarInformacoesGerais();
    }
}
