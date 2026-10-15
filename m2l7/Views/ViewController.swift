//
//  ViewController.swift
//  m2l7
//
//  Created by AndreyM on 06.10.2026.
//

import UIKit

class ViewController: UIViewController {

    private let tableData = MockData.getData()
    
    private lazy var tableView : UITableView = {
        $0.register(ItemCell.self, forCellReuseIdentifier: "cell")
        $0.dataSource = self
        $0.delegate = self
        $0.separatorStyle = .none
        return $0
    }(UITableView(frame: view.frame, style: .plain))
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(tableView)
    }
}


extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        tableData.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(withIdentifier: "cell" , for: indexPath) as? ItemCell {
            cell.setupCell(item: tableData[indexPath.row])
            cell.selectionStyle = .none
            return cell
        }
        return UITableViewCell()
    }
}

extension ViewController : UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        
        let item = tableData[indexPath.row]
        
        let details = DetailsViewController(item: tableData[indexPath.row])
        details.item = item
        navigationController?.pushViewController(details, animated: true)
    }
}



