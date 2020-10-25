//
//  MainTableViewController.swift
//  CustomTableViewCell
//
//  Created by Peterson Cemoin on 11/11/19.
//  Copyright © 2019 YourAreAwesome. All rights reserved.
//

import UIKit

class MainTableViewController: UITableViewController {
    
    var actors : [Actor]!
    
    var rowHeight : CGFloat!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.rowHeight = UIScreen.main.traitCollection.userInterfaceIdiom == .phone ? 152 : 75
        self.tableView.rowHeight = self.rowHeight
        
        self.actors = getActors()
        
            }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return self.actors.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        //ActorTableViewCell로 캐스팅
        let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath) as! ActorTableViewCell
        //셀 데이터 가져오기
        let actor = self.actors[indexPath.row]
        // Configure the cell...

        cell.actorImage.image = UIImage(named: "\(actor.firstName)_\(actor.lastName).jpg")
        cell.fullName.text = "Full Name : \(actor.firstName) \(actor.lastName)"
        cell.email.text = "Email : \(actor.email)"
        cell.raiting.text = "Rating : \(actor.rating)"
        
        if (UIScreen.main.traitCollection.userInterfaceIdiom == .pad) {
            cell.actorImage.layer.cornerRadius = cell.actorImage.frame.width/4
            cell.actorImage.layer.masksToBounds = true
        }
        
        return cell
    }
    

    func getActors()-> [Actor]{
        return [
            Actor(firstName: "Denzel", lastName: "Washington", email: "denzel@washington.com", rating: 3.7),
            Actor(firstName: "Johnny", lastName: "Depp", email: "johnny@depp.com", rating: 3.4),
            Actor(firstName: "Al", lastName: "Pacino", email: "al@pacino.com", rating: 3.8),
            Actor(firstName: "Robert", lastName: "DeNiro", email: "robert@deniro.com", rating: 3.3),
            Actor(firstName: "Russell", lastName: "Crowe", email: "russell@crowe.com", rating: 3.5),
            Actor(firstName: "Brad", lastName: "Pitt", email: "brad@pitt.com", rating: 3.8),
            Actor(firstName: "Denzel", lastName: "Washington", email: "denzel@washington.com", rating: 3.7),
            Actor(firstName: "Johnny", lastName: "Depp", email: "johnny@depp.com", rating: 3.4),
            Actor(firstName: "Al", lastName: "Pacino", email: "al@pacino.com", rating: 3.8),
            Actor(firstName: "Robert", lastName: "DeNiro", email: "robert@deniro.com", rating: 3.3),
            Actor(firstName: "Russell", lastName: "Crowe", email: "russell@crowe.com", rating: 3.5),
            Actor(firstName: "Brad", lastName: "Pitt", email: "brad@pitt.com", rating: 3.8),
            Actor(firstName: "Denzel", lastName: "Washington", email: "denzel@washington.com", rating: 3.7),
            Actor(firstName: "Johnny", lastName: "Depp", email: "johnny@depp.com", rating: 3.4),
            Actor(firstName: "Al", lastName: "Pacino", email: "al@pacino.com", rating: 3.8),
            Actor(firstName: "Robert", lastName: "DeNiro", email: "robert@deniro.com", rating: 3.3),
            Actor(firstName: "Russell", lastName: "Crowe", email: "russell@crowe.com", rating: 3.5),
            Actor(firstName: "Brad", lastName: "Pitt", email: "brad@pitt.com", rating: 3.8)
        ]
    }
}
