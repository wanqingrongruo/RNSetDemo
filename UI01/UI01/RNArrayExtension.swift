//
//  RNArrayExtension.swift
//  UI01
//
//  Created by 婉卿容若 on 16/7/15.
//  Copyright © 2016年 婉卿容若. All rights reserved.
//  容若的简书地址:http://www.jianshu.com/users/274775e3d56d/latest_articles
//  容若的新浪微博:http://weibo.com/u/2946516927?refer_flag=1001030102_&is_hot=1


import Foundation

/* some methods to extension array
 
 * 用闭包作为函数参数，跟map和filter等相似
 
 */

extension Array{
    
    /**
     累加/减/乘/除等，和 reduce 类似，不过是将所有元素合并到一个数组中，而且保留合并时每一步的值.
     
     - parameter initial: 初始值
     - parameter combine: 运算函数
     
     - returns: 运算结果数组
     
     - 调用实例: someArray.accumulate(0,combine:+)
     */
    func accumulate<U>(initial: U, combine:(U,Element) -> U) -> [U]{
        
        var running = initial
        return self.map({ next in
            running = combine(running, next)
            return running
        })
    }
}