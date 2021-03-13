//
//  DetallasViewController.swift
//  PerroImagen
//
//  Created by Marvin Amaro on 3/3/21.
//

import UIKit

class SubRazasViewController: ListaViewController {
    var razaseleccionado: String = ""
    var subRazasArray = [String]()
    private var listaDeSubRazasTableView: UITableView!

    override func viewDidLoad() {
        super.viewDidLoad()
        //self.tableView.register(UITableViewCell.self, forCellReuseIdentifier: "MyCell")
        let barHeight: CGFloat = view.window?.windowScene?.statusBarManager?.statusBarFrame.height ?? 0
         let displayWidth: CGFloat = self.view.frame.width
         let displayHeight: CGFloat = self.view.frame.height

        listaDeSubRazasTableView = UITableView(frame: CGRect(x: 0, y: barHeight, width: displayWidth, height: displayHeight - barHeight))
        listaDeSubRazasTableView.register(UITableViewCell.self, forCellReuseIdentifier: "MyCell")
        listaDeSubRazasTableView.dataSource = self
        listaDeSubRazasTableView.delegate = self
         self.view.addSubview(listaDeSubRazasTableView)

        let subRazas = getSubRazas()
        subRazasArray = subRazas
        print(subRazasArray)
    }
 
    func getSubRazas() -> [String]{
        // Access Shared Defaults Object
        let userDefaults = UserDefaults.standard
        let DictionaryRazasYSub = userDefaults.object(forKey: "PerrosRazasYSub") as! [String:[String]]

        let subRazas  = DictionaryRazasYSub[razaseleccionado] as! [String]
        return subRazas
    }
    

 //   func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {


        /*        let cell = listaDePerrosTableView.dequeueReusableCell(withIdentifier: "MyCell", for: indexPath as IndexPath)
        cell.textLabel!.text = "\(listaDePerrosArray[indexPath.row])"
        
        cell = UITableViewCell()
    return cell
     */
 }

extension SubRazasViewController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {

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

    func tableView(_ tableView: UITableView?, numberOfRowsInSection section: Int) -> Int {
        return subRazasArray.count
    }

    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {

        
        let cell = tableView.dequeueReusableCell(withIdentifier: "MyCell", for: indexPath)
        cell.textLabel!.text = "\(subRazasArray[indexPath.row])"
         
        return cell
 
    }
}

