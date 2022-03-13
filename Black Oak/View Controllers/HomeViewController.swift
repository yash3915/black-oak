//
//  HomeViewController.swift
//  Black Oak
//
//  Created by Yash Patel on 09/10/21.
//

import UIKit

class HomeViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var homeTableView:UITableView!

    var menus = [Menu(name: "Sofa", image: "Sofa", id: "sofa")]
    var tableSections = [Section]()
    
    
    var products = [Product]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        getProducts()
        tableSections = [Section(type: "menu", id: "menu_id", items: 1), Section(type: "section", id: "category_item_id", items: products.count)]
        // Do any additional setup after loading the view.
    }
    
    func getProducts(){
        products = Product.getList()
    }

    
    func numberOfSections(in tableView: UITableView) -> Int {
        return tableSections.count
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return tableSections[section].items
    }
    
    func tableView(_ tableView: UITableView, willDisplayHeaderView view: UIView, forSection section: Int){
        let header = view as! UITableViewHeaderFooterView
        header.textLabel?.textColor = UIColor.white
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return tableSections[section].type
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: tableSections[indexPath.section].id, for: indexPath)
        if(tableSections[indexPath.section].type == "menu") {
            
        }else{
            cell.textLabel?.text = products[indexPath.row].name
        }
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return tableSections[indexPath.section].type == "menu" ? 120 : 30
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        //action
        print("Tapped")
        tableView.deselectRow(at: indexPath, animated: true)
        DispatchQueue.main.async {
            let itemsVC = self.storyboard?.instantiateViewController(identifier: "ItemsViewController") as! ItemsViewController
            UIApplication.shared.windows.first?.rootViewController = itemsVC
            UIApplication.shared.windows.first?.makeKeyAndVisible()
        }
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
