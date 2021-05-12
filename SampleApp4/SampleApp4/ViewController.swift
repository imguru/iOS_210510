import UIKit

// 1. UINavigationController
//   ViewController
//          |
//  UINavigationController
//          |
//          - FirstController - rootViewController
//          - SecondController
//          - ThirdController

// Command + Shift + O

class ViewController: UIViewController {
  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view.
  }

  @IBAction func open(_ sender: UIButton) {
//    let rootController = FirstController()
//    let naviController = UINavigationController(rootViewController: rootController)
//
//    present(naviController, animated: true)

    let controller = TableController()
    controller.modalPresentationStyle = .fullScreen
    present(controller, animated: true)
  }
}
