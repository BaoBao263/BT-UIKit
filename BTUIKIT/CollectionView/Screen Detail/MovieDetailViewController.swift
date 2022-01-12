//
//  MovieDetailViewController.swift
//  BTUIKIT
//
//  Created by Mac on 1/11/22.
//  Copyright © 2022 identifier.demo.1. All rights reserved.
//

import UIKit

class MovieDetailViewController: UIViewController {
    @IBOutlet weak var imageBackground: UIImageView!
    @IBOutlet weak var imageMovie: UIImageView!
    // star image
    @IBOutlet weak var star1Image: UIImageView!
    @IBOutlet weak var star2Image: UIImageView!
    @IBOutlet weak var star3Image: UIImageView!
    @IBOutlet weak var star4Image: UIImageView!
    @IBOutlet weak var star5Image: UIImageView!
    
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var actorCollectionView: UICollectionView!
    
    var movie: Movie?
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI(movie: movie)
        registerForCell()
        actorCollectionView.dataSource = self
        actorCollectionView.delegate = self
    }
    
    func registerForCell() {
        let nib = UINib(nibName: "MovieDetailCollectionViewCell", bundle: nil)
        actorCollectionView.register(nib, forCellWithReuseIdentifier: "MovieDetailCollectionViewCell")
    }
    func updateUI(movie: Movie?){
        imageMovie.getImageFromUrl(url: movie?.image ?? "")
        imageBackground.getImageFromUrl(url: movie?.imageBackground ?? "")
        nameLabel.text = movie?.nameMovie
        
        var images = [star1Image, star2Image, star3Image, star4Image, star5Image]
        let star = Int((movie?.ratting)!)
        let subtraction = (movie?.ratting!)! - Float(star)
        for index in 0...4{
            images[index]!.image = index < star && star > 2 ? UIImage(named: "starbl") : UIImage(named: "starw")
            if subtraction >= 0.5 {
                images[star]?.image = UIImage(named: "star")
            }
        }
    }
}
extension MovieDetailViewController: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return (movie?.actors.count)!
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = actorCollectionView.dequeueReusableCell(withReuseIdentifier: "MovieDetailCollectionViewCell", for: indexPath) as! MovieDetailCollectionViewCell
        
        cell.avatarActorImage.getImageFromUrl(url: movie?.actors[indexPath.row].image ?? "")
        return cell
    }
}
extension MovieDetailViewController: UICollectionViewDelegateFlowLayout {
    
    // Quyet dinh kich thuoc cua moi item tuong ung voi indexpath
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 120, height: 150)
    }
    
    // Quyet dinh khoang cach toan bo item so voi section header va section footer va le 2 ben
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        
        return UIEdgeInsets(top: 0, left: 20, bottom: 0, right: 20)
    }
}

extension MovieDetailViewController: UICollectionViewDelegate {
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let vc = ActorDetailViewController()
        vc.actor = movie?.actors[indexPath.row]
        navigationController?.pushViewController(vc, animated: true)
    }
}
