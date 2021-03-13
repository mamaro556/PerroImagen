//
//  Download.swift
//  PerroImagen
//
//  Created by Marvin Amaro on 3/12/21.
//

import UIKit

class Download {
    var listaStringArray = [String]()
    var lista: String = ""
    var urlToRequest:String = ""
    
    func getJSON(viewController: ListaViewController, tipoDeLista: TipoDeLista, tableView: UITableView) {
        
         
        urlToRequest = getAPIConnectionString(tipoDeLista: tipoDeLista)

        
        URLSession.shared.dataTask(with: URL(string: urlToRequest)!)  { (data, response, error) in
            do {
                guard let data = data else {
                   return
                }
                guard let json = try
                JSONSerialization.jsonObject(with: data, options: []) as? [String:Any]
                else {
                    print("error")
                    return
                }
                
                let jsonMain = json["message"] as! [String:[String]]
                print(jsonMain)
                
                self.listaStringArray = [String](jsonMain.keys)
                 
                for (key) in self.listaStringArray.sorted() {
                   print("\(key)")
                }
                self.listaStringArray.sort()
                viewController.listaDeStrings = self.listaStringArray

                // Access Shared Defaults Object
                let userDefaults = UserDefaults.standard

                // Guarda Todo perros
                userDefaults.set(jsonMain, forKey: "PerrosRazasYSub")
                DispatchQueue.main.async {
                    tableView.reloadData()
                }
        
            }
            catch {
               NSLog("ERROR \(error.localizedDescription)")
            }
                    
        }.resume()
    }
    
    private func getAPIConnectionString(tipoDeLista: TipoDeLista) -> String {
    
        let connectionStringKey: String
        switch tipoDeLista {
        case .listadeperros:
            connectionStringKey = "ListaTodos"
        default:
            connectionStringKey = "ListaTodos"
        }

        let path: String = Bundle.main.path(forResource: "Settings", ofType: "plist")!
        let apiConnectionStringDictionary: NSDictionary = NSDictionary(contentsOfFile: path)!
        let connectionString = apiConnectionStringDictionary.object(forKey: connectionStringKey) as! String
        print (connectionString)
        return connectionString
    }

}

enum TipoDeLista {
    case listadeperros
}
