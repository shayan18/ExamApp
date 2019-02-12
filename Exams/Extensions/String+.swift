
import Foundation

extension String {

  // uses CommonCrypto framework to generate sha512 of the current string
  var sha512: Data? {
    let stringData = data(using: String.Encoding.utf8)!
    var result = Data(count: Int(CC_SHA512_DIGEST_LENGTH))
    _ = result.withUnsafeMutableBytes { resultBytes in
      stringData.withUnsafeBytes { stringBytes in
        CC_SHA512(stringBytes, CC_LONG(stringData.count), resultBytes)
      }
    }
    return result
  }
}
