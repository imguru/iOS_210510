import UIKit

class ResultController: UIViewController, NameControllerDelegate {
  @IBOutlet var nameLabel: UILabel!

  override func viewDidLoad() {
    super.viewDidLoad()

    // Do any additional setup after loading the view.
  }

  @IBAction func unwind(segue: UIStoryboardSegue) {}

  override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
    if let controller = segue.destination as? NameController {
      controller.delegate = self

      controller.onValueChanged = { [weak self] name in
        self?.nameLabel.text = name
      }
      
    }
  }

  // Delegate Pattern
  func onValueChanged(name: String) {
    nameLabel.text = name
  }
}
