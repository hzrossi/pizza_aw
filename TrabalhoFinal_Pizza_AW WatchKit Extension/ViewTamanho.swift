//
//  ViewTamanho.swift
//  TrabalhoFinal_Pizza_AW
//
//  Created by Henrique Zuchetto Rossi on 23/05/16.
//  Copyright © 2016 Zuchetto. All rights reserved.
//

import WatchKit
import Foundation


class ViewTamanho: WKInterfaceController {

	var tamanho:String = ""
	
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        // Configure interface objects here.
    }

    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
    }

    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }

	@IBAction func selecionarTamanhoChica() {
		navegar("chica")
	}
	
	@IBAction func selecionarTamanhoMediana() {
		navegar("mediana")
	}
	
	@IBAction func selecionarTamanhoGrande() {
		navegar("grande")
	}
	
	func navegar(t:String) {
		let pizza = Pizza()
		pizza.adicionarTamanho(t)
		pushControllerWithName("IdentificadorMassa", context: pizza)
	}
}
