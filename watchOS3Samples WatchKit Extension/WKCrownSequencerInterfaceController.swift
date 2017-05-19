//
//  WKCrownSequencerInterfaceController.swift
//  watchOS3Samples
//
//  Created by 江崎雅 on 2017/05/19.
//  Copyright © 2017年 masashi ezaki. All rights reserved.
//

import WatchKit
import Foundation


class WKCrownSequencerInterfaceController: WKInterfaceController, WKCrownDelegate{

    @IBOutlet var rotationalDeltaLabel: WKInterfaceLabel!
    @IBOutlet var rotationsPerSecondLabel: WKInterfaceLabel!
    @IBOutlet var crownDidBecomeIdleLabel: WKInterfaceLabel!
    
    override func awake(withContext context: Any?) {
        super.awake(withContext: context)
        
        // Configure interface objects here.
        crownSequencer.focus()
        crownSequencer.delegate = self
    }

    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
    }

    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }
    
    func crownDidRotate(_ crownSequencer: WKCrownSequencer?, rotationalDelta: Double) {
        print("rotationalDelta:\(rotationalDelta) rotationsPerSecond:\(self.crownSequencer.rotationsPerSecond)")
    }
    
    func crownDidBecomeIdle(_: WKCrownSequencer?) {
        print("crownDidBecomeIdle")
    }

}
