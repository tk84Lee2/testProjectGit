//
//  ListViewController.swift
//  testVideo
//
//  Created by tk84 on 2020/08/03.
//  Copyright © 2020 tk84. All rights reserved.
//

import UIKit

class ListViewController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView! {
        didSet {
            tableView.register(UINib(nibName: "TestCell", bundle: nil),
            forCellReuseIdentifier: "TestCell")
        }
    }
}

// MARK: - LifeCycle
extension ListViewController {
    
    override func viewDidAppear(_ animated: Bool) {
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        
        
    }
}

// MARK: - UITableViewDataSource
extension ListViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return 20
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "TestCell", for: indexPath) as! TestCell
        
        cell.configure(indexPath.row)
        
        return cell
    }
    

}

// MARK: - UITableViewDelegate
extension ListViewController: UITableViewDelegate {
    
}
