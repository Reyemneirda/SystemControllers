//
//  ViewController.swift
//  SystemControllers
//
//  Created by Adrien Meyer on 10/12/2017.
//  Copyright © 2017 Developer.Institute. All rights reserved.
//

import UIKit
import MessageUI
import SafariServices

class ViewController: UIViewController, MFMailComposeViewControllerDelegate {

    @IBOutlet weak var shareButton: UIButton!
    @IBOutlet weak var photoButton: UIButton!
    
    @IBOutlet weak var emailButton: UIButton!
    @IBOutlet weak var safariButton: UIButton!
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

    @IBAction func takePhoto(_ sender: Any)
    {
        
    }
    
    @IBAction func safariButton(_ sender: Any)
    {
        
            if let urls = URL(string: "https://www.youtube.com/watch?v=tZp8sY06Qoc")
            {
                let safariVC: SFSafariViewController = SFSafariViewController(url: urls)
                self.present(safariVC, animated: true, completion: nil)
                
            }
            
    }
    
    @IBAction func emailButton(_ sender: UIButton)
    {
        
        if !MFMailComposeViewController.canSendMail()
        {
            print("Can not send mail")
            
            return
        }
        
        let mailVC: MFMailComposeViewController = MFMailComposeViewController()
        mailVC.mailComposeDelegate = self
        
        if self.safariButton.isEnabled
        {
            let imageData: Data = UIImagePNGRepresentation(self.imageView.image!) as! Data
            mailVC.addAttachmentData(imageData, mimeType: "jpg", fileName: "mySharedImage")
        }
        
        self.present(mailVC, animated: true, completion: nil)
    }
    
    

}

