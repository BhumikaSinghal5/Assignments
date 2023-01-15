//
//  ViewController.swift
//  MVVM
//
//  Created by BKS-GGS on 11/01/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    var hackerNewsVM = HackerNewsViewModel()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        self.getNews()
    }
    
    func getNews() {
        hackerNewsVM.getHackerNews { [weak self] (hackerNewsModel) in
            guard let newsModel = hackerNewsModel else {
                // Do something when error is received while fetching the data
                return
            }
            self?.hackerNewsVM.hitsArray = newsModel.hits ?? []
            DispatchQueue.main.async {
                self?.loadDatainTable()
            }
        }
    }
    
    func loadDatainTable() {
        tableView.dataSource = self
        tableView.reloadData()
    }
}

extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return hackerNewsVM.getCount()
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "HackerNewsCell") as? HackerNewsCell
        let row = indexPath.row
        cell?.configureCell(hackerNewsVM.getTitle(forRow: row), hackerNewsVM.getPoints(forRow: row))
        return cell ?? UITableViewCell()
    }
}

