

import UIKit

class FirstController: UIViewController {
  override func viewDidLoad() {
    super.viewDidLoad()

    // Do any additional setup after loading the view.
    title = "First Controller"
  }

  // Second Controller
  override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
    let controller = SecondController()
    // present(controller, animated: true)

    // ViewController
    //      | present
    // NavigationController               pushViewController
    //      - rootViewController: FirstController -> SecondController
    //      | present
    //     ...
    // 현재의 ViewController가 NavigationController 안에 속해있다면,
    // navigationController 프로퍼티가 nil이 아닙니다.

    navigationController?.pushViewController(controller, animated: true)
  }
}
