
import UIKit

class FirstViewController: UIViewController {
  override func viewDidLoad() {
    super.viewDidLoad()

    // Do any additional setup after loading the view.
  }

  // 2. Interface Builder를 이용하는 방법
  #if false
  override func loadView() {
    print("loadView")
    
    // iOS / macOS => Bundle(프로그램 바이너리 + 리소스)
    // MyView.xib -> compile -> MyView.nib
    #if false
    let bundle = Bundle.main
    let views: [Any]? = bundle.loadNibNamed("MyView", owner: nil, options: nil)
    let view: UIView? = views?[0] as? UIView
    
    self.view = view
    #endif
    
    self.view = Bundle.main.loadNibNamed("MyView", owner: nil, options: nil)?[0] as? UIView
  }
  #endif
  
  // 1. 직접 코드를 통해 UI 작업하는 방법
  #if false
  override func loadView() {
    print("loadView")
    
    self.view = UIView(frame: UIScreen.main.bounds)
    view.backgroundColor = UIColor.white
    
    let slider = UISlider(frame: CGRect(x: 100, y: 100, width: 200, height: 50))
    view.addSubview(slider)
    
    let button = UIButton(type: .roundedRect)
    button.frame = CGRect(x: 0, y: 200, width: 200, height: 50)
    button.setTitle("Touch me", for: .normal)
    view.addSubview(button)
  }
  #endif
}
