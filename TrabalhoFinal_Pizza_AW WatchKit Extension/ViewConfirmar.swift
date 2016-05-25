//
//  ViewConfirmar.swift
//  TrabalhoFinal_Pizza_AW
//
//  Created by Henrique Zuchetto Rossi on 23/05/16.
//  Copyright © 2016 Zuchetto. All rights reserved.
//

import WatchKit
import Foundation


class ViewConfirmar: WKInterfaceController {

	var pizza = Pizza()
	var resumo:String = ""
	
	@IBOutlet var lblResumo: WKInterfaceLabel!
	
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        // Configure interface objects here.
		
		pizza = context as! Pizza
		/*print("Tamanho: \(pizza.tamanho)\nMassa: \(pizza.massa)\nQueijo: \(pizza.queijo)\nIngredientes:")
		for i in pizza.ingredientes {
			print("\t\(i)")
		}*/
		
		resumo = "Tamanho: \(pizza.tamanho)\nMassa: \(pizza.massa)\nQueijo: \(pizza.queijo)\nIngredientes:"
		for i in pizza.ingredientes {
			resumo += "\n\t\(i)"
		}
		
		lblResumo.setText(resumo)
    }

    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
    }

    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }

	@IBAction func enviarPedido() {
		pushControllerWithName("IdentificadorEnviado", context: pizza)
	}
}
