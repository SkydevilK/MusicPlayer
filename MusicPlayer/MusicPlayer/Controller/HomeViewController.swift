//
//  HomeViewController.swift
//  MusicPlayer
//
//  Created by 김병인 on 2021/01/03.
//

import UIKit

class HomeViewController: UIViewController {
    @IBAction func playListButton(_ sender: UIButton) {
        let playListViewController = self.storyboard?.instantiateViewController(withIdentifier: "PlayListViewController")
        self.navigationController?.pushViewController(playListViewController!, animated: true)   
    }
    @IBAction func musicListButton(_ sender: UIButton) {
        let musicListViewController = self.storyboard?.instantiateViewController(withIdentifier: "MusicListViewController")
        self.navigationController?.pushViewController(musicListViewController!, animated: true)
    }
    @IBAction func albumButton(_ sender: UIButton) {
        let albumViewController = self.storyboard?.instantiateViewController(withIdentifier: "AlbumViewController")
        self.navigationController?.pushViewController(albumViewController!, animated: true)
    }
    @IBAction func downloadedButton(_ sender: UIButton) {
        let musicListViewController = self.storyboard?.instantiateViewController(withIdentifier: "MusicListViewController")
        self.navigationController?.pushViewController(musicListViewController!, animated: true)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}
