//
//  ViewController.swift
//  Video Player
//
//  Created by Rosario Tarabocchia on 9/30/15.
//  Copyright © 2015 RLDT. All rights reserved.
//

import UIKit
import MediaPlayer

class ViewController: UIViewController {
    
    var mediaPlayer : MPMoviePlayerController?

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        playVideo()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    func playVideo(){
        
        let path = NSBundle.mainBundle().pathForResource("IMG_7498", ofType: "mov")
        let url = NSURL(string: "https://dl.dropboxusercontent.com/u/49292460/IMG_7498.mov")
        mediaPlayer = MPMoviePlayerController(contentURL: url)
        
        if let player = mediaPlayer{
            player.view.frame = self.view.bounds
            player.prepareToPlay()
            player.scalingMode = .AspectFill
            self.view.addSubview(player.view)
            
        }
    
    }


}

