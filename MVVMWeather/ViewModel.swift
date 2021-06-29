//
//  ViewModel.swift
//  MVVMWeather
//
//  Created by Helcio Junior on 19/05/21.
//

import Foundation


class WeatherViewModel: ObservableObject {
    @Published var title: String = "-"
    @Published var descriptionText: String = "-"
    @Published var temp: String = "-"
    @Published var timezone: String = "-"
    
    init(){
        fetchWeather()
    }
    
    func fetchWeather(){
        guard let url = URL(string:"https://api.openweathermap.org/data/2.5/onecall?exclude=hourly,daily,minutely&lat=40.7128&lon=-74&units=imperial&appid=a25ffc3abde70c25f331151a9e3f") else {
            return
        }
        let task = URLSession.shared.dataTask(with: url) { data, _, error in
            guard let data = data, error == nil else {
                return
                // testando o git apenas
            }
    }
        task.resume()
}
}
