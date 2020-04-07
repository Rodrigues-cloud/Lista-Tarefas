//
//  TarefaViewController.swift
//  Lista-Tarefas
//
//  Created by Usuário on 04/04/20.
//  Copyright © 2020 Uesley Rodrigues. All rights reserved.
//

import UIKit

class TarefaViewController: UIViewController {
    
    @IBOutlet weak var tarefaTextField: UITextField!
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func adionarTarefa(_ sender: AnyObject) {
        
        if let tarefa = tarefaTextField.text {
        
            let tarefaUserDefaults = TarefaUserDefaults()
            tarefaUserDefaults.salvarTarefa( tarefa: tarefa)
            tarefaTextField.text = ""
            
        }
        
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        view.endEditing(true)
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
