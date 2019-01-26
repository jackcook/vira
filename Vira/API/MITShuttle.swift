//
//  MITShuttle.swift
//  Vira
//
//  Created by Jack Cook on 1/25/19.
//  Copyright © 2019 Jack Cook. All rights reserved.
//

import SwiftyJSON

class MITShuttle {
    
    // MARK: - Shared Instance
    
    public class var shared: MITShuttle {
        struct Static {
            static let instance = MITShuttle()
        }
        
        return Static.instance
    }
    
    // MARK: - Public Methods
    
    public func getPredictions(completion: @escaping (ShuttleStop) -> ()) {
//        let url = URL(string: "http://m.mit.edu/apis/shuttles/routes/tech/stops/simmhl")!
//        let url = URL(string: "http://m.mit.edu/apis/shuttles/routes/saferidecampshut/stops/simmhall")!
        let url = URL(string: "http://m.mit.edu/apis/shuttles/routes/saferidebostone/stops/mass84_d")!
        let session = URLSession(configuration: .default)
        let task = session.dataTask(with: url) { (data, response, error) in
            guard let data = data, let json = try? JSON(data: data) else {
                return
            }
            
            DispatchQueue.main.async {
                completion(ShuttleStop(json: json))
            }
        }
        
        task.resume()
    }
}
