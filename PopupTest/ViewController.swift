//
//  ViewController.swift
//  PopupTest
//
//  Created by Khasbulatov on 16.11.2017.
//  Copyright © 2017 Developer717. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    @IBAction func showPopupAction(_ sender: UIButton) {
        let storyBoardPopupBaner = UIStoryboard(name: "BanerPopupStoryboard", bundle: nil)
        let popupVC : BanerPopupView  = storyBoardPopupBaner.instantiateViewController(withIdentifier: "BanerPopupView") as! BanerPopupView
        popupVC.modalPresentationStyle = .custom
        popupVC.modalTransitionStyle = .coverVertical
        self.present(popupVC, animated: true, completion: nil)
    }
}

