//
//  ViewController.swift
//  theBasics
//
//  Created by Anh-Thu Bui on 8/5/25.
//

import UIKit

class ActivitiesViewController: UIViewController, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return mockActivities.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = activityTableView.dequeueReusableCell(withIdentifier: "ActivityCell", for: indexPath) as! ActivityCell
        let activity = mockActivities[indexPath.row]
        cell.activityName.text = activity.name
        cell.activityDescription.text = activity.description
        cell.activityImage.image = UIImage(systemName: activity.image)
        return cell
    }
    
    
    @IBOutlet weak var activityTableView: UITableView!
    private var mockActivities = [Activity]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        activityTableView.dataSource = self
        mockActivities = createActivities()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let selectedIndexPath = activityTableView.indexPathForSelectedRow else {return}
        let selectedActivity = mockActivities[selectedIndexPath.row]
        guard let essentialViewController = segue.destination as? EssentialsViewController else {return}
        essentialViewController.activity = selectedActivity
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        if let selectedIndexPath = activityTableView.indexPathForSelectedRow {
            activityTableView.deselectRow(at: selectedIndexPath, animated: animated)
        }
    }

    private func createActivities() -> [Activity] {
        let activity1 = Activity(name: "Hiking", description: "Enjoy the beauty of nature", image: "tree", essentials: ["Backpack", "Food", "Water"])
        let activity2 = Activity(name: "Swimming", description: "Improve cardio and play in the water", image: "figure.pool.swim", essentials: ["Swimwear", "Towel", "Goggles"])
        let activity3 = Activity(name: "Painting", description: "Use creativity to create artworks ", image: "paintbrush.pointed", essentials: ["Paint Brushes", "Paint", "Paper"])
        return [activity1, activity2, activity3]
    }
    
    
}

