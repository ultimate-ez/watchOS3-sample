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
        
        crownSequencer.focus()
        crownSequencer.delegate = self
        
        crownDidBecomeIdleLabel.setText("Idle")
    }

    override func willActivate() {
        super.willActivate()
    }

    override func didDeactivate() {
        super.didDeactivate()
    }
    
    func crownDidRotate(_ crownSequencer: WKCrownSequencer?, rotationalDelta: Double) {
        rotationalDeltaLabel.setText(String(rotationalDelta))
        rotationsPerSecondLabel.setText(String(self.crownSequencer.rotationsPerSecond))
        crownDidBecomeIdleLabel.setText("Rotate!")
    }
    
    func crownDidBecomeIdle(_: WKCrownSequencer?) {
        crownDidBecomeIdleLabel.setText("Idle")
    }

}
