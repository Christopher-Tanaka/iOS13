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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func RunHttpTest(_ sender: Any) {
        
        let url = URL(string: "http://www.stackoverflow.com")!
        let session = URLSession.shared
        
        
        var request = URLRequest(url: url)
        request.httpMethod = "POST"
        
        let connection = NSURLConnection(request: request, delegate:nil, startImmediately: true)
        
        let task = session.dataTask(with: url, completionHandler: { data, response, error in
        // Check the response
                print(error)
                print(response)
        })
        task.resume()
    }
    

    
    
}

