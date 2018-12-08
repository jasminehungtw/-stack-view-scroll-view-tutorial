//
//  ViewController.swift
//  ShibaAlbum
//
//  Created by Jasmine Hung on 2018/12/5.
//  Copyright © 2018年 Jasmine Hung. All rights reserved.
//

import UIKit


class ViewController: UIViewController {
        
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //建立並設定雪花
        let snowFlakeEmitterCell = CAEmitterCell()
        snowFlakeEmitterCell.contents = UIImage(named: "snowFlake")?.cgImage    //指定雪花圖案
        snowFlakeEmitterCell.birthRate = 12                 //每秒產生12朵雪花
        snowFlakeEmitterCell.lifetime = 60                  //每朵雪花的生命週期60秒
        snowFlakeEmitterCell.velocity = 20                  //雪花初始移動速度20
        snowFlakeEmitterCell.velocityRange = 200            //雪花移動的速度變化
        snowFlakeEmitterCell.emissionRange = (45 * .pi/180) //向左右45度發射
        snowFlakeEmitterCell.scale = 0.08                   //雪花的初始大小(圖片的0.08倍)
        snowFlakeEmitterCell.scaleRange = 0.2               //雪花的大小變化
        
        //建立圖層
        let emitterLayer = CAEmitterLayer()
        emitterLayer.emitterPosition = CGPoint(x: view.bounds.width / 2, y: 0) //發射點位置
        emitterLayer.emitterShape = CAEmitterLayerEmitterShape.line
        emitterLayer.emitterSize = CGSize(width: view.bounds.width, height: 2)  //圖層大小
        
        //指定圖層內容是雪花
        emitterLayer.emitterCells = [snowFlakeEmitterCell]
        
        //顯示圖層
        view.layer.addSublayer(emitterLayer)
    }

}

