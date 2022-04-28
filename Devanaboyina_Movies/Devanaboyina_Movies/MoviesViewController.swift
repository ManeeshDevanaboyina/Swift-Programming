//
//  MoviesViewController.swift
//  Devanaboyina_Movies
//
//  Created by Devanaboyina,Maneesh on 4/28/22.
//

import UIKit

class MoviesViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        moviesCat.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = movieCollectionView.dequeueReusableCell(withReuseIdentifier: "movieCell", for: indexPath) as! MovieCollectionViewCell
                
                cell.assignMovie(moviesCat[indexPath.row])
                
                return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
                movieNameLabel.text = "Movie Name: " + moviesCat[indexPath.row].title
                movieRatingLabel.text = "Movie Rating: " + moviesCat[indexPath.row].movieRating
                movieBoxOfficeLabel.text = "Box Office Collection: " + moviesCat[indexPath.row].boxOffice
                
                movieYearLabel.text = "Movie Released Year: " + moviesCat[indexPath.row].releasedYear
                moviePlotLabel.text = "Plot: " +  moviesCat[indexPath.row].moviePlot
                
                let var1 : [String] = moviesCat[indexPath.row].cast
                movieCastLabel.text = "Cast: " + var1.joined(separator: ", ")
        

            // Do any additional setup after loading the view.
        }
    
    
    
    @IBOutlet weak var movieCollectionView: UICollectionView!
    
    
    @IBOutlet weak var movieNameLabel: UILabel!
    
    
    @IBOutlet weak var movieRatingLabel: UILabel!
    
    
    @IBOutlet weak var movieBoxOfficeLabel: UILabel!
    
    
    @IBOutlet weak var movieYearLabel: UILabel!
    
    @IBOutlet weak var moviePlotLabel: UILabel!
    
    
    @IBOutlet weak var movieCastLabel: UILabel!
    
    var moviesCat:[Movie]=[]
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        movieCollectionView.delegate=self
        movieCollectionView.dataSource=self

        // Do any additional setup after loading the view.
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
