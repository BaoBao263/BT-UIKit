

import UIKit

class ListAlbumViewController: UIViewController {
    
    @IBOutlet weak var albumCollectionView: UICollectionView!
    
    var movies: [Movie?] = []
    var categories: Categories?
    var actors: [Actor] = []

    override func viewDidLoad() {
        super.viewDidLoad()
        registerForCell()
        fetchData()
        albumCollectionView.dataSource = self
        albumCollectionView.delegate = self
    }
    
    func registerForCell() {
        let nib = UINib(nibName: "ImageCollectionCell", bundle: nil)
        albumCollectionView.register(nib, forCellWithReuseIdentifier: "ImageCollectionCell")
        
    }
    
    func fetchData() {
        // add Actor
        actors.append(Actor(id: 0,
                            name: "Christopher Robert Evans",
                            image: "https://cafebiz.cafebizcdn.vn/thumb_w/600/2019/photo1557224364584-1557224364877-crop-15572243735951912688033.jpg",
                            nickname: "Captain America"))
        actors.append(Actor(id: 0,
                            name: "Robert John Downey Jr",
                            image: "https://es.web.img3.acsta.net/newsv7/20/05/07/12/52/3980724.jpg",
                            nickname: "Iron Man"))
        actors.append(Actor(id: 0,
                            name: "Scarlett Johansson",
                            image: "https://vov.vn/uploaded_vov/sinhvien/20120708/scarlett1.jpg",
                            nickname: "Black Window"))
        actors.append(Actor(id: 0,
                            name: "Christopher Hemsworth",
                            image: "https://img.docbao.vn/images/uploads/2021/01/20/giai-tri/thor-2.jpg",
                            nickname: "Thor"))
        actors.append(Actor(id: 0,
                            name: "Mark Alan Ruffalo",
                            image: "https://images.hindustantimes.com/rf/image_size_960x540/HT/p2/2020/05/30/Pictures/_19298b80-a255-11ea-b043-295af9ca78f2.jpg",
                            nickname: "Hulk"))
        actors.append(Actor(id: 0,
                            name: "Jeremy Renner",
                            image: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTQ_9Edt_62cqHjsMJ_V48RzMEATU049VS3CuV7V1ZYeE-ExMizh35HDwSbFBrFYUqYtpY&usqp=CAU",
                            nickname: "Hawkeye"))
        actors.append(Actor(id: 0,
                            name: "Fictional character",
                            image: "https://cdn.images.express.co.uk/img/dynamic/36/590x/Avengers-Infinity-War-end-credits-Nick-Fury-call-who-does-he-phone-959643.jpg",
                            nickname: "Nick Fury"))
        
        actors.append(Actor(id: 1,
                            name: "Lục Tiểu Linh Đồng",
                            image: "https://photo-cms-kienthuc.zadn.vn/zoom/800/Uploaded/trucchinh2/2019_07_12/yy1_VHPL.jpg",
                            nickname: "Tôn Ngộ Không"))
        actors.append(Actor(id: 1,
                            name: "Từ Thiếu Hoa",
                            image: "https://kenh14cdn.com/203336854389633024/2021/7/16/photo-1-1626421688055222643256.jpg",
                            nickname: "Đường Tăng"))
        actors.append(Actor(id: 1,
                            name: "Mã Đức Hoa",
                            image: "https://sohanews.sohacdn.com/thumb_w/660/160588918557773824/2021/3/27/photo1616819312349-1616819312463211973550.jpg",
                            nickname: "Trư Bát Giới"))
        actors.append(Actor(id: 1,
                            name: "Diêm Hoài Lễ",
                            image: "https://image.vtc.vn/resize/th/upload/2020/10/07/03-15541159.jpg",
                            nickname: "Sa Tăng"))
        actors.append(Actor(id: 1,
                            name: "Vương Bá Chiêu",
                            image: "https://danviet.mediacdn.vn/upload/2-2019/images/2019-06-28/Giai-ma-Tay-Du-Ky-40phan-341-Tai-sao-Bach-Long-Ma-khong-co-phap-danh-03-1561719236-width640height480.jpg",
                            nickname: "Bạch Long Mã"))
        // add Categories
 
        // add movies
        movies.append(Movie(id: 0,
                            nameMovie: "AVENGERS",
                            image:"https://i.pinimg.com/736x/9f/c4/48/9fc448a8cc1ba91a39682c237a6a5d63.jpg",
                            imageBackground: "https://images.danet.vn/images/src/bd8/d6a/7359def3dcc813aa5c22313735bdbcae.jpg",
                            overView: "Biệt đội siêu anh hùng là một phim của điện ảnh Hoa Kỳ được xây dựng dựa trên nguyên mẫu các thành viên trong biệt đội siêu anh hùng Avengers của hãng Marvel Comics, sản xuất bởi Marvel Studios và phân phối bởi Walt Disney Studios Motion Pictures. Đây là bộ phim thứ 6 trong Marvel Cinematic Universe.",
                            ratting: 4.2,
                            actors: actors.filter({ (actor) -> Bool in
                                return actor.id == 0
                            })))
        movies.append(Movie(id: 1,
                            nameMovie: "Tây Du Ký",
                            image:"https://upload.wikimedia.org/wikipedia/vi/b/b9/T%C3%A2y_du_k%C3%BD_%28%C3%A1p_ph%C3%ADch%29.jpg",
                            imageBackground: "https://vcdn1-vnexpress.vnecdn.net/2016/11/04/toptayduky-1478240405.jpg?w=1200&h=0&q=100&dpr=1&fit=crop&s=KPVEFeClc7Wth_nzrUKcuQ",
                            overView: "Tây du ký có nội dung dựa trên một câu chuyện có thật về nhà sư đời Đường Thái Tông tên là Huyền Trang, năm 21 tuổi đã một mình sang Ấn Độ để tìm thầy học đạo. Phim kể về chuyện Tôn Ngộ Không, Trư Bát Giới và Sa Tăng phò Đường Tăng sang Tây Trúc (Ấn Độ).",
                            ratting: 3.6,
                            actors: actors.filter { $0.id == 1 }))
    }
}

extension ListAlbumViewController: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return movies.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "ImageCollectionCell", for: indexPath) as! ImageCollectionCell
        cell.imageView.getImageFromUrl(url: movies[indexPath.row]?.image ?? "")
        return cell
    }
}
extension ListAlbumViewController: UICollectionViewDelegateFlowLayout {
    
    // Quyet dinh kich thuoc cua moi item tuong ung voi indexpath
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 150, height: 180)
    }
    
    // Quyet dinh khoang cach toan bo item so voi section header va section footer va le 2 ben
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        return UIEdgeInsets(top: 20, left: 20, bottom: 0, right: 20)
    }
    
    // Quyet dinh khoang cach tu item tren va item ben duoi so voi chieu doc
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 30
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return 5
    }
}

extension ListAlbumViewController: UICollectionViewDelegate {
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let vc = MovieDetailViewController()
            vc.movie = movies[indexPath.row]
        navigationController?.pushViewController(vc, animated: true)
    }
}
