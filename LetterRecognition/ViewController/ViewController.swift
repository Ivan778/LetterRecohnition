//
//  ViewController.swift
//  LetterRecognition
//
//  Created by Иван on 27.04.2018.
//  Copyright © 2018 Ivan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var addPhotoButton: UIButton!
    @IBOutlet weak var recognizeButton: UIButton!
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var textLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        addPhotoButton.layer.cornerRadius = 10.0
        recognizeButton.layer.cornerRadius = 10.0
        imageView.contentMode = .scaleAspectFit
    }
    
    // MARK: - Button handlers
    @IBAction func addPhotoButtonPressed(_ sender: Any) {
        let alert = UIAlertController(title: "Добавить фото", message: "Добавьте фотоснимок какой-либо буквы.", preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "Открыть Фото", style: .default, handler: { (UIAlertAction) -> Void in
            let picker = UIImagePickerController()
            
            picker.delegate = self
            picker.allowsEditing = false
            picker.sourceType = .photoLibrary
            
            self.present(picker, animated: true, completion: nil)
        }))
        alert.addAction(UIAlertAction(title: "Открыть камеру", style: .default, handler: { (UIAlertAction) -> Void in
            let picker = UIImagePickerController()
            
            picker.delegate = self
            picker.allowsEditing = false
            picker.sourceType = .camera
            
            self.present(picker, animated: true, completion: nil)
        }))
        alert.addAction(UIAlertAction(title: "Отмена", style: .cancel, handler: { (UIAlertAction) -> Void in
            self.dismiss(animated: true, completion: nil)
        }))
        
        self.present(alert, animated: true, completion: nil)
    }
    
    @IBAction func recognizeButtonPressed(_ sender: Any) {
        
    }
    
}

