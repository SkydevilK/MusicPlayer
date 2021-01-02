//
//  HomeMusicListTableViewCell.swift
//  MusicPlayer
//
//  Created by 김병인 on 2021/01/02.
//

import UIKit

class HomeMusicListTableViewCell: UITableViewCell {
    static let identifier: String = String(describing: HomeMusicListTableViewCell.self)
    @IBOutlet weak var musicImageView: UIImageView!
    @IBOutlet weak var musicTitleLabel: UILabel!
    @IBOutlet weak var musicArtistLabel: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
}
