//
//  ViewController.swift
//  ProjectApp
//
//  Created by Brijesh Dubey on 19/08/17.
//  Copyright © 2017 Brijesh Dubey. All rights reserved.
//

import UIKit
import FBSDKCoreKit
import FBSDKLoginKit
import Firebase

class ViewController: UIViewController {

    @IBOutlet weak var password: FancyField!
    @IBOutlet weak var username: FancyField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        print("This is the best, if it get changes")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func facebookLoginBtn(_ sender: Any) {
        
        // For Facebook Login code.
        
        let facebookLogin = FBSDKLoginManager()
        
        facebookLogin.logIn(withReadPermissions: ["email"], from: self) { (result, error) in
            if error != nil {
                print("Unable to authonticate with Facebook")
            } else if result?.isCancelled == true {
                print("User cancelled facebook authentication")
            } else {
                print("Successfully authenticated with Facebook")
                let credentials = FacebookAuthProvider.credential(withAccessToken: FBSDKAccessToken.current().tokenString)
                self.firebaseAuth(credentials)
            }
        }
    }
    
    
    // Add Data in Firebase.
    func firebaseAuth(_ credential: AuthCredential) {
        Auth.auth().signIn(with: credential, completion: {(user, error) in
            if error != nil {
                print("Unable to authonticate with Firebase")
            } else {
                print("Successfully authenticated with Facebook")
            }
        })
        
    }

    @IBAction func signInButton(_ sender: Any) {
        
        if let email = username.text, let pwd = password.text {
            Auth.auth().signIn(withEmail: email, password: pwd, completion: {(user, error) in
                
                if error != nil {
                    print("Unable to authonticate with Firebase")
                } else {
                    Auth.auth().createUser(withEmail: email, password: pwd, completion: {(user, error)in
                        if error != nil {
                            print("Unable to authonticate with Firebase using email")
                        } else {
                            print("Successfully authonticated with firebase twice")
                        }
                    })
                }
                })
        
        }
        
        
    }
}

