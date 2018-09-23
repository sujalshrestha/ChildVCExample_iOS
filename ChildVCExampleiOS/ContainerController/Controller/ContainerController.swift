//
//  ViewController.swift
//  ChildVCExampleiOS
//
//  Created by Sujal on 9/23/18.
//  Copyright © 2018 Mac. All rights reserved.
//

import UIKit

class ContainerController: UITableViewController {

    let containerTableId = "containerTableId"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupTableView()
    }

    fileprivate func setupTableView() {
        navigationItem.title = "ChildVC Example"
        self.tableView = UITableView(frame: self.tableView.frame, style: .grouped)
        tableView.register(ContainerCell.self, forCellReuseIdentifier: containerTableId)
        tableView.separatorStyle = .none
    }
}

extension ContainerController {
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: containerTableId, for: indexPath) as! ContainerCell
        cell.containerController = self
        return cell
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 400
    }
}

