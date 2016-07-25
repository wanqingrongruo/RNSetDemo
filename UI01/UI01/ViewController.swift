//
//  ViewController.swift
//  UI01
//
//  Created by 婉卿容若 on 16/7/7.
//  Copyright © 2016年 婉卿容若. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    // MARK: - properties - 即定义的各种属性
    var autoLabel:UILabel!
    
    var blackView:UIView!
    var redView:UIView!
    var yellowView:UIView!
    
    var changeFrameButton:UIButton!
    
    // MARK: -  Life cycle - 即生命周期
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = UIColor.whiteColor()
        
        setUI()
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        
    }
    
    override func viewDidAppear(animated: Bool) {
        super.viewDidAppear(animated)
        
    }
    
    override func viewWillDisappear(animated: Bool) {
        super.viewWillDisappear(animated)
        
    }
    
    override func viewDidDisappear(animated: Bool) {
        super.viewDidDisappear(animated)
        
    }
    
    deinit{
        
        
    }
    
}

// MARK: - Public Methods - 即系统提供的方法

extension ViewController{
    
}

// MARK: - Private Methods - 即私人写的方法

extension ViewController{
    
    func setUI(){
        
//        autoLabel = intrinsicContensizeForLabel()
//        autoLabel.text = "要知道，Autolayout的本质无非就是系统通过你设置的约束来帮你计算一个控件的位置和大小。所以，一个UILabel肯定具备的条是，内容、字体、行数、换行模式。也就是说，只要我们赋予了Label内容，那么它的大小也就确定了。所以，我们不需要特意指定一个UIlabel的宽高，除非你有什么特殊要求。那么UIView为什么不可以自己计算大小？答案其实也可以猜到，因为他没有内容。"
//       // autoLabel.frame.size.width = 315
//        autoLabel.frame.origin.x = 30
//        autoLabel.frame.origin.y = 100
//        autoLabel.textColor = UIColor.redColor()
//       // autoLabel.frame = CGRectMake(30, 100, 315, 200)
//        autoLabel.numberOfLines = 0
//        autoLabel.backgroundColor = UIColor.blackColor()
//       // autoLabel.sizeToFit()
//       // print("hhhhhh:\(autoLabel.frame.size)")
//        autoLabel.intrinsicContentSize()
//        print("kkkkkk:\(autoLabel.frame.size)")
//        view.addSubview(autoLabel)

        blackView = UIView()
        blackView.backgroundColor = UIColor.blackColor()
        view.addSubview(blackView)
        blackView.snp_makeConstraints { (make) in
            make.center.equalTo(0)
            make.size.equalTo(CGSizeMake(200, 200))
        }
        
        redView = UIView()
        redView.backgroundColor = UIColor.redColor()
        blackView.addSubview(redView)
        redView.snp_makeConstraints { (make) in
            make.center.equalTo(0)
            make.top.equalTo(10)
            make.leading.equalTo(10)
            make.bottom.equalTo(-10)
            make.trailing.equalTo(-10)
        }
        
        yellowView = UIView()
        yellowView.backgroundColor = UIColor.yellowColor()
        redView.addSubview(yellowView)
        yellowView.snp_makeConstraints { (make) in
            make.center.equalTo(0)
            make.top.equalTo(10)
            make.leading.equalTo(10)
            make.bottom.equalTo(-10)
            make.trailing.equalTo(-10)
        }
        
        changeFrameButton = RNBaseUI.createButton("增大", titleColor:  UIColor.blueColor(), font: 15, alignment: NSTextAlignment.Center, target: self, sel: #selector(changeFrameAction))
        view.addSubview(changeFrameButton)
        changeFrameButton.snp_makeConstraints { (make) in
            make.centerX.equalTo(0)
            make.size.equalTo(CGSizeMake(200, 40))
            make.bottom.equalTo(-50)
        }
    }
}

// MARK: - Event response - 按钮/手势等事件的回应方法

extension ViewController{
    
    func changeFrameAction(){
        
        blackView.snp_updateConstraints { (make) in
            make.size.equalTo(CGSizeMake(blackView.frame.size.width*1.1, blackView.frame.size.height*1.1))
        }
        
    }
    
}

// MARK: - Delegates - 即各种代理方法

// MARK: - UILabel 重写

//extension UILabel{
//    
//    override public func intrinsicContentSize() -> CGSize {
//        let originalSize = super.intrinsicContentSize()
//        let size = CGSizeMake(originalSize.width+20, originalSize.height+20)
//        
//        return size
//    }
//
//}



