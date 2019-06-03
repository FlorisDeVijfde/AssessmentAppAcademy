//
//  DetailViewController.swift
//  ChallengeAppAcademy
//
//  Created by Floris de Vries on 03/06/2019.
//  Copyright © 2019 Floris de Vries. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {
    
    var catDetail = ""
    var catImageName = ""
    
    
    @IBOutlet weak var detailLbl: UILabel!
    
    @IBOutlet weak var detailImage: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.largeTitleDisplayMode = .never
        detailLbl.text = catDetail
        detailImage.image = UIImage(named: catImageName)
    }
    
    override func viewWillAppear(_ animated: Bool) {
        //textfield.becomeFirstResponder()
    }

}
