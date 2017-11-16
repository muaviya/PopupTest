//
//  BanerPopupView.swift
//  CRE
//
//  Created by Developer717 on 22.05.17.
//  Copyright © 2017 CRE. All rights reserved.
//

import UIKit

class BanerPopupView: UIViewController {
    
    //MARK: Outlets
    @IBOutlet weak var closeView: UIView! {
        didSet {
            closeView.layer.cornerRadius = 5
        }
    }
    
    //MARK: Life cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // по тапу скрывать клаву
        let tap: UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(self.exitAction))
        tap.cancelsTouchesInView = false
        closeView.addGestureRecognizer(tap)
    }
    
    override func viewWillAppear(_ animated: Bool) {
        self.navigationController?.isNavigationBarHidden = false
    }
    
    //MARK: Actions
    @objc func exitAction() {
        dismiss(animated: true, completion: nil)
    }
    
}


