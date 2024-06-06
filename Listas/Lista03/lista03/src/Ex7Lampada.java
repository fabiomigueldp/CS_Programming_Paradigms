public class Ex7Lampada {
    private boolean ligada;
    private String tipo;

    public void ligar() {
        ligada = true;
    }

    public void trocarTipo(String tipo) {
        this.tipo = tipo;
    }

    public void mostrarInformacoesGerais() {
        System.out.println("Lâmpada: " + tipo + ", Ligada: " + (ligada ? "Sim" : "Não"));
    }
}
