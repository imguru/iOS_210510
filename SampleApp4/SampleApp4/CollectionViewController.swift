
import UIKit

class CollectionViewController: UIViewController {
  @IBOutlet var collectionView: UICollectionView!
  let data = [
    "kotlin",
    "swift",
    "typesciprt",
    "kotlin",
    "swift",
    "typesciprt",
    "kotlin",
    "swift",
    "typesciprt",
    "kotlin",
    "swift",
    "typesciprt",
  ]
  
  
  override func viewDidLoad() {
    super.viewDidLoad()

    // Do any additional setup after loading the view.
    collectionView.dataSource = self
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
