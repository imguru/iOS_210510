
import UIKit

// View
// 1. addSubView
// 2. removeFromSuperview

// Keyboard가 올라오는 이벤트 - NotificationCenter
class FirstController: UIViewController {
  @IBOutlet var childView: UIView!
  @IBOutlet var textField: UITextField!
  @IBOutlet var textFieldBottomMargin: NSLayoutConstraint!
  
  override func viewDidLoad() {
    super.viewDidLoad()

    // Do any additional setup after loading the view.
    let notificationCenter = NotificationCenter.default
    notificationCenter.addObserver(forName: UIResponder.keyboardWillShowNotification,
                                   object: nil,
                                   queue: .main) { _ in
      
      print("keyboardWillShowNotification")
      self.textField.frame.origin.y = 362
    }
    
    notificationCenter.addObserver(forName: UIResponder.keyboardWillHideNotification,
                                   object: nil,
                                   queue: .main) { _ in
      
      print("keyboardWillHideNotification")
      self.textField.frame.origin.y = 462
    }
  }
  
  override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
    self.textField.resignFirstResponder()
  }

  @IBAction func onTapOpenButton(_ sender: UIButton) {
    /*
     UIView.animate(withDuration: 2.0) {
       // self.textField.frame.origin.y = 362
       self.textFieldBottomMargin.constant += 50
      
       // AutoLayout을 조정할 경우, 아래의 함수가 반드시 호출되어야
       // 애니메이션이 수행됩니다.
       self.view.layoutIfNeeded()
     }
     */
  
    self.childView.backgroundColor = UIColor.cyan
    self.childView.frame = CGRect(x: 0, y: 0, width: 0, height: 0)

    UIView.animate(withDuration: 3.0) {
      self.view.addSubview(self.childView)

      self.childView.frame = self.view.frame
      self.childView.backgroundColor = UIColor.blue
    }
  }

  @IBAction func onTapCloseButton(_ sender: UIButton) {
    // self.textField.frame.origin.y = 462
    
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
