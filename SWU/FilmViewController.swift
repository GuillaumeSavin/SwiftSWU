//
//  FilmViewController.swift
//  SWU
//
//  Created by sg812131 on 22/03/2021.
//

import UIKit

class FilmViewController: UIViewController {
    
    var film : SWMovie?
    @IBOutlet weak var poster: UIImageView!
    
    @IBOutlet weak var titre: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        poster.image = film?.image
        titre.text = film?.title
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
