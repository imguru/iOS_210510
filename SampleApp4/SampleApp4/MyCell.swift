
import UIKit

class MyCell: UITableViewCell {
  // UITableViewCell - imageView의 프로퍼티가 이미 존재합니다.
  // @IBOutlet var imageView: UIImageView!
  
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
