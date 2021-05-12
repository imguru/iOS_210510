
import UIKit

// XIB -> nib(binary): NSCoder -> object

// UIView 생성
// - 2개의 초기화 메소드(생성자)를 구현해주서야 합니다.
// 코드를 통해 생성할 경우
// - init(frame: CGRect)
// IB / Storyboard 통해 생성할 경우
// - init(coder: NSCoder)

// 설정: Command + ,
protocol CaptionImageViewDelegate {
  func onTap(_ captionImageView: CaptionImageView)
}

@IBDesignable
class CaptionImageView: UIView {
  @IBOutlet var imageView: UIImageView!
  @IBOutlet var nameLabel: UILabel! // Implicit Optional Type
  //  - nil 체크 없이 사용할 수 있습니다.
  //  - nil일 경우, 잘못된 참조로 인해 프로그램이 비정상 종료할 수 있습니다.
  @IBOutlet var contentView: UIView!
  
  var delegate: CaptionImageViewDelegate?
  
  @IBInspectable var caption: String? {
    get {
      return nameLabel?.text
    }
    set {
      nameLabel?.text = newValue
    }
  }

  @IBInspectable var image: UIImage? {
    get {
      return imageView?.image
    }
    set {
      imageView?.image = newValue
    }
  }

  override init(frame: CGRect) {
    super.init(frame: frame)
    initSubviews()
  }

  required init?(coder: NSCoder) {
    super.init(coder: coder)
    print("init(coder:)")
    initSubviews()
  }

  func initSubviews() {
    // let nib = UINib(nibName: "CaptionImageView", bundle: nil)
    // @IBDesignable 이 제대로 동작하지 않습니다.

    let nib = UINib(nibName: "CaptionImageView", bundle: Bundle(for: type(of: self)))
    nib.instantiate(withOwner: self, options: nil)

    contentView.frame = bounds
    addSubview(contentView)
  }
  
  
  @IBAction func onTap(_ sender: UITapGestureRecognizer) {
    print("onTap")
    delegate?.onTap(self)
  }

}
