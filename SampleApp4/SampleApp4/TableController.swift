
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
    tableView.delegate = self

    // Prototype Cell을 tableView에 등록합니다!!
    tableView.register(UITableViewCell.self, forCellReuseIdentifier: "MyCell")

    // MyCell.xib
    tableView.register(UINib(nibName: "MyCell", bundle: nil), forCellReuseIdentifier: "MyCell2")
  }

  @IBAction func onTap(_ sender: UIButton) {}
}

extension TableController: UITableViewDelegate {
  func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
    print("didSelectRowAt - \(indexPath)")
    if indexPath.row % 2 == 0 {
      nameLabel.text = "Typescript"
    } else {
      nameLabel.text = "Kotlin"
    }
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
  func numberOfSections(in tableView: UITableView) -> Int {
    return 2
  }

  func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return 10
  }

  // reason: 'unable to dequeue a cell with identifier MyCell - must register a nib or a class for the identifier
  func tableView(_ tableView: UITableView,
                 cellForRowAt indexPath: IndexPath) -> UITableViewCell
  {
    if indexPath.row % 2 == 0 {
      let cell = tableView.dequeueReusableCell(withIdentifier: "MyCell", for: indexPath)
      cell.selectionStyle = .none
      cell.imageView?.image = #imageLiteral(resourceName: "typescript")
      cell.textLabel?.text = "Typescript - \(indexPath)"
      return cell
    } else {
      let cell: MyCell! = tableView.dequeueReusableCell(withIdentifier: "MyCell2", for: indexPath) as? MyCell
      cell.selectionStyle = .none
      cell.coverImageView.image = #imageLiteral(resourceName: "kotlin")
      cell.nameLabel.text = "Kotlin - \(indexPath)"
      return cell
    }
  }

  #if false
  // 주의사항 - MyCell.xib
  //       => reuseIdentifier를 지정해주어야 합니다.
  func tableView(_ tableView: UITableView,
                 cellForRowAt indexPath: IndexPath) -> UITableViewCell
  {
    var cell: MyCell! = tableView.dequeueReusableCell(withIdentifier: "MyCell") as? MyCell
    if cell == nil {
      print("새롭게 생성 - \(indexPath)")
      cell = Bundle.main.loadNibNamed("MyCell", owner: nil, options: nil)?[0] as? MyCell
    } else {
      print("재활용 - \(indexPath)")
    }

    if indexPath.row % 2 == 0 {
      cell.coverImageView.image = #imageLiteral(resourceName: "swift")
      cell.nameLabel.text = "Swift - \(indexPath)"
    } else {
      cell.coverImageView.image = #imageLiteral(resourceName: "kotlin")
      cell.nameLabel.text = "Kotlin - \(indexPath)"
    }

    return cell
  }
  #endif

  // func tableView.dequeueReusableCell(withIdentifier: String) -> UITableViewCell?
  // - 재활용 가능한 Cell이 없을 경우, nil을 반환합니다.
  #if false
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
  #endif

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
