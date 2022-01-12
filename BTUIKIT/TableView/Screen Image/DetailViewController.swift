import UIKit

class DetailViewController: UIViewController {
    var images: [Superman?] = []

    @IBOutlet fileprivate weak var tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        registerForCell()
        addData()
        tableView.dataSource = self
        tableView.delegate = self
        }
    override func viewDidLayoutSubviews() {
        tableView.rowHeight = 170
    }
    private func registerForCell() {
        tableView.register(UINib(nibName: "DetailTableViewCell", bundle: nil),
                           forCellReuseIdentifier: "DetailTableViewCell")
    }
    func addData() {
        images.append(Superman(name: "BLACK", nameImage: "black", id: 0))
        images.append(Superman(name: "RED", nameImage: "red",id: 1))
        images.append(Superman(name: "YELLOW", nameImage: "yellow", id: 2))
        images.append(Superman(name: "PINK", nameImage: "pink", id: 3))
    }
    override func viewDidAppear(_ animated: Bool) {
        tableView.reloadData()
    }
}
extension DetailViewController: UITableViewDataSource,UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return images.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "DetailTableViewCell", for: indexPath) as? DetailTableViewCell else {
            return UITableViewCell()
        }
        cell.adelegate = self
        cell.imageView?.image = UIImage(named: images[indexPath.row]!.nameImage!)
        cell.nameLabel.text = images[indexPath.row]?.name
        cell.id = images[indexPath.row]?.id
        
        return cell
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let showImageVC = ShowImageViewController()
        showImageVC.image = UIImage(named: images[indexPath.row]!.nameImage!)
        
        navigationController?.pushViewController(showImageVC, animated: true)
    }
}
extension DetailViewController: aDelegate {
   
    func pass(id: Int) {
        let vc = EditNameViewController()
        vc.id = id
        vc.bdelegate = self
        navigationController?.pushViewController(vc, animated: true)
    }
}
extension DetailViewController: bDelegate {
  func edit(newUserName: String, id1: Int) {
        let a = images.filter { $0?.id == id1 }
        a[0]?.name = newUserName
        print(id1)
        tableView.reloadData()
    }
}

