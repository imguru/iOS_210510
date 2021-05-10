import UIKit

// App의 Lifecycle을 관리하는 클래스
// AppDelegate
// 1.
//  * iOS 13 이전
//  - AppDelegate: UIWindow를 생성하는 책임
//     Framework 내부에서 자동으로 수행됩니다.
//   => UIWindow를 생성해서, 등록한다.

//  * iOS 13 이후
//  - SceneDelegate: UIWindow를 생성하는 책임

// 2. 에뮬레이터 / 시뮬레이터
//  에뮬레이터 : CPU의 명령부터 소프트웨어적으로 구현하였다. - Android
//  시뮬레이터 : '시뮬레이션'으로 도는 소프트웨어 - iOS

// Command + R => 빌드 + 시뮬레이터 구동

// 3. iOS 시작도 main 함수입니다.
// => swift - main 함수가 아닌 main.swift가 그 역활을 대신합니다.

// 1. UIApplicationMain
//    UIApplication  ----> AppDelegate
//                        - didFinishLaunchingWithOptions
//                               UIWindow 생성
//                                  - rootViewController
//                                    - ViewController: UIViewController
//                                      - View: UIView

// 2. UIWindow에 직접 View를 추가할 경우, View의 이벤트를 처리할 수 없습니다.
//    View의 이벤트를 수신하고, View의 내용을 변경하기 위해서는 ViewController가 필요합니다.

// 3. ViewController: UIViewController
//     - View: UIView
//  1) XIB 기반
//  2) Storyboard 기반

// @main
class AppDelegate2: UIResponder, UIApplicationDelegate {
  // iOS 13 이전
  var window: UIWindow?

  // Info.plist - Main storyboard file base name
  //  => 프레임워크 내부에서 window를 생성해서 등록합니다.
  //     rootViewController
  func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
    return true
  }

  #if false
  func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
    print("didFinishLaunchingWithOptions")

    // var: mutable
    //  Rect rect = new Rect(...);
    // let: immutable
    //  final Rect rect = new Rect(...);
    // let rect = CGRect(x: 100, y: 50, width: 100, height: 200)
    // window = UIWindow(frame: rect)
    window = UIWindow(frame: UIScreen.main.bounds)
    window?.backgroundColor = UIColor.white

//    let button = UIButton(frame: CGRect(x: 100, y: 100, width: 100, height: 200))
//    button.backgroundColor = UIColor.blue
//    window?.addSubview(button)

//    let slider = UISlider(frame: CGRect(x: 100, y: 500, width: 200, height: 50))
//    window?.addSubview(slider)

    // window?.rootViewController = UIViewController() // !!!

    // ViewController / XIB의 이름이 다를 경우
    // window?.rootViewController = FirstViewController(nibName: "MyView", bundle: nil)
    // window?.rootViewController = FirstViewController(nibName: "FirstViewController", bundle: nil)

    // ViewController / XIB의 이름이 동일할 경우
    // window?.rootViewController = FirstViewController()

    window?.rootViewController = SecondViewController()
    window?.makeKeyAndVisible()

    return true
  }
  #endif

  // MARK: UISceneSession Lifecycle

  #if false
  func application(_ application: UIApplication, configurationForConnecting connectingSceneSession: UISceneSession, options: UIScene.ConnectionOptions) -> UISceneConfiguration {
    // Called when a new scene session is being created.
    // Use this method to select a configuration to create the new scene with.
    return UISceneConfiguration(name: "Default Configuration", sessionRole: connectingSceneSession.role)
  }

  func application(_ application: UIApplication, didDiscardSceneSessions sceneSessions: Set<UISceneSession>) {
    // Called when the user discards a scene session.
    // If any sessions were discarded while the application was not running, this will be called shortly after application:didFinishLaunchingWithOptions.
    // Use this method to release any resources that were specific to the discarded scenes, as they will not return.
  }
  #endif
}
