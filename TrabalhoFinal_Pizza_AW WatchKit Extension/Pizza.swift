//
//  Pizza.swift
//  TrabalhoFinal_Pizza_AW
//
//  Created by Henrique Zuchetto Rossi on 23/05/16.
//  Copyright © 2016 Zuchetto. All rights reserved.
//

import Foundation

class Pizza: NSObject {
	var tamanho:String = ""
	var massa:String = ""
	var queijo:String = ""
	var ingredientes:[String] = []
	
	func adicionarTamanho(t:String) {
		tamanho = t
	}
	
	func adicionarMassa(m:String) {
		massa = m
	}
	
	func adicionarQueijo(q:String) {
		queijo = q
	}
	
	func adicionarIngrediente(i:[String]) {
		ingredientes = i
	}
	
}