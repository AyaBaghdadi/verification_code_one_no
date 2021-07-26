//
//  ViewController.swift
//  MyProject
//-------------------------------------------------------------------------------------------
//  Created by Aya Baghdadi.
//  26/7/2021
//-------------------------------------------------------------------------------------------

import UIKit

class ViewController: UIViewController  , UITextFieldDelegate { // Inherit viewController from UITextFieldDelegate

    //-------------------------------------------------------------------------------------------
    // Connected UITextFields
    //-------------------------------------------------------------------------------------------
    @IBOutlet weak var no1: UITextField!
    @IBOutlet weak var no2: UITextField!
    @IBOutlet weak var no3: UITextField!
    @IBOutlet weak var no4: UITextField!
    @IBOutlet weak var no5: UITextField!
    //-------------------------------------------------------------------------------------------

    override func viewDidLoad() {
        super.viewDidLoad()
        //---------------------------------------------------------------------------------------
        // Add a delegate of each UITextField or add it from storyboard as you prefer .
        //---------------------------------------------------------------------------------------
        self.no1.delegate = self
        self.no2.delegate = self
        self.no3.delegate = self
        self.no4.delegate = self
        self.no5.delegate = self
        //---------------------------------------------------------------------------------------
        // For each UITextField add target action for ( editingChanged )
        //---------------------------------------------------------------------------------------
        no1.addTarget(self, action: #selector(self.textFieldDidChange(textField:)), for: .editingChanged)
        no2.addTarget(self, action: #selector(self.textFieldDidChange(textField:)), for: .editingChanged)
        no3.addTarget(self, action: #selector(self.textFieldDidChange(textField:)), for: .editingChanged)
        no4.addTarget(self, action: #selector(self.textFieldDidChange(textField:)), for: .editingChanged)
        no5.addTarget(self, action: #selector(self.textFieldDidChange(textField:)), for: .editingChanged)
        //---------------------------------------------------------------------------------------
        // Add line as no1.becomeFirstResponder() to open keyboard for first field
        //---------------------------------------------------------------------------------------
        no1.becomeFirstResponder()
        //---------------------------------------------------------------------------------------
    }

    //-------------------------------------------------------------------------------------------
    // Add method textFieldDidChange with @objc
    // When changed value in textField
    //-------------------------------------------------------------------------------------------
        @objc func textFieldDidChange(textField: UITextField){
            let text = textField.text
            //-----------------------------------------------------------------------------------
            // when text lenght equal to 1
            //-----------------------------------------------------------------------------------
            if  text?.count == 1 {
                switch textField{
                case no1:
                    no2.becomeFirstResponder()
                case no2:
                    no3.becomeFirstResponder()
                case no3:
                    no4.becomeFirstResponder()
                case no4:
                    no5.becomeFirstResponder()
                case no5:
                    no5.resignFirstResponder()
                    self.dismissKeyboard()
                default:
                    break
                }
            }
            //-----------------------------------------------------------------------------------
            // when text lenght equal to 0
            //-----------------------------------------------------------------------------------
            if  text?.count == 0 {
                switch textField{
                case no1:
                    no1.becomeFirstResponder()
                case no2:
                    no1.becomeFirstResponder()
                case no3:
                    no2.becomeFirstResponder()
                case no4:
                    no3.becomeFirstResponder()
                case no5:
                    no4.becomeFirstResponder()
                default:
                    break
                }
            }
            else{

            }
        }
    //-----------------------------------------------------------------------------------
    // For Close Keybored
    //-----------------------------------------------------------------------------------
    func dismissKeyboard(){
        self.view.endEditing(true)
    }

}


