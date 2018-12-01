//
//  MVPViewController.swift
//  MVC-Architecture
//
//  Created by Li, Havi X. -ND on 2018/11/30.
//  Copyright © 2018 Li, Havi X. -ND. All rights reserved.
//

import Foundation
import UIKit

/*

MVP相比较MVC多了个Presenter，
优点：
1、

*/

class MVPViewController: UIViewController {
	
	@IBOutlet weak var tableView: UITableView!
	
	private var mvpPresenter: MVPPresenter!
	
	override func viewDidLoad() {
		super.viewDidLoad()
		// Do any additional setup after loading the view, typically from a nib.
		mvpPresenter = MVPPresenter(withTableView: tableView)
	}
	
	override func viewWillAppear(_ animated: Bool) {
		super.viewWillAppear(animated)
	}
	
}
