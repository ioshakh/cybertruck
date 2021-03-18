//
//  HomwViewController.swift
//  cybertruck
//
//  Created by shahzod on 3/16/21.
//  Copyright © 2021 shahzod. All rights reserved.
//

import UIKit


class HomwViewController: UIViewController {

    @IBOutlet weak var button: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        button.layer.cornerRadius = button.frame.size.width/2
        button.layer.borderWidth = 1
        button.layer.borderColor = UIColor.white.cgColor
        
        
        
    }
    
    //Mark - Action
    
    @IBAction func pressButon(_ sender: Any) {
        callDetailViewController()
    }
    
    //Mark - Functions
    
    
    func callDetailViewController() {
        let cv = DetailViewController(nibName: "DetailViewController", bundle: nil)
        
        self.navigationController?.pushViewController(cv, animated: true)
    }
    
}
