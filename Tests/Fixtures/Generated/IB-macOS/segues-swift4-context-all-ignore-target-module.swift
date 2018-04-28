// swiftlint:disable all
// Generated using SwiftGen, by O.Halligon — https://github.com/SwiftGen/SwiftGen

// swiftlint:disable sorted_imports
import Foundation
import AppKit
import FadeSegue

// swiftlint:disable superfluous_disable_command
// swiftlint:disable file_length

// MARK: - Storyboard Segues

// swiftlint:disable explicit_type_interface identifier_name line_length type_body_length type_name
internal extension CustomTabViewController {
  internal enum StoryboardSegue: String {
    case embed = "Embed"
    case modal = "Modal"
    case popover = "Popover"
    case sheet = "Sheet"
    case show = "Show"
    case `public`
  }

  internal func perform(segue: StoryboardSegue, sender: Any? = nil) {
    let identifier = NSStoryboardSegue.Identifier(segue.rawValue)
    performSegue(withIdentifier: identifier, sender: sender)
  }

  internal enum TypedStoryboardSegue {
    case embed(destination: AppKit.NSViewController)
    case modal(destination: AppKit.NSViewController)
    case popover(destination: AppKit.NSViewController)
    case sheet(destination: AppKit.NSViewController)
    case show(destination: AppKit.NSViewController)
    case `public`(destination: AppKit.NSViewController, segue: FadeSegue.SlowFadeSegue)
    case unnamedSegue

    // swiftlint:disable cyclomatic_complexity
    init(segue: StoryboardSegue) {
      switch segue.identifier?.rawValue ?? "" {
      case "Embed":
        guard let vc = segue.destinationController as? AppKit.NSViewController else {
          fatalError("Destination of segue 'Embed' is not of the expected type AppKit.NSViewController.")
        }
        self = .embed(destination: vc)
      case "Modal":
        guard let vc = segue.destinationController as? AppKit.NSViewController else {
          fatalError("Destination of segue 'Modal' is not of the expected type AppKit.NSViewController.")
        }
        self = .modal(destination: vc)
      case "Popover":
        guard let vc = segue.destinationController as? AppKit.NSViewController else {
          fatalError("Destination of segue 'Popover' is not of the expected type AppKit.NSViewController.")
        }
        self = .popover(destination: vc)
      case "Sheet":
        guard let vc = segue.destinationController as? AppKit.NSViewController else {
          fatalError("Destination of segue 'Sheet' is not of the expected type AppKit.NSViewController.")
        }
        self = .sheet(destination: vc)
      case "Show":
        guard let vc = segue.destinationController as? AppKit.NSViewController else {
          fatalError("Destination of segue 'Show' is not of the expected type AppKit.NSViewController.")
        }
        self = .show(destination: vc)
      case "public":
        guard let segue = segue as? FadeSegue.SlowFadeSegue else {
          fatalError("Segue 'public' is not of the expected type FadeSegue.SlowFadeSegue.")
        }
        guard let vc = segue.destinationController as? AppKit.NSViewController else {
          fatalError("Destination of segue 'public' is not of the expected type AppKit.NSViewController.")
        }
        self = .`public`(destination: vc, segue: segue)
      case "":
        self = .unnamedSegue
      default:
        fatalError("Unrecognized segue '\(segue.identifier?.rawValue ?? "")' in CustomTabViewController")
      }
    }
    // swiftlint:enable cyclomatic_complexity
  }
}

internal enum StoryboardSegue {
  internal enum Message: String, SegueType {
    case embed = "Embed"
    case modal = "Modal"
    case popover = "Popover"
    case sheet = "Sheet"
    case show = "Show"
    case `public`
  }
}
// swiftlint:enable explicit_type_interface identifier_name line_length type_body_length type_name

// MARK: - Implementation Details

internal protocol SegueType: RawRepresentable { }

internal extension NSSeguePerforming {
  func perform<S: SegueType>(segue: S, sender: Any? = nil) where S.RawValue == String {
    let identifier = NSStoryboardSegue.Identifier(segue.rawValue)
    performSegue?(withIdentifier: identifier, sender: sender)
  }
}

private final class BundleToken {}
