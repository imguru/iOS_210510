
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
  
  @IBAction func onTap(_ sender: UIButton) {
  }
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
  func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return 10
  }
  
  func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    let cell = UITableViewCell()
    cell.textLabel?.text = "Hello"
    return cell
  }
}
