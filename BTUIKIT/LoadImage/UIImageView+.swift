import Foundation
import UIKit

extension UIImageView {
    func getImageFromUrl(url: String) {
        let url = URL(string: url)
        DispatchQueue.global().async {
            let data = try? Data(contentsOf: url!)
            DispatchQueue.main.async {
                self.image = UIImage(data: data!)
            }
        }
    }
}
