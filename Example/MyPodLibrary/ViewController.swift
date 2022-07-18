//
//  ViewController.swift
//  MyPodLibrary
//
//  Created by Nandhini on 07/18/2022.
//  Copyright (c) 2022 Nandhini. All rights reserved.
//

import UIKit
import MyPodLibrary

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let log=Logger()
        log.printLog()
        let frameWorkBundle=Bundle(for: Logger.self)
        let path=frameWorkBundle.path(forResource: "Resources", ofType: "bundle")
        let resourceBundle=Bundle(url: URL(fileURLWithPath: path!))
        let image=UIImage(named: "peacock.jpeg", in: resourceBundle, compatibleWith: nil)
        print(image)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

