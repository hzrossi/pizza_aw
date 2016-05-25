//
//  ViewQueijo.swift
//  TrabalhoFinal_Pizza_AW
//
//  Created by Henrique Zuchetto Rossi on 23/05/16.
//  Copyright © 2016 Zuchetto. All rights reserved.
//

import WatchKit
import Foundation


class ViewQueijo: WKInterfaceController {

	var pizza = Pizza()
	
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        // Configure interface objects here.
		
		pizza = context as! Pizza
		//print("Tamanho: \(pizza.tamanho)\nMassa: \(pizza.massa)")
    }

    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
    }

    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }

	@IBAction func selecionarQueijoMozarela() {
		navegar("mozarela")
	}
	
	@IBAction func selecionarQueijoCheddar() {
		navegar("cheddar")
	}
	
	@IBAction func selecionarQueijoParmesano() {
		navegar("parmesano")
	}
	
	@IBAction func selecionarQueijoSinQueso() {
		navegar("sin queso")
	}
	
	func navegar(q:String) {
		pizza.adicionarQueijo(q)
		pushControllerWithName("IdentificadorIngredientes", context: pizza)
	}
	
}
