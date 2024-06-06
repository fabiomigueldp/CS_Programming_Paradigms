public class Ex6TestaData {
    public static void main(String[] args) {
        Ex6Data data = new Ex6Data(1, 4, 1900);
        if (data.dataValida()) {
            data.imprimeData();
            data.proximoDia();
            data.imprimeData();
        } else {
            System.out.println("Data inválida.");
        }
    }
}
