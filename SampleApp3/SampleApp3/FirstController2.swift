import UIKit


// 스위프트 / ObjC - '참조 계수 기반'의 객체 수명 관리


// '참조 계수 기반'의 객체 수명 관리
// 1) GC - Java/C#/Go ...
//  - 별도의 런타임이 수명을 관리한다.
//  - 객체의 파괴 시점을 정확히 알 수 없다.
//  - 객체 수거시 프로그램의 성능 저하가 발생할 수 있다.
//  - 일반적으로 누수가 잘 발생하지 않습니다.

// 2) ARC - ObjC / Swift
//  - 컴파일러가 코드를 분석해서, 참조 계수 관련 코드를 자동으로 삽입합니다.
//  - 객체의 파괴 시점이 명확합니다.
//  - 런타임시에 누수의 위험성이 있기 때문에, 신경써서 코드를 작성해야 합니다.
//------------------------------

// '소유권(Ownership)'
// 1. 강한 참조
//  : 참조 계수를 증가하고, 참조한다.
//  => 객체를 참조하는 동안, 항상 객체가 유효하다.
//  => 순환 참조에 의해 참조 계수가 0이 되지 않는 문제가 발생할 수 있습니다.

// 2. 약한 참조
//  : 참조 계수를 증가하지 않고 참조한다.
//  => 객체를 참조하는 동안, 객체가 파괴될 가능성이 있습니다.



// ViewController 전환
// 1. present
//   1) ViewController를 직접 생성합니다.
//   2) present

// 2. dismiss
//   - 자신의 컨트롤러 위에 컨트롤러가 존재한다면, 자식 컨트롤러를 제거하고, 자식 컨트롤러가 존재하지 않는다면,
//     자신이 제거됩니다.

class Sample {
  init() {
    print("Sample 객체 생성")
  }
  
  deinit {
    print("~Sample()");
  }
}

class FirstController2: UIViewController {
  override func viewDidLoad() {
    super.viewDidLoad()

    // Do any additional setup after loading the view.
  }

  @IBAction func onTapOpenButton(_ sender: UIButton) {
    // let controller = SecondController(nibName: "SecondController", bundle: nil)

    let controller = SecondController() // SecondController.xib
    controller.modalPresentationStyle = .fullScreen
    // controller.modalPresentationStyle = .overFullScreen
    // controller.modalPresentationStyle = .overCurrentContext
    present(controller, animated: true)

    /*
     let alertController = UIAlertController(title: "Alert!", message: "Hello!", preferredStyle: .actionSheet)

     // iPad - .actionSheet
     alertController.popoverPresentationController?.sourceView = sender

     let okAction = UIAlertAction(title: "Yes", style: .default) { _ in
       print("Yes!!!!")
     }
     let cancelAction = UIAlertAction(title: "No", style: .cancel, handler: nil)
     let sampleAction = UIAlertAction(title: "Delete", style: .destructive, handler: nil)

     alertController.addAction(okAction)
     alertController.addAction(cancelAction)
     alertController.addAction(sampleAction)

     present(alertController, animated: true)
     */

    /*
     let controller = UIActivityViewController(activityItems: ["Hello", "World"], applicationActivities: nil)
     present(controller, animated: true)
     */
  }
  
  
  /*
  @IBAction func onTouch(_ sender: UIButton) {
    var sample1: Sample? = Sample()
    // Sample [ ref = 1 ]
    var sample2: Sample? = sample1
    // Sample [ ref = 2 ]
    
    print("Do someting...")
    
    sample1 = nil
    // Sample [ ref = 1 ]
    print("after sample1 = nil")
    sample2 = nil
    // Sample [ ref = 0 ] -> ~Sample()
    print("after sample2 = nil")
    print("End....")
  }
  */
  
  @IBAction func onTouch(_ sender: UIButton) {
    let node1 = Node()
    let node2 = Node()
    
    node1.next = node2
    node2.next = node1
  
  }
}

class Node {
  var value: Int = 0
  weak var next: Node? = nil  // 참조 계수를 증가시키지 않습니다.
  
  deinit {
    print("~Node()")
  }
}
