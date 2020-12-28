//
//  ViewController.swift
//  BlurberryTest
//
//  Created by hyde on 2020/12/28.
//

import UIKit
import Blurberry
import WebKit

class ViewController: UIViewController {

    @IBOutlet var webView: WKWebView!
    @IBOutlet var visualEffectView: UIVisualEffectView!

    override func viewDidLoad() {
        super.viewDidLoad()
        print("launch")

        let url = URL.init(string: "https://www.google.com/search?q=test")!
        webView.load(.init(url: url))

//        visualEffectView.blur.tintColor = .clear
        visualEffectView.layer.borderWidth = 1.0
        visualEffectView.layer.borderColor = UIColor.black.cgColor
//        visualEffectView.tintColor = .clear
//        visualEffectView.setClearTintRecursive()
    }

    @IBAction func sliderChanged(_ sender: UISlider) {
        print(sender.value)
        visualEffectView.blur.radius = CGFloat(sender.value)
    }

}

//private extension UIView {
//    func setClearTintRecursive() {
//        subviews.forEach { (v) in
//            v.tintColor = .clear
//            v.setClearTintRecursive()
//        }
//    }
//}
