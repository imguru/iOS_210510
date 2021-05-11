
import UIKit

class ViewController3: UIViewController {
  
  @IBOutlet var captionImageView: CaptionImageView!
  
  override func viewDidLoad() {
    super.viewDidLoad()

    // Do any additional setup after loading the view.
    captionImageView.caption = "Kotlin"
    captionImageView.image = #imageLiteral(resourceName: "kotlin")
  }
}
