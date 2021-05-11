
import UIKit

// XIB -> nib(binary): NSCoder -> object

// UIView 생성
// - 2개의 초기화 메소드(생성자)를 구현해주서야 합니다.
// 코드를 통해 생성할 경우
// - init(frame: CGRect)
// IB / Storyboard 통해 생성할 경우
// - init(coder: NSCoder)


class CaptionImageView: UIView {
  @IBOutlet var imageView: UIImageView!
  @IBOutlet var nameLabel: UILabel!
  @IBOutlet var contentView: UIView!

  override init(frame: CGRect) {
    super.init(frame: frame)
    initSubviews()
  }
  
  required init?(coder: NSCoder) {
    super.init(coder: coder)
    initSubviews()
  }
  
  func initSubviews() {
    let nib = UINib(nibName: "CaptionImageView", bundle: nil)
    nib.instantiate(withOwner: self, options: nil)

    contentView.frame = bounds
    addSubview(contentView)
  }
}
