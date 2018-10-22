//
//  DetailViewController.swift
//  flix_demo_03
//
//  Created by Fredy Pedro on 10/22/18.
//  Copyright © 2018 Fredy Pedro. All rights reserved.
//

import UIKit
enum movieKeys {
    static let title = "title"
    static let backropPath = "backdrop_path"
    static let posterPath = "poster_path"
    
}

class DetailViewController: UIViewController {
    
    @IBOutlet weak var backDropImageView: UIImageView!
    @IBOutlet weak var posterImageView: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var releaseDateLabel: UILabel!
    @IBOutlet weak var overViewLabel: UILabel!
    
    var movie: [String: Any]?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
        if let movie = movie {
            titleLabel.text = movie[movieKeys.title] as? String
        releaseDateLabel.text = movie["relase_date"] as? String
            overViewLabel.text = movie["overView"] as? String
            let backdropPathString = [movieKeys.backropPath] as! String
            let posterPathString = movie[movieKeys.posterPath] as! String
            let baseURLString = "https://image.tmdb.org/t/p/w500"
            
            let backdropURL = URL(string: baseURLString + backdropPathString)!
            backDropImageView.af_setImage(withURL: backdropURL)
            
            let posterPathURL = URL(string: baseURLString + posterPathString)!
            posterImageView.af_setImage(withURL: posterPathURL)

            
            
        }
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
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
