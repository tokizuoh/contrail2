// @generated
//  This file was automatically generated and should not be edited.

import Apollo
import Foundation

public final class GetWorkoutQuery: GraphQLQuery {
  /// The raw GraphQL definition of this operation.
  public let operationDefinition: String =
    """
    query getWorkout {
      workouts {
        __typename
        distance
        duration
      }
    }
    """

  public let operationName: String = "getWorkout"

  public init() {
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes: [String] = ["Query"]

    public static var selections: [GraphQLSelection] {
      return [
        GraphQLField("workouts", type: .nonNull(.list(.nonNull(.object(Workout.selections))))),
      ]
    }

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public init(workouts: [Workout]) {
      self.init(unsafeResultMap: ["__typename": "Query", "workouts": workouts.map { (value: Workout) -> ResultMap in value.resultMap }])
    }

    public var workouts: [Workout] {
      get {
        return (resultMap["workouts"] as! [ResultMap]).map { (value: ResultMap) -> Workout in Workout(unsafeResultMap: value) }
      }
      set {
        resultMap.updateValue(newValue.map { (value: Workout) -> ResultMap in value.resultMap }, forKey: "workouts")
      }
    }

    public struct Workout: GraphQLSelectionSet {
      public static let possibleTypes: [String] = ["Workout"]

      public static var selections: [GraphQLSelection] {
        return [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("distance", type: .nonNull(.scalar(Double.self))),
          GraphQLField("duration", type: .nonNull(.scalar(Double.self))),
        ]
      }

      public private(set) var resultMap: ResultMap

      public init(unsafeResultMap: ResultMap) {
        self.resultMap = unsafeResultMap
      }

      public init(distance: Double, duration: Double) {
        self.init(unsafeResultMap: ["__typename": "Workout", "distance": distance, "duration": duration])
      }

      public var __typename: String {
        get {
          return resultMap["__typename"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "__typename")
        }
      }

      public var distance: Double {
        get {
          return resultMap["distance"]! as! Double
        }
        set {
          resultMap.updateValue(newValue, forKey: "distance")
        }
      }

      public var duration: Double {
        get {
          return resultMap["duration"]! as! Double
        }
        set {
          resultMap.updateValue(newValue, forKey: "duration")
        }
      }
    }
  }
}
