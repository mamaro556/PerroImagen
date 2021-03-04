//
//  DetallasViewController.swift
//  PerroImagen
//
//  Created by Marvin Amaro on 3/3/21.
//

import UIKit

class SubRazasViewController: UITableViewController {
    var razaseleccionado: String = ""
    var subRazasArray = [String]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.tableView.register(UITableViewCell.self, forCellReuseIdentifier: "MyCell")

        // Access Shared Defaults Object
        let userDefaults = UserDefaults.standard
        //razaseleccionado = userDefaults.object(forKey: "razaseleccionado") as? String ?? ""
        let DictionaryRazasYSub = userDefaults.object(forKey: "PerrosRazasYSub") as! [String:[String]]

        let subRazas  = DictionaryRazasYSub[razaseleccionado] as! [String]
        subRazasArray = subRazas
        print(subRazasArray)
    }
 
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {

        let subrazaseleccionado: String = subRazasArray[indexPath.row]
        let viewControllers = self.navigationController?.viewControllers
        let count: Int = viewControllers!.count
        if count > 1 {
            let minus2count = count - 2
            if let previousController = viewControllers?[minus2count] as? DetallesViewController {
                print("x")
            }
        }
        
        print("Num: \(indexPath.row)")
        print("Value: \(subRazasArray[indexPath.row])")
        
        self.navigationController?.popViewController(animated: true)
    }

    override func tableView(_ tableView: UITableView?, numberOfRowsInSection section: Int) -> Int {
        return subRazasArray.count
    }

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {

        
        let cell = tableView.dequeueReusableCell(withIdentifier: "MyCell", for: indexPath)
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

    

