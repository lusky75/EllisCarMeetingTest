//
//  LoginView.swift
//  EllisCarMeetingTest
//
//  Created by CHEN on 17/06/2022.
//

import Foundation

import UIKit

class LoginView: UIView {
    
    var isPasswordContentSecured = true
    
    var logoImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.image = UIImage(named: "ellis_car_logo")
        imageView.contentMode = .scaleAspectFit
        return imageView
    }()
    
    var loginFormView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = .white
        view.layer.cornerRadius = 30
        return view
    }()
    
    var emailLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "E-mail"
        label.font = UIFont.setDemiBoldFont(size: 14)
        return label
    }()
        
    var emailTextField: UITextField = {
        var textField = UITextField()
        textField.translatesAutoresizingMaskIntoConstraints = false
        //textField.attributedText
        textField.font = UIFont.setAppFont(size: 16)
        textField.layer.borderColor = UIColor.appMainGreenBackgroundColor.cgColor
        textField.layer.borderWidth = 1
        textField.layer.cornerRadius = 20
        
        textField.leftViewMode = UITextField.ViewMode.always
        let imageView = UIImageView(frame: CGRect(x: 0, y: 0, width: 30, height: 23))
        imageView.contentMode = UIView.ContentMode.center
        let image = UIImage(named: "login_mail_icon")
        imageView.image = image
        
        let paddingView = UIView(frame: CGRect(x: 0, y: 0, width: 35, height: 23))
        paddingView.addSubview(imageView)
        
        textField.leftView = paddingView
        
        //translate all view 15 from the leftView
        textField.layer.sublayerTransform = CATransform3DMakeTranslation(10.0, 0.0, 0.0)
        
        textField.backgroundColor = UIColor.textFieldGrayColor.withAlphaComponent(0.4)
        
        return textField
    }()
    
    var passwordLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = UIFont.setDemiBoldFont(size: 14)
        label.text = "Password"
        return label
    }()
    
    var passwordTextField: UITextField = {
        var textField = UITextField()
        textField.translatesAutoresizingMaskIntoConstraints = false
        //textField.attributedText
        textField.font = UIFont.setAppFont(size: 16)
        textField.layer.borderColor = UIColor.appMainGreenBackgroundColor.cgColor
        textField.layer.borderWidth = 1
        textField.layer.cornerRadius = 20
        
        textField.leftViewMode = UITextField.ViewMode.always
        let imageView = UIImageView(frame: CGRect(x: 0, y: 0, width: 30, height: 23))
        imageView.contentMode = UIView.ContentMode.center
        let image = UIImage(named: "login_cadna_icon")
        imageView.image = image
        
        let paddingView = UIView(frame: CGRect(x: 0, y: 0, width: 35, height: 23))
        paddingView.addSubview(imageView)
        
        textField.leftView = paddingView
        
        //translate all view 15 from the leftView
        textField.layer.sublayerTransform = CATransform3DMakeTranslation(10.0, 0.0, 0.0)
        
        textField.isSecureTextEntry = true
        
        //setup rightView's button
        let rightButtonNew  = UIButton(frame: CGRect(x: 0, y: 0, width:40, height:35))
        rightButtonNew.addTarget(self, action: #selector(checkPasswordContent(_:)), for: .touchUpInside)
        rightButtonNew.setImage(UIImage.init(named: "login_eye_icon")?.withRenderingMode(.alwaysTemplate), for: .normal)
        rightButtonNew.layer.sublayerTransform = CATransform3DMakeTranslation(-30.0, 0.0, 0.0)
        textField.rightViewMode = .always
        textField.rightView = rightButtonNew
        rightButtonNew.tintColor = UIColor.darkGray
        
        textField.backgroundColor = UIColor.textFieldGrayColor.withAlphaComponent(0.4)
        
        return textField
    }()
    
    var loginButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("Connexion", for: .normal)
        button.backgroundColor = .appMainGreenBackgroundColor
        button.setTitleColor(.white, for: .normal)
        button.titleLabel?.font = UIFont.setBoldAppFont(size: 17)
        button.layer.cornerRadius = 25
        return button
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        backgroundColor = .ellisCarDarkColor
        
        addSubview(logoImageView)
        
        setupLoginFormView()
        
        //logoImageView constraints
        logoImageView.topAnchor.constraint(equalTo: topAnchor, constant: 50).isActive = true
        logoImageView.heightAnchor.constraint(equalToConstant: 50).isActive = true
        logoImageView.widthAnchor.constraint(equalToConstant: 150).isActive = true
        logoImageView.leftAnchor.constraint(equalTo: leftAnchor).isActive = true
        
        setupLoginFormViewConstraints()
    }
    
    func setupLoginFormView() {
        addSubview(loginFormView)
        loginFormView.addSubview(emailLabel)
        loginFormView.addSubview(emailTextField)
        
        loginFormView.addSubview(passwordLabel)
        loginFormView.addSubview(passwordTextField)
        
        loginFormView.addSubview(loginButton)
    }
    
    func setupLoginFormViewConstraints() {
        
        //À toi de corriger les contraintes du formulaire login ainsi que le logo de l'app
        
        loginFormView.leftAnchor.constraint(equalTo: leftAnchor).isActive = true
        loginFormView.rightAnchor.constraint(equalTo: rightAnchor, constant: -53).isActive = true
        loginFormView.bottomAnchor.constraint(equalTo: bottomAnchor).isActive = true
        loginFormView.heightAnchor.constraint(equalTo: heightAnchor, multiplier: 0.6).isActive = true
        
        emailLabel.topAnchor.constraint(equalTo: loginFormView.topAnchor, constant: 20).isActive = true
        emailTextField.topAnchor.constraint(equalTo: emailLabel.bottomAnchor).isActive = true
        emailTextField.widthAnchor.constraint(equalTo: loginFormView.widthAnchor, multiplier: 0.8).isActive = true
        emailTextField.heightAnchor.constraint(equalToConstant: 50).isActive = true
        
        passwordLabel.topAnchor.constraint(equalTo: emailTextField.bottomAnchor).isActive = true
        passwordTextField.topAnchor.constraint(equalTo: passwordLabel.bottomAnchor).isActive = true
        passwordTextField.widthAnchor.constraint(equalTo: loginFormView.widthAnchor, multiplier: 0.8).isActive = true
        passwordTextField.heightAnchor.constraint(equalToConstant: 50).isActive = true
        
        loginButton.topAnchor.constraint(equalTo: passwordTextField.bottomAnchor).isActive = true
        loginButton.heightAnchor.constraint(equalToConstant: 50).isActive = true
        loginButton.widthAnchor.constraint(equalTo: loginFormView.widthAnchor, multiplier: 0.9).isActive = true
    }
    
    // MARK: Action
    @objc func checkPasswordContent(_ sender: UIButton) {
        if(isPasswordContentSecured == true) {
            passwordTextField.isSecureTextEntry = false
            isPasswordContentSecured = false
            sender.tintColor = .black
        } else {
            passwordTextField.isSecureTextEntry = true
            isPasswordContentSecured = true
            sender.tintColor = .gray
        }
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
