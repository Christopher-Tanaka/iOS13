//
//  ViewController.swift
//  MyApp
//
//  Created by Christopher Tanaka on 3/27/20.
//  Copyright © 2020 Christopher Tanaka. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var usernameTxtField: UITextField!
    @IBOutlet weak var passwordTxtField: UITextField!
    
    @IBOutlet weak var loginButtonUi: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func RunHttpTest(_ sender: Any) {
        
        validateManatoryFields()
        
        let username = usernameTxtField.text!
        let password = passwordTxtField.text!
        
        //let isLogged = auth.login(username: username, userPassword: password)
        
        //print("logged? \(isLogged)")
    }
    
    override func shouldPerformSegue(withIdentifier identifier: String, sender: Any!) -> Bool {
        
        let auth = AuthService()
        
        shakeAnimation(viewToShake: loginButtonUi)
        
        let isLogged = auth.login(username: "", password: "")
        
        if(!isLogged){
            shakeAnimation(viewToShake: loginButtonUi)
            return false
        }
        
        return false
    }
    
    func validateManatoryFields() {
        //TODO show erro animation
        
    }
    
    func shakeAnimation(viewToShake: UIView) {
        let animation = CABasicAnimation(keyPath: "position")
        animation.duration = 0.07
        animation.repeatCount = 4
        animation.autoreverses = true
        animation.fromValue = NSValue(cgPoint: CGPoint(x: viewToShake.center.x - 10, y: viewToShake.center.y))
        animation.toValue = NSValue(cgPoint: CGPoint(x: viewToShake.center.x + 10, y: viewToShake.center.y))

        viewToShake.layer.add(animation, forKey: "position")
    }
    
    
    /*

    
    func ReadSampleJson() -> String {
        return "{\"person\": {\"name\": \"Teste\", \"id\": 1}}"
    }
    
    func runHttpTestOld() {
        
        let text = ReadSampleJson()
        print("File read: \(text)" )
        
        let url = URL(string: "http://www.stackoverflow.com")!
        let session = URLSession.shared
        
        
        var request = URLRequest(url: url)
        request.httpMethod = "POST"
        
        let connection = NSURLConnection(request: request, delegate:nil, startImmediately: true)
        
        let task = session.dataTask(with: url, completionHandler: { data, response, error in
        // Check the response
            if let httpResponse = response as? HTTPURLResponse {
                
                print("returning code:  \(httpResponse.statusCode)")

            }
                print(error)
                print(response)
            
            guard let data = data else {return}
            
            do {
                let encoder = JSONEncoder()
                let ctanaka = Person(name: "ctanaka", id: 1)
                
                let dataObj = try encoder.encode(ctanaka)
                
                let json = String(data: dataObj, encoding: .utf8)!
                
                print("json created from struct \(json)")
                
                
                let person = try JSONDecoder().decode(Person.self, from: dataObj)
                
                print("Person name: \(person.name)")
            }
            catch{
                
                 print("Unexpected error: \(error).")
            }
        })
        task.resume()
        
    }
 
      */
    
}

