//
//  DetallasViewController.swift
//  PerroImagen
//
//  Created by Marvin Amaro on 3/3/21.
//

import UIKit

class SubRazasViewController: UITableViewController {
    var razaseleccionado: String = ""
    let subRazasArray = [String]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Access Shared Defaults Object
        let userDefaults = UserDefaults.standard
        razaseleccionado = userDefaults.object(forKey: "razaseleccionado") as? String ?? ""
        let DictionaryRazasYSub = userDefaults.object(forKey: "PerrosRazasYSub") as? [String:[String]]
/*
        let subRazas:[String] = DictionaryRazasYSub[razaseleccionado]
        subRazasArray = subRazas
*/        print(subRazasArray)
    }
 
 
    override func tableView(_ tableView: UITableView?, numberOfRowsInSection section: Int) -> Int {
        return subRazasArray.count
    }

    func numberOfSectionsInTableView(_ tableView: UITableView?) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {

        
        let cell = tableView.dequeueReusableCell(withIdentifier: "MyCell", for: indexPath as IndexPath)
        cell.textLabel!.text = "\(subRazasArray[indexPath.row])"
         
        return cell
 
    }
 //   func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {


        /*        let cell = listaDePerrosTableView.dequeueReusableCell(withIdentifier: "MyCell", for: indexPath as IndexPath)
        cell.textLabel!.text = "\(listaDePerrosArray[indexPath.row])"
        
        cell = UITableViewCell()
    return cell
     */
 }

    

