//
//  ViewController.swift
//  UIColorExtensions
//
//  Created by Alex Nagy on 29/06/2020.
//  Copyright © 2020 Alex Nagy. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        view.backgroundColor = UIColor.systemWhite
    }


}

public extension UIColor {
    convenience init(r: CGFloat, g: CGFloat, b: CGFloat) {
        self.init(red: r/255, green: g/255, blue: b/255, alpha: 1)
    }
    
    convenience init(r: CGFloat, g: CGFloat, b: CGFloat, a: CGFloat) {
        self.init(red: r/255, green: g/255, blue: b/255, alpha: a)
    }
    
    static var random: UIColor {
        return UIColor(red: .random(in: 0...1), green: .random(in: 0...1), blue: .random(in: 0...1), alpha: 1)
    }
    
    static var systemBlack: UIColor {
        return UIColor { (traitCollection) -> UIColor in
            switch traitCollection.userInterfaceStyle {
            case .unspecified:
                return .black
            case .light:
                return .black
            case .dark:
                return .white
            @unknown default:
                fatalError("unknown default")
            }
        }
    }
    
    static var systemWhite: UIColor {
        return UIColor { (traitCollection) -> UIColor in
            switch traitCollection.userInterfaceStyle {
            case .unspecified:
                return .white
            case .light:
                return .white
            case .dark:
                return .black
            @unknown default:
                fatalError("unknown default")
            }
        }
    }
}
