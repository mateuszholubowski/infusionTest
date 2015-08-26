//
//  FlightSnippet.swift
//  Test
//
//  Created by Mateusz Holubowski on 25/08/15.
//  Copyright (c) 2015 Happy API. All rights reserved.
//

import UIKit

@IBDesignable class FlightSnippet: UIView {

    @IBOutlet weak var dateLabel: UILabel!
    @IBOutlet weak var airlineIcon: UIImageView!
    @IBOutlet weak var aircraftLabel: UILabel!
    @IBOutlet weak var airportDepartureLabel: UILabel!
    @IBOutlet weak var airportArrivalLabel: UILabel!
    @IBOutlet weak var departureTimeLabel: UILabel!
    @IBOutlet weak var arrivalTimeLabel: UILabel!
    @IBOutlet weak var departureGateLabel: UILabel!
    @IBOutlet weak var arrivalGateLabel: UILabel!
    @IBOutlet weak var departureTerminalLabel: UILabel!
    @IBOutlet weak var arrivalTerminalLabel: UILabel!

  
    var view: UIView!
    
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
        view.systemLayoutSizeFittingSize(UILayoutFittingExpandedSize)
        addSubview(view)
    }
    
    func loadViewFromNib() -> UIView{
        let bundle = NSBundle(forClass:self.dynamicType)
        let nib = UINib(nibName: "FlightSnippet", bundle: bundle)
        let view = nib.instantiateWithOwner(self, options: nil)[0] as! UIView
        
        return view
    }
}
