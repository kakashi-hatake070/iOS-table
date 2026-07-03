//
//  ViewController.swift
//  Table
//
//  Created by Apple System 22 on 27/06/26.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return stud.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
       
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "TableViewCell")
                as? TableViewCell else {return UITableViewCell()}
        cell.Naruto.text = stud[indexPath.row]
        return cell
    }
    

    
    
    @IBOutlet weak var outlet: UITableView!
    
    var stud: [String] = ["Amit", "Rahul", "Priya", "Sneha", "Rahul", "Priya", "Sneha", "Rahul", "Priya", "Sneha", "Rahul", "Priya", "Sneha", "Rahul", "Priya", "Sneha", "Rahul", "Priya", "Sneha"]
    
 
    
    
           
    override func viewDidLoad() {
        super.viewDidLoad()
        
        outlet.delegate = self
        outlet.dataSource = self
        outlet.register(UINib(nibName: "TableViewCell", bundle: nil), forCellReuseIdentifier: "TableViewCell")
        
        
        
        
        
        
    }
}
       
      
        
        
        
 






























//        var names = ["Amit", "Rahul", "Priya", "Sneha"]
//
//       
//        names.append("Vikram")
//
//       
//        print(names)
       
        
        
    




