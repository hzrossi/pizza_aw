//
//  ViewIngredientes.swift
//  TrabalhoFinal_Pizza_AW
//
//  Created by Henrique Zuchetto Rossi on 23/05/16.
//  Copyright © 2016 Zuchetto. All rights reserved.
//

//Falta arrumar pra chegar no 5o ingrediente e desabilitar novos ingredientes; ao remover a 5a escolha habilitar novamente tudo

import WatchKit
import Foundation


class ViewIngredientes: WKInterfaceController {

	var pizza = Pizza()
	var ingredientes:[String] = []
	
	@IBOutlet var switchJamon: WKInterfaceSwitch!
	@IBOutlet var switchPepperoni: WKInterfaceSwitch!
	@IBOutlet var switchPavo: WKInterfaceSwitch!
	@IBOutlet var switchSalchicha: WKInterfaceSwitch!
	@IBOutlet var switchAceituna: WKInterfaceSwitch!
	@IBOutlet var switchCebolla: WKInterfaceSwitch!
	@IBOutlet var switchPimiento: WKInterfaceSwitch!
	@IBOutlet var switchPina: WKInterfaceSwitch!
	@IBOutlet var switchAnchoa: WKInterfaceSwitch!
	@IBOutlet var btnAvancar: WKInterfaceButton!
	
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        // Configure interface objects here.
		
		pizza = context as! Pizza
		//print("Tamanho: \(pizza.tamanho)\nMassa: \(pizza.massa)\nQueijo: \(pizza.queijo)")
    }

    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
		
		if (ingredientes.count > 0) {
			btnAvancar.setEnabled(true)
		}
		else {
			btnAvancar.setEnabled(false)
		}
    }

    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }

	@IBAction func selecionarIngredienteJamon(value: Bool) {
		if (value && ingredientes.count <= 4) {
			ingredientes.append("jamón")
			if (ingredientes.count > 0) {
				btnAvancar.setEnabled(true)
			}
			if (ingredientes.count == 5) {
				desabilitar()
			}
		}
		else {
			var aux = 0
			for i in ingredientes {
				if (i == "jamón") {
					ingredientes.removeAtIndex(aux)
					if (ingredientes.count == 0) {
						btnAvancar.setEnabled(false)
					}
					if (ingredientes.count == 4) {
						habilitar()
					}
				}
				aux += 1
			}
		}
		print(ingredientes)
	}
	
	@IBAction func selecionarIngredientePepperoni(value: Bool) {
		if (value && ingredientes.count <= 4) {
			ingredientes.append("pepperoni")
			if (ingredientes.count > 0) {
				btnAvancar.setEnabled(true)
			}
			if (ingredientes.count == 5) {
				desabilitar()
			}
		}
		else {
			var aux = 0
			for i in ingredientes {
				if (i == "pepperoni") {
					ingredientes.removeAtIndex(aux)
					if (ingredientes.count == 0) {
						btnAvancar.setEnabled(false)
					}
					if (ingredientes.count == 4) {
						habilitar()
					}
				}
				aux += 1
			}
		}
		print(ingredientes)
	}
	
	@IBAction func selecionarIngredientePavo(value: Bool) {
		if (value && ingredientes.count <= 4) {
			ingredientes.append("pavo")
			if (ingredientes.count > 0) {
				btnAvancar.setEnabled(true)
			}
			if (ingredientes.count == 5) {
				desabilitar()
			}
		}
		else {
			var aux = 0
			for i in ingredientes {
				if (i == "pavo") {
					ingredientes.removeAtIndex(aux)
					if (ingredientes.count == 0) {
						btnAvancar.setEnabled(false)
					}
					if (ingredientes.count == 4) {
						habilitar()
					}
				}
				aux += 1
			}
		}
		print(ingredientes)
	}
	
	@IBAction func selecionarIngredienteSalchicha(value: Bool) {
		if (value && ingredientes.count <= 4) {
			ingredientes.append("salchicha")
			if (ingredientes.count > 0) {
				btnAvancar.setEnabled(true)
			}
			if (ingredientes.count == 5) {
				desabilitar()
			}
		}
		else {
			var aux = 0
			for i in ingredientes {
				if (i == "salchicha") {
					ingredientes.removeAtIndex(aux)
					if (ingredientes.count == 0) {
						btnAvancar.setEnabled(false)
					}
					if (ingredientes.count == 4) {
						habilitar()
					}
				}
				aux += 1
			}
		}
		print(ingredientes)
	}
	
	@IBAction func selecionarIngredienteAceituna(value: Bool) {
		if (value && ingredientes.count <= 4) {
			ingredientes.append("aceituna")
			if (ingredientes.count > 0) {
				btnAvancar.setEnabled(true)
			}
			if (ingredientes.count == 5) {
				desabilitar()
			}
		}
		else {
			var aux = 0
			for i in ingredientes {
				if (i == "aceituna") {
					ingredientes.removeAtIndex(aux)
					if (ingredientes.count == 0) {
						btnAvancar.setEnabled(false)
					}
					if (ingredientes.count == 4) {
						habilitar()
					}
				}
				aux += 1
			}
		}
		print(ingredientes)
	}
	
	@IBAction func selecionarIngredienteCebolla(value: Bool) {
		if (value && ingredientes.count <= 4) {
			ingredientes.append("cebolla")
			if (ingredientes.count > 0) {
				btnAvancar.setEnabled(true)
			}
			if (ingredientes.count == 5) {
				desabilitar()
			}
		}
		else {
			var aux = 0
			for i in ingredientes {
				if (i == "cebolla") {
					ingredientes.removeAtIndex(aux)
					if (ingredientes.count == 0) {
						btnAvancar.setEnabled(false)
					}
					if (ingredientes.count == 4) {
						habilitar()
					}
				}
				aux += 1
			}
		}
		print(ingredientes)
	}
	
	@IBAction func selecionarIngredientePimiento(value: Bool) {
		if (value && ingredientes.count <= 4) {
			ingredientes.append("pimiento")
			if (ingredientes.count > 0) {
				btnAvancar.setEnabled(true)
			}
			if (ingredientes.count == 5) {
				desabilitar()
			}
		}
		else {
			var aux = 0
			for i in ingredientes {
				if (i == "pimiento") {
					ingredientes.removeAtIndex(aux)
					if (ingredientes.count == 0) {
						btnAvancar.setEnabled(false)
					}
					if (ingredientes.count == 4) {
						habilitar()
					}
				}
				aux += 1
			}
		}
		print(ingredientes)
	}
	
	@IBAction func selecionarIngredientePina(value: Bool) {
		if (value && ingredientes.count <= 4) {
			ingredientes.append("piña")
			if (ingredientes.count > 0) {
				btnAvancar.setEnabled(true)
			}
			if (ingredientes.count == 5) {
				desabilitar()
			}
		}
		else {
			var aux = 0
			for i in ingredientes {
				if (i == "piña") {
					ingredientes.removeAtIndex(aux)
					if (ingredientes.count == 0) {
						btnAvancar.setEnabled(false)
					}
					if (ingredientes.count == 4) {
						habilitar()
					}
				}
				aux += 1
			}
		}
		print(ingredientes)
	}
	
	@IBAction func selecionarIngredienteAnchoa(value: Bool) {
		if (value && ingredientes.count <= 4) {
			ingredientes.append("anchoa")
			if (ingredientes.count > 0) {
				btnAvancar.setEnabled(true)
			}
			if (ingredientes.count == 5) {
				desabilitar()
			}
		}
		else {
			var aux = 0
			for i in ingredientes {
				if (i == "anchoa") {
					ingredientes.removeAtIndex(aux)
					if (ingredientes.count == 0) {
						btnAvancar.setEnabled(false)
					}
					if (ingredientes.count == 4) {
						habilitar()
					}
				}
				aux += 1
			}
		}
		print(ingredientes)
	}
	
	func habilitar() {
		switchJamon.setEnabled(true)
		switchPepperoni.setEnabled(true)
		switchPavo.setEnabled(true)
		switchSalchicha.setEnabled(true)
		switchAceituna.setEnabled(true)
		switchCebolla.setEnabled(true)
		switchPimiento.setEnabled(true)
		switchPina.setEnabled(true)
		switchAnchoa.setEnabled(true)
	}
	
	func desabilitar() {
		switchJamon.setEnabled(false)
		switchPepperoni.setEnabled(false)
		switchPavo.setEnabled(false)
		switchSalchicha.setEnabled(false)
		switchAceituna.setEnabled(false)
		switchCebolla.setEnabled(false)
		switchPimiento.setEnabled(false)
		switchPina.setEnabled(false)
		switchAnchoa.setEnabled(false)
		for i in ingredientes {
			switch i {
				case "jamón":
					switchJamon.setEnabled(true)
				case "pepperoni":
					switchPepperoni.setEnabled(true)
				case "pavo":
					switchPavo.setEnabled(true)
				case "salchicha":
					switchSalchicha.setEnabled(true)
				case "aceituna":
					switchAceituna.setEnabled(true)
				case "cebolla":
					switchCebolla.setEnabled(true)
				case "pimiento":
					switchPimiento.setEnabled(true)
				case "piña":
					switchPina.setEnabled(true)
				default:
					switchAnchoa.setEnabled(true)
			}
		}
	}
	
	@IBAction func avancar() {
		navegar(ingredientes)
	}
	
	func navegar(i:[String]) {
		pizza.adicionarIngrediente(i)
		pushControllerWithName("IdentificadorConfirmar", context: pizza)
	}
}
