import UIKit

class DetailViewController: UIViewController {

    var imageIndex: Int // 선택된 이미지 인덱스
    
    // 초기화 메서드
    init(imageIndex: Int) {
        self.imageIndex = imageIndex
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // 배경색 설정 (빈 화면을 시각적으로 확인하기 위함)
        view.backgroundColor = .white

        // 간단한 레이블 추가 (빈 화면이라는 것을 표시)
        let label = UILabel()
        label.text = "Detail View - Image \(imageIndex)"
        label.font = UIFont.systemFont(ofSize: 24, weight: .bold)
        label.textAlignment = .center
        label.frame = CGRect(x: 0, y: 100, width: view.frame.width, height: 50)
        view.addSubview(label)
    }
}
