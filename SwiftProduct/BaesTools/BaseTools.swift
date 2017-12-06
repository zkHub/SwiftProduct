//
//  BaseTools.swift
//  SwiftProduct
//
//  Created by zhangke on 2017/11/28.
//  Copyright © 2017年 zhangke. All rights reserved.
//

import UIKit
import MJRefresh


class BaseTools: NSObject {
    
    //MARK - 单例
//    全局变量（还有结构体和枚举体的静态成员）的Lazy初始化方法会在其被访问的时候调用一次。类似于调用'dispatch_once'以保证其初始化的原子性。这样就有了一种很酷的'单次调用'方式：只声明一个全局变量和私有的初始化方法即可。

//    swift单行单例实现，第二行是为了防止外部调用()或init()来初始化
    static let shared = BaseTools()
    override private init() {}


    
    
    class func createMjHeader() -> MJRefreshGifHeader {
        let header = MJRefreshGifHeader()
        let path = Bundle.main.path(forResource: "xfb_refresh", ofType: "gif")
        let data = NSData.init(contentsOfFile: path ?? "") //默认值
        let image = UIImage.sd_animatedGIF(with: data! as Data)
        let images = [image!]
        header.setImages(images, for: .pulling)
        header.setImages(images, for: .refreshing)
        header.lastUpdatedTimeLabel.isHidden = true
        header.stateLabel.isHidden = true
        return header
    }
    
    
    
}




