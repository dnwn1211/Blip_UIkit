import UIKit

class ContentViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // 배경색 설정
        view.backgroundColor = UIColor(red: 1.0, green: 0.694, blue: 0.207, alpha: 1.0)
        
        // 상단 텍스트 추가
        let label = UILabel()
        label.text = "Blip Inside"
        label.font = UIFont.systemFont(ofSize: 40, weight: .bold)
        label.textColor = .black
        label.textAlignment = .center
        label.frame = CGRect(x: 0, y: 100, width: view.frame.width, height: 50)
        view.addSubview(label)

        // 이미지 추가
        let imageView = UIImageView(image: UIImage(named: "blip_hand_2"))
        imageView.contentMode = .scaleAspectFit
        imageView.frame = CGRect(x: 0, y: 200, width: 400, height: 700)
        imageView.center.x = view.center.x
        view.addSubview(imageView)

        // 2초 후 NextViewController로 전환
        DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
            let nextVC = MainContentViewController()
            self.navigationController?.pushViewController(nextVC, animated: true)
        }
    }
}
