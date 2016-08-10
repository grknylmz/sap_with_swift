//
//  ViewController.swift
//  ApproveSolman
//
//  Created by Gurkan Yilmaz on 10/08/16.
//  Copyright © 2016 Gurkan Yilmaz. All rights reserved.
//

import UIKit
//import Freddy

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
       callData()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    
    func callData() {
        
        let config = NSURLSessionConfiguration.defaultSessionConfiguration()
        let userPasswordString = "GUYILMAZ:Grk42633"
        let userPasswordData = userPasswordString.dataUsingEncoding(NSUTF8StringEncoding)
        let base64EncodedCredential = userPasswordData!.base64EncodedStringWithOptions(NSDataBase64EncodingOptions(rawValue: 0))
        let authString = "Basic \(base64EncodedCredential)"
        config.HTTPAdditionalHeaders = ["Authorization" : authString]
        let session = NSURLSession(configuration: config)
        
        var running = false
        let url = NSURL(string: "http://form01.msy.turktelekom.intra:8000/sap/opu/odata/sap/ZTEST_SRV/ZCDS_CFIN_ACCSet/?$format=json")
        let task = session.dataTaskWithURL(url!) {
            (let data, let response, let error) in
            if (response as? NSHTTPURLResponse) != nil {
                let dataString = NSString(data: data!, encoding: NSUTF8StringEncoding)
                // Now parse data
                let data = dataString!.dataUsingEncoding(NSUTF8StringEncoding, allowLossyConversion: false)


                
            
            }
            running = false
        }
        
        running = true
        task.resume()
        
        while running {
            print("waiting...")
            sleep(1)
        }
    }

    
}

