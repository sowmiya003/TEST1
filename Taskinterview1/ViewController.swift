//
//  ViewController.swift
//  Taskinterview1
//
//  Created by sowmiya s on 13/09/23.
//


//
//import Foundation
//
//struct Empty: Codable {
//    let token, email, spid, deviceID: String
//    let userID: String
//    let routerOnboardedCounter: Int
//    let serverInfo: ServerInfo
//    let locale, firstName, lastName, referrer: String
//
//    enum CodingKeys: String, CodingKey {
//        case token, email, spid
//        case deviceID = "deviceId"
//        case userID = "userId"
//        case routerOnboardedCounter, serverInfo, locale, firstName, lastName, referrer
//    }
//}
//
//struct ServerInfo: Codable {
//}

import UIKit


class ViewController: UIViewController {

    @IBOutlet weak var logintxt: UITextField!
    
    @IBOutlet weak var passwordtxt: UITextField!
    
    
    @IBOutlet weak var btn: UIButton!
    override func viewDidLoad() {
        
        super.viewDidLoad()
        //        getpostapi()
        
        
        
    }
    
    if logintxt.text == " " && pass{
        let alert = UIAlertController(title: "error", message: "Type Something", preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "ok", style: .default))
        self.present(alert, animated: true)
        }
    else {
        let vc1 = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "sec") as! SecViewController
        navigationController?.pushViewController(vc1, animated: true)
    }
    

}

    
  
    
    
//
//    func getpostapi(){
//
//
//        let apiUrl = URL(string: "https://stage.rgw.calix.ai/map/v2/mobile/account/login")!
//
//
//        let requestBody: [String: Any] = [
//            "email": "2037ciq@calix.com",
//            "password": "12345678",
//            "mobileDevice": [
//                "id": "1ff87d70-b18c-449a-a41f-58c298762a54",
//                "notificationToken": "FCM-0e13e24b0739a202af68c828af2ceedc430",
//                "os": "ios",
//                "msisdn": "4081234567",
//                "locale": "us",
//                "packageName": "com.calix.smarthome"
//            ]
//        ]
//
//
//        let jsonData = try? JSONSerialization.data(withJSONObject: requestBody)
//
//        if let jsonData = jsonData {
//            var request = URLRequest(url: apiUrl)
//            request.httpMethod = "POST"
//            request.setValue("application/json", forHTTPHeaderField: "Content-Type")
//            request.httpBody = jsonData
//
//            let task = URLSession.shared.dataTask(with: request) { data, response, error in
//                if let error = error {
//                    print("Error: \(error)")
//                } else if let data = data {
//                    // Handle the response data here
//                    if let responseString = String(data: data, encoding: .utf8) {
//                        print("Response: \(responseString)")
//
//                        // You can parse the response JSON if needed
//                        do {
//                            if let json = try JSONSerialization.jsonObject(with: data) as? [String: Any] {
//                                if let token = json["token"] as? String {
//                                    // Access the token here
//                                    let bearerToken = "Bearer " + token
//                                    print("Bearer Token: \(bearerToken)")
//                                }
//                            }
//                        } catch {
//                            print("Error decoding response JSON: \(error)")
//                        }
//                    }
//                }
//            }
//
//            task.resume()
//        } else {
//            print("Error converting request body to JSON data.")
//        }
//
//    }

//}

