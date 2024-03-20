//
//  ViewController.swift
//  Timer
//
//  Created by Yachae on 3/20/24.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var mainLabel: UILabel!
    
    @IBOutlet weak var slider: UISlider!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureUI()
     
    }
    
    func configureUI() {
        mainLabel.text = "초를 선택하세요"
        // 슬라이더의 가운데 설정
    }
    
    @IBAction func sliderUI(_ sender: UISlider) {
        // 슬라이더의 밸류값을 가지고 메인레이블의 텍스트를 셋팅
        
       let seconds = Int(slider.value * 60) // 0.0 ~ 1.0 을 0부터 60을 변환
//        print(seconds)
        mainLabel.text = "\(seconds)"
    }
    
    @IBAction func startButtonTapped(_ sender: UIButton) {
        // 1초씩 지나갈때마다 무언가를 실행
    }
    
    @IBAction func resetButtonTapped(_ sender: UIButton) {
        // 슬라이더 가운데 셋팅
        slider.setValue(0.5, animated: false)
       
    }
    
    
    
}

