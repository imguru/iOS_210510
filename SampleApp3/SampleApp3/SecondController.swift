
import UIKit

class SecondController: UIViewController {
  deinit {
    print("~SecondController()")
  }
  
  @IBOutlet var textField: UITextField!
  
  var observer: NSObjectProtocol?

  override func viewDidLoad() {
    super.viewDidLoad()
    print("SecondController()")

    // Do any additional setup after loading the view.
    // 1. self - weak
    /*
     let notificationCenter = NotificationCenter.default
     notificationCenter.addObserver(forName: UIResponder.keyboardWillShowNotification,
                                    object: nil,
                                    queue: .main) { [weak self] _ in
      
       self?.textField.placeholder = "키보드 올라왔음"
     }
     */
    
    // 2. self를 사용하지 않고, 직접 프로퍼티를 캡쳐해서 사용합니다.
    /*
     let notificationCenter = NotificationCenter.default
     notificationCenter.addObserver(forName: UIResponder.keyboardWillShowNotification,
                                    object: nil,
                                    queue: .main) { [textField] _ in
      
       textField?.placeholder = "키보드 올라왔음"
     }
     */
    
    let notificationCenter = NotificationCenter.default
    observer = notificationCenter.addObserver(forName: UIResponder.keyboardWillShowNotification,
                                              object: nil,
                                              queue: .main) { _ in
      
      self.textField.placeholder = "키보드 올라왔음"
    }
  }
  
  @IBAction func onTapCloseButton(_ sender: UIButton) {
    dismiss(animated: true)
  }
  
  override func viewWillDisappear(_ animated: Bool) {
    super.viewWillDisappear(animated)
    
    print("viewWillDisappear")
    let notificationCenter = NotificationCenter.default
    if let observer = observer {
      notificationCenter.removeObserver(observer)
    }
  }
}
