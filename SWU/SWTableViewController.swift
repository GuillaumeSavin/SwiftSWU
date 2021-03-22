//
//  StarWarsTableViewController.swift
//  SWU
//
//  Created by sg812131 on 22/03/2021.
//

import UIKit

class SWTableViewController: UITableViewController {
    
    var movies = [SWMovie]()
    

    override func viewDidLoad() {
        super.viewDidLoad()
        movies.append(SWMovie(title: "La menace fantôme", epNumber: 1, year: 2000, director: "XXX", image: UIImage(named: "phantomeMenace")!))
        movies.append(SWMovie(title: "L'Attaque des Clones", epNumber: 2, year: 2000, director: "XXX", image: UIImage(named: "attackOfTheClones")!))
        movies.append(SWMovie(title: "La Revanche des Siths", epNumber: 3, year: 2000, director: "XXX", image: UIImage(named: "revengeOfTheSith")!))
        movies.append(SWMovie(title: "Un nouvel espoir", epNumber: 4, year: 2000, director: "XXX", image: UIImage(named: "aNewHope")!))
        movies.append(SWMovie(title: "L'Empire Contre-Attaque", epNumber: 5, year: 2000, director: "XXX", image: UIImage(named: "theEmpireStrikeBack")!))
        movies.append(SWMovie(title: "Le Retour du Jedi", epNumber: 6, year: 2000, director: "XXX", image: UIImage(named: "theReturnOfTheJedi")!))
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 2
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if section == 0 {
            return movies.count
        }
        else {
            return 1
        }
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(withIdentifier: "SWTableCellType", for: indexPath) as? SWCell {
            let film = movies[indexPath.row]
            cell.title.text = film.title
            cell.epNumber?.text = "\(film.epNumber)"
            cell.poster?.image = film.image
            cell.year.text = "\(film.year)"
            
            return cell
        }

        // Configure the cell...

        return UITableViewCell()
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        if section == 0 {
            return "Main Saga"
        }
        else {
            return "Other sagas"
        }
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let selectedFilm = movies[indexPath.row]
        
        if let viewController = storyboard?.instantiateViewController(identifier: "Film View Controller") as? FilmViewController {
            viewController.film = selectedFilm
            navigationController?.pushViewController(viewController, animated: true)
        }
    }
    

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
