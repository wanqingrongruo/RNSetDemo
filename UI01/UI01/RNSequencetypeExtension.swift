//
//  RNSequencetypeExtension.swift
//  UI01
//
//  Created by 婉卿容若 on 16/7/15.
//  Copyright © 2016年 婉卿容若. All rights reserved.
//  容若的简书地址:http://www.jianshu.com/users/274775e3d56d/latest_articles
//  容若的新浪微博:http://weibo.com/u/2946516927?refer_flag=1001030102_&is_hot=1


import Foundation

/* some methods to extension SequenceType
   
 * 用闭包作为函数参数，跟map和filter等相似
 
 */

extension SequenceType{
    
    /**
     从数组中寻找某个符合条件的元素并返回
     
     - parameter match: 所需符合的条件
     
     - returns: 符合条件的元素或者 nil
     
     - 调用实例: let object = someArray.findElement{$0.passesTest()}
     */
    func findElement(match: Generator.Element -> Bool) -> Generator.Element?{
        
        for element in self where match(element){
            
            return element
        }
        
        return nil
    }
}