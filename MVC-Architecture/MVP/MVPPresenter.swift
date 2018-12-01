//
//  MVPPresenter.swift
//  MVC-Architecture
//
//  Created by Li, Havi X. -ND on 2018/11/30.
//  Copyright © 2018 Li, Havi X. -ND. All rights reserved.
//

import Foundation
import UIKit

class MVPPresenter: NSObject {
	
	private var mvpModel: PostListModel
	private var tableView: UITableView!
//	private let mvp
	
	init(withTableView: UITableView) {
		tableView = withTableView
		mvpModel = PostListModel()
		let post1 = MVPModel.init( "this is mvp one cell", likeCount: 1)
		let post2 = MVPModel.init( "this is mvp two cell", likeCount: 2)
		let post3 = MVPModel.init( "this is  mvp three cell", likeCount: 3)
		mvpModel.postList = [post1, post2, post3]
		super.init()
		tableView.delegate = self
		tableView.dataSource = self

	}
}

extension MVPPresenter: UITableViewDataSource {
	func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
		return (mvpModel.postList?.count)!
	}
	
	func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
		var cell = tableView.dequeueReusableCell(withIdentifier: "cell") as? MVPCell
		if cell == nil {
			cell = MVPCell.init(style: .default, reuseIdentifier: "cell")
		}
		cell?.delegate = self
		cell?.indexPath = indexPath
		let postModel: MVPModel = mvpModel.postList![indexPath.row]
		cell!.postContent?.text = postModel.textBody
		cell!.likeCountLabel?.text = "\(postModel.likeCount)"
		return cell!
	}
}

extension MVPPresenter: UITableViewDelegate {
	
	func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
		return 100
	}
	
	func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
		tableView.deselectRow(at: indexPath, animated: false)
	}
	
}

extension MVPPresenter: TableViewCellButtonClick {
	func starButtonClick(_ index: IndexPath?) {
		let model = mvpModel.postList![index!.row]
		model.likeCount = model.likeCount + 1
		
		tableView.reloadData()
	}
}

