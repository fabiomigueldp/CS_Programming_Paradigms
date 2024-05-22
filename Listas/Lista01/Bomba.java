public class Bomba {
    public static void main(String[] args) {
        int n = 5;
        bomba:
        for (int i = n; i > 0; i--) {
            System.out.println(i);
            // Simula uma condição para interromper o loop e explodir a bomba
            if (i == 1) {
                break bomba;  // Usando o rótulo para sair do loop
            }
        }
        System.out.println("BOOM!");
    }
}
