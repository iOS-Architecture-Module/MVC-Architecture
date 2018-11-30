//
//  MVPModel.swift
//  MVC-Architecture
//
//  Created by Li, Havi X. -ND on 2018/11/30.
//  Copyright © 2018 Li, Havi X. -ND. All rights reserved.
//

import Foundation

class MVPModel: NSObject {
	var textBody: String
	var likeCount: Int
	
	init(_ text: String, likeCount: Int) {
		textBody = text
		self.likeCount = likeCount
	}
}
