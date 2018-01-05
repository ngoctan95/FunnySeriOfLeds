//
//  ViewController.swift
//  FunnySeriOfLeds
//
//  Created by Tan on 1/5/18.
//  Copyright © 2018 Ngoc Tan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    let image = UIImage(named : "Balloon")
    override func viewDidLoad() {
        super.viewDidLoad()
        for oldIndex in 0..<10{
            for index in 0..<10{
                let img = UIImageView(image: image)
                img.center = CGPoint(x: CGFloat(index+1) * (getMarginDevice(count: 10)), y: CGFloat(oldIndex+1)*getMarginDevice(count: 10))
                view.addSubview(img)
            }
        }
    }
    func getMarginDevice(count : Int) -> CGFloat{
       // print("\(((self.view.bounds.size.width - (CGFloat(count) * (image?.size.width)!))/(CGFloat(count+1))))")
        return ((self.view.bounds.size.width - 100)/(CGFloat(count-1)))
    }
//    override func didReceiveMemoryWarning() {
//        super.didReceiveMemoryWarning()
//        // Dispose of any resources that can be recreated.
//    }


}

