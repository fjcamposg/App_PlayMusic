//
//  InterfaceController.swift
//  APP_Watch Extension
//
//  Created by cice on 29/3/17.
//  Copyright © 2017 cice. All rights reserved.
//

import WatchKit
import Foundation


class InterfaceController: WKInterfaceController {

    
    var customPlayer : WKAudioFilePlayer?
    
    
    
    override func awake(withContext context: Any?) {
        super.awake(withContext: context)
        dameAudio()
        // Configure interface objects here.
    }
    
    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
        
        
        
        
    }
    
    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }

    func dameAudio(){
     //   if let audioPath = Bundle.main.path(forResource: "09 I Appear Missing", ofType: "mp3"), let url
    //    let urlPath = URL(fileURLWithPath: audioPath!)
    //    customPlayer = WKAudioFilePlayer(playerItem: WKAudioFilePlayerItem.init(asset: WKAudioFileAsset.init(url: urlPath)))
    //    customPlayer?.play()
    }
}
