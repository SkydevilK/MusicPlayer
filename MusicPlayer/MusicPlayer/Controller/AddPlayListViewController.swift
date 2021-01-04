//
//  AddPlayListViewController.swift
//  MusicPlayer
//
//  Created by 김병인 on 2021/01/03.
//

import UIKit

class AddPlayListViewController: UIViewController {
    @IBOutlet weak var cameraCircleFillImageVIew: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        cameraCircleFillImageVIew.layer.cornerRadius = self.cameraCircleFillImageVIew.layer.bounds.width / 2
    }
}
