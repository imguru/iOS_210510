import UIKit

// ViewController 전환
// 1. present
//   1) ViewController를 직접 생성합니다.
//   2) present

// 2. dismiss
//   - 자신의 컨트롤러 위에 컨트롤러가 존재한다면, 자식 컨트롤러를 제거하고, 자식 컨트롤러가 존재하지 않는다면,
//     자신이 제거됩니다.

class FirstController2: UIViewController {
  override func viewDidLoad() {
    super.viewDidLoad()

    // Do any additional setup after loading the view.
  }

  @IBAction func onTapOpenButton(_ sender: UIButton) {
    let controller = SecondController() // SecondController.xib
    // let controller = SecondController(nibName: "SecondController", bundle: nil)
    present(controller, animated: true)
  }
}
