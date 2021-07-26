
# Aya Baghdadi

## How to make verification code screen with write one value only in field & move to next field smoothly

1. Create your design as 4 or 5 UITextField horizontal with the same Width & Height . 

2. Connect UITextFields with viewController .

3. Inherit viewController from ( UITextFieldDelegate ) .

4. In viewDidLoad add a delegate of each UITextField or add it from storyboard as you prefer .

5. For each UITextField add target action for ( editingChanged ) .

6. Add line as textField.becomeFirstResponder() to open keyboard for first field .

7. Add method textFieldDidChange with @objc .

8.  Get  let text = textField.text to get what is write .

9. Check inside method if text count equal to (1) make the next becomeFirstResponder & if text count equal to (0) return to previous field .

10. In last field add the function dismissKeyboard to close your keyboard .

### Thanks
