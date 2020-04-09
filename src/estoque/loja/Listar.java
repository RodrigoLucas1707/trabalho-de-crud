package estoque.loja;

import java.util.LinkedList;

public class Listar {
	private static LinkedList<Estoque> lista = new LinkedList<Estoque>();
	
	public void inserir(Estoque e) {
		lista.add(e);
	}
	
	public LinkedList<Estoque> listar() {
		return lista;
	}
}
