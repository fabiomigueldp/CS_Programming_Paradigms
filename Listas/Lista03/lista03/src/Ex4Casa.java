public class Ex4Casa {
    private Ex3Porta porta1, porta2, porta3;
    private String cor;

    public Ex4Casa() {
        porta1 = new Ex3Porta();
        porta2 = new Ex3Porta();
        porta3 = new Ex3Porta();
    }

    public void pinta(String cor) {
        this.cor = cor;
    }

    public int quantasPortasEstaoAbertas() {
        int count = 0;
        if (porta1.estaAberta()) count++;
        if (porta2.estaAberta()) count++;
        if (porta3.estaAberta()) count++;
        return count;
    }

    public String getCor() {
        return cor;
    }

    public Ex3Porta getPorta1() {
        return porta1;
    }

    public Ex3Porta getPorta2() {
        return porta2;
    }

    public Ex3Porta getPorta3() {
        return porta3;
    }
}
