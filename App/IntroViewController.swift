//
//  IntroViewController.swift
//  App
//
//  Created by GitHub Copilot on 24/9/25.
//

import UIKit

class IntroViewController: UIViewController {
    
    private let containerView = UIView()
    private let iconImageView = UIImageView()
    private let titleLabel = UILabel()
    private let subtitleLabel = UILabel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("IntroViewController loaded")
        setupUI()
        setupLayout()
        
        // Auto navigate to login after 5 seconds
        print("Setting up 5 second timer")
        DispatchQueue.main.asyncAfter(deadline: .now() + 5.0) {
            print("5 seconds passed, navigating to login")
            self.navigateToLogin()
        }
    }
    
    private func navigateToLogin() {
        print("Navigating to LoginViewController")
        let loginViewController = LoginViewController()
        loginViewController.modalPresentationStyle = .fullScreen
        loginViewController.modalTransitionStyle = .crossDissolve
        present(loginViewController, animated: true) {
            print("Login view presented successfully")
        }
    }
    
    private func setupUI() {
        // Background color
        view.backgroundColor = UIColor(red: 0x74/255.0, green: 0x35/255.0, blue: 0x36/255.0, alpha: 1.0)
        
        // Container view
        containerView.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(containerView)
        
        // Icon Image View
        iconImageView.image = UIImage(named: "iconintro") ?? UIImage(systemName: "photo")
        iconImageView.contentMode = .scaleAspectFit
        iconImageView.backgroundColor = UIColor.red.withAlphaComponent(0.3) // Debug: add background to see if imageview exists
        iconImageView.translatesAutoresizingMaskIntoConstraints = false
        containerView.addSubview(iconImageView)
        
        // Title Label - "BugetBites"
        titleLabel.text = "BugetBites"
        titleLabel.font = UIFont(name: "Poppins-Medium", size: 48)
        titleLabel.textAlignment = .center
        titleLabel.translatesAutoresizingMaskIntoConstraints = false
        
        // Create attributed string for different colors
        let attributedTitle = NSMutableAttributedString(string: "BugetBites")
        
        // "Buget" color - #EF8829
        attributedTitle.addAttribute(.foregroundColor, 
                                   value: UIColor(red: 0xEF/255.0, green: 0x88/255.0, blue: 0x29/255.0, alpha: 1.0), 
                                   range: NSRange(location: 0, length: 5))
        
        // "Bites" color - #84BD93
        attributedTitle.addAttribute(.foregroundColor, 
                                   value: UIColor(red: 0x84/255.0, green: 0xBD/255.0, blue: 0x93/255.0, alpha: 1.0), 
                                   range: NSRange(location: 5, length: 5))
        
        titleLabel.attributedText = attributedTitle
        containerView.addSubview(titleLabel)
        
        // Subtitle Label - "FOOD DELIVERY APP"
        subtitleLabel.text = "FOOD DELIVERY APP"
        subtitleLabel.font = UIFont(name: "Poppins-Bold", size: 18)
        subtitleLabel.textColor = UIColor(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0) // #fff
        subtitleLabel.textAlignment = .center
        subtitleLabel.translatesAutoresizingMaskIntoConstraints = false
        
        // Set line height
        let paragraphStyle = NSMutableParagraphStyle()
        paragraphStyle.lineSpacing = 27 - subtitleLabel.font.lineHeight
        paragraphStyle.alignment = .center
        
        let attributedSubtitle = NSAttributedString(string: "FOOD DELIVERY APP", 
                                                  attributes: [.paragraphStyle: paragraphStyle])
        subtitleLabel.attributedText = attributedSubtitle
        
        containerView.addSubview(subtitleLabel)
    }
    
    private func setupLayout() {
        NSLayoutConstraint.activate([
            // Container view - centered in screen
            containerView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            containerView.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            
            // Icon Image View
            iconImageView.topAnchor.constraint(equalTo: containerView.topAnchor),
            iconImageView.centerXAnchor.constraint(equalTo: containerView.centerXAnchor),
            iconImageView.widthAnchor.constraint(equalToConstant: 195),
            iconImageView.heightAnchor.constraint(equalToConstant: 165),
            
            // Title Label
            titleLabel.topAnchor.constraint(equalTo: iconImageView.bottomAnchor, constant: 24),
            titleLabel.leadingAnchor.constraint(equalTo: containerView.leadingAnchor),
            titleLabel.trailingAnchor.constraint(equalTo: containerView.trailingAnchor),
            titleLabel.centerXAnchor.constraint(equalTo: containerView.centerXAnchor),
            
            // Subtitle Label
            subtitleLabel.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 16),
            subtitleLabel.leadingAnchor.constraint(equalTo: containerView.leadingAnchor),
            subtitleLabel.trailingAnchor.constraint(equalTo: containerView.trailingAnchor),
            subtitleLabel.bottomAnchor.constraint(equalTo: containerView.bottomAnchor),
            subtitleLabel.centerXAnchor.constraint(equalTo: containerView.centerXAnchor)
        ])
    }
}