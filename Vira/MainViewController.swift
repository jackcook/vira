//
//  MainViewController.swift
//  Vira
//
//  Created by Jack Cook on 1/25/19.
//  Copyright © 2019 Jack Cook. All rights reserved.
//

import UIKit

class MainViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet weak var tableView: UITableView!
    
    var cells: [ViraCellDescriptor] = []
    
    override var preferredStatusBarStyle: UIStatusBarStyle {
        return .lightContent
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        cells = [
            Space(height: 16),
            Header(text: "Good morning, Jack!"),
            Space(height: 8),
            Weather(),
            Shuttle(),
            Space(height: 32),
            Header(text: "Today's schedule")
        ]
        
        tableView.dataSource = self
        tableView.delegate = self
    }
    
    // MARK: - UITableViewDataSource Methods
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return cells.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: cells[indexPath.row].identifier, for: indexPath) as? ViraCell else {
            return UITableViewCell(style: .default, reuseIdentifier: nil)
        }
        
        cell.configure(descriptor: cells[indexPath.row])
        return cell
    }
    
    // MARK: - UITableViewDelegate Methods
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return cells[indexPath.row].height
    }
}
