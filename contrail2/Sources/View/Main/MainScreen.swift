//
//  MainScreen.swift
//  contrail2
//
//  Created by tokizo on 2022/07/18.
//

import SwiftUI
import HealthKit

struct MainScreen: View {
    @ObservedObject
    var viewModel = MainViewModel(cacher: WorkoutsCacher.shared,
                                  client: HealthKitClient())

    var body: some View {
        RideListView(rideList: viewModel.data)
            .onAppear {
                Task {
                    await viewModel.fetch()
                }
            }
    }
}

struct MainScreen_Previews: PreviewProvider {
    static var previews: some View {
        MainScreen()
    }
}
