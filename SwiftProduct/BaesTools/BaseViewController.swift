//
//  BaseViewController.swift
//  SwiftProduct
//
//  Created by zhangke on 2017/11/27.
//  Copyright © 2017年 zhangke. All rights reserved.
//

import UIKit
import SDWebImage
import Alamofire
import MJRefresh

class BaseViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        self.view.backgroundColor = UIColor.white
        let view:UIView = UIView.init()
        view.frame = CGRect(x: 0, y: 10, width: 320, height: 568)
        view.backgroundColor = UIColor.blue
        self.view.addSubview(view)

        let imageView:UIImageView = UIImageView()
        let url = URL(string: "1")
        imageView.sd_setImage(with: url, completed: nil)
        
        let tableView:UITableView = UITableView.init(frame: .init(x: 0, y: 0, width: 320, height: 568), style: .plain)
        tableView.mj_header = MJRefreshHeader.init()
        let header:MJRefreshGifHeader = MJRefreshGifHeader()
        let path = Bundle.main.path(forResource: "xfb_refresh", ofType: "gif")
        let data = NSData.init(contentsOfFile: path!)
        let image = UIImage.sd_animatedGIF(with: data! as Data)
        Alamofire.request("https://www.baidu.com").responseString { (responseStr) in
            print(responseStr)
        }
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
