

import UIKit

class MyCell2: UITableViewCell {
  @IBOutlet var coverImageView: UIImageView!
  @IBOutlet var nameLabel: UILabel!

  override func awakeFromNib() {
    super.awakeFromNib()
    // Initialization code
  }

  override func setSelected(_ selected: Bool, animated: Bool) {
    super.setSelected(selected, animated: animated)

    // Configure the view for the selected state
  }
}
