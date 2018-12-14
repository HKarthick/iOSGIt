//
//  File.swift
//  Json
//
//  Created by Anilkumar on 14/12/18.
//  Copyright © 2018 Anilkumar. All rights reserved.
//

import Foundation


extension UIViewController
{
    func showConfirmAlerts(title: String?, message: String?, buttonTitle: String, buttonStyle: UIAlertAction.Style, confirmAction: ((UIAlertAction) -> Void)?) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: buttonTitle, style: buttonStyle, handler:confirmAction))
        present(alert, animated: true, completion: nil)
    }
    
    func callMethod(urlName : URL) ->  [String] {
     var array : [String] = []
    let task = URLSession.shared.dataTask(with: urlName) { (data, response, error) in
        guard let dataResponse = data,
            error == nil else {
                print(error?.localizedDescription ?? "Response Error")
                return }
        do{
            let jsonResponse = try JSONSerialization.jsonObject(with:
                dataResponse, options: []) as? [String:Any]
            let root = RootClass(fromDictionary: jsonResponse!)
            for i in root.results{
                print(i.name!)
                array.append(i.name)
            }
        } catch let parsingError {
            print("Error", parsingError)
        }
    }
    task.resume()
        
        return array
    }

    
}
extension UIAlertController{
    func showConfirmAlert(title: String?, message: String?, buttonTitle: String, buttonStyle: UIAlertAction.Style, confirmAction: ((UIAlertAction) -> Void)?) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: buttonTitle, style: buttonStyle, handler:confirmAction))
        present(alert, animated: true, completion: nil)
    }
    
}
