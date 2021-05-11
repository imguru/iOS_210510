
import UIKit

class ViewController3: UIViewController {
  @IBOutlet var captionImageView: CaptionImageView!

  override func viewDidLoad() {
    super.viewDidLoad()
    
    captionImageView.delegate = self

    // Do any additional setup after loading the view.
    // captionImageView.caption = "Kotlin"
    // captionImageView.image = #imageLiteral(resourceName: "kotlin")
  }
}


extension ViewController3: CaptionImageViewDelegate {
  func onTap(_ captionImageView: CaptionImageView) {
    print("ViewController - onTap")
  }
}
