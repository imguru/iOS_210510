
import UIKit

class ThirdController: UIViewController {
  override func viewDidLoad() {
    super.viewDidLoad()

    // Do any additional setup after loading the view.
  }

  // ViewController
  //     | present / dismiss
  // NavigationController
  //                                      pushViewController
  //     - rootViewController: FirstController -> SecondController -> ThirdController
  //                                      popViewController
  override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
    // dismiss(animated: true)
    // navigationController?.popViewController(animated: true)
    navigationController?.popToRootViewController(animated: true)
  }
}
