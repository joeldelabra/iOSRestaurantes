// Materia.swift
import Foundation

class Restaurante{
    
    var direccion: String?
    var nombre: String?
    var telefono: String?
    var descripcion: String?
    
    init(nombre: String,direccion: String, telefono: String, descripcion: String)
    {
        self.nombre = nombre
        self.direccion = direccion
        self.telefono = telefono
        self.descripcion = descripcion
    }
}
