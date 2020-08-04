//
//  TestCell.swift
//  testVideo
//
//  Created by tk84 on 2020/08/04.
//  Copyright © 2020 tk84. All rights reserved.
//

import UIKit
import WebKit
import AVFoundation

class TestCell: UITableViewCell {

    @IBOutlet weak var mView: UIView!
    var player = AVPlayer()
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
        print("TestCell")
        
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
 
    func configure(_ index: Int) {
        if index % 2 == 0 {
            let b = Bundle.main
                    
            if let url = b.url(forResource: "iosTutorial", withExtension: "mp4") {
                
                mView.isHidden = true
//                player = AVPlayer(url: url)
//                let playerLayer = AVPlayerLayer(player: player)
//                playerLayer.frame = mView.frame
////                playerLayer.backgroundColor = UIColor.black.cgColor
//                mView.layer.addSublayer(playerLayer)
//                player.actionAtItemEnd = .none
//                player.play()
//
//                NotificationCenter.default.addObserver(forName: .AVPlayerItemDidPlayToEndTime, object: self.player.currentItem, queue: .main) { _ in
//                    self.player.seek(to: CMTime.zero)
//                    self.player.play()
//                }
            }
        } else {
            if let url = URL(string: Bundle.main.path(forResource: "2267243A593A011534", ofType: "gif") ?? "") {
                
//                mView.isHidden = true
                mView.isHidden = false
                print("url : \(String(describing: url))")
                let imageView = UIImageView()
                
                do {
                    let imageData = try Data(contentsOf: Bundle.main.url(forResource: "2267243A593A011534", withExtension: "gif")!)
                    imageView.image = UIImage.gif(data: imageData)
                } catch {
                    print(error)
                }
//
//                imageView.image = UIImage.gif(name: "2267243A593A011534")
                imageView.frame = mView.frame
                imageView.contentMode = .scaleAspectFit
//                image.backgroundColor = .black
                mView.addSubview(imageView)
//                wView.load(req)
            }
        }
    }
    
}
