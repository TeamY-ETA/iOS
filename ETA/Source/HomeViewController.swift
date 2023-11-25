//
//  HomeViewController.swift
//  ETA
//
//  Created by 윤지성 on 11/25/23.
//

import UIKit
import SwiftUI

class HomeViewController: UIViewController {
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Create a SwiftUI view
        let HomeView = HomeView()
        
        // Create a UIHostingController to embed the SwiftUI view
        let hostingController = UIHostingController(rootView: HomeView)
        
        // Add the UIHostingController as a child view controller
        addChild(hostingController)
        view.addSubview(hostingController.view)
        
        // Set constraints for the UIHostingController's view to fill the parent view
        hostingController.view.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            hostingController.view.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            hostingController.view.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            hostingController.view.topAnchor.constraint(equalTo: view.topAnchor),
            hostingController.view.bottomAnchor.constraint(equalTo: view.bottomAnchor)
        ])
        
        hostingController.didMove(toParent: self)
        
    }
}
