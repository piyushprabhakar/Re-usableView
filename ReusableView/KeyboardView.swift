//
//  KeyboardView.swift
//  ReusableView
//
//  Created by iOS Team on 10/10/15.
//  Copyright (c) 2015 iOS Team. All rights reserved.
//



import UIKit

protocol KeyBoardDelegate : class {
    
    func keyBoardButtonTapped(buttonNo : NSInteger)
    
}

class KeyboardView: UIView {

    var delegate : KeyBoardDelegate?
    
    @IBOutlet var view: UIView!
    
    // to unarchiving view
    
    required init?(coder aDecoder: NSCoder) {
        
        super.init(coder: aDecoder)
        
        NSBundle.mainBundle().loadNibNamed("Keyboard", owner: self, options: nil)
        self.addSubview(self.view)
    }
    @IBAction func didTapBtn(sender: CircleButton) {
        
        let buttonNo = sender.tag
        self.delegate?.keyBoardButtonTapped(buttonNo)
    }
    
   
}
