//
//  menuDisplay.swift
//  restaurantDataPass
//
//  Created by 林祐辰 on 2020/8/1.
//  Copyright © 2020 smirkiiiv. All rights reserved.
//


import Foundation
import UIKit

class menuDisplay: UIViewController{

 
    var foodTitle :String?
    var imageName : UIImage?
    var explain :String?
    
    @IBOutlet weak var foodName: UILabel!
    @IBOutlet weak var picture: UIImageView!
    @IBOutlet weak var foodText: UILabel!
        
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationController?.isNavigationBarHidden = false
        foodName.text = foodTitle
        picture.image = imageName
        foodText.text = explain


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
