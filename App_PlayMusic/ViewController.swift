//
//  ViewController.swift
//  App_PlayMusic
//
//  Created by cice on 29/3/17.
//  Copyright © 2017 cice. All rights reserved.
//

import UIKit
import AVFoundation


class ViewController: UIViewController {

    //MARK: -Vbles locales
    
    var customPlayer = AVAudioPlayer()
    
    
    @IBOutlet weak var miImagenGrupo: UIImageView!
    
    
    
    //MARK: - IBOutlets
    
    
    @IBOutlet weak var misliderVolumen: UISlider!
    
    
    // MARK: - IBaction
    
    @IBAction func miPlayButon(_ sender: Any) {
        customPlayer.play()
    }
    
    
    @IBAction func miPauseButon(_ sender: Any) {
        customPlayer.pause()
    }
    
    
    @IBAction func miStopButon(_ sender: Any) {
        customPlayer.stop()
        customPlayer.currentTime = 0
    }
    
    
    @IBAction func miSliderAction(_ sender: Any) {
        customPlayer.volume = misliderVolumen.value
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        dameAudio()
        miImagenGrupo.layer.cornerRadius = miImagenGrupo.frame.width / 2
        miImagenGrupo.layer.borderColor = UIColor.white.cgColor
        miImagenGrupo.layer.borderWidth = 1
        miImagenGrupo.clipsToBounds = true
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Utils
    
    func dameAudio(){
        let audioPath = Bundle.main.path(forResource: "09 I Appear Missing", ofType: "mp3")
        let urlPath = URL(fileURLWithPath: audioPath!)
        do{
            customPlayer = try AVAudioPlayer(contentsOf: urlPath)
        }catch{
            print("Error obteniendo el audio")
        }
    }
}

