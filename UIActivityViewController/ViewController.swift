//
//  ViewController.swift
//  UIActivityViewController
//
//  Created by 蒋旖旎 on 2018/4/4.
//  Copyright © 2018年 蒋旖旎. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func shareURL(_ sender: Any) {
        let URLstring =  String(format:"https://itunes.apple.com/cn/app/%E6%98%93%E7%83%B9%E9%A5%AA/id1360197713?mt=8")
        let urlToShare = URL(string:URLstring)
        let title = "title to be shared"
        let activityViewController = UIActivityViewController(
            activityItems: [title,urlToShare!],
            applicationActivities: nil)
        activityViewController.popoverPresentationController?.sourceView = self.view
        //so that ipads won't crash
        present(activityViewController,animated: true,completion: nil)
    }
    
    @IBAction func shareText(_ sender: Any) {
        let text = "Text to be shared"
        let activityViewController = UIActivityViewController(activityItems:[text],applicationActivities:nil)
       activityViewController.popoverPresentationController?.sourceView = self.view
        present(activityViewController,animated: true,completion: nil)
    }
    
    @IBAction func shareImage(_ sender: Any) {
        let image = #imageLiteral(resourceName: "myImage")
        let activityViewController = UIActivityViewController(activityItems:[image],applicationActivities:nil)
       activityViewController.popoverPresentationController?.sourceView = self.view
        present(activityViewController,animated: true,completion: nil)
    }
    
    

}

