//
//  ViewController.swift
//  SystemControllers
//
//  Created by Adrien Meyer on 10/12/2017.
//  Copyright © 2017 Developer.Institute. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    @IBAction func sharePhoto(_ sender: Any) {
        guard let image = self.imageView.image else { return }
        let activityController = UIActivityViewController(activityItems: [image], applicationActivities: nil)
        activityController.popoverPresentationController?.sourceView = sender as? UIView
        
        present(activityController, animated: true, completion: nil)
    }

    @IBAction func takePhoto(_ sender: Any) {
        
    }
    
    @IBAction func safariButton(_ sender: Any) {
        
        
    }
    
    @IBAction func emailButton(_ sender: Any) {
        
    }
    
    

}

