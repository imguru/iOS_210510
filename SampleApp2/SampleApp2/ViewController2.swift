
import UIKit

// UIPickerView
// => Delegate Pattern
// => Interface 기반 이벤트 처리 방식
//   1) dataSource: UIPickerViewDataSource
//   2) delegate: UIPickerViewDelegate
class ViewController2: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate, UITextFieldDelegate {
  @IBOutlet var pickerView: UIPickerView!
  @IBOutlet var nameLabel: UILabel!

  @IBOutlet var textField: UITextField!

  let data = [
    "Hello",
    "World",
    "Show",
    "Me",
    "The",
    "Money"
  ]

  override func viewDidLoad() {
    super.viewDidLoad()

    pickerView.dataSource = self
    pickerView.delegate = self

    textField.delegate = self
  }

  func textFieldShouldEndEditing(_ textField: UITextField) -> Bool {
    print("textFieldShouldEndEditing")
    return true
  }

  func textField(_ textField: UITextField,
                 shouldChangeCharactersIn range: NSRange,
                 replacementString string: String) -> Bool
  {
    // print("shouldChangeCharactersIn")
    textField.layer.borderWidth = 1.0
    if let count = textField.text?.count {
      if count < 3 {
        textField.layer.borderColor = UIColor.red.cgColor
      } else if count < 7 {
        textField.layer.borderColor = UIColor.blue.cgColor
      }
    }

    let newLength = textField.text!.count + string.count - range.length

    print("range: \(range) / string: \(string)")

    return newLength < 7
  }

  // returns the number of 'columns' to display.
  func numberOfComponents(in pickerView: UIPickerView) -> Int {
    return 1
  }

  // returns the # of rows in each component..
  func pickerView(_ pickerView: UIPickerView,
                  numberOfRowsInComponent component: Int) -> Int
  {
    return data.count
  }

  func pickerView(_ pickerView: UIPickerView,
                  titleForRow row: Int,
                  forComponent component: Int) -> String?
  {
    return data[row]
  }

  func pickerView(_ pickerView: UIPickerView,
                  rowHeightForComponent component: Int) -> CGFloat
  {
    return 48.0
  }

  func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
    let text = data[row]
    nameLabel.text = text
  }
}
