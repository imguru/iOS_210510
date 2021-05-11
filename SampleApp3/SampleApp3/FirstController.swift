
import UIKit

// View
// 1. addSubView
// 2. removeFromSuperview

class FirstController: UIViewController {
  @IBOutlet var childView: UIView!

  override func viewDidLoad() {
    super.viewDidLoad()

    // Do any additional setup after loading the view.
  }

  @IBAction func onTapOpenButton(_ sender: UIButton) {
    self.childView.backgroundColor = UIColor.cyan
    self.childView.frame = CGRect(x: 0, y: 0, width: 0, height: 0)

    UIView.animate(withDuration: 3.0) {
      self.view.addSubview(self.childView)

      self.childView.frame = self.view.frame
      self.childView.backgroundColor = UIColor.blue
    }
  }

  @IBAction func onTapCloseButton(_ sender: UIButton) {
    /*
     UIView.animate(withDuration: 3.0) {
       self.childView.frame = CGRect(x: 0, y: 0, width: 0, height: 0)
       self.childView.backgroundColor = UIColor.cyan
     }
     */
    UIView.animate(withDuration: 3.0, animations: {
      self.childView.frame = CGRect(x: 0, y: 0, width: 0, height: 0)
      self.childView.backgroundColor = UIColor.cyan
    }, completion: { _ in
      self.childView.removeFromSuperview()
    })
  }
}
