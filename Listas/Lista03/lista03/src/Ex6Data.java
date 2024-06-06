import java.time.LocalDate;

public class Ex6Data {
    private int dia, mes, ano;

    public Ex6Data(int dia, int mes, int ano) {
        this.dia = dia;
        this.mes = mes;
        this.ano = ano;
    }

    public Ex6Data() {
        LocalDate hoje = LocalDate.now();
        this.dia = hoje.getDayOfMonth();
        this.mes = hoje.getMonthValue();
        this.ano = hoje.getYear();
    }

    public boolean dataValida() {
        try {
            LocalDate.of(ano, mes, dia);
            return true;
        } catch (Exception e) {
            return false;
        }
    }

    public void imprimeData() {
        System.out.println(dia + "/" + mes + "/" + ano);
    }

    public void proximoDia() {
        LocalDate data = LocalDate.of(ano, mes, dia).plusDays(1);
        this.dia = data.getDayOfMonth();
        this.mes = data.getMonthValue();
        this.ano = data.getYear();
    }
}
