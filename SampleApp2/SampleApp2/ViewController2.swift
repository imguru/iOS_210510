
import UIKit

// UIPickerView
// => Delegate Pattern
// => Interface 기반 이벤트 처리 방식
//   1) dataSource: UIPickerViewDataSource
//   2) delegate: UIPickerViewDelegate

class ViewController2: UIViewController, UIPickerViewDataSource {
  @IBOutlet var pickerView: UIPickerView!
  @IBOutlet var nameLabel: UILabel!

  override func viewDidLoad() {
    super.viewDidLoad()
    
    // pickerView.dataSource = self
    
  }
  
  // returns the number of 'columns' to display.
  func numberOfComponents(in pickerView: UIPickerView) -> Int {
    return 2
  }

  // returns the # of rows in each component..
  func pickerView(_ pickerView: UIPickerView,
                  numberOfRowsInComponent component: Int) -> Int {
    return 10
  }
}
