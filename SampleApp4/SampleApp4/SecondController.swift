
import UIKit

class SecondController: UIViewController {
  override func viewDidLoad() {
    super.viewDidLoad()

    // Do any additional setup after loading the view.
    // title = "SecondController"
  }

  override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
    let controller = ThirdController()
    navigationController?.pushViewController(controller, animated: true)
  }
}
