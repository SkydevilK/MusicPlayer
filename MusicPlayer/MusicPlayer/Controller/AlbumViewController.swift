//
//  AlbumViewController.swift
//  MusicPlayer
//
//  Created by 김병인 on 2021/01/03.
//

import UIKit

class AlbumViewController: UIViewController {
    @IBOutlet weak var collectionView: UICollectionView!
    override func viewDidLoad() {
        super.viewDidLoad()
        collectionView.delegate = self
        collectionView.dataSource = self
        collectionView.register(UINib(nibName: AlbumCollectionViewCell.identifier, bundle: .main), forCellWithReuseIdentifier: AlbumCollectionViewCell.identifier)
        setupFlowLayout()
    }
}

extension AlbumViewController: UICollectionViewDelegate, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 20
    }
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: AlbumCollectionViewCell.identifier, for: indexPath) as? AlbumCollectionViewCell else {
            return UICollectionViewCell()
        }
        return cell
    }
    private func setupFlowLayout() {
        let flowLayout = UICollectionViewFlowLayout()
        flowLayout.sectionInset = UIEdgeInsets.zero
        flowLayout.minimumInteritemSpacing = 10
        flowLayout.minimumLineSpacing = 10
        let width = UIScreen.main.bounds.width * 0.45
        flowLayout.itemSize = CGSize(width: width, height: width * 1.5)
        self.collectionView.collectionViewLayout = flowLayout
    }
}
