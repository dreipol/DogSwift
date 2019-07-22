//
//  ViewController.swift
//  DogSwiftExample
//
//  Created by Fabian Tinsz on 15.07.19.
//  Copyright © 2019 dreipol. All rights reserved.
//

import UIKit
import Dreilog

class ViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()

        Log.debug(view.bounds, tag: .ui)
    }
}

