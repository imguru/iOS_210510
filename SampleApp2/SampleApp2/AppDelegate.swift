
import UIKit

// UIApplication객체의 이벤트를 수신합니다.
//  => UIApplicationDelegate(protocol)

// Simulator
// - Home: Command + Shift + H
@main
class AppDelegate: UIResponder, UIApplicationDelegate {
  var window: UIWindow?

  func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
    print("App 시작")
    return true
  }

  func applicationDidBecomeActive(_ application: UIApplication) {
    print("applicationDidBecomeActive")
  }

  func applicationWillResignActive(_ application: UIApplication) {
    print("applicationWillResignActive")
  }

  func applicationWillTerminate(_ application: UIApplication) {
    print("applicationWillTerminate")
  }
}
