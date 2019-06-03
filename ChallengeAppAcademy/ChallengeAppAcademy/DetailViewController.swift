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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.largeTitleDisplayMode = .never
        showDetail()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        //textfield.becomeFirstResponder()
    }
    
    func showDetail() {
        detailLbl.text = catDetail
        let gif = UIImage.gifImageWithName(catImageName)
        let detailImageVw = UIImageView(image: gif)
        detailImageVw.frame = CGRect(x: 20.0, y: 50.0, width: self.view.frame.size.width - 40, height: 150.0)
        detailImageVw.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(detailImageVw)
        //autoLayout(ibComponent: detailImageVw)
        Layout.addConstraints(vw: self.view, ibComponent: detailImageVw, ibComponentRelative: detailLbl)
    }

}
