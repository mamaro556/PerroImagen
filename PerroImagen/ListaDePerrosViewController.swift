//
//  ListaViewController.swift
//  PerroImagen
//
//  Created by Marvin Amaro on 3/2/21.
//

import UIKit

class ListaDePerrosViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    private var listaDePerrosArray = [String]()
    //= ["Value1","Value2","Value3"]
    private var listaDePerrosTableView: UITableView!

    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        view.backgroundColor = .white
        
        //get json
        let urlPath: String = "https://dog.ceo/api/breeds/list/all"
        
        getJSON(urlToRequest:urlPath)
        
        let barHeight: CGFloat = view.window?.windowScene?.statusBarManager?.statusBarFrame.height ?? 0
         let displayWidth: CGFloat = self.view.frame.width
         let displayHeight: CGFloat = self.view.frame.height

         listaDePerrosTableView = UITableView(frame: CGRect(x: 0, y: barHeight, width: displayWidth, height: displayHeight - barHeight))
         listaDePerrosTableView.register(UITableViewCell.self, forCellReuseIdentifier: "MyCell")
         listaDePerrosTableView.dataSource = self
         listaDePerrosTableView.delegate = self
         self.view.addSubview(listaDePerrosTableView)
      
         }
     
         func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
         
         }
    
         func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
            let newViewController =
            self.navigationController?.pushViewController(newViewController, animated: true)
             print("Num: \(indexPath.row)")
             print("Value: \(listaDePerrosArray[indexPath.row])")
         }

         func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
             return listaDePerrosArray.count
         }

         func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
             let cell = listaDePerrosTableView.dequeueReusableCell(withIdentifier: "MyCell", for: indexPath as IndexPath)
             cell.textLabel!.text = "\(listaDePerrosArray[indexPath.row])"
             return cell
         }
    
        func getJSON(urlToRequest: String) {
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
                    
                    self.listaDePerrosArray = [String](jsonMain.keys)
                     
                    for (key) in self.listaDePerrosArray.sorted() {
                       print("\(key)")
                    }
                    self.listaDePerrosArray.sort()
                    
                    DispatchQueue.main.async {
                        self.listaDePerrosTableView.reloadData()
                    }
            
                }
                catch {
                   NSLog("ERROR \(error.localizedDescription)")
                }
                        
            }.resume()
        }
}
