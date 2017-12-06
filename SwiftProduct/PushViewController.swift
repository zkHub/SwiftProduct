//
//  PushViewController.swift
//  SwiftProduct
//
//  Created by 张柯 on 2017/12/6.
//  Copyright © 2017年 zhangke. All rights reserved.
//

import UIKit

class PushViewController: BaseViewController {

    var num: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "push" + (num ?? "-")
        // Do any additional setup after loading the view.
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
