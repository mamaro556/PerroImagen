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

        temperamentoLabel.textColor = .black
        temperamentoLabel.text = "Temperament"
        temperamentoLabel.font = UIFont(name: "Helvetica", size: 12)
        view.addSubview(temperamentoLabel)
        alturaLabel.textColor = .black
        alturaLabel.text = "Height"
        alturaLabel.font = UIFont(name: "Helvetica", size: 12)
        view.addSubview(alturaLabel)
        anchoLabel.textColor = .black
        anchoLabel.text = "Width"
        anchoLabel.font = UIFont(name: "Helvetica", size: 12)
        view.addSubview(anchoLabel)
        largoVidaLabel.textColor = .black
        largoVidaLabel.text = "Life Expectancy"
        largoVidaLabel.font = UIFont(name: "Helvetica", size: 12)
        view.addSubview(largoVidaLabel)
        grupoLabel.textColor = .black
        grupoLabel.text = "Group"
        grupoLabel.font = UIFont(name: "Helvetica", size: 12)
        view.addSubview(grupoLabel)

        razaTexto.textColor = .black
        razaTexto.font = UIFont(name: "Helvetica", size: 50)
        razaTexto.text = raza
        view.addSubview(razaTexto)

        temperamentoTexto.textColor = .black
        temperamentoTexto.font = UIFont(name: "Helvetica", size: 12)
        temperamentoTexto.text = raza
        view.addSubview(temperamentoTexto)
        
        alturaTexto.textColor = .black
        alturaTexto.font = UIFont(name: "Helvetica", size: 12)
        alturaTexto.text = raza
        view.addSubview(alturaTexto)

        anchoTexto.textColor = .black
        anchoTexto.font = UIFont(name: "Helvetica", size: 12)
        anchoTexto.text = raza
        view.addSubview(anchoTexto)

        largoVidaTexto.textColor = .black
        largoVidaTexto.font = UIFont(name: "Helvetica", size: 12)
        largoVidaTexto.text = raza
        view.addSubview(largoVidaTexto)


        grupoTexto.textColor = .black
        grupoTexto.font = UIFont(name: "Helvetica", size: 15)
        grupoTexto.text = raza
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
           
            
            // labels
            temperamentoLabel.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant:-200),
            temperamentoLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant:20),
            temperamentoLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant:-20),
            alturaLabel.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant:-190),
            alturaLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant:20),
            alturaLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant:-20),
            anchoLabel.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant:-180),
            anchoLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant:20),
            anchoLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant:-20),
            largoVidaLabel.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant:-170),
            largoVidaLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant:20),
            largoVidaLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant:-20),
            grupoLabel.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant:-160),
            grupoLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant:20),
            grupoLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant:-20),

            // boton
            verSubRazas.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant:-100),

            verSubRazas.centerXAnchor.constraint(equalTo:self.view.centerXAnchor),

            verSubRazas.widthAnchor.constraint(equalToConstant: 300)
         ])
        
    }
    
    @objc func buttonTapped(sender : UIButton) {
        print("Pressed")
    }
    

}
