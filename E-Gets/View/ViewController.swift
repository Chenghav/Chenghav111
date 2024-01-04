//
//  ViewController.swift
//  E-Gets
//
//  Created by Chenghav on 3/1/24.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    

    @IBOutlet var viewPage: UIView!
    @IBOutlet weak var searchBar: UISearchBar!
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate          = self
        tableView.dataSource        = self
//        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "FirstSectionTableViewCell")
        searchBar.barTintColor      = UIColor.clear
        searchBar.backgroundColor   = UIColor.clear
        searchBar.isTranslucent     = true
        searchBar.setBackgroundImage(UIImage(), for: .any, barMetrics: .default)
        searchBar.searchTextField.layer.borderColor  = #colorLiteral(red: 0.9872377515, green: 0.5136572123, blue: 0.02821529657, alpha: 1)
        searchBar.searchTextField.layer.borderWidth  = 1
        searchBar.searchTextField.layer.cornerRadius = 18
        searchBar.searchTextField.clipsToBounds      = true
        searchBar.searchTextField.backgroundColor    = UIColor.clear
        //        searchBar.searchTextField.layer.borderColor  = UIColor(hexString: "#EF7215").cgColor
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 2
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if section == 0 {
            return 1
        }else if section == 1 {
            return 1
        }
        return 0
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if indexPath.section == 0 {
            let cell = tableView.dequeueReusableCell(withIdentifier: "FirstSectionTableViewCell", for: indexPath) as! FirstSectionTableViewCell
            cell.selectionStyle = .none
            return cell
        }else if indexPath.section == 1 {
            let cell = tableView.dequeueReusableCell(withIdentifier: "SecondCellTableViewCell", for: indexPath) as! SecondCellTableViewCell
            cell.selectionStyle     = .none
            return cell
        }
        return UITableViewCell()
    }
    
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        
        if indexPath.section == 0 {
            return 160
        }else if indexPath.section == 1 {
            return 160
        }
        return 0
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
            if section == 0{
               return ""
           }else if section == 1{
              return "ប្រូម៉ូសិន និងការបញ្ចុះតម្លៃ"
         }
        return ""
     }
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        if section == 1 {
            return 14
        }
        return 0
    }
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        if section == 1 {
            let headerView = UIView()
            let titleLabel = UILabel()
            titleLabel.frame = CGRect(x: 16, y: 0, width: tableView.bounds.width - 32, height: 16)
            titleLabel.text = self.tableView(tableView, titleForHeaderInSection: section)
            titleLabel.textColor = UIColor.black
            headerView.addSubview(titleLabel)
            return headerView
        }
        return nil
     }
}


