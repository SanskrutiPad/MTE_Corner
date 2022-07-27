//
//  backgroundThreads.swift
//  MTE Corner
//
//  Created by Sanskruti  Padmawar  on 2022-07-19.
//

import SwiftUI



// There are multiple threads in your app - background + main threads. The main thread can perform a lot of tasks, but if it performs too many tasks, it could cause the app to crash or freeze or slow down. Instead, we take the heavier tasks like downloading images from the internet on a background thread rather than  a main thread.
// NOTE: anything that updates the UI (the view), must be performed on the main thread

class BackgroundThreadsViewModel: ObservableObject {        // ObservableObject: So we can observe this from our View
    @Published var dataArray: [String] = []
    
    
//    function to fetch data
    func fetchData() {
        let newData = downloadData()
        dataArray = newData
        
    }
    
//    function to download data returns a String array
//    all we're doing is adding a 100 numbers to the data, and returning it
    func downloadData() -> [String] {
        var data: [String] = []
        
        for i in 0..<100 {
            data.append("\(i)")
            print(data)
        }
        return data
    }
}

struct backgroundThreads: View {
//    vm: view model
    @StateObject var vm = BackgroundThreadsViewModel()
    
    var body: some View {
        ScrollView {
            VStack (spacing: 10) {
                Text("LOAD DATA")
                    .font(.largeTitle)
                    .fontWeight(.semibold)
                    .onTapGesture {
                        vm.fetchData()
                    }
                
                ForEach(vm.dataArray , id: \.self) { item in
                    Text(item)
                        .font(.headline)
                        .foregroundColor(.red)
                }
            }
        }
    }
}

struct backgroundThreads_Previews: PreviewProvider {
    static var previews: some View {
        backgroundThreads()
    }
}
