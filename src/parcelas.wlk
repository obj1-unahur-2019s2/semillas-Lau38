

class Parcelas {
	var property ancho
	var property largo 
	var property horasdesol
	var property plantas =#{}
	
	
method superFicie(){
	return ancho* largo
}

method cantidadMaximaPlantas(){
return 	if (ancho > largo) {
	self.superFicie() / 5
	} 
else {
	self.superFicie() / 3 + largo
	}
}

method tieneComplicacones(){
	return plantas.any({p => p.horasDeSolQUeTolera() < horasdesol })
}	

method plantarPlanta(planta){
	
return if (self.plantasQueTiene() == self.cantidadMaximaPlantas() or horasdesol > planta.horasDeSolQUeTolera()+ 2 ){
		self.error("No se puede ")
	}
			
	else  {plantas.add(planta)}
}



method plantasQueTiene(){ // devuelve la cant que tiene //
	return plantas.size()
}
}
