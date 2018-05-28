//
//  ViewController.swift
//  PictureMarge
//
//  Created by 菊地雅之 on 2018/05/28.
//  Copyright © 2018年 Masayuki Kikuchi. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate {
    @IBOutlet weak var TakePicture: UIImageView!
    
    @IBOutlet weak var cameraImgView: UIImageView!
    
    override func viewDidLoad() {    //viewDidLoad 立ち上がったときに読み込まれる内容です
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func takingPicture(_ sender: Any) {
        //----- カメラを起動する
        let picker = UIImagePickerController()
        picker.sourceType = UIImagePickerControllerSourceType.camera 
        picker.delegate = self
        present(picker, animated: true, completion: nil)
    }
    
    
    func imagePickerController(picker: UIImagePickerController, didFinishPickingImage image: UIImage, editingInfo: [String : AnyObject]?) {
        cameraImgView.image = image                 // 撮影した画像をセットする
        
        dismiss(animated: true, completion: nil)    // アプリ画面へ戻る
    }
    
}



