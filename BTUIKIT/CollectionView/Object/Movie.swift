
import Foundation
import UIKit

class Movie {
    var id: Int
    var nameMovie: String?
    var image: String?
    var imageBackground: String?
    var overView: String?
    var ratting: Float?
//    var categories: Categories
    var actors: [Actor]
    
    
    init(id: Int, nameMovie: String, image: String,imageBackground:String, overView: String,ratting: Float, actors: [Actor]) {
        self.id = id
        self.nameMovie = nameMovie
        self.image = image
        self.imageBackground = imageBackground
        self.overView = overView
        self.ratting = ratting
//        self.categories = categories
        self.actors = actors
    }
}
