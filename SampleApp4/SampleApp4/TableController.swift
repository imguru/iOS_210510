
import UIKit

// UITableView
// - UITableViewDataSource
// - UITableViewDelegate
class TableController: UIViewController {
  @IBOutlet var tableView: UITableView!
  @IBOutlet var nameLabel: UILabel!

  override func viewDidLoad() {
    super.viewDidLoad()

    // Do any additional setup after loading the view.
    tableView.dataSource = self
  }

  @IBAction func onTap(_ sender: UIButton) {}
}

// UITableView
// - UITableViewDataSource
// - UITableViewDelegate

// UIPickerView
//  - column: component
//  - row: row

// UITableView
//  - IndexPath
//   : section / row
extension TableController: UITableViewDataSource {
  func numberOfSections(in tableView: UITableView) -> Int {
    return 2
  }

  func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return 10
  }

  // func tableView.dequeueReusableCell(withIdentifier: String) -> UITableViewCell?
  // - 재활용 가능한 Cell이 없을 경우, nil을 반환합니다.
  
  func tableView(_ tableView: UITableView,
                 cellForRowAt indexPath: IndexPath) -> UITableViewCell
  {
    var cell: UITableViewCell! = tableView.dequeueReusableCell(withIdentifier: "MyCell")
    if cell == nil {
      cell = UITableViewCell(style: .subtitle, reuseIdentifier: "MyCell")
      print("새롭게 생성 - \(indexPath)")
    } else {
      print("재활용 - \(indexPath)")
    }
    
    cell.textLabel?.text = "Hello - \(indexPath)"
    cell.detailTextLabel?.text = "Detail text"
    return cell
  }

  // 아래의 메소드에서 화면에 필요한 View만 생성하고,
  // 재활용 가능하도록 작성되어야 합니다.
  #if false
  func tableView(_ tableView: UITableView,
                 cellForRowAt indexPath: IndexPath) -> UITableViewCell
  {
    let cell = UITableViewCell()
    cell.textLabel?.text = "Hello - \(indexPath)"
    return cell
  }
  #endif
}
