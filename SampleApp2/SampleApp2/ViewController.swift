
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

  @IBAction func textFieldEditingChagned(_ sender: UITextField) {
    if let text = sender.text {
      print("textFieldEditingChagned: \(text)")
    }
  }

  @IBAction func textFieldEditingDidEnd(_ sender: UITextField) {
    // Optional 처리 방법
    // print(sender.text)
    let text: String? = sender.text

    // 1. 강제 접근 - !
    //  - nil일 경우 프로그램이 비정상 종료합니다.
    // print(text!)

    // 2. Optional Binding
    if let text = text {
      print(text)
    }
  }

  @IBAction func stepperValueChagned(_ sender: UIStepper) {
    print("stepper: \(sender.value)")
    countLabel.text = "\(sender.value)"
  }

  @objc func buttonTapped() {
    print("buttonTapped")
  }

  @IBAction func sliderValueChanged(_ sender: UISlider) {
    print("sliderValueChanged: \(sender.value)")
  }

  @IBAction func switchValueChanged(_ sender: UISwitch) {
    print("switchValueChanged: \(sender.isOn)")
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
