//
//  ViewController.swift
//  Project4
//
//  Created by Sabrina Sturtevant on 12/31/19.
//  Copyright © 2019 Sabrina Sturtevant. All rights reserved.
//

import UIKit
import WebKit

class ViewController: UIViewController, WKNavigationDelegate {
    
    var webview: WKWebView!
    var progressView: UIProgressView!

    var websites = ["apple.com", "hackingwithswift.com"]
    
    
    override func loadView() {
    webview = WKWebView()
    webview.navigationDelegate = self
        view = webview
        
    }

    override func viewDidLoad() {
            super.viewDidLoad()
        
        navigationItem.rightBarButtonItem = UIBarButtonItem(title: "Open", style: .plain, target: self, action: #selector(openTapped))
        
        let spacer = UIBarButtonItem(barButtonSystemItem: .flexibleSpace, target: nil, action: nil)
        let refresh = UIBarButtonItem(barButtonSystemItem: .refresh, target: webview, action: #selector(webview.reload))
        
        
        func onBackButton_Clicked(sender: UIBarButtonItem)
        {
            if(webview.canGoBack)
            {
                webview.goBack()
            }
        }
        
      //  navigationItem.rightBarButtonItem = UIBarButtonItem(title: "Back", style: webview?.goBack, target: self, action: #selector(onBackButton_Clicked))

        
       // self.navigationItem.backBarButtonItem = UIBarButtonItem(barButtonSystemItem: .rewind, target: self, action:  Selector(("onBackButton_Clicked:")))
        
        
        progressView = UIProgressView(progressViewStyle: .default)
        progressView.sizeToFit()
        let progressButton = UIBarButtonItem(customView: progressView)
        
        toolbarItems = [progressButton, spacer, refresh]
        navigationController?.isToolbarHidden = false
        
        webview.addObserver(self, forKeyPath: #keyPath(WKWebView.estimatedProgress), options: .new, context: nil)
        
        let url = URL(string: "https://" + websites[0])!
        webview.load(URLRequest(url: url))
        webview.allowsBackForwardNavigationGestures = true
        
       
        }
        

    @objc func openTapped() {
        let ac = UIAlertController(title: "Open Page...", message: nil, preferredStyle: .actionSheet)
        
        for website in websites {
        ac.addAction(UIAlertAction(title: website, style: .default, handler: openPage))
        }
        
        ac.addAction(UIAlertAction(title: "cancel", style: .cancel))
        ac.popoverPresentationController?.barButtonItem = navigationItem.rightBarButtonItem
        present(ac, animated: true)
    }
    
    func openPage(action: UIAlertAction) {
        guard let actionTitle = action.title else {return}
        guard let url = URL(string: "https://" + actionTitle) else { return }
        webview.load(URLRequest(url: url))
    }
    
    func webView(_ webView: WKWebView, didFinish navigation: WKNavigation!) {
        title = webview.title
        
    }
        
    

    override func observeValue(forKeyPath keyPath: String?, of object: Any?, change: [NSKeyValueChangeKey : Any]?, context: UnsafeMutableRawPointer?) {
        if keyPath == "estimatedProgress" {
            progressView.progress = Float(webview.estimatedProgress)
    }
        

}
    func webView(_ webView: WKWebView, decidePolicyFor navigationAction: WKNavigationAction, decisionHandler: @escaping (WKNavigationActionPolicy) -> Void) {
        let url = navigationAction.request.url
        if let host = url?.host {
            for website in websites {
                if host.contains(website) {
                    decisionHandler(.allow)
                    return
                }
            }
        }
                     decisionHandler(.cancel)
        
        if (url?.absoluteString.contains("apple"))! || (url?.absoluteString.contains("hackingwithswift"))! {
          return
        } else {
        
               let alertAction = UIAlertController(title: "Blocked Website", message: "Please stay on the specificed websites", preferredStyle: .alert)
                                      
                       alertAction.addAction(UIAlertAction(title: "Cancel", style: .cancel, handler: nil))
                                      
                       present(alertAction, animated: true)
               return
        }
     
        
        
    }
    
    
}
