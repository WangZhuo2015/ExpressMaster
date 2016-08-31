// This is a generated file, do not edit!
// Generated by R.swift, see https://github.com/mac-cain13/R.swift

import Foundation
import Rswift
import UIKit

/// This `R` struct is code generated, and contains references to static resources.
struct R {
  /// This `R.color` struct is generated, and contains static references to 0 color palettes.
  struct color {
    private init() {}
  }
  
  /// This `R.file` struct is generated, and contains static references to 0 files.
  struct file {
    private init() {}
  }
  
  /// This `R.font` struct is generated, and contains static references to 0 fonts.
  struct font {
    private init() {}
  }
  
  /// This `R.image` struct is generated, and contains static references to 4 images.
  struct image {
    /// Image `Today_highlighted`.
    static let today_highlighted = ImageResource(bundle: _R.hostingBundle, name: "Today_highlighted")
    /// Image `Today_normal`.
    static let today_normal = ImageResource(bundle: _R.hostingBundle, name: "Today_normal")
    /// Image `User_highlighted`.
    static let user_highlighted = ImageResource(bundle: _R.hostingBundle, name: "User_highlighted")
    /// Image `User_normal`.
    static let user_normal = ImageResource(bundle: _R.hostingBundle, name: "User_normal")
    
    /// `UIImage(named: "Today_highlighted", bundle: ..., traitCollection: ...)`
    static func today_highlighted(compatibleWithTraitCollection traitCollection: UITraitCollection? = nil) -> UIImage? {
      return UIImage(resource: R.image.today_highlighted, compatibleWithTraitCollection: traitCollection)
    }
    
    /// `UIImage(named: "Today_normal", bundle: ..., traitCollection: ...)`
    static func today_normal(compatibleWithTraitCollection traitCollection: UITraitCollection? = nil) -> UIImage? {
      return UIImage(resource: R.image.today_normal, compatibleWithTraitCollection: traitCollection)
    }
    
    /// `UIImage(named: "User_highlighted", bundle: ..., traitCollection: ...)`
    static func user_highlighted(compatibleWithTraitCollection traitCollection: UITraitCollection? = nil) -> UIImage? {
      return UIImage(resource: R.image.user_highlighted, compatibleWithTraitCollection: traitCollection)
    }
    
    /// `UIImage(named: "User_normal", bundle: ..., traitCollection: ...)`
    static func user_normal(compatibleWithTraitCollection traitCollection: UITraitCollection? = nil) -> UIImage? {
      return UIImage(resource: R.image.user_normal, compatibleWithTraitCollection: traitCollection)
    }
    
    private init() {}
  }
  
  /// This `R.nib` struct is generated, and contains static references to 0 nibs.
  struct nib {
    private init() {}
  }
  
  /// This `R.reuseIdentifier` struct is generated, and contains static references to 0 reuse identifiers.
  struct reuseIdentifier {
    private init() {}
  }
  
  /// This `R.segue` struct is generated, and contains static references to 0 view controllers.
  struct segue {
    private init() {}
  }
  
  /// This `R.storyboard` struct is generated, and contains static references to 4 storyboards.
  struct storyboard {
    /// Storyboard `Index`.
    static let index = _R.storyboard.index()
    /// Storyboard `LaunchScreen`.
    static let launchScreen = _R.storyboard.launchScreen()
    /// Storyboard `Main`.
    static let main = _R.storyboard.main()
    /// Storyboard `Mine`.
    static let mine = _R.storyboard.mine()
    
    /// `UIStoryboard(name: "Index", bundle: ...)`
    static func index(_: Void) -> UIStoryboard {
      return UIStoryboard(resource: R.storyboard.index)
    }
    
    /// `UIStoryboard(name: "LaunchScreen", bundle: ...)`
    static func launchScreen(_: Void) -> UIStoryboard {
      return UIStoryboard(resource: R.storyboard.launchScreen)
    }
    
    /// `UIStoryboard(name: "Main", bundle: ...)`
    static func main(_: Void) -> UIStoryboard {
      return UIStoryboard(resource: R.storyboard.main)
    }
    
    /// `UIStoryboard(name: "Mine", bundle: ...)`
    static func mine(_: Void) -> UIStoryboard {
      return UIStoryboard(resource: R.storyboard.mine)
    }
    
    private init() {}
  }
  
  /// This `R.string` struct is generated, and contains static references to 0 localization tables.
  struct string {
    private init() {}
  }
  
  private init() {}
}

struct _R {
  static let applicationLocale = hostingBundle.preferredLocalizations.first.flatMap(NSLocale.init) ?? NSLocale.currentLocale()
  static let hostingBundle = NSBundle(identifier: "com.BubbleTeam.ExpressMaster") ?? NSBundle.mainBundle()
  
  struct nib {
    private init() {}
  }
  
  struct storyboard {
    struct index: StoryboardResourceWithInitialControllerType {
      typealias InitialController = UINavigationController
      
      let bundle = _R.hostingBundle
      let name = "Index"
      
      private init() {}
    }
    
    struct launchScreen: StoryboardResourceWithInitialControllerType {
      typealias InitialController = UIViewController
      
      let bundle = _R.hostingBundle
      let name = "LaunchScreen"
      
      private init() {}
    }
    
    struct main: StoryboardResourceWithInitialControllerType {
      typealias InitialController = MainTabbarController
      
      let bundle = _R.hostingBundle
      let name = "Main"
      
      private init() {}
    }
    
    struct mine: StoryboardResourceWithInitialControllerType {
      typealias InitialController = UINavigationController
      
      let bundle = _R.hostingBundle
      let name = "Mine"
      
      private init() {}
    }
    
    private init() {}
  }
  
  private init() {}
}