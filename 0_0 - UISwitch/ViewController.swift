//
//  ViewController.swift
//  0_0 - Empty Template (Swift)
//
//  Created by Justin Reina on 11/12/15.
//  Copyright © 2015 Jaostech. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    override func viewDidLoad() {
        super.viewDidLoad();
        
        self.view.translatesAutoresizingMaskIntoConstraints = false;
        
        self.addSwitch(self.view);
        
        print("ViewController.viewDidLoad():       viewDidLoad() complete");
        
        return;
    }

    @objc func addSwitch(_ view:UIView) {
        
        let uiSwitch:UISwitch = UISwitch();
        
        uiSwitch.frame.origin = CGPoint(x: 50, y: 200);                   //Set the XY Location
        
        uiSwitch.addTarget(self, action: #selector(ViewController.toggle(_:)), for: UIControlEvents.valueChanged);
        
        view.addSubview(uiSwitch);
        
        return;
    }

    
    /* note - switch.on represents the current state. and the toggle 'action' is called AFTER the toggle, so it's the POST state here...*/
    @objc func toggle (_ uiSwitch:UISwitch) {
        
        if(uiSwitch.isOn) {
            print("toggling on");
        } else {
            print("toggling off");
        }
        
        return;
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning();

        return;
    }
}



