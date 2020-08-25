//
//  ViewController.swift
//  AprendiendoTablas
//
//  Created by XCodeClub on 2020-08-24.
//  Copyright © 2020 avilamisc. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    // MARK; - Referencia de la tabla
    @IBOutlet weak var tableView: UITableView!
    
    
    /*
     1.- Implementar DataSource <- interfaz
     */
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //No olvidar
        tableView.dataSource = self
        tableView.register(UINib(nibName: "TweetTableViewCell", bundle: nil), forCellReuseIdentifier: "TweetTableViewCell")
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "mi-celda")
        //Para interactuar, implementar el delegate
        tableView.delegate = self
    }
}

// Mark:
extension ViewController: UITableViewDelegate{
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("la celda #\(indexPath.row) fue seleccionada")
    }
}


extension ViewController: UITableViewDataSource {
    // 1. Número de filas que trendra nuestra tabla
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
            return 20
    }
    
    // 2. Metodo para saber que celdas deben mostrarse.
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "TweetTableViewCell", for: indexPath)
        
        if let newCell = cell as? TweetTableViewCell {
         newCell.setUpCell(username: "@usuario\(indexPath.row)", message: "Soy un tweet!")
        }
        
        return cell
    }
}
