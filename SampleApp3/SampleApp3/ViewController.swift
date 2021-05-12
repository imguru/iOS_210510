

import UIKit

class ViewController: UIViewController {
  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view.
  }
  
  @IBAction func unwind(segue: UIStoryboardSegue) {
    print("unwind")
  }
  
  // 1. performSegue(withIdentifier:)
  // => 다음 컨트롤러에 데이터를 전달해야 하는 경우,
  //    컨트롤러를 직접 생성하는 것이 아니기 때문에, 별도의 메소드를 통해
  //    처리해야 합니다.
  override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
    print("Segue가 발동하지 이전에 수행되는 메소드")
    // print("\(segue.identifier)")
    
    if let identifier = segue.identifier, identifier == "ShowThirdSegue" {
      if let controller = segue.destination as? ThirdController {
        controller.user = User(name: "Tom", age: 42)
      }
    }
  }
  
  @IBAction func onTapOpen2(_ sender: UIButton) {
    // "ShowSecondSegue"
    // performSegue(withIdentifier: "ShowSecondSegue", sender: self)
    
    performSegue(withIdentifier: "ShowThirdSegue",
                 sender: self)
  }
  
  @IBAction func onTapOpen3(_ sender: UIButton) {
    // XIB
    let controller = FirstController()
    present(controller, animated: true)
  }
}
