//
//  ViewController.swift
//  trainingAPIAndXib
//
//  Created by Cleís Aurora Pereira on 18/11/20.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var brandTableView: UITableView!
    var controller: Brand?

    override func viewDidLoad() {
        super.viewDidLoad()

        controller = Brand()
        loadDatas()

        brandTableView.delegate = self
        brandTableView.dataSource = self

        brandTableView.register(UINib(nibName: "CarTableViewCell", bundle: nil), forCellReuseIdentifier: "CarTableViewCell")
        brandTableView.reloadData()
    }

    func loadDatas (){
        controller?.getBrand(completionHandler: {success, _ in
            if success {
                self.brandTableView.reloadData()
            }
        })
    }

}

extension ViewController: UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return controller?.brandArray.count ?? 0
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "CarTableViewCell") as! CarTableViewCell

        cell.setup(brand: controller!.brandArray[indexPath.row])

        return cell
    }
}

