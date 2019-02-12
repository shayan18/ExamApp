
import Foundation

extension DateFormatter {

  // sets the date and time style after init
  convenience init(dateStyle: DateFormatter.Style, timeStyle: DateFormatter.Style) {
    self.init()
    self.dateStyle = dateStyle
    self.timeStyle = timeStyle
  }
}
