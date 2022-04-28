//
//  ViewController.swift
//  Devanaboyina_Movies
//
//  Created by Devanaboyina,Maneesh on 4/28/22.
//

import UIKit

class GenreViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        catGenre.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = genreTableView.dequeueReusableCell(withIdentifier: "sectionCell", for: indexPath)
                //Assign the data into the cell
                cell.textLabel?.text = catGenre[indexPath.row].category
                return cell
    }
   
    

    
    @IBOutlet weak var genreTableView: UITableView!
    let catGenre = movieGenreArray
    
    override func viewDidLoad() {
        super.viewDidLoad()
        genreTableView.dataSource = self
        genreTableView.delegate = self
        // Do any additional setup after loading the view.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
           let transition = segue.identifier
           if transition == "movieSegue"{
               let destination = segue.destination as!  MoviesViewController
               
               //Assigning product to the destination
               destination.moviesCat = catGenre[(genreTableView.indexPathForSelectedRow?.row)!].movies
           }
       }


}

