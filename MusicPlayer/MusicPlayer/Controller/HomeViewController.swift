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
    @IBOutlet weak var musicListTableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        musicListTableView.register(UINib(nibName: HomeMusicListTableViewCell.identifier, bundle: .main), forCellReuseIdentifier: HomeMusicListTableViewCell.identifier)
        playButton.layer.cornerRadius = 10
        randomPlayButton.layer.cornerRadius = 10
        musicListTableView.delegate = self
        musicListTableView.dataSource = self
    }
}

extension HomeViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 20
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: HomeMusicListTableViewCell.identifier, for: indexPath) as? HomeMusicListTableViewCell else {
            return UITableViewCell()
        }
        return cell
    }
}
