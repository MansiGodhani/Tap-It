//
//  ViewController.swift
//  TapIt
//
//  Created by DCS on 23/07/21.
//  Copyright © 2021 DCS. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var timeleft = 40
    var score = 0
    var name:String = ""
    private var timer = Timer()
    
    private let Title : UILabel = {
        let label = UILabel()
        label.text = "Tap It"
        label.textColor = .brown
        label.font = .boldSystemFont(ofSize: 35)
        label.frame = CGRect(x: 145, y: 560, width: 120, height: 50)
        return label
    }()
    
    
    private let myView1:UIView = {
        let view = UIView()
        view.backgroundColor = .lightGray
        view.frame = CGRect(x: 50, y: view.safeAreaInsets.top + 70, width: 80, height: 80)
        return view
    }()
    
    private let myView2:UIView = {
        let view = UIView()
        view.backgroundColor = .lightGray
        view.frame = CGRect(x: 150, y: view.safeAreaInsets.top + 70, width: 80, height: 80)
        return view
    }()
    
    private let myView3:UIView = {
        let view = UIView()
        view.backgroundColor = .lightGray
        view.frame = CGRect(x: 250, y: view.safeAreaInsets.top + 70, width: 80, height: 80)
        return view
    }()
    
    private let myView4:UIView = {
        let view = UIView()
        view.backgroundColor = .lightGray
        view.frame = CGRect(x: 50, y:170, width: 80, height: 80)
        return view
    }()
    
    private let myView5:UIView = {
        let view = UIView()
        view.backgroundColor = .lightGray
        view.frame = CGRect(x: 150, y:170, width: 80, height: 80)
        return view
    }()
    
    private let myView6:UIView = {
        let view = UIView()
        view.backgroundColor = .lightGray
        view.frame = CGRect(x: 250, y:170, width: 80, height: 80)
        return view
    }()
    
    private let myView7:UIView = {
        let view = UIView()
        view.backgroundColor = .lightGray
        view.frame = CGRect(x: 50, y:270, width: 80, height: 80)
        return view
    }()
    
    private let myView8:UIView = {
        let view = UIView()
        view.backgroundColor = .lightGray
        view.frame = CGRect(x: 150, y:270, width: 80, height: 80)
        return view
    }()
    
    private let myView9:UIView = {
        let view = UIView()
        view.backgroundColor = .lightGray
        view.frame = CGRect(x: 250, y:270, width: 80, height: 80)
        return view
    }()
    
    private let timerlabel : UILabel = {
        let label = UILabel()
        label.text = "30"
        label.textColor = .black
        label.font = .boldSystemFont(ofSize: 20)
        label.frame = CGRect(x: 178, y: 370, width: 80, height: 50)
        return label
    }()
    
    private let timertxt : UILabel = {
        let label = UILabel()
        label.text = "Timer"
        label.textColor = .black
        label.font = .boldSystemFont(ofSize: 15)
        label.frame = CGRect(x: 170, y: 390, width: 80, height: 50)
        return label
    }()
    
    
    private let Scorelabel : UILabel = {
        let label = UILabel()
        label.text = "Score"
        label.isHidden = true
        label.textColor = .black
        label.font = .boldSystemFont(ofSize: 30)
        label.frame = CGRect(x: 150, y: 450, width: 80, height: 50)
        return label
    }()
    
    private let Score : UILabel = {
        let label = UILabel()
        label.text = "0"
        label.isHidden = true
        label.textColor = .black
        label.font = .boldSystemFont(ofSize: 25)
        label.frame = CGRect(x: 175, y: 500, width: 80, height: 50)
        return label
    }()
    
    private let btn : UIButton = {
        let btn = UIButton()
        btn.setTitle("Start", for:.normal)
        btn.layer.cornerRadius = 10
        btn.backgroundColor = .brown
        btn.titleLabel?.font = UIFont.systemFont(ofSize: 22.0, weight: .bold)
        btn.addTarget(self, action: #selector(starttimer), for: .touchUpInside)
        btn.frame = CGRect(x: 140, y: 450, width: 100, height: 50)
        return btn
        
    }()
    
    @objc private func starttimer()
    {
        btn.isHidden = true
        Scorelabel.isHidden = false
        Score.isHidden = false
        timer = Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(Timerstart), userInfo: .none, repeats: true)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.backgroundColor = .white
        view.addSubview(Scorelabel)
        view.addSubview(Score)
        view.addSubview(timerlabel)
        view.addSubview(timertxt)
        view.addSubview(myView1)
        view.addSubview(myView2)
        view.addSubview(myView3)
        view.addSubview(myView4)
        view.addSubview(myView5)
        view.addSubview(myView6)
        view.addSubview(myView7)
        view.addSubview(myView8)
        view.addSubview(myView9)
        view.addSubview(btn)
        view.addSubview(Title)
        
        
        let alert = UIAlertController(title: "Rules", message: "Click on the GivenBox to earn +10 points , if not click GivenBox then -5 points , Complete on Give Time,Click on Start Button", preferredStyle: UIAlertController.Style.alert)
    
        alert.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil))
        self.present(alert, animated: true, completion: nil)
        
        
        let tapGesture1 = UITapGestureRecognizer(target: self, action: #selector(didTapView1))
        tapGesture1.numberOfTapsRequired = 1
        tapGesture1.numberOfTouchesRequired = 1
        
        
        let tapGesture2 = UITapGestureRecognizer(target: self, action: #selector(didTapView2))
        tapGesture2.numberOfTapsRequired = 1
        tapGesture2.numberOfTouchesRequired = 1
       
        
        let tapGesture3 = UITapGestureRecognizer(target: self, action: #selector(didTapView3))
        tapGesture3.numberOfTapsRequired = 1
        tapGesture3.numberOfTouchesRequired = 1
        
        let tapGesture4 = UITapGestureRecognizer(target: self, action: #selector(didTapView4))
        tapGesture4.numberOfTapsRequired = 1
        tapGesture4.numberOfTouchesRequired = 1
 
        let tapGesture5 = UITapGestureRecognizer(target: self, action: #selector(didTapView5))
        tapGesture5.numberOfTapsRequired = 1
        tapGesture5.numberOfTouchesRequired = 1
        
        let tapGesture6 = UITapGestureRecognizer(target: self, action: #selector(didTapView6))
        tapGesture6.numberOfTapsRequired = 1
        tapGesture6.numberOfTouchesRequired = 1
       
        
        let tapGesture7 = UITapGestureRecognizer(target: self, action: #selector(didTapView7))
        tapGesture7.numberOfTapsRequired = 1
        tapGesture7.numberOfTouchesRequired = 1
       
        
        let tapGesture8 = UITapGestureRecognizer(target: self, action: #selector(didTapView8))
        tapGesture8.numberOfTapsRequired = 1
        tapGesture8.numberOfTouchesRequired = 1
        
        let tapGesture9 = UITapGestureRecognizer(target: self, action: #selector(didTapView9))
        tapGesture9.numberOfTapsRequired = 1
        tapGesture9.numberOfTouchesRequired = 1
       
        myView1.addGestureRecognizer(tapGesture1)
        myView2.addGestureRecognizer(tapGesture2)
        myView3.addGestureRecognizer(tapGesture3)
        myView4.addGestureRecognizer(tapGesture4)
        myView5.addGestureRecognizer(tapGesture5)
        myView6.addGestureRecognizer(tapGesture6)
        myView7.addGestureRecognizer(tapGesture7)
        myView8.addGestureRecognizer(tapGesture8)
        myView9.addGestureRecognizer(tapGesture9)
    }
}

extension ViewController {
    
    
    @objc private func didTapView1(_ gesture:UITapGestureRecognizer, _ sender:UIView) {
        print("Tapped at location: \(gesture.location(in: sender))")
        if(self.myView1.backgroundColor!.isEqual(UIColor.blue))
        {
            self.score += 10
            Score.text = String(score)
        }
        else{
            self.score -= 5
            Score.text = String(score)
        }
    }
    
    @objc private func didTapView2(_ gesture:UITapGestureRecognizer, _ sender:UIView) {
        print("Tapped at location: \(gesture.location(in: sender))")
        if(self.myView2.backgroundColor!.isEqual(UIColor.blue))
        {
            self.score += 10
            Score.text = String(score)
        }
        else{
            self.score -= 5
            Score.text = String(score)
        }
    }
    
    @objc private func didTapView3(_ gesture:UITapGestureRecognizer, _ sender:UIView) {
        print("Tapped at location: \(gesture.location(in: sender))")
        if(self.myView3.backgroundColor!.isEqual(UIColor.blue))
        {
            self.score += 10
            Score.text = String(score)
        }
        else{
            self.score -= 5
            Score.text = String(score)
        }
    }
    
    @objc private func didTapView4(_ gesture:UITapGestureRecognizer, _ sender:UIView) {
        print("Tapped at location: \(gesture.location(in: sender))")
        if(self.myView4.backgroundColor!.isEqual(UIColor.blue))
        {
            self.score += 10
            Score.text = String(score)
        }
        else{
            self.score -= 5
            Score.text = String(score)
        }
    }
    
    @objc private func didTapView5(_ gesture:UITapGestureRecognizer, _ sender:UIView) {
        print("Tapped at location: \(gesture.location(in: sender))")
        if(self.myView5.backgroundColor!.isEqual(UIColor.blue))
        {
            self.score += 10
            Score.text = String(score)
        }
        else{
            self.score -= 5
            Score.text = String(score)
        }
    }
    
    @objc private func didTapView6(_ gesture:UITapGestureRecognizer, _ sender:UIView) {
        print("Tapped at location: \(gesture.location(in: sender))")
        if(self.myView6.backgroundColor!.isEqual(UIColor.blue))
        {
            self.score += 10
            Score.text = String(score)
        }
        else{
            self.score -= 5
            Score.text = String(score)
        }
    }
    
    @objc private func didTapView7(_ gesture:UITapGestureRecognizer, _ sender:UIView) {
        print("Tapped at location: \(gesture.location(in: sender))")
        if(self.myView7.backgroundColor!.isEqual(UIColor.blue))
        {
            self.score += 10
            Score.text = String(score)
        }
        else{
            self.score -= 5
            Score.text = String(score)
        }
    }
    
    @objc private func didTapView8(_ gesture:UITapGestureRecognizer, _ sender:UIView) {
        print("Tapped at location: \(gesture.location(in: sender))")
        if(self.myView8.backgroundColor!.isEqual(UIColor.blue))
        {
            self.score += 10
            Score.text = String(score)
        }
        else{
            self.score -= 5
            Score.text = String(score)
        }
    }
    
    @objc private func didTapView9(_ gesture:UITapGestureRecognizer, _ sender:UIView) {
        print("Tapped at location: \(gesture.location(in: sender))")
        if(self.myView9.backgroundColor!.isEqual(UIColor.blue))
        {
            self.score += 10
            Score.text = String(score)
        }
        else{
            self.score -= 5
            Score.text = String(score)
        }
    }
    
    @objc private func Timerstart(){
        self.timeleft -= 1
        self.timerlabel.text = String(self.timeleft)
       
        let randomInt = Int.random(in: 1..<10)
        if( randomInt == 1)
        {
            myView1.backgroundColor = .blue
            myView2.backgroundColor = .black
            myView3.backgroundColor = .black
            myView4.backgroundColor = .black
            myView5.backgroundColor = .black
            myView6.backgroundColor = .black
            myView7.backgroundColor = .black
            myView8.backgroundColor = .black
            myView9.backgroundColor = .black
            
        }
        else if(randomInt == 2)
        {
            myView2.backgroundColor = .blue
            myView1.backgroundColor = .black
            myView3.backgroundColor = .black
            myView4.backgroundColor = .black
            myView5.backgroundColor = .black
            myView6.backgroundColor = .black
            myView7.backgroundColor = .black
            myView8.backgroundColor = .black
            myView9.backgroundColor = .black
        }
        else if(randomInt == 3)
        {
            myView3.backgroundColor = .blue
            myView2.backgroundColor = .black
            myView1.backgroundColor = .black
            myView4.backgroundColor = .black
            myView5.backgroundColor = .black
            myView6.backgroundColor = .black
            myView7.backgroundColor = .black
            myView8.backgroundColor = .black
            myView9.backgroundColor = .black
        }
        else if(randomInt == 4)
        {
            myView4.backgroundColor = .blue
            myView2.backgroundColor = .black
            myView3.backgroundColor = .black
            myView1.backgroundColor = .black
            myView5.backgroundColor = .black
            myView6.backgroundColor = .black
            myView7.backgroundColor = .black
            myView8.backgroundColor = .black
            myView9.backgroundColor = .black
        }
        else if(randomInt == 5)
        {
            myView5.backgroundColor = .blue
            myView2.backgroundColor = .black
            myView3.backgroundColor = .black
            myView4.backgroundColor = .black
            myView1.backgroundColor = .black
            myView6.backgroundColor = .black
            myView7.backgroundColor = .black
            myView8.backgroundColor = .black
            myView9.backgroundColor = .black
        }
        else if(randomInt == 6)
        {
            myView6.backgroundColor = .blue
            myView2.backgroundColor = .black
            myView3.backgroundColor = .black
            myView4.backgroundColor = .black
            myView5.backgroundColor = .black
            myView1.backgroundColor = .black
            myView7.backgroundColor = .black
            myView8.backgroundColor = .black
            myView9.backgroundColor = .black
        }
        else if(randomInt == 7)
        {
            myView7.backgroundColor = .blue
            myView2.backgroundColor = .black
            myView3.backgroundColor = .black
            myView4.backgroundColor = .black
            myView5.backgroundColor = .black
            myView6.backgroundColor = .black
            myView1.backgroundColor = .black
            myView8.backgroundColor = .black
            myView9.backgroundColor = .black
        }
        else if(randomInt == 8)
        {
            myView8.backgroundColor = .blue
            myView2.backgroundColor = .black
            myView3.backgroundColor = .black
            myView4.backgroundColor = .black
            myView5.backgroundColor = .black
            myView6.backgroundColor = .black
            myView7.backgroundColor = .black
            myView1.backgroundColor = .black
            myView9.backgroundColor = .black
        }
        else if(randomInt == 9)
        {
            myView9.backgroundColor = .blue
            myView2.backgroundColor = .black
            myView3.backgroundColor = .black
            myView4.backgroundColor = .black
            myView5.backgroundColor = .black
            myView6.backgroundColor = .black
            myView7.backgroundColor = .black
            myView8.backgroundColor = .black
            myView1.backgroundColor = .black
        }
        
        if(self.timeleft==0){
            timer.invalidate()
            myView1.backgroundColor = .black
            myView2.backgroundColor = .black
            myView3.backgroundColor = .black
            myView4.backgroundColor = .black
            myView5.backgroundColor = .black
            myView6.backgroundColor = .black
            myView7.backgroundColor = .black
            myView8.backgroundColor = .black
            myView9.backgroundColor = .black
            
            let alert = UIAlertController(title: "Congralutions \n Your Score Is \(score)", message: "Please Enter Your Name", preferredStyle: .alert)
            alert.addTextField { (tf) in tf.placeholder = "Enter Your Name"}
            
            let action = UIAlertAction(title: "submit", style: .default) { (_) in
                self.name = (alert.textFields?.first?.text)!
                UserDefaults.standard.setValue("applePhone123", forKey: "UserToken")
                UserDefaults.standard.setValue(self.name, forKey: "Name")
                UserDefaults.standard.setValue(self.score, forKey: "Score")
                let vc = LeaderboardVC()
                self.navigationController?.pushViewController(vc, animated: true)
            }
            alert.addAction(action)
            present(alert , animated: true , completion: nil)
        }
    }
}


