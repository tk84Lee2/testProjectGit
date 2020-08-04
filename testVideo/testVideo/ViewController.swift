//
//  ViewController.swift
//  testVideo
//
//  Created by tk84 on 2020/08/03.
//  Copyright © 2020 tk84. All rights reserved.
//

import UIKit
import AVFoundation
import AVKit

class ViewController: UIViewController {
    
    @IBOutlet weak var mView: UIView!
    var player = AVPlayer()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        print("date add")
        print("imageAdd")
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        let b = Bundle.main
        
        if let url = b.url(forResource: "iosTutorial", withExtension: "mp4") {
                    player = AVPlayer(url: url)
                    let playerLayer = AVPlayerLayer(player: player)
                    playerLayer.frame = mView.bounds
                    playerLayer.backgroundColor = UIColor.black.cgColor
                    mView.layer.addSublayer(playerLayer)
                    player.play()
                    
            NotificationCenter.default.addObserver(forName: .AVPlayerItemDidPlayToEndTime, object: self.player.currentItem, queue: .main) { _ in
                self.player.seek(to: CMTime.zero)
                self.player.play()
            }
        }
        
    }
}

