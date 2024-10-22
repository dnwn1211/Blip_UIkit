import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?

    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        guard let windowScene = (scene as? UIWindowScene) else { return }
        
        // UIWindow 생성
        window = UIWindow(windowScene: windowScene)
        
        // ContentViewController를 초기 뷰 컨트롤러로 설정
        let initialViewController = ContentViewController()
        let navigationController = UINavigationController(rootViewController: initialViewController)
        
        // 루트 뷰 컨트롤러로 네비게이션 컨트롤러 설정
        window?.rootViewController = navigationController
        window?.makeKeyAndVisible()
    }
}
