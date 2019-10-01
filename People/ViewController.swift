//
//  ViewController.swift
//  People
//
//  Created by Mickael Mas on 01/10/2019.
//  Copyright © 2019 APPIWEDIA. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var tableView: UITableView!
    
    var people: [People] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        let people0 = People(name: "Olivier", imageName: "people0")
        let people1 = People(name: "Sarah", imageName: "people1")
        let people2 = People(name: "Fadela", imageName: "people2")
        let people3 = People(name: "Zohra", imageName: nil)
        people = [people0, people1,people2, people3]
    }
    

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return people.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "PeopleCell", for: indexPath) as! PeopleCell
        
        let currentPeople = people[indexPath.row]
        
        if let imageName = currentPeople.imageName {
            cell.peopleImageView.image = UIImage(named: imageName)
        } else {
            cell.peopleImageView.image = UIImage(named: "people-placeholder")
        }
        
        cell.peopleImageView.layer.cornerRadius = cell.peopleImageView.frame.size.width / 2
        
        cell.peopleNameLabel.text = currentPeople.name
        
        return cell
    }
    

}

