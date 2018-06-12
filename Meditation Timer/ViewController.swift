//
//  ViewController.swift
//  Meditation Timer
//
//  Created by プリュスコン on 2018/02/27.
//  Copyright © 2018年 naruzo. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var timer = Timer()
    //丸いスタートを押した時に00:00のlabelのタイマーが動く？タイマーのlabelに一秒毎に時間を刻ませる。
    let timeDisplayInterval: TimeInterval = 0.5
    //一番上の15から90までの10個の数字を選んだ時にこの変数に渡される。30を選んだら、30upか30downとか
    var secondsToEndTimer: TimeInterval = 0.0
    //これが実際にlabelに時刻を表示される関数
    var timeIntervalCounter: TimeInterval = 0.0
    //タイマーが動いているか止まっているか調べる。
    var checkIfTiming = false
    
    //timer outlets
    @IBOutlet weak var timeDisplayLabel: UILabel!
    @IBOutlet weak var UpOrDownSwitch: UISwitch!
    
    //button outlets
    @IBOutlet weak var Button15: UIButton!
    @IBOutlet weak var Button20: UIButton!
    @IBOutlet weak var Button25: UIButton!
    @IBOutlet weak var Button30: UIButton!
    @IBOutlet weak var Button35: UIButton!
    @IBOutlet weak var Button40: UIButton!
    @IBOutlet weak var Button60: UIButton!
    @IBOutlet weak var Button70: UIButton!
    @IBOutlet weak var Button80: UIButton!
    @IBOutlet weak var Button90: UIButton!
    
    //imageView outlets to hold the highlighted button images
    @IBOutlet weak var button15Highlighted: UIImageView!
    @IBOutlet weak var button20Highlighted: UIImageView!
    @IBOutlet weak var button25Highlighted: UIImageView!
    @IBOutlet weak var button30Highlighted: UIImageView!
    @IBOutlet weak var button35Highlighted: UIImageView!
    @IBOutlet weak var button40Highlighted: UIImageView!
    @IBOutlet weak var button60Highlighted: UIImageView!
    @IBOutlet weak var button70Highlighted: UIImageView!
    @IBOutlet weak var button80Highlighted: UIImageView!
    @IBOutlet weak var button90Highlighted: UIImageView!
    
    //startPause outlet to change the start to the pause image
    //この丸いスタートボタンを動く変数

    //@IBOutlet weak var startPauseOutlets: UIButton!
    @IBOutlet weak var startPauseOutlets: UIButton!
    @IBOutlet weak var pauseButton: UIButton!
    
    
    //reset outlet to change the shape of resetButton
    @IBOutlet weak var resetButton: UIButton!
    
    //switch outlet
    @IBOutlet weak var countUporDownSwitch: UIButton!
    
    //var to check the state of the startPauseButton to display the correct image
    var startPauseButtonStateCheck = true
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //hide all highlighted imageviews that are around the start Pause button
        //上のoverride func viewDidLoadで一番最初の画面を出す。その時は紫丸のボタンは隠れている状態にする
        button15Highlighted.isHidden = true
        button20Highlighted.isHidden = true
        button25Highlighted.isHidden = true
        button30Highlighted.isHidden = true
        button35Highlighted.isHidden = true
        button40Highlighted.isHidden = true
        button60Highlighted.isHidden = true
        button70Highlighted.isHidden = true
        button80Highlighted.isHidden = true
        button90Highlighted.isHidden = true
      
        
        //adding shadow and radius to the resetButton
       resetButton.layer.cornerRadius = 15
       resetButton.layer.shadowOpacity = 0.9
       resetButton.layer.shadowOffset = CGSize(width: 1.0, height: 0.5)
        resetButton.layer.shadowRadius = 2.0
        
        //udemyはUIColor.blackColor().CGColorであるが、下の書き方でないとerrorになる
        resetButton.layer.shadowColor = UIColor.black.cgColor
      
    }
    
    //udemyではデータ型はAnyではなくAnyObjectになっていた

    
    
    
   // @IBAction func startPausePressed(_ sender: AnyObject) {
    @IBAction func startPausePressed(_ sender: Any)
    
        
    {
    
    
       if startPauseButtonStateCheck{
        //udemyでは最後！だが、？にした方が良いと表示された・・・ので、？にしたら、動かなかったので!でやり直したら、動いた。しかし、結局、?でも動いたので、?で通してみる。
            //下記のif文がおかしいのか、startとpause両方の画像が出ない
        let pause = UIImage(named: "pauseButton") as UIImage?
        startPauseOutlets.setImage(pause, for: .normal)
        startPauseButtonStateCheck = false
        
    }else{
    let start = UIImage(named: "start") as UIImage?
        startPauseOutlets.setImage(start, for: .normal)
        startPauseButtonStateCheck = true
    }
    
    
}
}
//技っとハブ初心者
