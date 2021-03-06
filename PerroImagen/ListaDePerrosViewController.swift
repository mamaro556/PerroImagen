//
//  ListaViewController.swift
//  PerroImagen
//
//  Created by Marvin Amaro on 3/2/21.
//

import UIKit
import Foundation

class ListaDePerrosViewController: ListaViewController {

    
    //var listaDePerrosArray = [String]()
    private var listaDeSubRazasArray = [String]()
    private var listaDePerrosTableView: UITableView!
    private let tipoDeLista = TipoDeLista.listadeperros
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Perros"
        
        SetupUI()
        //Download get perros lista
        let download:Download = Download()
        download.getJSON(viewController: self, tipoDeLista:tipoDeLista, tableView: self.listaDePerrosTableView)
        
        //listaDePerrosArray = listaDeStrings
        listaDePerrosTableView.backgroundColor = .white

    }

    func SetupUI()
    {
        // Do any additional setup after loading the view.
        view.backgroundColor = .white
        
        
        let barHeight: CGFloat = view.window?.windowScene?.statusBarManager?.statusBarFrame.height ?? 0
         let displayWidth: CGFloat = self.view.frame.width
         let displayHeight: CGFloat = self.view.frame.height

         listaDePerrosTableView = UITableView(frame: CGRect(x: 0, y: barHeight, width: displayWidth, height: displayHeight - barHeight))
         listaDePerrosTableView.register(UITableViewCell.self, forCellReuseIdentifier: "MyCell")
         listaDePerrosTableView.dataSource = self
         listaDePerrosTableView.delegate = self
         self.view.addSubview(listaDePerrosTableView)

    }
}

extension ListaDePerrosViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
            let newViewController = DetallesViewController()

            let razaseleccionado: String = listaDeStrings[indexPath.row]
            newViewController.raza = razaseleccionado
            self.navigationController?.pushViewController(newViewController, animated: true)
            
             print("Num: \(indexPath.row)")
             print("Value: \(listaDeStrings[indexPath.row])")
     }

     func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
         return listaDeStrings.count
     }

     func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
         let cell = listaDePerrosTableView.dequeueReusableCell(withIdentifier: "MyCell", for: indexPath as IndexPath)
         cell.textLabel!.text = "\(listaDeStrings[indexPath.row])"
         return cell
     }
}
