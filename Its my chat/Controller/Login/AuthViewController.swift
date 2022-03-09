//
//  AuthViewController.swift
//  Its my chat
//
//  Created by MacBook on 07.03.2022.
//

import UIKit

class AuthViewController: UIViewController {
    
    var delegate: LoginViewControllerDelegate!

    override func viewDidLoad() {
        super.viewDidLoad()

    }
    @IBAction func closeVC(_ sender: Any) {
        delegate.closeVC()
    }
}
