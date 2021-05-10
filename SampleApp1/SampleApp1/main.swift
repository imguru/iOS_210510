

import Foundation
import UIKit      // Cocoa Touch Framework

print("Hello, Swift")


func add(a: Int, b: Int, c: Int, d: Int) -> Int {
  return a + b + c + d
}

func add(left a: Int, right b: Int) -> Int {
  return a + b
}

func sub(_ a: Int, _ b: Int) -> Int {
  return a - b;
}

// add(a: 10, b: 20, c: 30, d: 40)
// add(left: 10, right: 20)
// sub(10, 20)

// - @main의 역활
// UIApplicationMain
//  1) Info.plist 로부터 앱의 기본 설정을 읽어들여서 초기화합니다.
//  2) UIApplication 객체를 생성합니다.
//    => Delegate 객체: UIApplication에서 발생하는 이벤트를 수신하는 객체
//  3) Delegate 객체를 생성해서, UIApplication의 delegate로 등록해줍니다.


// static void main(String[] args) {}

UIApplicationMain(CommandLine.argc, CommandLine.unsafeArgv, nil, "SampleApp1.AppDelegate")
