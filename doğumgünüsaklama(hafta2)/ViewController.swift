//
//  ViewController.swift
//  doğumgünüsaklama(hafta2)
//
//  Created by Aydanur MERAL on 20.04.2024.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var isimText: UITextField!
    
    @IBOutlet weak var doğumGünüText: UITextField!
    
    @IBOutlet weak var isimEtiket: UILabel!
    @IBOutlet weak var doğumTarihiEtiket: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let kayıtlıİsim=UserDefaults.standard.object(forKey: "İsim")
        let kayıtlıDoğumTarihi=UserDefaults.standard.object(forKey: "Doğumgünü")
        if let yeniİsim=kayıtlıİsim as? String
        {
            isimEtiket.text=yeniİsim
         }
        if let yeniDoğumTarihi=kayıtlıDoğumTarihi as? String{
            doğumTarihiEtiket.text=yeniDoğumTarihi
        }
}
    @IBAction func kayıtButon(_ sender: Any) {
        UserDefaults.standard.set(isimText.text!,forKey: "İsim")
        UserDefaults.standard.set(doğumGünüText.text!,forKey: "Doğumgünü")
        isimEtiket.text="İsim:\(isimText.text!)"
        doğumTarihiEtiket.text!="Doğum Tarihi:\(doğumGünüText.text!)"
    }
    
}

