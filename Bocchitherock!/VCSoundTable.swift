//
//  VCSoundTable.swift
//  Bocchitherock!
//
//  Created by Nguyen Haruki on 10/11/24.
//

import UIKit

class VCSoundTable: UIViewController {
    @IBOutlet weak var soundTable: UITableView!
    var soundNames  : [String] = [
        "1" , "1" , "1" , "1" , "1" ,
        "1" , "1" , "1" , "1" , "1" ,
        "1"
    ]

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        soundTable.dataSource = self
        soundTable.delegate = self
    }
    
}
extension VCSoundTable: UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        var content = cell.defaultContentConfiguration()
        content.text = soundNames[indexPath.row]
        cell.contentConfiguration = content
        return cell
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return soundNames.count
    }
    
}
