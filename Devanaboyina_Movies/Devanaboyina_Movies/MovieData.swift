//
//  MovieData.swift
//  Devanaboyina_Movies
//
//  Created by Devanaboyina,Maneesh on 4/28/22.
//

import Foundation
import UIKit
struct Movie{
    var title:String
    var image:UIImage
    var releasedYear: String
    var movieRating: String
    var boxOffice: String
    var moviePlot: String
    var cast: Array<String>
}

//GenreStruct

struct Genre{
    var category: String
    var movies: [Movie] = []
}

let movieGenre1: Genre = Genre(category: "Horror", movies: [Movie(title: "The Nun", image: UIImage(named: "thenun")!, releasedYear: "2018", movieRating: "5.3", boxOffice: "365,221 USD", moviePlot: "When a young nun at a cloistered abbey in Romania takes her own life.", cast: ["Taisa", "Farminga"]), Movie(title: "Don't Breathe 2", image: UIImage(named: "don'tbreathe")!, releasedYear: "2021", movieRating: "6", boxOffice: "250,929 USD", moviePlot: "Blind veteran Norman Nordstrom has been hiding out for several years in an isolated cabin.", cast: ["Stephen", "Fiona"]), Movie(title: "Host", image: UIImage(named: "host")!, releasedYear: "2020", movieRating: "6.5", boxOffice: "443,807 USD", moviePlot: "Six friends accidentally invite the attention of a demonic presence.", cast: ["Haley", "Emma"]), Movie(title: "The Invisible Man", image: UIImage(named: "invisible")!, releasedYear: "2018", movieRating: "7.2", boxOffice: "123,239 USD", moviePlot: "After staging his own suicide, a crazed scientist uses his power.", cast: ["Moss", "Oliver"]), Movie(title: "The Conjuring", image: UIImage(named: "conjuring")!, releasedYear: "2004", movieRating: "7.5", boxOffice: "505,242 USD", moviePlot: "In 1970, paranormal investigators and demonologists Lorraine and Ed story.", cast: ["Farminga", "Wilson"])])

let movieGenre2: Genre = Genre(category: "Dark Comedy", movies: [Movie(title: "Dog", image: UIImage(named: "dog")!, releasedYear: "2022", movieRating: "6.5", boxOffice: "300,310 USD", moviePlot: "Dog named Lulu by his side, Army Ranger Briggs races.", cast: ["Tatum", "Ethan"]), Movie(title: "The Bubble", image: UIImage(named: "bubble")!, releasedYear: "2022", movieRating: "5.0", boxOffice: "385,010 USD", moviePlot: "Sneaking out. Hooking up. Melting down.", cast: ["Iris", "Maria"]), Movie(title: "Encanto", image: UIImage(named: "encanto")!, releasedYear: "2022", movieRating: "7.5", boxOffice: "600,929 USD", moviePlot: "The Madrigals are an extraordinary family who live hidden in the mountains.", cast: ["Beatriz", "Jessica", "Maluma"]), Movie(title: "Ted", image: UIImage(named: "ted")!, releasedYear: "2012", movieRating: "6.9", boxOffice: "281,102 USD", moviePlot: "When John Bennett was a little boy he made a wish that Ted his beloved teddy bear would come alive.", cast: ["Seth", "Mark"]), Movie(title: "Sing2", image: UIImage(named: "sing")!, releasedYear: "2022", movieRating: "7.2", boxOffice: "419,191 USD", moviePlot: "Can-do koala Buster Moon and his all-star cast of animal.", cast: ["Bono", "Halsey"])])

let movieGenre3: Genre = Genre(category: "Sci-Fi ", movies: [Movie(title: "Inception", image: UIImage(named: "Inception")!, releasedYear: "2010", movieRating: "8.8", boxOffice: "879,988 USD", moviePlot: "Dom Cobb is a thief with the rare ability to enter people's dreams and steal their secrets.", cast: ["DiCaprio", "Joseph"]), Movie(title: "District 9", image: UIImage(named: "district")!, releasedYear: "2009", movieRating: "7.9", boxOffice: "675,928 USD", moviePlot: "Thirty years ago aliens arrive on Earth not to conquer or give aid to find refuge from their dying planet.", cast: ["Sharlto", "Jason"]), Movie(title: "Looper", image: UIImage(named: "looper")!, releasedYear: "2018", movieRating: "6.9", boxOffice: "203,293 USD", moviePlot: "In a future society time-travel exists but it's only available.", cast: ["Joseph", "Bruce"]), Movie(title: "Arrival", image: UIImage(named: "Arrival")!, releasedYear: "2014", movieRating: "6.9", boxOffice: "453,232 USD", moviePlot: "Linguistics professor Louise Banks (Amy Adams) leads an elite team.", cast: ["Amy", "Forest","Shawn"]), Movie(title: "Avatar", image: UIImage(named: "Avatar")!, releasedYear: "2010", movieRating: "8.9", boxOffice: "987,292 USD", moviePlot: "On the lush alien world of Pandora live the Na'vi, beings who appear primitive.", cast: ["Zoe" ,"Sam"])])


let movieGenreArray = [movieGenre1, movieGenre2, movieGenre3]
