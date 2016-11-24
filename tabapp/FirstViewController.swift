//
//  FirstViewController.swift
//  tabapp
//
//  Created by Abdulhakim Ajetunmobi on 22/11/2016.
//  Copyright © 2016 abdulajet. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {
    
    @IBOutlet var text: UITextField!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    @IBAction func submitBtn(_ sender: Any) {
        
        if text.text != "" {
        
        if var items: [String] = UserDefaults.standard.object(forKey: "items") as? [String] {
            items.append(text.text!)
            UserDefaults.standard.set(items, forKey: "items")
        }else {
            let items = [text.text!]
            UserDefaults.standard.set(items, forKey: "items")
        }
        
        text.text! = ""
            
        }
        
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        
        self.view.endEditing(true)
        
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        
        textField.resignFirstResponder()
        
        return true
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

