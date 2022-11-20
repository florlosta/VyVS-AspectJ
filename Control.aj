

public aspect Control {
	after():
		call(* *.start()) {
		System.out.println("Se inició un hilo");
	}

	after(int indice, boolean correcto):
		call(* *.actualizar(int, boolean)) && args(indice, correcto) {
			System.out.println("se modificó la celda con el numero "+ (indice+1));
	}	
	
	
	after() returning(Boolean gano):
		call(* *.gano()) {
		if (gano) 
			System.out.println ("gano");
		else System.out.println ("no gano");
	}
	
	before():
		call(* *.inicializarTablero()) {
			System.out.println("se inicializó el tablero correctamente");
		}
	}
	
	

