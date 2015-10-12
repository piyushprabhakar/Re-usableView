//
//  SecondView.swift
//  ReusableView
//
//  Created by iOS Team on 10/10/15.
//  Copyright (c) 2015 iOS Team. All rights reserved.
//

import UIKit

class SecondView: UIViewController,KeyBoardDelegate {
    
    

    @IBOutlet weak var otlKeyboardView: KeyboardView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.otlKeyboardView.delegate = self
        

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
     func keyBoardButtonTapped(buttonNo: NSInteger) {
        
        print("btn tapped\(buttonNo)")
    }
        
    
    


    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
