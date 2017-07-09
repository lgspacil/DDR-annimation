//
//  ViewController.swift
//  accel
//
//  Created by Lucas Spacil on 7/7/17.
//  Copyright © 2017 Lucas Spacil. All rights reserved.
//URL.init(Bundle.main.path(forResource: "sample", ofType: "mp3")!))

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    @IBOutlet weak var upArrow: UIImageView!
    @IBOutlet weak var downArrow: UIImageView!
    @IBOutlet weak var leftArrow: UIImageView!
    @IBOutlet weak var rightArrow: UIImageView!
    
//    var arrowList :[UIImageView] = [upArrow, rightArrow, upArrow, leftArrow, downArrow]
    
    var location = CGPoint(x: 0, y: 0)
    
    var timer = Timer()
    var left = 160
    var right = 160
    var down = 40
    var count = 0
    var arrowList :[UIImageView] = []
    
    
    

    
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        self.arrowList = [upArrow, rightArrow, upArrow, leftArrow, downArrow]
        self.upArrow.center = CGPoint(x: 0 + UIScreen.main.bounds.size.width*0.2, y: CGFloat(self.down))
        self.downArrow.center = CGPoint(x: 0 + UIScreen.main.bounds.size.width*0.4, y: CGFloat(self.down))
        self.leftArrow.center = CGPoint(x: 0 + UIScreen.main.bounds.size.width*0.6, y: CGFloat(self.down))
        self.rightArrow.center = CGPoint(x: 0 + UIScreen.main.bounds.size.width*0.8, y: CGFloat(self.down))
        
        timerF()
        
        

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func timerF(){
        timer = Timer.scheduledTimer(withTimeInterval: 0.3, repeats: true, block: {_ in
        
            if self.arrowList[self.count] == self.upArrow {
                self.arrowList[self.count].center = CGPoint(x: 0 + UIScreen.main.bounds.size.width*0.2, y: CGFloat(self.down))
                self.down += 15
                print(self.down)
                if self.down >= 400 {
                    if self.count < self.arrowList.count-1{
                        self.down = 40
                        self.count += 1
                    }else{
                        self.count = 0 
                    }
                }

            }else if self.arrowList[self.count] == self.downArrow {
                self.arrowList[self.count].center = CGPoint(x: 0 + UIScreen.main.bounds.size.width*0.4, y: CGFloat(self.down))
                self.down += 15
                print(self.down)
                if self.down >= 400 {
                    if self.count < self.arrowList.count-1{
                        self.down = 40
                        self.count += 1
                    }else{
                        self.count = 0
                    }
                }
                
            }else if self.arrowList[self.count] == self.leftArrow {
                self.arrowList[self.count].center = CGPoint(x: 0 + UIScreen.main.bounds.size.width*0.6, y: CGFloat(self.down))
                self.down += 15
                print(self.down)
                if self.down >= 400 {
                    if self.count < self.arrowList.count-1{
                        self.down = 40
                        self.count += 1
                    }else{
                        self.count = 0
                    }
                    
                }
                
            }else if self.arrowList[self.count] == self.rightArrow {
                self.arrowList[self.count].center = CGPoint(x: 0 + UIScreen.main.bounds.size.width*0.8, y: CGFloat(self.down))
                self.down += 15
                print(self.down)
                if self.down >= 400 {
                    if self.count < self.arrowList.count-1{
                        self.down = 40
                        self.count += 1
                    }else{
                        self.count = 0
                    }
                    
                }
                
            }
        
        })
        
    }
    
    
    
}



