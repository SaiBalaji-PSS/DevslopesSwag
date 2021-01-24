//
//  ViewController.swift
//  CoderSwag
//
//  Created by saibalaji on 24/01/21.
//

import UIKit

class ViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {
    
    var a: String!
    
    @IBOutlet weak var CategoryTV: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        CategoryTV.delegate = self
        CategoryTV.dataSource = self
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return DataService.sharedobj.getCategories().count
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        if let cell = tableView.dequeueReusableCell(withIdentifier: "cell") as? CategoryCell
        {
            let carray = DataService.sharedobj.getCategories()
            
            cell.UpdateCell(Name: carray[indexPath.row].TitleName, ImgName: carray[indexPath.row].ImageName)
            
            return cell 
            
        }
        
        return UITableViewCell()
        
    }
    
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        a = DataService.sharedobj.getCategories()[indexPath.row].TitleName
          performSegue(withIdentifier: "segue", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
    
        
        if let destinationVC = segue.destination as? ProductsVC
        {
            destinationVC.test = a 
        }
        
        
    }
    
    


}

