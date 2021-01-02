//
//  PlayListViewController.swift
//  MusicPlayer
//
//  Created by 김병인 on 2021/01/03.
//

import UIKit

class PlayListViewController: UIViewController {
    @IBOutlet weak var playListTableView: UITableView!
    @IBAction func addPlayListButton(_ sender: UIButton) {
        moveAddPlayListViewPage()
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        playListTableView.register(UINib(nibName: PlayListTableViewCell.identifier, bundle: .main), forCellReuseIdentifier: PlayListTableViewCell.identifier)
        playListTableView.delegate = self
        playListTableView.dataSource = self
    }
    func moveAddPlayListViewPage() {
        let addPlayListViewController = self.storyboard?.instantiateViewController(withIdentifier: "AddPlayListViewController")
        addPlayListViewController?.navigationItem.rightBarButtonItem = UIBarButtonItem(title: nil, image: UIImage(systemName: "checkmark"), primaryAction: nil, menu: nil)
        self.navigationController?.pushViewController(addPlayListViewController!, animated: true)
    }
}

extension PlayListViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 20
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: PlayListTableViewCell.identifier, for: indexPath) as? PlayListTableViewCell else {
            return UITableViewCell()
        }
        if indexPath.row == 0 {
            cell.playListLabel.text = "새로운 플레이리스트..."
            cell.playListLabel.textColor = .systemPink
            cell.playListImageView.image = UIImage(systemName: "plus")
            cell.playListImageView.tintColor = .systemPink
            cell.playListImageView.backgroundColor = .systemFill
        } else {
            cell.playListLabel.text = "무제 플레이리스트"
            cell.playListImageView.image = UIImage(systemName: "music.note")
            cell.playListImageView.tintColor = .systemGray
            cell.playListImageView.backgroundColor = .systemGray2
        }
        return cell
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if indexPath.row == 0 {
            moveAddPlayListViewPage()
        }
    }
}
