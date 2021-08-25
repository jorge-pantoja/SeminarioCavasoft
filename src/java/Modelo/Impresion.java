
package Modelo;


public class Impresion {
    
    int Item;
    int IDRep;
    int HorometroInicial;
    int HorometroFinal;
    double Horas;
    double TotalHoras;
    String NombreOperador;
    String Maquina;
    int Folio;
    String Detalle;
    String CantidadPetroleo;
    String FechaDiaria;
    String Observaciones;

    public Impresion() {
    }

    public Impresion(int Item, int IDRep, int HorometroInicial, int HorometroFinal, double Horas, double TotalHoras, String NombreOperador, String Maquina, int Folio, String Detalle, String CantidadPetroleo, String FechaDiaria, String Observaciones) {
        this.Item = Item;
        this.IDRep = IDRep;
        this.HorometroInicial = HorometroInicial;
        this.HorometroFinal = HorometroFinal;
        this.Horas = Horas;
        this.TotalHoras = TotalHoras;
        this.NombreOperador = NombreOperador;
        this.Maquina = Maquina;
        this.Folio = Folio;
        this.Detalle = Detalle;
        this.CantidadPetroleo = CantidadPetroleo;
        this.FechaDiaria = FechaDiaria;
        this.Observaciones = Observaciones;
    }

    
    

    public int getItem() {
        return Item;
    }

    public void setItem(int Item) {
        this.Item = Item;
    }

    public double getHoras() {
        return Horas;
    }

    public void setHoras(double Horas) {
        this.Horas = Horas;
    }

    public int getIDRep() {
        return IDRep;
    }

    public void setIDRep(int IDRep) {
        this.IDRep = IDRep;
    }

    public int getHorometroInicial() {
        return HorometroInicial;
    }

    public void setHorometroInicial(int HorometroInicial) {
        this.HorometroInicial = HorometroInicial;
    }

    public int getHorometroFinal() {
        return HorometroFinal;
    }

    public void setHorometroFinal(int HorometroFinal) {
        this.HorometroFinal = HorometroFinal;
    }

    public String getNombreOperador() {
        return NombreOperador;
    }

    public void setNombreOperador(String NombreOperador) {
        this.NombreOperador = NombreOperador;
    }

    public String getMaquina() {
        return Maquina;
    }

    public void setMaquina(String Maquina) {
        this.Maquina = Maquina;
    }

    public int getFolio() {
        return Folio;
    }

    public void setFolio(int Folio) {
        this.Folio = Folio;
    }

    public String getDetalle() {
        return Detalle;
    }

    public void setDetalle(String Detalle) {
        this.Detalle = Detalle;
    }

    public String getCantidadPetroleo() {
        return CantidadPetroleo;
    }

    public void setCantidadPetroleo(String CantidadPetroleo) {
        this.CantidadPetroleo = CantidadPetroleo;
    }

    public String getFechaDiaria() {
        return FechaDiaria;
    }

    public void setFechaDiaria(String FechaDiaria) {
        this.FechaDiaria = FechaDiaria;
    }

    public String getObservaciones() {
        return Observaciones;
    }

    public void setObservaciones(String Observaciones) {
        this.Observaciones = Observaciones;
    }

    public double getTotalHoras() {
        return TotalHoras;
    }

    public void setTotalHoras(double TotalHoras) {
        this.TotalHoras = TotalHoras;
    }
    
    
    
    
}
