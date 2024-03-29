//
//  RideRowView.swift
//  contrail2
//
//  Created by tokizo on 2022/07/18.
//

import SwiftUI

struct RideRowView: View {
    let ride: Ride

    var body: some View {
        HStack(alignment: .lastTextBaseline) {
            HStack(alignment: .lastTextBaseline) {
                Text(ride.distanceText)
                    .font(.title)
                Text("km")
                    .font(.subheadline)
            }
            .foregroundColor(.contrailBrand1)
            .padding(.vertical, 5)

            Spacer()

            Text(ride.dateText)
                .font(.subheadline)
                .foregroundColor(.contrailLightGray2)
                .padding(.vertical, 5)
        }
    }
}

struct Ride: ViewModelProtocol, Identifiable {
    var id = UUID()

    let distanceText: String
    let dateText: String

    static func generateEmpty() -> Ride {
        return .init(distanceText: "",
                     dateText: "")
    }

    static func generateMock() -> Ride {
        return .init(distanceText: "12.3",
                     dateText: "2222.11.3")
    }
}

struct RideRowView_Previews: PreviewProvider {
    static var previews: some View {
        RideRowView(ride: .generateMock())
    }
}
