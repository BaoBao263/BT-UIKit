
import UIKit
protocol aDelegate {
    func pass(id: Int)
}
class DetailTableViewCell: UITableViewCell {
    
    
    @IBOutlet weak var nameLabel: UILabel!
    
    var id: Int?
    var adelegate: aDelegate?
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    
    @IBAction func didTapButton(_ sender: UIButton) {
        adelegate?.pass(id : self.id!)
    }
}





