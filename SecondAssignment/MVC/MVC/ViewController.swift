//
//  ViewController.swift
//  MVC
//
//  Created by BKS-GGS on 11/01/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    var hitsArray: [Hits] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        APIManager().getNewsFrom("https://hn.algolia.com/api/v1/search?tags=front_page") { [weak self] responseModel in
            self?.hitsArray = responseModel.hits ?? []
            DispatchQueue.main.async {
                self?.tableView.dataSource = self
                self?.tableView.reloadData()
            }
        }
    }
}

extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return hitsArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "HackerNewsCell") as? HackerNewsCell
        cell?.configureCell(hitsArray[indexPath.row].title)
        return cell ?? UITableViewCell()
    }
}

