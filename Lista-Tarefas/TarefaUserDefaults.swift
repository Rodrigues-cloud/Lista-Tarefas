//
//  TarefaUserDefaults.swift
//  Lista-Tarefas
//
//  Created by Usuário on 06/04/20.
//  Copyright © 2020 Uesley Rodrigues. All rights reserved.
//

import UIKit

class TarefaUserDefaults {
    
    let chaveListaTarefa = "ListaTarefa"
    var tarefas: [String] = []

    func salvarTarefa(tarefa: String){
        
        //recuperar tarefas
        tarefas = listarTarefa()
        
        
        //adicionar
        tarefas.append(tarefa)
        UserDefaults.standard.set( tarefas, forKey: chaveListaTarefa)
    
    }
    
    func listarTarefa() -> Array<String> {
        
        let dados = UserDefaults.standard.object(forKey: chaveListaTarefa)
        
        if dados != nil {
            return dados as! Array
        
        }else{
            return []
        }
    }
    
    func removerTarefa( indice: Int ) {
        
        //recuperar tarefas
        tarefas = listarTarefa()
        
        tarefas.remove(at: indice)
        
        UserDefaults.standard.set( tarefas, forKey: chaveListaTarefa)
    
    }
    
}
