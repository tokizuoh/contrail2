//
//  RideStatisticsRowView.swift
//  contrail2
//
//  Created by tokizo on 2022/07/18.
//

import SwiftUI

struct RideStatisticsRowView: View {
    let rideStatistics: RideStatistics

    var body: some View {
        VStack(alignment: .leading) {
            totalDistanceText
                .padding(.top, 8)
                .foregroundColor(.contrailBrand1)
                .padding(.bottom, 12)
            maxDistanceText
                .padding(.bottom, 8)
        }
    }

    // MARK: - component
    var totalDistanceText: some View {
        VStack(alignment: .leading) {
            Text("Total Distance")
                .font(.headline)
                .foregroundColor(.contrailLightGray1)
            HStack(alignment: .lastTextBaseline, spacing: 4) {
                Text("\(rideStatistics.totalDistanceText)")
                    .font(.title3)
                Text("km")
                    .font(.subheadline)
            }
        }
    }

    var maxDistanceText: some View {
        VStack(alignment: .leading) {
            Text("Max Distance for one ride")
                .font(.headline)
                .foregroundColor(.contrailLightGray1)
            HStack(alignment: .lastTextBaseline, spacing: 4) {
                Text("\(rideStatistics.maxDistanceText)")
                    .font(.title3)
                    .foregroundColor(.contrailBrand1)
                Text("km")
                    .font(.subheadline)
                    .foregroundColor(.contrailBrand1)
                    .padding(.trailing, 8)
                Text("( \(rideStatistics.maxDistanceDate) )")
                    .font(.caption)
                    .foregroundColor(.contrailLightGray2)
            }
        }
    }
}

struct RideStatistics: ViewModelProtocol {
    let totalDistanceText: String
    let maxDistanceText: String
    let maxDistanceDate: String

    static func generateEmpty() -> RideStatistics {
        return .init(totalDistanceText: "",
                     maxDistanceText: "",
                     maxDistanceDate: "")
    }

    static func generateMock() -> Self {
        return .init(totalDistanceText: "1000.21",
                     maxDistanceText: "30.5",
                     maxDistanceDate: "2022.05.23")
    }
}

struct RideStatisticsRowView_Previews: PreviewProvider {
    static var previews: some View {
        RideStatisticsRowView(rideStatistics: RideStatistics.generateMock())
    }
}
