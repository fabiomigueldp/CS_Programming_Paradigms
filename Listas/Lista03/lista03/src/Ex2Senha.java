public class Ex2Senha {
    private String senhaCorreta;
    private int tentativas;
    private boolean bloqueada;

    public Ex2Senha(String senhaCorreta) {
        this.senhaCorreta = senhaCorreta;
        this.tentativas = 0;
        this.bloqueada = false;
    }

    public void autentica(String senha) {
        if (bloqueada) {
            System.out.println("Senha bloqueada.");
            return;
        }
        
        if (this.senhaCorreta.equals(senha)) {
            System.out.println("Senha correta.");
            tentativas = 0; // Reseta tentativas após sucesso
        } else {
            tentativas++;
            System.out.println("Senha incorreta.");
            if (tentativas >= 3) {
                bloqueada = true;
                System.out.println("Senha bloqueada.");
            }
        }
    }
}
