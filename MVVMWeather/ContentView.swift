//
//  ContentView.swift
//  MVVMWeather
//
//  Created by Helcio Junior on 19/05/21.
//

import SwiftUI

struct ContentView: View {
    
    @StateObject var viewModel = WeatherViewModel()
    
    var body: some View {
        NavigationView {
            VStack {
                Text(viewModel.title).font(.system(size: 32))
                Text(viewModel.descriptionText).font(.system(size: 44))
                Text(viewModel.temp).font(.system(size: 24))
                Text(viewModel.timezone).font(.system(size: 24))
            }
            .navigationTitle("Weather MVVM")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .preferredColorScheme(.dark)
    }
}
