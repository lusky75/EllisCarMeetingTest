//
//  ViewController.swift
//  EllisCarMeetingTest
//
//  Created by CHEN on 17/06/2022.
//

import UIKit

class LoginVC: UIViewController {
    
    var loginView: LoginView?

    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupLoginView()
    }
    
    func setupLoginView() {
        loginView = LoginView(frame: CGRect(x: 0, y: 0, width: view.frame.size.width, height: view.frame.size.height))
                
        view.addSubview(loginView!)
        
        addButtonTarget()
    }

    func addButtonTarget() {
        loginView?.loginButton.addTarget(self, action: #selector(loginAction(_:)), for: .touchUpInside)
    }
    
    @IBAction func loginAction(_ sender: UIButton) {
        print("Message: I try to log in !")
        
        //À toi de coder ici pour vérifier les champs email, password
        let homeVC = HomeVC()
        navigationController?.pushViewController(homeVC, animated: true)
    }
    
}

