//
//  ViewController.swift
//  AverageApps
//
//  Created by Arjuna on 19/01/18.
//  Copyright © 2018 Arjuna. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var etmtk: UITextField!
    
    @IBOutlet weak var lblhasil: UILabel!
    @IBOutlet weak var etbahasa: UITextField!
    @IBOutlet weak var etalquran: UITextField!
    @IBOutlet weak var etagama: UITextField!
    @IBOutlet weak var etkomp: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    @IBAction func btnhasil(_ sender: Any) {
        let nilaimtk : Int? = Int(etmtk.text!)
        let nilaibahasa : Int? = Int(etbahasa.text!)
        let nilaiquran : Int? = Int(etalquran.text!)
        let nilaiagama : Int? = Int(etagama.text!)
        let nilaikomp : Int? = Int(etkomp.text!)
        
        let hasil : Int = ((nilaimtk! + nilaikomp! + nilaiagama! + nilaiquran! + nilaibahasa!) / 5)
        
//        lblhasil.text = "Hasil = \(hasil)"
        
        if (hasil >= 70){
            lblhasil.text = "Anda Lulus \(hasil)"
        }else if (hasil <= 70){
            lblhasil.text = "Anda tidak lulu \(hasil)"
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

