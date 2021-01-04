//
//  PlayListTableViewCell.swift
//  MusicPlayer
//
//  Created by 김병인 on 2021/01/03.
//

import UIKit

class PlayListTableViewCell: UITableViewCell {
    static let identifier: String = String(describing: PlayListTableViewCell.self)
    @IBOutlet weak var playListImageView: UIImageView!
    @IBOutlet weak var playListLabel: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    override func prepareForReuse() {
        playListLabel.text = "준비 중..."
        playListLabel.textColor = .label
        playListImageView.image = UIImage(systemName: "music.note")
        playListImageView.tintColor = .none
        playListImageView.backgroundColor = .none
    }
}
