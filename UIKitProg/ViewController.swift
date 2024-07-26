//
//  ViewController.swift
//  UIKitProg
//
//  Created by Lucky on 26/07/24.
//

import UIKit

class ViewController: UIViewController {
    
    // Lazy initialization of the BoxStackView
    private lazy var boxStackView: BoxStackView = {
        let view = BoxStackView() // Create an instance of BoxStackView
        return view // Return the initialized view
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupView() // Call the method to configure the view
    }
}

private extension ViewController {
    // Private method to set up the view layout and appearance
    private func setupView() {
        self.view.backgroundColor = .white // Set the background color of the view to white
        
        self.view.addSubview(boxStackView) // Add boxStackView as a subview
        
        // Define constraints to center the boxStackView and add padding from the edges
        NSLayoutConstraint.activate([
            boxStackView.centerXAnchor.constraint(equalTo: self.view.centerXAnchor),
            boxStackView.centerYAnchor.constraint(equalTo: self.view.centerYAnchor),
            
            boxStackView.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 20),
            boxStackView.trailingAnchor.constraint(equalTo: self.view.trailingAnchor, constant: -20),
        ])
    }
}
