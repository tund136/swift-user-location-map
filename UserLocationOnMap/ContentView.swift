//
//  ContentView.swift
//  UserLocationOnMap
//
//  Created by Danh Tu on 04/10/2021.
//

import SwiftUI
import MapKit

struct ContentView: View {
    @StateObject private var viewModel = ContentViewModel()
    
    var body: some View {
        Map(coordinateRegion: $viewModel.region, showsUserLocation: true)
            .ignoresSafeArea()
            .accentColor(Color(.systemPink))
            .onAppear {
                viewModel.checkIfLocationServicesEnabled()
            }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
