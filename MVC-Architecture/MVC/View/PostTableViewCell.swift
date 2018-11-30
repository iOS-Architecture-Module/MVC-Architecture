//
//  PostTableViewCell.swift
//  MVC-Architecture
//
//  Created by Li, Havi X. -ND on 2018/11/29.
//  Copyright © 2018 Li, Havi X. -ND. All rights reserved.
//

import UIKit
import SwiftIconFont

class PostTableViewCell: UITableViewCell {
	
	var postContent: UILabel?
	var likeCountLabel: UILabel?
	var likeCountButton: SwiftIconButton?
	
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
	}
	
	override func layoutSubviews() {
		super.layoutSubviews()
		postContent?.frame = CGRect.init(x: 0, y: 0, width: self.frame.width-150, height: self.frame.size.height)
		likeCountLabel?.frame = CGRect.init(x: self.frame.width-100, y: 0,width: 80, height: self.frame.size.height)
		likeCountButton?.frame = CGRect.init(x: self.frame.width-40, y: 0, width: 40, height: self.frame.size.height)
		likeCountButton?.setImage(UIImage.init(from: Fonts.fontAwesome, code: "twitter", size: CGSize.init(width: 20, height: 20)), for: UIControl.State.normal)
	}
}

