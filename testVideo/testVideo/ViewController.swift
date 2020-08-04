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
        // Do any additional setup after loading the view.
        
//        if let url = URL(string: Bundle.main.path(forResource: "SampleVideo_1280x720_1mb", ofType: "mp4") ?? "") {
//            player = AVPlayer(url: url)
////            let playerLayer = AVPlayerLayer(player: player)
////            playerLayer.frame = mView.bounds
////            playerLayer.backgroundColor = UIColor.black.cgColor
////            mView.layer.addSublayer(playerLayer)
//
//            let playerViewController = AVPlayerViewController()
//            playerViewController.player = player
//            self.present(playerViewController, animated: true) {
//                playerViewController.player!.play()
//            }
//
//        }
//        if let url = Bundle.main.url(forResource: "SampleVideo_1280x720_1mb", withExtension: "mp4") {
            
            
//            player = AVPlayer(url: url)
//            let playerLayer = AVPlayerLayer(player: player)
//            playerLayer.frame = mView.bounds
//            playerLayer.backgroundColor = UIColor.black.cgColor
//            mView.layer.addSublayer(playerLayer)
            
//        }
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
//        player.play()
        let b = Bundle.main
        
        
//        if let url = URL(string: b.path(forResource: "iosTutorial", ofType: "mp4") ?? "") {
        if let url = b.url(forResource: "iosTutorial", withExtension: "mp4") {
                    player = AVPlayer(url: url)
                    let playerLayer = AVPlayerLayer(player: player)
                    playerLayer.frame = mView.bounds
                    playerLayer.backgroundColor = UIColor.black.cgColor
                    mView.layer.addSublayer(playerLayer)
            player.play()
//                    let playerViewController = AVPlayerViewController()
//                    playerViewController.player = player
//                    self.present(playerViewController, animated: true) {
//                        playerViewController.player!.play()
//                    }
                    
                }
        
    }
}

