import UIKit

// 1. protocol - delegate
protocol NameControllerDelegate {
  func onValueChanged(name: String)
}

class NameController: UIViewController {
  @IBOutlet var nameField: UITextField!
  
  var delegate: NameControllerDelegate?
  
  override func viewDidLoad() {
    super.viewDidLoad()

    // Do any additional setup after loading the view.
  }
  
  override func viewWillDisappear(_ animated: Bool) {
    super.viewWillDisappear(animated)
    
    if let text = nameField.text {
      delegate?.onValueChanged(name: text)
    }
  }
  
  
  
}
