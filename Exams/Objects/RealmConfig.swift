
import Foundation
import RealmSwift

enum RealmConfig {

  // copy the pre-bundled file to the documents folder
  private static var copyInitialFile: Void = {
    Exams.copyInitialData(
        Bundle.main.url(forResource: "default_v1.0", withExtension: "realm")!
        , to: RealmConfig.mainConfig.fileURL!)
  }()

    // MARK: - Private configurations
    private static let mainConfig = Realm.Configuration(
        fileURL: URL.inDocumentsFolder(fileName: "main.realm"),schemaVersion:1

    )
    //MARK: - enum cases
    case main

    var configuration: Realm.Configuration {
        switch self {
        case .main:
            _ = RealmConfig.copyInitialFile
            return RealmConfig.mainConfig
        }
    }

}
