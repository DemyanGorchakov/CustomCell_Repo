//
//  TableViewController.swift
//  CustomCell
//
//  Created by Демьян Горчаков on 09.01.2023.
//

import UIKit

class TableViewController: UITableViewController {
    
    let service = Service()
    var cards = [Card]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        service.getAllCards { cards in
            self.cards = cards
            self.tableView.reloadData()
            
        }
        tableView.separatorStyle = .none
        
        tableView.register(UINib(nibName: "TableCell", bundle: nil), forCellReuseIdentifier: "reuseIdentifier")
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return cards.count
    }
    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let card = cards[indexPath.row]
        
        if let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath) as? TableCell {
            cell.setCardCell(card)
            cell.selectionStyle = .none
            
            return cell
            
        } else {
            return UITableViewCell()
        }
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "segue1",
           let destination = segue.destination as? FirstViewController,
           let index = tableView.indexPathForSelectedRow?.row {
            destination.imageIconFirstVC = cards[index].post.image
        }
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        performSegue(withIdentifier: "segue1", sender: self)
        
    }
    
}
