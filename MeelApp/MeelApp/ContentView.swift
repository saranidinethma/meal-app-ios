//
//  ContentView.swift
//  MeelApp
//
//  Created by sarani dinethma on 2026-10-28.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
    }
    
    func fetchMeals() async{
        guard let apiUrl = URL(string: "") else {
            return
        }
        
        var apiRequest = URLRequest(url: apiUrl)
        
        do {
            let (apiData, apiResponse) = try await URLSession.shared.data(for: apiRequest)
            
            guard let httpResponse = apiResponse as? HTTPURLResponse else {
                return
            }
            
            guard (200...299).contains(httpResponse.statusCode) else {
                return
            }
        } catch {
            print ("Error is there")
        }
        
    }
}
    
#Preview {
    ContentView()
}
