//
//  ViewController.swift
//  App Anotações
//
//  Created by Henrique Silva on 28/09/20.
//  Copyright © 2020 Henrique Silva. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var campoTexto: UITextView!
    
    var chave = "minhaAnatocao"
    
    @IBAction func salvarAnatocao(_ sender: Any) {
        
        if let texto = campoTexto.text {
            
            UserDefaults.standard.set(texto, forKey: chave)
            
        }
        
    }
    
    func recuperarAnotacao() -> String {
        
        if let textoRecuperado = UserDefaults.standard.object(forKey: chave) {
            
            return textoRecuperado as! String
            
        }
        
    return ""
        
    }
    
    override var prefersStatusBarHidden: Bool {
        return true
        
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        view.endEditing(true)
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
        campoTexto.text = recuperarAnotacao()
        
    }

}

