object gimenez {
	// la linea que sigue es equivalente a todo lo que está debajo.
	// le agrega al objeto: un atributo, el método para acceder, y el método para modificar.
//	var property sueldo = 15000

	var sueldo = 15000
	var totalCobrado = 0
	method sueldo() { return 15000 }
	method sueldo(nuevoValor) { sueldo = nuevoValor }
	method cobrarSueldo() { totalCobrado += self.sueldo() }
	method totalCobrado() { return totalCobrado }
}

object baigorria {
	var cantidadEmpanadasVendidas = 100
	var montoPorEmpanada = 15
	var sueldo = 15000
	var deuda = 0
	var dinero = 0
	
	method totalDeuda() = deuda
	method todalDinero() = dinero
	
	method gasta(cuanto){
		if (dinero = 0) {
			deuda += cuanto
		}
		else if(dinero >= cuanto) {
			dinero -= cuanto
		}
		else{
			var resto = cuanto - dinero
			dinero = 0
			deuda += resto
		}
	}
	
	method venderEmpanada() {
		cantidadEmpanadasVendidas += 1
	}
 	
	method sueldo() = cantidadEmpanadasVendidas * montoPorEmpanada
	
	method cobrarSueldo(){ 
		var resto = sueldo - deuda
		if (resto >= 0) {
			deuda = 0 
			dinero += resto
		}
		else {
			dinero = 0
			deuda += resto * -1
		}
	}
}

object galvan {
	var dinero = 300000
	method dinero() { return dinero }
	method pagarA(empleado) { 
		dinero -= empleado.sueldo()
		empleado.cobrarSueldo()
	}
}
