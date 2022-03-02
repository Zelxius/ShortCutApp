//
//  ViewController.swift
//  ShortCutApp
//
//  Created by Colimasoft on 02/03/22.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func abrir(_ sender: UIButton) {
        let app = UIApplication.shared
        let segundaApp = "segundaApp://"
        guard let appUrl = URL(string: segundaApp) else { return }
        guard let webAlternativa = URL(string: "https://google.com") else { return }
        if app.canOpenURL(appUrl){
            app.open(appUrl, options: [:], completionHandler: nil)
        }else{
            app.open(webAlternativa, options: [:], completionHandler: nil)
        }
    }
}

