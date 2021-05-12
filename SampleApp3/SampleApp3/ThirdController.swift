
import UIKit

class ThirdController: UIViewController {
  @IBOutlet var nameLabel: UILabel!
  @IBOutlet var ageLabel: UILabel!
  
  var user: User?
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    if let user = user {
      nameLabel.text = user.name
      ageLabel.text = "\(user.age)"
    }
    
  }
}
