
import UIKit

class SecondController: UIViewController {
  override func viewDidLoad() {
    super.viewDidLoad()

    // Do any additional setup after loading the view.
  }
  
  @IBAction func onTapCloseButton(_ sender: UIButton) {
    dismiss(animated: true)
  }
}
