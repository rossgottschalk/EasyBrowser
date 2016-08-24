//
//  ViewController.swift
//  EasyBrowser
//
//  Created by Ross Gottschalk on 8/24/16.
//  Copyright © 2016 The Iron Yard. All rights reserved.
//

import UIKit
import WebKit

class ViewController: UIViewController, UITextFieldDelegate
{
    override func viewDidLoad()
    {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    @IBOutlet weak var webView: WKWebView!
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool
    {
        // open http://developer.apple.com
        let url = URL(string: "https://\(textField.text!)")
        //UIApplication.shared.open(url!)
        let request = URLRequest(url: url!)
        webView.load(request)
        
        return true

    }
    
    @IBAction func openPage(_ sender: UIButton)
    {
            }


    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

