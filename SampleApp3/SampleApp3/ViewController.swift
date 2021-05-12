

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
  
  @IBAction func onTapOpen2(_ sender: UIButton) {
    // "ShowSecondSegue"
    // performSegue(withIdentifier: "ShowSecondSegue", sender: self)
    
    performSegue(withIdentifier: "ShowThirdSegue", sender: self)
  }

}
