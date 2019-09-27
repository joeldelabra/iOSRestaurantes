// DetalleMateriaController

import Foundation
import UIKit

class DetalleRestaurantController : UIViewController{
    var restaurant : Restaurante?
    
    
    @IBOutlet weak var lblDireccion: UILabel!
    @IBOutlet weak var lblTelefono: UILabel!
    @IBOutlet weak var lblDescripcion: UILabel!
    
    override func viewDidLoad() {
        
        self.title = restaurant?.nombre
        
        lblDireccion.text = "\(restaurant!.direccion!)"
        lblTelefono.text = "\(restaurant!.telefono!)"
        lblDescripcion.text = "\(restaurant!.descripcion!)"
    }
    
}
