//
//  DetallasViewController.swift
//  PerroImagen
//
//  Created by Marvin Amaro on 3/4/21.
//

import UIKit

class DetallesViewController: UIViewController
{
    var raza: String = ""
    let imageView = UIImageView()
    var subraza: String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        view.backgroundColor = .white
        
        let temperamentoLabel = UILabel()
        let alturaLabel = UILabel()
        let anchoLabel = UILabel()
        let largoVidaLabel = UILabel()
        let grupoLabel = UILabel()
        let razaTexto = UILabel()
        let temperamentoTexto = UILabel()
        let alturaTexto = UILabel()
        let anchoTexto = UILabel()
        let largoVidaTexto = UILabel()
        let grupoTexto = UILabel()
        let verSubRazas = UIButton(frame: .zero)
        
        temperamentoLabel.translatesAutoresizingMaskIntoConstraints = false
        alturaLabel.translatesAutoresizingMaskIntoConstraints = false
        anchoLabel.translatesAutoresizingMaskIntoConstraints = false
        largoVidaLabel.translatesAutoresizingMaskIntoConstraints = false
        grupoLabel.translatesAutoresizingMaskIntoConstraints = false
        razaTexto.translatesAutoresizingMaskIntoConstraints = false
        temperamentoTexto.translatesAutoresizingMaskIntoConstraints = false
        alturaTexto.translatesAutoresizingMaskIntoConstraints = false
        anchoTexto.translatesAutoresizingMaskIntoConstraints = false
        largoVidaTexto.translatesAutoresizingMaskIntoConstraints = false
        grupoTexto.translatesAutoresizingMaskIntoConstraints = false
        imageView.translatesAutoresizingMaskIntoConstraints = false
        
        
        temperamentoLabel.textColor = .black
        temperamentoLabel.text = "Temperament:"
        temperamentoLabel.font = UIFont(name: "Helvetica", size: 18)
        view.addSubview(temperamentoLabel)
        alturaLabel.textColor = .black
        alturaLabel.text = "Height:"
        alturaLabel.font = UIFont(name: "Helvetica", size: 18)
        view.addSubview(alturaLabel)
        anchoLabel.textColor = .black
        anchoLabel.text = "Width:"
        anchoLabel.font = UIFont(name: "Helvetica", size: 18)
        view.addSubview(anchoLabel)
        largoVidaLabel.textColor = .black
        largoVidaLabel.text = "Life Expectancy:"
        largoVidaLabel.font = UIFont(name: "Helvetica", size: 18)
        view.addSubview(largoVidaLabel)
        grupoLabel.textColor = .black
        grupoLabel.text = "Group:"
        grupoLabel.font = UIFont(name: "Helvetica", size: 18)
        view.addSubview(grupoLabel)

        razaTexto.textColor = .black
        razaTexto.font = UIFont(name: "Helvetica", size: 50)
        razaTexto.text = raza
        view.addSubview(razaTexto)

        temperamentoTexto.textColor = .black
        temperamentoTexto.font = UIFont(name: "Helvetica", size: 16)
        temperamentoTexto.text = "Affectionate, Loyal, Noble"
        view.addSubview(temperamentoTexto)
        
        alturaTexto.textColor = .black
        alturaTexto.font = UIFont(name: "Helvetica", size: 16)
        alturaTexto.text = "9.75-15.75 in."
        view.addSubview(alturaTexto)

        anchoTexto.textColor = .black
        anchoTexto.font = UIFont(name: "Helvetica", size: 16)
        anchoTexto.text = "8.5-17.5 lbs."
        view.addSubview(anchoTexto)

        largoVidaTexto.textColor = .black
        largoVidaTexto.font = UIFont(name: "Helvetica", size: 16)
        largoVidaTexto.text = "12-14 yrs."
        view.addSubview(largoVidaTexto)


        grupoTexto.textColor = .black
        grupoTexto.font = UIFont(name: "Helvetica", size: 16)
        grupoTexto.text = "Miscellaneous"
        view.addSubview(grupoTexto)

        verSubRazas.translatesAutoresizingMaskIntoConstraints = false

        verSubRazas.setTitle("Ver Subrazas", for: .normal)
        verSubRazas.backgroundColor = .orange
        verSubRazas.setTitleColor(UIColor.black, for: .normal)
        verSubRazas.setTitleColor(UIColor.yellow, for: .selected)
        verSubRazas.layer.borderWidth = 1.0
        //verSubRazas.layer.borderColor = UIColor.black.cgColor

        verSubRazas.addTarget(self, action: #selector(self.buttonTapped), for: .touchUpInside)
        view.addSubview(verSubRazas)
        view.addSubview(imageView)
/*
         Temperament: Affectionate, Loyal, Noble.
         Height: 9.75-15.75 inches (small) 15.75-19.75 inches (medium) 19.75-25.75 inches (large)
         Weight: 8.5-17.5 pounds (small) 17.5-26.5 pounds (medium) 26.5-55 pounds (large)
         Life Expectancy: 12-14 years.
         Group: Miscellaneous Class.
         */
        
        
        NSLayoutConstraint.activate([
            
            //raza texto
            razaTexto.topAnchor.constraint(equalTo: view.topAnchor, constant:250),

            razaTexto.centerXAnchor.constraint(equalTo:self.view.centerXAnchor),
            
            //image
            imageView.topAnchor.constraint(equalTo: view.topAnchor, constant:300),

            imageView.centerXAnchor.constraint(equalTo:self.view.centerXAnchor),

            
            // labels
            temperamentoLabel.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant:-300),
            temperamentoLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant:5),
            alturaLabel.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant:-275),
            alturaLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant:5),
            anchoLabel.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant:-250),
            anchoLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant:5),
            largoVidaLabel.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant:-225),
            largoVidaLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant:5),
            grupoLabel.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant:-200),
            grupoLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant:5),
            //grupoLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant:-20),

            // boton
            verSubRazas.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant:-100),

            verSubRazas.centerXAnchor.constraint(equalTo:self.view.centerXAnchor),

            verSubRazas.widthAnchor.constraint(equalToConstant: 300),
            
            // textos
            temperamentoTexto.leadingAnchor.constraint(equalTo: temperamentoLabel.trailingAnchor, constant:10),
            temperamentoTexto.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant:-300),
            alturaTexto.leadingAnchor.constraint(equalTo: alturaLabel.trailingAnchor, constant:10),
            alturaTexto.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant:-275),
            anchoTexto.leadingAnchor.constraint(equalTo: anchoLabel.trailingAnchor, constant:10),
            anchoTexto.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant:-250),
            largoVidaTexto.leadingAnchor.constraint(equalTo: largoVidaLabel.trailingAnchor, constant:10),
            largoVidaTexto.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant:-225),
            grupoTexto.leadingAnchor.constraint(equalTo: grupoLabel.trailingAnchor, constant:10),
            grupoTexto.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant:-200)

        ])
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        if !isMovingToParent { print("backwards")
            
            
            // get imageurl
            getJSON(urlToRequest: "https://dog.ceo/api/breed/hound/afghan/images/random")
            
            // get image
            let imageUrlString: String
            imageUrlString = ""
            
            /* No esta listo
            let url = URL(string: imageUrlString)!

            
            let dataTask = URLSession.shared.dataTask(with: url) { [weak self] (data, _, _) in
                if let data = data {
                    DispatchQueue.main.async {
                        // Create Image and Update Image View
                        self?.imageView.image = UIImage(data: data)
                    }
                }
            }

            
            dataTask.resume()
            */
        }
        
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
                /*
                var jsonMain: [String] = json["message"] as! [String] {
                print(jsonMain)
                
                }
                */
            }
            catch {
               NSLog("ERROR \(error.localizedDescription)")
            }
                    
        }.resume()
    }
    
    @objc func buttonTapped(sender : UIButton) {
        print("Pressed")
        let newViewController = SubRazasViewController()

        newViewController.razaseleccionado = raza
        self.navigationController?.pushViewController(newViewController, animated: true)

    }
    

}
