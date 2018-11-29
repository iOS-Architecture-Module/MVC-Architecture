//
//  ViewController.swift
//  MVC-Architecture
//
//  Created by Li, Havi X. -ND on 2018/11/29.
//  Copyright © 2018 Li, Havi X. -ND. All rights reserved.
//

import UIKit
import SwiftIconFont

class ViewController: UIViewController {
	
	/*
	备注：
	
	苹果要求的标准的VC的职责：
	1. 更新UIView,多数情况是由于model发生变化需要更新UIView
	2.响应来自UIView的用户交互事件
	3.重新对UIView进行布局
	4.协调其他VC-负责不同VC的跳转
	
	在实际开发的MVC中，VC承担了过多的责任：
	1.Model 和 View 的初始化
	2.网络请求
	3.Model数据的变换
	
	还容易造成：
	1. VC 和UIView耦合，无法分离
	2. 容易造成UIView和Model耦合--相互持有
	3. 不方便单元测试
*/

	@IBOutlet weak var tableView: UITableView!
	var model: Array<Any>?
	
	override func viewDidLoad() {
		super.viewDidLoad()
		// Do any additional setup after loading the view, typically from a nib.
		let post1 = PostModel.init(textBody: "this is one cell", likeCount: 1)
		let post2 = PostModel.init(textBody: "this is two cell", likeCount: 2)
		let post3 = PostModel.init(textBody: "this is three cell", likeCount: 3)
		model = [post1, post2, post3]
		
		self.tableView.delegate = self
		self.tableView.dataSource = self
		
	}
	
}

extension ViewController: UITableViewDataSource {
	func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
		return (model?.count)!
	}
	
	func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
		var cell = tableView.dequeueReusableCell(withIdentifier: "cell") as? PostTableViewCell
		if cell == nil {
			cell = PostTableViewCell.init(style: .default, reuseIdentifier: "cell")
		}
		let postModel: PostModel = model![indexPath.row] as! PostModel
		cell!.postContent?.text = postModel.textBody
		cell!.likeCountLabel?.text = "\(postModel.likeCount)"
		return cell!
	}
	
}

extension ViewController: UITableViewDelegate {
	func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
		return 100
	}
}

