import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // UIWindow 설정
        window = UIWindow(frame: UIScreen.main.bounds)
        
        // ContentViewController를 초기 뷰 컨트롤러로 설정
        let initialViewController = ContentViewController()
        let navigationController = UINavigationController(rootViewController: initialViewController)
        
        // 루트 뷰 컨트롤러로 네비게이션 컨트롤러 설정
        window?.rootViewController = navigationController
        window?.makeKeyAndVisible()

        return true
    }
}
