//
//  ViewController.swift
//  LearningTask-5.3
//
//  Created by rafael.rollo on 12/03/2022.
//

import UIKit

class ContadorViewController: UIViewController {

    @IBOutlet var viewPrincipal: UIView!
    
    @IBOutlet weak var valorDoContadorLabel: UILabel!
    
    @IBOutlet weak var valorDeIncrementoLabel: UILabel!
    
    var contador: Contador? {
        didSet {
            guard isViewLoaded, let contador = contador else { return }
            atualizaViews(para: contador)
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let contador = contador {
            atualizaViews(para: contador)
        }
    }
    
    @IBAction func botaoIncrementarPressionado(_ sender: UIButton) {
        contador?.incrementar()
    }
    
    @IBAction func botaoDecrementarPressionado(_ sender: UIButton) {
        contador?.decrementar()
    }
    
    @IBAction func alterarPadraoDeIncrementoPressionado(_ sender: UIStepper) {
        let novoPadrao = Int(sender.value)
        contador?.alterarPadraoDeIncremento(para: novoPadrao)
    }
    
    @IBAction func botaoResetarPressionado(_ sender: Any) {
        contador?.resetar()
    }
    
    func atualizaViews(para contador: Contador) {
        valorDoContadorLabel.text = String(describing: contador.valor)
        valorDeIncrementoLabel.text = String(describing: contador.padraoDeIncremento)
        viewPrincipal.backgroundColor = UIColor(named: contador.nomeDaCorDoBackground)
    }
}

