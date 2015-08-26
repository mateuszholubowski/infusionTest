//
//  CustomButton.swift
//  Test
//
//  Created by Mateusz Holubowski on 26/08/15.
//  Copyright (c) 2015 Happy API. All rights reserved.
//

import UIKit

@IBDesignable class CustomButton: UIView {


    @IBOutlet weak var buttonLabel: UILabel!
    var view: UIView!
    
    @IBInspectable var text: String?{
        get{
            return buttonLabel.text
        }
        
        set(text)
        {
            buttonLabel.text = text
        }
    }

    override init(frame: CGRect){
        super.init(frame: frame)
        setup()
    }
    required init(coder aDecoder: NSCoder){
        super.init(coder: aDecoder)
        setup()
    }
    
    func setup(){
        view = loadViewFromNib()
        view.frame = bounds
        view.autoresizingMask = UIViewAutoresizing.FlexibleWidth | UIViewAutoresizing.FlexibleHeight
        addSubview(view)
    }
    
    func loadViewFromNib() -> UIView{
        let bundle = NSBundle(forClass:self.dynamicType)
        let nib = UINib(nibName: "CustomButton", bundle: bundle)
        let view = nib.instantiateWithOwner(self, options: nil)[0] as! UIView
        
        return view
    }

}
