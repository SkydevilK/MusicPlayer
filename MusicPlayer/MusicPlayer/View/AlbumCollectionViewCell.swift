//
//  AlbumCollectionViewCell.swift
//  MusicPlayer
//
//  Created by 김병인 on 2021/01/03.
//

import UIKit

class AlbumCollectionViewCell: UICollectionViewCell {
    static let identifier: String = String(describing: AlbumCollectionViewCell.self)
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var artistLabel: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
    }
}
