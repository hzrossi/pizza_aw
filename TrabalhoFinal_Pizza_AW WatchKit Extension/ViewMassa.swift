//
//  ViewMassa.swift
//  TrabalhoFinal_Pizza_AW
//
//  Created by Henrique Zuchetto Rossi on 23/05/16.
//  Copyright © 2016 Zuchetto. All rights reserved.
//

import WatchKit
import Foundation


class ViewMassa: WKInterfaceController {
	
	var pizza = Pizza()
	
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        // Configure interface objects here.
		
		pizza = context as! Pizza
		//print("Tamanho: \(pizza.tamanho)")
    }

    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
    }

    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }
	
	@IBAction func selecionarMassaDelgada() {
		navegar("delgada")
	}

	@IBAction func selecionarMassaCrujiente() {
		navegar("crujiente")
	}
	
	@IBAction func selecionarMassaGruesa() {
		navegar("gruesa")
	}
	
	func navegar(m:String) {
		pizza.adicionarMassa(m)
		pushControllerWithName("IdentificadorQueijo", context: pizza)
	}
	
}
