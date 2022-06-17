//
//  HomeVC.swift
//  EllisCarMeetingTest
//
//  Created by CHEN on 17/06/2022.
//

import UIKit

class HomeVC: UIViewController {
    
    var homeView: HomeView?

    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupHomeView()

        // Do any additional setup after loading the view.
    }
    
    func setupHomeView() {
        
        homeView = HomeView(frame: CGRect(x: 0, y: 0, width: view.frame.size.width, height: view.frame.size.height))
                
        view.addSubview(homeView!)
    }

}
