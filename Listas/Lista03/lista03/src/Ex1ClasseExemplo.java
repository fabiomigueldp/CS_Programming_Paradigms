public class Ex1ClasseExemplo implements Ex1Interface {
    @Override
    public void metodoExemplo() {
        System.out.println("Método exemplo da interface.");
    }

    public static void main(String[] args) {
        Ex1ClasseExemplo exemplo = new Ex1ClasseExemplo();
        exemplo.metodoExemplo();
    }
}
