//
//  ViewController.swift
//  Example
//
//  Created by Abhishek Sen on 4/24/16.
//  Copyright © 2016 NE. All rights reserved.
//

import UIKit
import NEContextSDK
import RxSwift

class ViewController: UIViewController {

  var disposables : [Disposable] = []
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    disposables.append(NEContextManager.sharedInstance.subscribe { context in
      print("Received context update:", context)
      print("Date/Time: \(NETimeOfDay.get()?.name.name)")
      print("Day Category: \(NEDayCategory.get()?.name.name)")
      print("Place: \(NEPlace.get()?.name.name)")
      print("Lightness: \(NELightness.get()?.name.name)")
      })
    // Do any additional setup after loading the view, typically from a nib.
  }

  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }


}

