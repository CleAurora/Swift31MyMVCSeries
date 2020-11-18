//
//  TypeModelViewController.swift
//  trainingAPIAndXib
//
//  Created by Cleís Aurora Pereira on 18/11/20.
//

import UIKit

class TypeModelViewController: UIViewController {

    @IBOutlet weak var typeTableView: UITableView!
    var controller: TypeCar?

    override func viewDidLoad() {
        super.viewDidLoad()

        typeTableView.delegate = self
        typeTableView.dataSource = self
    }
    



}

extension TypeModelViewController: UITableViewDelegate {

}

extension TypeModelViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "CarTableViewCell") as! CarTableViewCell

        cell.setupType(type: <#T##TypeCarModel#>)

        return cell
    }


}
