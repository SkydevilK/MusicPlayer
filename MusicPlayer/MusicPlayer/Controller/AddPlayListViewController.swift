//
//  AddPlayListViewController.swift
//  MusicPlayer
//
//  Created by 김병인 on 2021/01/03.
//

import UIKit

class AddPlayListViewController: UIViewController {
    let picker = UIImagePickerController()
    @IBOutlet weak var cameraCircleFillImageVIew: UIImageView!
    @IBOutlet weak var playListImageView: UIImageView!
    @IBAction func cameraButton(_ sender: Any) {
        let alert =  UIAlertController(title: "플레이리스트 이미지 선택", message: "", preferredStyle: .alert)
        let camera =  UIAlertAction(title: "사진 찍기", style: .default) { _ in
            self.openCamera()
        }
        let library =  UIAlertAction(title: "사용자의 사진", style: .default) {[weak self] _ in
            self?.openLibrary()
        }
        let cancel = UIAlertAction(title: "취소", style: .cancel, handler: nil)
        alert.addAction(library)
        alert.addAction(camera)
        alert.addAction(cancel)
        present(alert, animated: true, completion: nil)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        picker.delegate = self
        cameraCircleFillImageVIew.layer.cornerRadius = self.cameraCircleFillImageVIew.layer.bounds.width / 2
    }
}

extension AddPlayListViewController: UIImagePickerControllerDelegate,
                                     UINavigationControllerDelegate {
    func openLibrary() {
        picker.sourceType = .photoLibrary
        present(picker, animated: false, completion: nil)
    }
    func openCamera() {
        if(UIImagePickerController .isSourceTypeAvailable(.camera)){
            picker.sourceType = .camera
            present(picker, animated: false, completion: nil)
        }
        else{
            print("Camera not available")
        }
    }
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey: Any]) {
        if let image = info[UIImagePickerController.InfoKey.originalImage] as? UIImage {
            playListImageView.image = image
        }
        dismiss(animated: true, completion: nil)
    }
}
