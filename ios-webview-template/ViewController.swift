//
//  ViewController.swift
//  ios-webview-template
//
//  Created by 蔣政言 on 2023/6/22.
//

import UIKit
import WebKit

class ViewController: UIViewController , WKScriptMessageHandler  {
    func userContentController(_ userContentController: WKUserContentController, didReceive message: WKScriptMessage) {
        
    }
    var webView: WKWebView? = nil
    var url = "http://www.google.com"

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        let contentController = WKUserContentController();
        let config = WKWebViewConfiguration()
        config.userContentController = contentController
        config.websiteDataStore = WKWebsiteDataStore.default()
        self.webView = WKWebView(
                    frame: CGRect(x:0, y:20, width: self.view.frame.width, height:self.view.frame.height-20),
                    configuration: config
                )
        let request = URLRequest(url: URL(string: url)!)
        //http://34.81.209.11:8080/
        self.webView!.load(request)
        self.view.addSubview(self.webView!)
        // Do any additional setup after loading the view.
    }


}

