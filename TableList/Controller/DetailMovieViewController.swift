//
//  DetailMovieViewController.swift
//  TableList
//
//  Created by evija.vavere on 06/08/2021.
//

import UIKit

class DetailMovieViewController: UIViewController {

    @IBOutlet weak var movieImageView: UIImageView!
    @IBOutlet weak var movieNameLabel: UILabel!
    
    var movie: Movie!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if movie != nil{
            movieImageView.image = UIImage(named: movie.poster)
            movieNameLabel.text = movie.title + " " + movie.year
            movieNameLabel.numberOfLines = 0
        }
        }

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


