//
//  butterflyPlantsDetailViewController.swift
//  butterflyFoodplants
//
//  Created by Seng Lam on 2018/5/2.
//  Copyright © 2018年 Seng Lam. All rights reserved.
//

import UIKit
import WebKit

class butterflyPlantsDetailViewController: UIViewController, WKNavigationDelegate {
    var link :String = "http://google.com"
    var webview = WKWebView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        webview = WKWebView(frame: CGRect(x: 0, y: 0, width: self.view.frame.width, height: self.view.frame.height))
        self.webview.navigationDelegate = self
        let enlink = link.addingPercentEncoding(withAllowedCharacters: CharacterSet.urlQueryAllowed)
        let url = URL(string: enlink!)
        let request = URLRequest(url: url!)
        webview.load(request)
        self.view.addSubview(webview)
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
