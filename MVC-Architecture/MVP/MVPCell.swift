//
//  MVPCell.swift
//  MVC-Architecture
//
//  Created by Li, Havi X. -ND on 2018/11/30.
//  Copyright © 2018 Li, Havi X. -ND. All rights reserved.
//

import Foundation
import SwiftIconFont

protocol TableViewCellButtonClick {
	func starButtonClick(_ index: IndexPath?)
}

class MVPCell: UITableViewCell {
	
	var delegate: TableViewCellButtonClick?
	var postContent: UILabel?
	var likeCountLabel: UILabel?
	var likeCountButton: SwiftIconButton?
	var indexPath: IndexPath?
	
	override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
		super.init(style: style, reuseIdentifier: reuseIdentifier)
		setupUI()
	}
	
	required init?(coder aDecoder: NSCoder) {
		fatalError("init(coder:) has not been implemented")
	}
	
	fileprivate func setupUI() {
		postContent = UILabel()
		postContent?.text = "this is an test"
		likeCountLabel = UILabel()
		likeCountLabel?.text = "1"
		likeCountButton = SwiftIconButton.init(frame: .zero)
		likeCountButton?.parseIcon()
		addSubview(postContent!)
		addSubview(likeCountLabel!)
		addSubview(likeCountButton!)
		likeCountButton?.addTarget(self, action: #selector(MVPCell.starClick), for: .touchUpInside)
	}
	
	override func layoutSubviews() {
		super.layoutSubviews()
		postContent?.frame = CGRect.init(x: 10, y: 0, width: self.frame.width-150, height: self.frame.size.height)
		likeCountLabel?.frame = CGRect.init(x: self.frame.width-100, y: 0,width: 80, height: self.frame.size.height)
		likeCountButton?.frame = CGRect.init(x: self.frame.width-40, y: 0, width: 40, height: self.frame.size.height)
		likeCountButton?.setImage(UIImage.init(from: Fonts.fontAwesome, code: "star", size: CGSize.init(width: 40, height: 40)), for: UIControl.State.normal)
	}
	
	@objc func starClick() {
		if delegate != nil {
			delegate?.starButtonClick(indexPath)
		}
	}
}
