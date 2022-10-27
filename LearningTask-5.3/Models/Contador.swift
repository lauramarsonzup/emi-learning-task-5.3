//
//  Contador.swift
//  LearningTask-5.3
//
//  Created by Laura Pinheiro Marson on 27/10/22.
//

import Foundation

struct Contador {
    private(set) var valor = 0
    private(set) var padraoDeIncremento = 1
    
    var nomeDaCorDoBackground: String {
        
        switch valor {
            
        case ..<0:
            return "Almond"
            
        default:
            return "Satin Linen"
        }
        
    }
    
    mutating func incrementar() {
        valor += padraoDeIncremento
    }
    
    mutating func decrementar() {
        valor -= padraoDeIncremento
    }
    
    mutating func alterarPadraoDeIncremento(para novoValor: Int) {
        padraoDeIncremento = novoValor
    }
    
    mutating func resetar() {
        self = Contador()
    }
}
