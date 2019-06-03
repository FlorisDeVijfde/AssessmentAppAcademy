//
//  Session.swift
//  ChallengeAppAcademy
//
//  Created by Floris de Vries on 03/06/2019.
//  Copyright © 2019 Floris de Vries. All rights reserved.
//

import Foundation
import UIKit

class HttpSession {
    
    var lorIpsum: String = ""
    var catImage: UIImage?
    
    enum dataTypes {
        case String
        case GIF
    }
//    var lorIpData: Data?
//
//    var configuration: URLSessionConfiguration
//    var session: URLSession
//    var url: URL
//    var task: URLSessionDataTask
    
//    required init(urlString: String) {
//        //Default values
//        lorIpsum = "No value yet"
//        // Create a configuration
//        configuration = URLSessionConfiguration.ephemeral
//        // Create a session
//        session = URLSession(configuration: configuration)
//        // Setup the url
//        url = URL(string: urlString)!
//        //Create the task
//        task = session.dataTask(with: url)
//
//        guard let httpResponse = task.response  as? HTTPURLResponse, httpResponse.statusCode == 200 else {
//            print("No status 200 response from URL \(url)")
//            return
//        }
//        
//        do {
//            lorIpData = try Data(contentsOf: url)
//            print("String from lorIpsum.net is \(lorIpData)")
//
//        } catch {
//            print("Cannot read data into lorIpData)")
//            return
//        }
//
//        //error handling to be added!!!
//        lorIpsum = lorIpData!.base64EncodedString()
//        //print("Cannot read data into string)")
//        print("String from lorIpsum.net is \(lorIpData)")
//    }
    
    func loadURL(urlString: String, type: dataTypes) {
        // Create a configuration
        let configuration = URLSessionConfiguration.ephemeral
        // Create a session
        let session = URLSession(configuration: configuration)
        // Setup the url
        let url = URL(string: urlString)!
        //Create the task
        let task = session.dataTask(with: url)
        
        guard let httpResponse = task.response  as? HTTPURLResponse, httpResponse.statusCode == 200 else {
            print("No status 200 response from URL \(url)")
            return
        }
        
        if type == dataTypes.String {
            do {
                let lorIpData = try Data(contentsOf: url)
                print("Data from lorIpsum.net is \(lorIpData)")
                lorIpsum = lorIpData.base64EncodedString()
            } catch {
                print("Cannot read data into lorIpData)")
                return
            }
        }
        
        if type == dataTypes.GIF {
            do {
                let catGIF = try Data(contentsOf: url)
                print("catGIF loaded \(catGIF)")
                //convert image from API site into catImage...how? No name known.
                //catImage = UIImage.gifImageWithName(catImageName)
            } catch {
                print("Cannot read data into lorIpData)")
                return
            }
        }
        
    }
    
}
