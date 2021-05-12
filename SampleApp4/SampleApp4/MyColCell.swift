
import UIKit

class MyColCell: UICollectionViewCell {
  @IBOutlet var coverImageView: UIImageView!
  @IBOutlet var nameLabel: UILabel!

  func updateUI(name: String) {
    nameLabel.text = name
    coverImageView.image = UIImage(named: name)
  }
}
