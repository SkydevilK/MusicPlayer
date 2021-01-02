//
//  HomeViewController.swift
//  MusicPlayer
//
//  Created by 김병인 on 2021/01/02.
//

import UIKit

class HomeViewController: UIViewController {
    @IBOutlet weak var playButton: UIButton!
    @IBOutlet weak var randomPlayButton: UIButton!
    @IBAction func playButtonAction(_ sender: UIButton) {
    }
    @IBAction func randomPlayButtonAction(_ sender: UIButton) {
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        playButton.layer.cornerRadius = 10
        randomPlayButton.layer.cornerRadius = 10
    }
}
