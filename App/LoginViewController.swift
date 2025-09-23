//
//  LoginViewController.swift
//  App
//
//  Created by GitHub         // Login Label
             // Or with Email Label
        orWithEmailLabel.text = "Or with Email"
        orWithEmailLabel.font = UIFont.systemFont(ofSize: 14, weight: .regular) // Temporary: use system font
        orWithEmailLabel.textColor = UIColor(red: 0xE5/255.0, green: 0xD6/255.0, blue: 0xCA/255.0, alpha: 1.0)
        orWithEmailLabel.textAlignment = .center
        orWithEmailLabel.translatesAutoresizingMaskIntoConstraints = false
        containerView.addSubview(orWithEmailLabel)nLabel.text = "Login"
        loginLabel.font = UIFont.systemFont(ofSize: 30, weight: .bold) // Temporary: use system font
        loginLabel.textColor = UIColor(red: 0xFF/255.0, green: 0xF5/255.0, blue: 0xE0/255.0, alpha: 1.0)
        loginLabel.textAlignment = .center
        loginLabel.translatesAutoresizingMaskIntoConstraints = false
        containerView.addSubview(loginLabel) on 24/9/25.
//

import UIKit

class LoginViewController: UIViewController {
    
    private let containerView = UIView()
    private let iconImageView = UIImageView()
    private let titleLabel = UILabel()
    private let loginLabel = UILabel()
    private let socialButtonsStackView = UIStackView()
    private let googleButton = UIButton()
    private let facebookButton = UIButton()
    private let twitterButton = UIButton()
    private let orWithEmailLabel = UILabel()
    private let emailLoginButton = UIButton()
    private let passwordButton = UIButton()
    private let forgotButton = UIButton()
    private let signInButton = UIButton()
    private let signUpLabel = UILabel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
        setupLayout()
    }
    
    private func setupUI() {
        // Background color
        view.backgroundColor = UIColor(red: 0x74/255.0, green: 0x35/255.0, blue: 0x36/255.0, alpha: 1.0)
        
        // Container view
        containerView.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(containerView)
        
        // Icon Image View
        iconImageView.image = UIImage(named: "iconintro") // Asset name, no .png extension needed
        iconImageView.contentMode = .scaleAspectFit
        iconImageView.translatesAutoresizingMaskIntoConstraints = false
        containerView.addSubview(iconImageView)
        
        // Title Label - "BugetBites"
        titleLabel.text = "BugetBites"
        titleLabel.font = UIFont.systemFont(ofSize: 36, weight: .medium) // Temporary: use system font
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
        
        // Login Label
        loginLabel.text = "Login"
        loginLabel.font = UIFont(name: "Poppins-Bold", size: 30)
        loginLabel.textColor = UIColor(red: 0xFF/255.0, green: 0xF5/255.0, blue: 0xE0/255.0, alpha: 1.0) // #FFF5E0
        loginLabel.textAlignment = .center
        loginLabel.translatesAutoresizingMaskIntoConstraints = false
        containerView.addSubview(loginLabel)
        
        // Setup social buttons
        setupSocialButtons()
        
        // Social buttons stack view
        socialButtonsStackView.axis = .horizontal
        socialButtonsStackView.distribution = .fill
        socialButtonsStackView.spacing = 16
        socialButtonsStackView.translatesAutoresizingMaskIntoConstraints = false
        
        socialButtonsStackView.addArrangedSubview(googleButton)
        socialButtonsStackView.addArrangedSubview(facebookButton)
        socialButtonsStackView.addArrangedSubview(twitterButton)
        
        containerView.addSubview(socialButtonsStackView)
        
        // Or with Email Label
        orWithEmailLabel.text = "Or with Email"
        orWithEmailLabel.font = UIFont(name: "Poppins-Regular", size: 14)
        orWithEmailLabel.textColor = UIColor(red: 0xE5/255.0, green: 0xD6/255.0, blue: 0xCA/255.0, alpha: 1.0) // #E5D6CA
        orWithEmailLabel.textAlignment = .center
        orWithEmailLabel.translatesAutoresizingMaskIntoConstraints = false
        containerView.addSubview(orWithEmailLabel)
        
        // Email Login Button
        setupEmailLoginButton()
        
        // Password Button and Forgot Button
        setupPasswordAndForgotButtons()
        
        // Sign In Button
        setupSignInButton()
        
        // Sign Up Label
        setupSignUpLabel()
    }
    
    private func setupSocialButtons() {
        // Google Button
        googleButton.backgroundColor = UIColor(red: 0xEF/255.0, green: 0x88/255.0, blue: 0x29/255.0, alpha: 1.0) // #EF8829
        googleButton.layer.cornerRadius = 24
        googleButton.setTitle("  with Google", for: .normal)
        googleButton.setTitleColor(.white, for: .normal)
        googleButton.titleLabel?.font = UIFont.systemFont(ofSize: 16, weight: .medium)
        googleButton.translatesAutoresizingMaskIntoConstraints = false
        
        // Add Google icon (you'll need to add the actual icon)
        if let googleIcon = UIImage(named: "google_icon") {
            googleButton.setImage(googleIcon, for: .normal)
            googleButton.imageEdgeInsets = UIEdgeInsets(top: 0, left: -8, bottom: 0, right: 8)
        }
        
        // Facebook Button
        facebookButton.backgroundColor = .clear
        facebookButton.layer.cornerRadius = 25
        facebookButton.layer.borderWidth = 2
        facebookButton.layer.borderColor = UIColor.white.cgColor
        facebookButton.translatesAutoresizingMaskIntoConstraints = false
        
        // Add Facebook icon (you'll need to add the actual icon)
        if let facebookIcon = UIImage(named: "facebook_icon") {
            facebookButton.setImage(facebookIcon, for: .normal)
            facebookButton.tintColor = .white
        }
        
        // Twitter Button
        twitterButton.backgroundColor = .clear
        twitterButton.layer.cornerRadius = 25
        twitterButton.layer.borderWidth = 2
        twitterButton.layer.borderColor = UIColor.white.cgColor
        twitterButton.translatesAutoresizingMaskIntoConstraints = false
        
        // Add Twitter icon (you'll need to add the actual icon)
        if let twitterIcon = UIImage(named: "twitter_icon") {
            twitterButton.setImage(twitterIcon, for: .normal)
            twitterButton.tintColor = .white
        }
    }
    
    private func setupPasswordAndForgotButtons() {
        // Password Button
        passwordButton.backgroundColor = .clear
        passwordButton.layer.cornerRadius = 24
        passwordButton.layer.borderWidth = 1
        passwordButton.layer.borderColor = UIColor.black.cgColor
        passwordButton.contentHorizontalAlignment = .left
        passwordButton.contentEdgeInsets = UIEdgeInsets(top: 12, left: 32, bottom: 12, right: 32)
        passwordButton.translatesAutoresizingMaskIntoConstraints = false
        
        passwordButton.setTitle("Password", for: .normal)
        passwordButton.setTitleColor(UIColor(red: 0xE5/255.0, green: 0xD6/255.0, blue: 0xCA/255.0, alpha: 1.0), for: .normal)
        passwordButton.titleLabel?.font = UIFont.systemFont(ofSize: 16, weight: .regular)
        
        containerView.addSubview(passwordButton)
        
        // Forgot Button
        forgotButton.backgroundColor = .clear
        forgotButton.setTitle("Forgot?", for: .normal)
        forgotButton.setTitleColor(UIColor(red: 0xE5/255.0, green: 0xD6/255.0, blue: 0xCA/255.0, alpha: 1.0), for: .normal)
        forgotButton.titleLabel?.font = UIFont.systemFont(ofSize: 16, weight: .regular)
        forgotButton.translatesAutoresizingMaskIntoConstraints = false
        
        containerView.addSubview(forgotButton)
    }
    
    private func setupSignInButton() {
        signInButton.backgroundColor = UIColor(red: 0x84/255.0, green: 0xBD/255.0, blue: 0x93/255.0, alpha: 1.0) // #84BD93
        signInButton.layer.cornerRadius = 24
        signInButton.setTitle("Sign In", for: .normal)
        signInButton.setTitleColor(.white, for: .normal)
        signInButton.titleLabel?.font = UIFont.systemFont(ofSize: 18, weight: .medium)
        signInButton.translatesAutoresizingMaskIntoConstraints = false
        
        containerView.addSubview(signInButton)
    }
    
    private func setupSignUpLabel() {
        signUpLabel.text = "New User? Sign Up"
        signUpLabel.font = UIFont.systemFont(ofSize: 14, weight: .regular)
        signUpLabel.textAlignment = .center
        signUpLabel.translatesAutoresizingMaskIntoConstraints = false
        
        // Create attributed string for different colors
        let attributedSignUp = NSMutableAttributedString(string: "New User? Sign Up")
        
        // "New User?" color - white
        attributedSignUp.addAttribute(.foregroundColor, 
                                   value: UIColor.white, 
                                   range: NSRange(location: 0, length: 10))
        
        // "Sign Up" color - #84BD93
        attributedSignUp.addAttribute(.foregroundColor, 
                                   value: UIColor(red: 0x84/255.0, green: 0xBD/255.0, blue: 0x93/255.0, alpha: 1.0), 
                                   range: NSRange(location: 10, length: 7))
        
        signUpLabel.attributedText = attributedSignUp
        containerView.addSubview(signUpLabel)
    }
    
    private func setupEmailLoginButton() {
        emailLoginButton.backgroundColor = .clear
        emailLoginButton.layer.cornerRadius = 24
        emailLoginButton.layer.borderWidth = 1
        emailLoginButton.layer.borderColor = UIColor.black.cgColor
        emailLoginButton.contentHorizontalAlignment = .left
        emailLoginButton.contentEdgeInsets = UIEdgeInsets(top: 12, left: 32, bottom: 12, right: 32)
        emailLoginButton.translatesAutoresizingMaskIntoConstraints = false
        
        // Set title with left alignment
        emailLoginButton.setTitle("Your Email", for: .normal)
        emailLoginButton.setTitleColor(UIColor(red: 0xE5/255.0, green: 0xD6/255.0, blue: 0xCA/255.0, alpha: 1.0), for: .normal)
        emailLoginButton.titleLabel?.font = UIFont.systemFont(ofSize: 16, weight: .regular)
        
        // Add check icon on the right (you'll need to add the actual icon)
        if let checkIcon = UIImage(named: "check_icon") {
            emailLoginButton.setImage(checkIcon, for: .normal)
            emailLoginButton.imageView?.contentMode = .scaleAspectFit
            emailLoginButton.semanticContentAttribute = .forceRightToLeft
            emailLoginButton.imageEdgeInsets = UIEdgeInsets(top: 0, left: 16, bottom: 0, right: 0)
        }
        
        containerView.addSubview(emailLoginButton)
    }
    
    private func setupLayout() {
        NSLayoutConstraint.activate([
            // Container view - centered in screen
            containerView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            containerView.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: -40),
            containerView.leadingAnchor.constraint(greaterThanOrEqualTo: view.leadingAnchor, constant: 40),
            containerView.trailingAnchor.constraint(lessThanOrEqualTo: view.trailingAnchor, constant: -40),
            
            // Icon Image View
            iconImageView.topAnchor.constraint(equalTo: containerView.topAnchor),
            iconImageView.centerXAnchor.constraint(equalTo: containerView.centerXAnchor),
            iconImageView.widthAnchor.constraint(equalToConstant: 160),
            iconImageView.heightAnchor.constraint(equalToConstant: 135),
            
            // Title Label
            titleLabel.topAnchor.constraint(equalTo: iconImageView.bottomAnchor, constant: 24),
            titleLabel.leadingAnchor.constraint(equalTo: containerView.leadingAnchor),
            titleLabel.trailingAnchor.constraint(equalTo: containerView.trailingAnchor),
            titleLabel.centerXAnchor.constraint(equalTo: containerView.centerXAnchor),
            
            // Login Label
            loginLabel.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 44),
            loginLabel.leadingAnchor.constraint(equalTo: containerView.leadingAnchor),
            loginLabel.trailingAnchor.constraint(equalTo: containerView.trailingAnchor),
            loginLabel.centerXAnchor.constraint(equalTo: containerView.centerXAnchor),
            
            // Social buttons stack view
            socialButtonsStackView.topAnchor.constraint(equalTo: loginLabel.bottomAnchor, constant: 24),
            socialButtonsStackView.leadingAnchor.constraint(equalTo: containerView.leadingAnchor, constant: 32),
            socialButtonsStackView.trailingAnchor.constraint(equalTo: containerView.trailingAnchor, constant: -32),
            socialButtonsStackView.heightAnchor.constraint(equalToConstant: 50),
            
            // Google button constraints
            googleButton.heightAnchor.constraint(equalToConstant: 50),
            
            // Facebook and Twitter buttons constraints (square)
            facebookButton.heightAnchor.constraint(equalToConstant: 50),
            facebookButton.widthAnchor.constraint(equalToConstant: 50),
            
            twitterButton.heightAnchor.constraint(equalToConstant: 50),
            twitterButton.widthAnchor.constraint(equalToConstant: 50),
            
            // Or with Email Label
            orWithEmailLabel.topAnchor.constraint(equalTo: socialButtonsStackView.bottomAnchor, constant: 36),
            orWithEmailLabel.leadingAnchor.constraint(equalTo: containerView.leadingAnchor),
            orWithEmailLabel.trailingAnchor.constraint(equalTo: containerView.trailingAnchor),
            orWithEmailLabel.centerXAnchor.constraint(equalTo: containerView.centerXAnchor),
            
            // Email Login Button
            emailLoginButton.topAnchor.constraint(equalTo: orWithEmailLabel.bottomAnchor, constant: 24),
            emailLoginButton.leadingAnchor.constraint(equalTo: containerView.leadingAnchor),
            emailLoginButton.trailingAnchor.constraint(equalTo: containerView.trailingAnchor),
            emailLoginButton.heightAnchor.constraint(equalToConstant: 50),
            
            // Password Button
            passwordButton.topAnchor.constraint(equalTo: emailLoginButton.bottomAnchor, constant: 16),
            passwordButton.leadingAnchor.constraint(equalTo: containerView.leadingAnchor),
            passwordButton.widthAnchor.constraint(equalTo: containerView.widthAnchor, multiplier: 0.65),
            passwordButton.heightAnchor.constraint(equalToConstant: 50),
            
            // Forgot Button
            forgotButton.centerYAnchor.constraint(equalTo: passwordButton.centerYAnchor),
            forgotButton.trailingAnchor.constraint(equalTo: containerView.trailingAnchor),
            forgotButton.leadingAnchor.constraint(equalTo: passwordButton.trailingAnchor, constant: 16),
            forgotButton.heightAnchor.constraint(equalToConstant: 50),
            
            // Sign In Button
            signInButton.topAnchor.constraint(equalTo: passwordButton.bottomAnchor, constant: 30),
            signInButton.leadingAnchor.constraint(equalTo: containerView.leadingAnchor),
            signInButton.trailingAnchor.constraint(equalTo: containerView.trailingAnchor),
            signInButton.heightAnchor.constraint(equalToConstant: 50),
            
            // Sign Up Label
            signUpLabel.topAnchor.constraint(equalTo: signInButton.bottomAnchor, constant: 68),
            signUpLabel.leadingAnchor.constraint(equalTo: containerView.leadingAnchor),
            signUpLabel.trailingAnchor.constraint(equalTo: containerView.trailingAnchor),
            signUpLabel.bottomAnchor.constraint(equalTo: containerView.bottomAnchor),
            signUpLabel.centerXAnchor.constraint(equalTo: containerView.centerXAnchor),
        ])
    }
}
