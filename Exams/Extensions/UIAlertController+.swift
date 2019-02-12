
import Foundation
import UIKit

extension UIAlertController {

  // creates an alert controller with a password text field
  static func passwordDialogue(title: String, message: String, handler: @escaping (String?) -> Void) -> UIAlertController {
    let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
    alert.addTextField { field in
      field.isSecureTextEntry = true
    }
    alert.addAction(UIAlertAction(title: "Enter", style: .default, handler: {_ in
      handler(alert.textFields?.first?.text)
    }))
    return alert
  }
}
