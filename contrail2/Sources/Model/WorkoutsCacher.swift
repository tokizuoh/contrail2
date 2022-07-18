//
//  WorkoutsCacher.swift
//  contrail2
//
//  Created by tokizo on 2022/07/18.
//

import HealthKit

public protocol WorkoutsCacherProtocol {
    func cacheWorkouts(_ cachedWorkouts: [HKWorkout])
    func getWorkouts() -> [HKWorkout]?
}

final class WorkoutsCacher: WorkoutsCacherProtocol {
    static let shared = WorkoutsCacher()

    private init() {}

    private var cachedWorkouts: [HKWorkout]?

    func cacheWorkouts(_ cachedWorkouts: [HKWorkout]) {
        self.cachedWorkouts = cachedWorkouts
    }

    func getWorkouts() -> [HKWorkout]? {
        return cachedWorkouts
    }

}
