//
//  BoxStackView.swift
//  UIKitProg
//
//  Created by Lucky on 26/07/24.
//

import UIKit

class BoxStackView: UIView {
    
    // Lazy initialization of the vertical UIStackView
    private lazy var boxStackView: UIStackView = {
        let stackView = UIStackView()
        stackView.translatesAutoresizingMaskIntoConstraints = false // Enable Auto Layout
        stackView.axis = .vertical // Arrange subviews vertically
        stackView.alignment = .center // Center subviews horizontally
        stackView.spacing = 3 // Space between subviews
        stackView.distribution = .fill // Fill available space
        
        return stackView
    }()
    
    // Lazy initialization of the quote label
    private lazy var quoteLabel: UILabel = {
        let quoteLabel = UILabel()
        quoteLabel.text = "\"Success is not final, failure is not fatal: It is the courage to continue that counts.\""
        quoteLabel.textColor = .white // Set text color to white
        quoteLabel.textAlignment = .center // Center text alignment
        quoteLabel.numberOfLines = 0 // Allow multiple lines
        quoteLabel.translatesAutoresizingMaskIntoConstraints = false // Enable Auto Layout
        
        return quoteLabel
    }()

    // Lazy initialization of the quote author label
    private lazy var quoteAuthorLabel: UILabel = {
        let quoteAuthorLabel = UILabel()
        quoteAuthorLabel.text = "- Winston Churchill"
        quoteAuthorLabel.textColor = .white // Set text color to white
        quoteAuthorLabel.textAlignment = .center // Center text alignment
        quoteAuthorLabel.translatesAutoresizingMaskIntoConstraints = false // Enable Auto Layout
        
        return quoteAuthorLabel
    }()
    
    // Initializer for the view, called when the view is created programmatically
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        setupBoxStackView() // Set up the stack view and its subviews
    }
    
    // Required initializer for loading from storyboard or XIB (not implemented here)
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

private extension BoxStackView {
    
    // Private method to configure the stack view
    private func setupBoxStackView() {
        self.translatesAutoresizingMaskIntoConstraints = false // Enable Auto Layout for self
        
        self.addSubview(boxStackView) // Add the stack view as a subview
        
        // Set up the appearance of the stack view
        boxStackView.backgroundColor = .black // Set background color to black
        boxStackView.layer.cornerRadius = 5 // Set corner radius for rounded corners
        
        // Define constraints to make the stack view fill the parent view
        NSLayoutConstraint.activate([
            boxStackView.topAnchor.constraint(equalTo: self.topAnchor),
            boxStackView.bottomAnchor.constraint(equalTo: self.bottomAnchor),
            boxStackView.leadingAnchor.constraint(equalTo: self.leadingAnchor),
            boxStackView.trailingAnchor.constraint(equalTo: self.trailingAnchor),
        ])
        
        // Add labels to the stack view
        boxStackView.addArrangedSubview(quoteLabel) // Add the quote label
        boxStackView.addArrangedSubview(quoteAuthorLabel) // Add the author label
    }
}
