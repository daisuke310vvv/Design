//
//  ViewController.swift
//  Design
//
//  Created by SatoDaisuke on 9/30/15.
//  Copyright © 2015 com.daisukeSato. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let label01 = UILabel(frame: CGRect(x: 100, y: 100, width: 100, height: 100))
        label01.text = "Hello world"
        label01.backgroundColor = Design.color(.Twitter)
        label01.textColor = Design.color(.White)
        label01.font = Design.font(.S)
        self.view.addSubview(label01)
        
        let label02 = UILabel(frame: CGRect(x: 100, y: 200, width: 200, height: 200))
        label02.text = "Hello world02"
        label02.backgroundColor = Design.color(.Theme01)
        label02.textColor = Design.color(.Line)
        label02.font = Design.font(.L, style:.Bold)
        self.view.addSubview(label02)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

