//
//  FMHybridWebViewController.swift
//  FMHybridApp
//
//  Created by William Wong on 17/11/2015.
//  Copyright © 2015 Fleetmatics. All rights reserved.
//

import Foundation
import UIKit

class FMHybridWebViewController : UIViewController {
    /*
    
    //instance member
    private var webViewEngine: AnyObject<CDWebViewEngineProtocol>
    private var commandDelegate: AnyObject<CDVCommandDelegate>
    private var commandQueue: CDVCommandQueue
    private var userAgent: NSString
    
    
    var pluginObject: NSMutableArray
    
    */
    
    
    //create web view based on the frame
    func newWebViewWithFrame(bounds : CGRect) -> UIView {
        return UIView()
    }
    
    //URL scheme
    func appURLScheme() -> NSString {
        return "url"
    }
    
    func errorURL() -> NSURL {
        return NSURL()
    }
    
    func parseInterfaceOrientation(orietations: NSArray) {
        
    }
    
    override func supportedInterfaceOrientations() -> UIInterfaceOrientationMask {
        return UIInterfaceOrientationMask.All
    }
    
    func getCommandInstance(pluginName: NSString) -> AnyObject {
        return "any object here";
    }
    
    /*
    func registerPlugin(plugin: CDVPlugin, className: NSString)
    func registerPlugin(plugin: CDVPlugin, className: NSString)
    
    func parseSettingWithParser(delegate: NSObject<NSXMLParserDelegate>)
    */
}