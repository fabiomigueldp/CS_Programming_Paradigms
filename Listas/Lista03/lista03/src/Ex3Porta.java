public class Ex3Porta {
    private boolean aberta;
    private String cor;
    private double dimensaoX, dimensaoY, dimensaoZ;
    
    public void abre() {
        aberta = true;
    }
    
    public void fecha() {
        aberta = false;
    }
    
    public void pinta(String cor) {
        this.cor = cor;
    }
    
    public boolean estaAberta() {
        return aberta;
    }
}
