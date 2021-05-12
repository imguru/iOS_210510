
import UIKit

class CollectionViewController: UIViewController {
  @IBOutlet var collectionView: UICollectionView!
  let data = [
    "kotlin",
    "swift",
    "typescript",
    "kotlin",
    "swift",
    "typescript",
    "kotlin",
    "swift",
    "typescript",
    "kotlin",
    "swift",
    "typescript",
  ]

  override func viewDidLoad() {
    super.viewDidLoad()

    // Do any additional setup after loading the view.
    collectionView.dataSource = self
    collectionView.delegate = self
  }
}

// 구현되면, 호출됩니다.
extension CollectionViewController: UICollectionViewDelegateFlowLayout {
  func collectionView(_ collectionView: UICollectionView,
                      layout collectionViewLayout: UICollectionViewLayout,
                      sizeForItemAt _: IndexPath) -> CGSize
  {
    let width = (collectionView.frame.size.width - 20) / 2
    return CGSize(width: width, height: width)
  }
}

extension CollectionViewController: UICollectionViewDataSource {
  func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
    return data.count
  }

  func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
    let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "MyCell",
                                                  for: indexPath) as! MyColCell

    cell.updateUI(name: data[indexPath.row])
    return cell
  }

  /*
   func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
     let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "MyCell", for: indexPath)
     cell.backgroundColor = UIColor.yellow
     return cell
   }
   */
}
