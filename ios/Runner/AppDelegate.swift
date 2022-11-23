import UIKit
import Flutter
import GoogleMaps

@UIApplicationMain
@objc class AppDelegate: FlutterAppDelegate {
  override func application(
    _ application: UIApplication,
    didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?
  ) -> Bool {
  var mapsApiKey = ProcessInfo.processInfo.environment["GOOGLE_API_KEY"]
      if mapsApiKey?.count == 0 {
      mapsApiKey = "YOUR KEY HERE"
  }
      GMSServices.provideAPIKey(mapsApiKey ?? "YOUR KEY HERE")
    GeneratedPluginRegistrant.register(with: self)
    return super.application(application, didFinishLaunchingWithOptions: launchOptions)
  }
}
