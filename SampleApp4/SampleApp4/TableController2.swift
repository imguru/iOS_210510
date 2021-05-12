

import UIKit

class TableController2: UIViewController {
  @IBOutlet var tableView: UITableView!

  override func viewDidLoad() {
    super.viewDidLoad()

    tableView.dataSource = self
  }
}

extension TableController2: UITableViewDataSource {
  func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return 20
  }

  // Storyboard - UITableView
  // => Prototype(견본) Cell
  // => 견본이 등록되어 있다면, 재활용 가능한 Cell이 없을 경우, tableView가 생성해서 반환해줍니다.
  // * 견본이 등록되어 있지 않을 때
  //  tableView.dequeueReusableCell(withIdentifier: "MyCell") -> UITableViewCell?
  // * 견본이 등록되어 있다면
  //  tableView.dequeueReusableCell(withIdentifier: String, for: IndexPath) -> UITableViewCell

  func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    if indexPath.row % 2 == 0 {
      let cell: MyCell2! = tableView.dequeueReusableCell(withIdentifier: "MyCell2", for: indexPath) as? MyCell2
      cell.nameLabel.text = "Swift - \(indexPath)"
      cell.coverImageView.image = #imageLiteral(resourceName: "swift")
      return cell
    } else {
      let cell = tableView.dequeueReusableCell(withIdentifier: "MyCell", for: indexPath)
      return cell
    }
  }

  #if false
  func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    let cell = tableView.dequeueReusableCell(withIdentifier: "MyCell", for: indexPath)
    return cell
  }
  #endif

  #if false
  func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    var cell: UITableViewCell! = tableView.dequeueReusableCell(withIdentifier: "MyCell")
    if cell == nil {
      print("새롭게 생성 - \(indexPath)")
      cell = UITableViewCell(style: .default, reuseIdentifier: "MyCell")
    } else {
      print("재활용 - \(indexPath)")
    }

    cell.textLabel?.text = "Hello - \(indexPath)"
    cell.detailTextLabel?.text = "Swift"
    cell.imageView?.image = #imageLiteral(resourceName: "swift")

    return cell
  }
  #endif
}
