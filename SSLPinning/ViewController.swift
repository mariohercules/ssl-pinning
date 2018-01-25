//
//  ViewController.swift
//  SSLPinning
//
//  Created by Mario Hercules Portela on 24/01/18.
//  Copyright © 2018 Mario Hercules Portela. All rights reserved.
//

import UIKit
import Alamofire

class ViewController: UIViewController {

    var webView = UIWebView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    func setupUI() {
        
        webView.bounds = self.view.bounds
        
        let urlRequest = URL(string: "https://www.google.com")!
        
        Alamofire.request(urlRequest).responseData { response in
            
            if let data = response.data, let request = response.request?.url {
                self.webView.load(data, mimeType: response.response?.mimeType ?? "", textEncodingName: response.response?.textEncodingName ?? "", baseURL: request)
                
                self.view.addSubview(self.webView)
                
            }
            
        }
        
    }
    

}

