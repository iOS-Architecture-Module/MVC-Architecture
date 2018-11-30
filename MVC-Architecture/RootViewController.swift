//
//  RootViewController.swift
//  MVC-Architecture
//
//  Created by Li, Havi X. -ND on 2018/11/30.
//  Copyright © 2018 Li, Havi X. -ND. All rights reserved.
//

import Foundation
import UIKit

class RootViewController: UIViewController {
	
	@IBAction func MVC(_ sender: Any) {
		let root = UIStoryboard.init(name: "Main", bundle: nil)
		let vc = root.instantiateViewController(withIdentifier: "MVCVC")

		self.navigationController?.pushViewController(vc, animated: true)
	}
	
	
	@IBAction func MVP(_ sender: Any) {
		let root = UIStoryboard.init(name: "Main", bundle: nil)
		let vc = root.instantiateViewController(withIdentifier: "mvpviewcontroller")
		
		self.navigationController?.pushViewController(vc, animated: true)
	}
	
	@IBAction func MVVM(_ sender: Any) {
	}
	
	
	@IBAction func Viper(_ sender: Any) {
	}
	override func viewDidLoad() {
		self.title = "Architecture"
		view.backgroundColor = UIColor.white
	}
	
}
