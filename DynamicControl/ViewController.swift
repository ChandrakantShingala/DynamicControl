//
//  ViewController.swift
//  DynamicControl
//
//  Created by Chandrakant Shingala on 12/01/23.
//

import UIKit

class ViewController: UIViewController {
    
    var nameLabel: UILabel!
    var addressLabel: UILabel!
    var nameTextField: UITextField!
    var submitButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setup()
    }
    
    private func setup(){
        configureNameLabel(with: "Hellooooo")
    }
    
    private func configureNameLabel(with text: String){
        nameLabel = getNameLabel(text: text)
        nameLabel.addSubview(nameLabel)
    }
    
    private func configureAddressLabel(with text: String){
        addressLabel = getAddressLabel(text: text)
        addressLabel.addSubview(addressLabel)
    }
    
    private func configureNameTextField(){
        nameTextField = getNameTextField()
        nameTextField.addSubview(nameTextField)
    }
    
    private func configureSubmitButton(with title: String){
        
    }
    
    private func getNameLabel(text : String) -> UILabel{
        let nameLabelFrame: CGRect = CGRect(x: 16, y: 52, width: view.frame.width-32, height: 50)
        let nameLabel :UILabel = UILabel(frame: nameLabelFrame)
        nameLabel.backgroundColor = .clear
        nameLabel.textColor = .orange
        nameLabel.textAlignment = .center
        nameLabel.numberOfLines = 0
        nameLabel.font = UIFont.systemFont(ofSize: 18, weight: .semibold)
        nameLabel.text = text
        return nameLabel
    }
    
    private func getAddressLabel(text : String) -> UILabel{
        let addressLabel: UILabel = UILabel(frame: CGRect(x: 16, y: 110, width: view.frame.width-32, height: 50))
        addressLabel.backgroundColor = .clear
        addressLabel.textColor = .orange
        addressLabel.textAlignment = .center
        addressLabel.numberOfLines = 0
        addressLabel.font = UIFont.systemFont(ofSize: 18, weight: .semibold)
        addressLabel.text = text
        return addressLabel
    }
    
    private func getNameTextField() -> UITextField{
        let nameTextField: UITextField = UITextField(frame: CGRect(x: 16, y: 168, width: view.frame.width-32, height: 40))
        nameTextField.placeholder = "Enter your name"
        nameTextField.layer.cornerRadius = 10
        nameTextField.layer.masksToBounds = true
        nameTextField.layer.borderColor = UIColor.black.cgColor
        nameTextField.layer.backgroundColor = UIColor.white.cgColor
        nameTextField.keyboardType = .default
        nameTextField.delegate = self
        nameTextField.tag = 1
        nameTextField.font = UIFont.systemFont(ofSize: 18, weight: .semibold)
        
        return nameTextField
    }
  
    
}

extension ViewController: UITextFieldDelegate{
    func textFieldShouldBeginEditing(_ textField: UITextField) -> Bool {
        return true
    }
    
    func textFieldDidEndEditing(_ textField: UITextField) {
        if nameLabel.tag == 1{
            nameLabel.text = nameTextField.text
        }
    }
}
