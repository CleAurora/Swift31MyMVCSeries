//
//  ViewController.swift
//  MyMVCSeries
//
//  Created by Cleís Aurora Pereira on 16/11/20.
//

import UIKit

class ViewController: UIViewController {

    var controller: MyController?

    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)


    }


    override func viewDidLoad() {
        super.viewDidLoad()
        controller = MyController()
        carrega()
    }

    func carrega(){
        super.viewDidLoad()
        controller?.loadShow(completionHandler: { success, _ in
            if success {
                print("hello there")
            }
    })

        }
}



