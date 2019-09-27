
// CalificacionesController
import Foundation
import UIKit

class RestauranteController: UIViewController, UITableViewDataSource, UITableViewDelegate
{
    var restaurante : [Restaurante] = []
    override func viewDidLoad() {
        restaurante.append(Restaurante(nombre: "El Hombre Elegante",direccion:"Calle Noroeste #282", telefono: "6441596779", descripcion: "Un establecimiento elegante"))
        
        restaurante.append(Restaurante(nombre: "Chupilandia",direccion:"Calle Hermosillo #251", telefono: "64414163674", descripcion: "Un lugar donde tus fiestas seran geniales"))
        
        restaurante.append(Restaurante(nombre: "La Pixulinha" ,direccion:"Calle De La Creacion #8461", telefono: "12345678910", descripcion: "Un establecimiento con sabore brasileiro"))
        
         restaurante.append(Restaurante(nombre: "El Pancheiser",direccion:"Calle Noroeste #2854", telefono: "12364568445", descripcion: "Un establecimiento"))
        
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let CeldaRestaurant = tableView.dequeueReusableCell(withIdentifier: "CeldaRestaurant")
        CeldaRestaurant?.textLabel?.text = restaurante[indexPath.row].nombre
        return CeldaRestaurant!
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return restaurante.count
    }
    
    @IBOutlet weak var TableViewRestaurant: UITableView!
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "GoToRestaurant"
        {
            let destino = segue.destination as? DetalleRestaurantController
            destino?.restaurant = restaurante[TableViewRestaurant.indexPathForSelectedRow!.row]
        }
    }
    
}
