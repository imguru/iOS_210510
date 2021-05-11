
import UIKit

class CaptionImageView: UIView {
  @IBOutlet var imageView: UIImageView!
  @IBOutlet var nameLabel: UILabel!
  @IBOutlet var contentView: UIView!

  func initSubviews() {
    let nib = UINib(nibName: "CaptionImageView", bundle: nil)
    nib.instantiate(withOwner: self, options: nil)

    contentView.frame = bounds
    addSubview(contentView)
  }
}
