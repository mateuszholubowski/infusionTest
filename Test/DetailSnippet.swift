//
//  DetailSnippet.swift
//  Test
//
//  Created by Mateusz Holubowski on 26/08/15.
//  Copyright (c) 2015 Happy API. All rights reserved.
//

import UIKit

@IBDesignable class DetailSnippet: UIView {

    @IBOutlet weak var icon: UIImageView!
    @IBOutlet weak var title: UILabel!
    @IBOutlet weak var value: UILabel!
    var view: UIView!
    
    @IBInspectable var titleText: String?{
        get{
            return title.text
        }
        
        set(text)
        {
            title.text = text
        }
    }
    
    
    @IBInspectable var valueText: String?{
        get{
            return value.text
        }
        
        set(text)
        {
            value.text = text
        }
    }
    
    @IBInspectable var iconImage: UIImage?{
        get{
            return icon.image
        }
        
        set(iconImage)
        {
            icon.image = iconImage
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
        let nib = UINib(nibName: "DetailSnippet", bundle: bundle)
        let view = nib.instantiateWithOwner(self, options: nil)[0] as! UIView
        
        return view
    }


}
