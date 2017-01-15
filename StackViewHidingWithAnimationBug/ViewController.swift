//
//  ViewController.swift
//  StackViewHidingWithAnimationBug
//
//  Created by Nikita Kukushkin on 15/01/2017.
//  Copyright © 2017 Nikita Kukushkin. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var hideCounter = 0 {
        didSet {
            hideCounter = max(0, hideCounter)
            hideCounterLabel.text = "Hide counter: \(hideCounter)"
        }
    }
    
    var animated: Bool {
        return animationSwitch.isOn
    }
    
    @IBOutlet weak var viewToHide: UIView!
    @IBOutlet weak var hideCounterLabel: UILabel!
    @IBOutlet weak var animationSwitch: UISwitch!
    
    @IBAction func hide(_ sender: UIButton) {
        hideCounter += 1
        if animated {
            UIView.animate(withDuration: 0.5) {
                self.viewToHide.isHidden = true
            }
        } else {
            viewToHide.isHidden = true
        }
        
        print("- Hiding, hideCounter: \(hideCounter), hidden: \(viewToHide.isHidden)")
    }
    
    @IBAction func show(_ sender: UIButton) {
        if animated {
            UIView.animate(withDuration: 0.5) {
                self.viewToHide.isHidden = false
            }
        } else {
            viewToHide.isHidden = false
        }
        
        if viewToHide.isHidden {
            hideCounter -= 1
        } else {
            hideCounter = 0
        }
        
        print("+ Showing, hideCounter: \(hideCounter), hidden: \(viewToHide.isHidden)")
    }
}

