//
//  CircleButton.swift
//  ReusableView
//
//  Created by iOS Team on 10/10/15.
//  Copyright (c) 2015 iOS Team. All rights reserved.
//

import UIKit

class CircleButton: UIButton {

    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        setupButtonStyle()

    }
    
    override  func awakeFromNib() {
        
        setupButtonStyle()
        
    }
    func setupButtonStyle(){
        
        self.layer.backgroundColor = UIColor.clearColor().CGColor
        self.layer.borderColor = UIColor.redColor().CGColor
       
        self.setTitleColor(UIColor.blackColor(), forState: UIControlState.Normal)
        self.layer.cornerRadius = self.layer.bounds.size.width / 2
        
        self.layer.borderWidth = 1.0
        
    }
  
//    func setHighlighted(highlighted : Bool){
//        
//        if highlighted == true{
//            
//            self.highlightBtn()
//            
//        }else{
//            
//            self.clearHighlighted()
//        }
//    }
    
    func highlightBtn(){
        
        self.layer.backgroundColor = UIColor.redColor().CGColor
        
    }
    
    func clearHighlighted(){
        
        self.layer.backgroundColor = UIColor.clearColor().CGColor

    }
    

/*
    override var highlighted: Bool {
        didSet {
            if highlighted {
                self.highlightBtn()
            } else {
                self.clearHighlighted()
            }
        }
    }
    
    func highlightBtn() {
        self.backgroundColor = UIColor.redColor()
    
    }
    
    func clearHighlighted() {
        self.backgroundColor = UIColor.clearColor()
    }
    
    
 */
    
    
    
}
