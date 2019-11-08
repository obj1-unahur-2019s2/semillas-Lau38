


class Planta {
	var property anoDeObtencion
	var property altura
	var property parcelas = []
method horasDeSolQUeTolera()	
method daNuevasSemillas(){ return self.esFuerte()}
method espacioQueOcupa()
method esIdeal()
method esFuerte(){ 
	return self.horasDeSolQUeTolera() > 10
}	


	
		
}	





class Menta inherits Planta {
	
override method horasDeSolQUeTolera(){
	return 6
	}	

override method daNuevasSemillas(){
	return super() or altura > 0.4 
	
	}

override method espacioQueOcupa(){
	return altura *3
	}
override method esIdeal() {
	return parcelas.superFicie() > 6
}
}

// PARTE 2//
class HierbaBuena inherits Menta{
	override method espacioQueOcupa(){
		return super() *2
	}
	
}


class Soja inherits Planta{
	override method horasDeSolQUeTolera(){
	return if(altura < 0.5  ) { 6} else if (altura <=1 ) { 7 }  else{ 9 } 
}	


override method daNuevasSemillas(){
	return super() or anoDeObtencion > 2007 and altura > 1
}

override method espacioQueOcupa(){
	return altura /2
	}

}

// PARTE 2 //

class Sojatransgenica inherits Soja{
	override method daNuevasSemillas(){
	return false
	} 
}



class Quinoa inherits Planta{

var property horasDeSolQUeTolera

override method daNuevasSemillas(){
	return super() and anoDeObtencion > 2005
}

override method espacioQueOcupa(){
	return 0.5
	}
}
 



