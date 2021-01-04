//
//  ViewController.swift
//  IntroToDesignProgrammatically
//
//  Created by Ahmed Nasr on 12/25/20.
import UIKit

class ViewController: UIViewController {
    
    var emailTextField: UITextField = {
        let txt = UITextField()
        txt.placeholder = "put your email"
        txt.backgroundColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        return txt
    }()
    var passwordTextField: UITextField = {
        let txt = UITextField()
        txt.placeholder = "put your password"
        txt.backgroundColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        txt.isSecureTextEntry = true
        return txt
    }()
    var loginButton: UIButton = {
        let btn = UIButton()
        btn.setTitle("LOGIN", for: .normal)
        btn.setTitleColor(UIColor.white, for: .normal)
        btn.backgroundColor = #colorLiteral(red: 0.1764705926, green: 0.4980392158, blue: 0.7568627596, alpha: 1)
        btn.addTarget(self, action: #selector(loginOnClick), for: .touchUpInside)
        return btn
    }()
    var forgetPasswordButton: UIButton = {
        let btn = UIButton()
        btn.setTitle("ForgetPassword!", for: .normal)
        btn.setTitleColor(UIColor.black, for: .normal)
        return btn
    }()
    var signUpButton: UIButton = {
        let btn = UIButton()
        let attributedString = NSMutableAttributedString(string: "Don't have account yet? ", attributes: [NSAttributedString.Key.foregroundColor: UIColor.black, NSAttributedString.Key.font: UIFont.systemFont(ofSize: 16)])
        
        attributedString.append(NSAttributedString(string: " Sign Up", attributes: [NSAttributedString.Key.foregroundColor: UIColor.blue, NSAttributedString.Key.font: UIFont.systemFont(ofSize: 18)]))
        btn.setAttributedTitle(attributedString, for: .normal)
        return btn
    }()
    override func viewDidLoad() {
        super.viewDidLoad()
        setUpEmailTextField()
        setUpPasswordTextField()
        setUpLoginButton()
        setUpForgetPasswordButton()
        setUpSignUpButton()
    }
    func setUpEmailTextField(){
        view.addSubview(emailTextField)
        emailTextField.translatesAutoresizingMaskIntoConstraints = false
        //emailTextField.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 20).isActive = true
        emailTextField.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        emailTextField.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20).isActive = true
        emailTextField.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20).isActive = true
        emailTextField.heightAnchor.constraint(equalToConstant: 40).isActive = true
    }
    func setUpPasswordTextField(){
        view.addSubview(passwordTextField)
        passwordTextField.translatesAutoresizingMaskIntoConstraints = false
        passwordTextField.topAnchor.constraint(equalTo: emailTextField.bottomAnchor, constant: 12).isActive = true
        passwordTextField.leadingAnchor.constraint(equalTo: emailTextField.leadingAnchor, constant: 0).isActive = true
        passwordTextField.trailingAnchor.constraint(equalTo: emailTextField.trailingAnchor).isActive = true
        //passwordTextField.heightAnchor.constraint(equalToConstant: 40).isActive = true
        passwordTextField.heightAnchor.constraint(equalTo: emailTextField.heightAnchor).isActive = true
    }
    func setUpLoginButton(){
        view.addSubview(loginButton)
        loginButton.translatesAutoresizingMaskIntoConstraints = false
        loginButton.topAnchor.constraint(equalTo: passwordTextField.bottomAnchor, constant: 16).isActive = true
        loginButton.leadingAnchor.constraint(equalTo: emailTextField.leadingAnchor, constant: 6).isActive = true
        loginButton.trailingAnchor.constraint(equalTo: emailTextField.trailingAnchor, constant: -6).isActive = true
        loginButton.heightAnchor.constraint(equalTo: emailTextField.heightAnchor, constant: 6).isActive = true
    }
    func setUpForgetPasswordButton(){
        view.addSubview(forgetPasswordButton)
        forgetPasswordButton.translatesAutoresizingMaskIntoConstraints = false
        forgetPasswordButton.topAnchor.constraint(equalTo: loginButton.bottomAnchor, constant: 8).isActive = true
        forgetPasswordButton.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
    }
    func setUpSignUpButton(){
        view.addSubview(signUpButton)
        signUpButton.translatesAutoresizingMaskIntoConstraints = false
        signUpButton.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: 16).isActive = true
        signUpButton.heightAnchor.constraint(equalToConstant: 30).isActive = true
        signUpButton.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
    }
    @objc func loginOnClick(){
        print("Login Success")
    }
}
