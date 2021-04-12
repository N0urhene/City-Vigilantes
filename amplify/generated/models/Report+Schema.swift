// swiftlint:disable all
import Amplify
import Foundation

extension Report {
  // MARK: - CodingKeys 
   public enum CodingKeys: String, ModelKey {
    case id
    case name
    case region
    case description
  }
  
  public static let keys = CodingKeys.self
  //  MARK: - ModelSchema 
  
  public static let schema = defineSchema { model in
    let report = Report.keys
    
    model.pluralName = "Reports"
    
    model.fields(
      .id(),
      .field(report.name, is: .required, ofType: .string),
      .field(report.region, is: .optional, ofType: .string),
      .field(report.description, is: .optional, ofType: .string)
    )
    }
}