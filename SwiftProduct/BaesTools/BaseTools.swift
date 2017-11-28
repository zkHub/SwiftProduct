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
    
    

    class func createMjHeader() -> MJRefreshGifHeader {
        let header = MJRefreshGifHeader()
        let path = Bundle.main.path(forResource: "xfb_refresh", ofType: "gif")
        let data = NSData.init(contentsOfFile: path!)
        let image = UIImage.sd_animatedGIF(with: data! as Data)
        let images = [image!]
        header.setImages(images, for: .pulling)
        header.setImages(images, for: .refreshing)
        header.lastUpdatedTimeLabel.isHidden = true
        header.stateLabel.isHidden = true
        return header
    }
    
    
    
}




