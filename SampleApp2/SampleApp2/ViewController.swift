
import UIKit

// iOS - Event 처리
// 1. Delegate Pattern
//  : 인터페이스 기반 이벤트 처리 방식
// 2. Target-Action Pattern
//  Target: 이벤트 수신 객체
//  Action: 함수 참조

class ViewController: UIViewController {
  @IBOutlet var countLabel: UILabel!
  @IBOutlet var touchButton: UIButton!

  var count = 0

  @objc func buttonTapped() {
    print("buttonTapped")
  }

  @IBAction func buttonTapped2(_ sender: UIButton) {
    print("buttonTapped2")
    count += 1
    countLabel.text = "\(count)"
  }

  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view.

    #if false
    touchButton.addTarget(self,
                          action: #selector(buttonTapped),
                          for: .touchUpInside)
    #endif
  }
}
