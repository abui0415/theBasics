//
//  EssentialsVIewControllerViewController.swift
//  theBasics
//
//  Created by Anh-Thu Bui on 8/5/25.
//

import UIKit

class EssentialsViewController: UIViewController, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return activity.essentials.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = essentialsTableView.dequeueReusableCell(withIdentifier: "EssentialCell", for: indexPath) as! EssentialCell
        let item = activity.essentials[indexPath.row]
        cell.essentialname.text = item
        return cell
    }
    
    
    @IBOutlet weak var essentialsTableView: UITableView!
    var activity: Activity!
    var markedEssentials: [String] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        essentialsTableView.dataSource = self
        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        if let selectedIndexPath = essentialsTableView.indexPathForSelectedRow {
            essentialsTableView.deselectRow(at: selectedIndexPath, animated: animated)
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
