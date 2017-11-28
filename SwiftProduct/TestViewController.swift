//
//  TestViewController.swift
//  SwiftProduct
//
//  Created by zhangke on 2017/11/27.
//  Copyright © 2017年 zhangke. All rights reserved.
//

import UIKit
import MJRefresh
import Alamofire

let cellIdentifier = "cellIdentifier"

class TestViewController: BaseViewController,UITableViewDelegate, UITableViewDataSource {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        
//        let imageView:UIImageView = UIImageView.init(frame: CGRect(x: 20, y: 20, width: 100, height: 100))
//        let url = URL(string: "http://img.taopic.com/uploads/allimg/120727/201995-120HG1030762.jpg")
//        imageView.sd_setImage(with: url, completed: nil)
//        self.view.addSubview(imageView)
        
//        Alamofire.request(url!)
        
        let tableView:UITableView = UITableView.init(frame: .init(x: 0, y: 0, width: 320, height: 568), style: .plain)
        tableView.delegate = self
        tableView.dataSource = self
        self.view.addSubview(tableView)
        
        tableView.mj_header = BaseTools.createMjHeader()
        
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: cellIdentifier)
    }

    //MARK - tableView delegate datasource
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier, for: indexPath)
        cell.textLabel?.text = "abcd"
        return cell
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
