//
//  ToolboxManager.swift
//  MTE Corner
//
//  Created by Sanskruti  Padmawar  on 2022-07-15.
//



// contains link to API
import Foundation

class ToolboxManager: ObservableObject {
    private(set) var toolbox: [Toolbox.Result] = []                 // to store current questions/solution choices
    @Published private(set) var lengthArrayOrNumQuestions = 0          // saves length of the array/number of questions we fetch from the API
    
    
    func fetchToolbox() async{
        guard let toolboxURL = URL(string: "") else {
            fatalError("ERROR: Missing URL in Toolbox Manager")}
            
        let toolboxURLRequest = URLRequest(url: toolboxURL)
            
            do {
                let (data, response) = try await URLSession.shared.data(for: toolboxURLRequest)
//                guard (response as? HTTPURLResponse)?.statusCode == 200 { else fatalError("ERROR: from fetching data") }
                let decoder = JSONDecoder()
//                decoder.keyDecodingStrategy = .convertFromSnakeCase // use if converting from snake case to camel case
                let decodedData = try decoder.decode(Toolbox.self, from: data)
                
//                won't be able to publish changes on background thread --> but we can publish changes on the main thread
                DispatchQueue.main.async {
                    self.toolbox = decodedData.results
                    self.lengthArrayOrNumQuestions = self.toolbox.count
                }
                
                
            } catch {
                print("ERROR: from fetching Toolbox Talks: \(error)")
            }
        }
    }

