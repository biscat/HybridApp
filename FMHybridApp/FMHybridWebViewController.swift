//
//  FMHybridWebViewController.swift
//  FMHybridApp
//
//  Created by William Wong on 17/11/2015.
//  Copyright © 2015 Fleetmatics. All rights reserved.
//

import Foundation
import UIKit

class FMHybridWebViewController : UIViewController, UIWebViewDelegate {

    @IBOutlet var webView: UIWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //turn off the scales pages to fit property for testing purpose
        self.webView.scalesPageToFit = false;
        self.webView.delegate = self
        
        let testHTML = NSBundle.mainBundle().pathForResource("web/index", ofType: "html")
        do {
            let contents = try String(contentsOfFile: testHTML!, encoding: NSUTF8StringEncoding) as String!   //use try here as it might throw exception
            let baseUrl = NSURL(fileURLWithPath: testHTML!)
             webView.loadHTMLString(contents as String, baseURL: baseUrl)
        } catch let error as NSError {
            print(error)
        }
    }
    
    //shouldStartLoadWithRequest callback would be trigger when a new frame open inside a webview
    func webView(webView: UIWebView, shouldStartLoadWithRequest request: NSURLRequest, navigationType: UIWebViewNavigationType) -> Bool {
        
        //fiter the target trigger by its scheme
        if (request.URL?.scheme == "fm") {
            if (request.URL!.host == "button_click") {
                //call back from the web button
                self.navigationController?.popViewControllerAnimated(true);
            }
            return false
        }
        return true
    }
}
