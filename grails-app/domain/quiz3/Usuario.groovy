package quiz3

class Usuario {

    String nombre
    String apellido
    String cedula
    String email
    Date fechaDeNacimiento

    static belongsTo = Evento

    static constraints = {
        nombre(blank: false)
        apellido(blank: false)
        cedula(blank: false)
        fechaDeNacimiento(blank: false)
        email(blank: false, email: true)
    }
}
