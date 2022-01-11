import UIKit
protocol bDelegate {
    func edit(newUserName: String, id1: Int)
}

class EditNameViewController: UIViewController {
    @IBOutlet weak var editNameTextField: UITextField!
    var bdelegate: bDelegate?
    var id: Int?
    var newSuperman: Superman?
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @objc func donePopNavigation() {
        guard let username = editNameTextField.text else { return }
        bdelegate?.edit(newUserName: username,id1: self.id!)
        navigationController?.popViewController(animated: true)
    }
    @IBAction func didTapEditButton(_ sender: UIButton) {
        donePopNavigation()
    }
}


