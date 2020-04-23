package estoque.loja;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.LinkedList;

import com.sun.corba.se.spi.orbutil.fsm.Guard.Result;

public class ProdutoDao {
	public void inserir (Estoque e) {
		Conexao con = new Conexao();
		try {
			String sql = "INSERT INTO bdprodutos.cad_produtos\r\n" + 
					"(descricao, marca, preco_custo, preco_venda, saldo)\r\n" + 
					"VALUES(?, ?, ?, ?, ?)";
			PreparedStatement prep = con.getConexao().prepareStatement(sql);
			prep.setString(1, e.getDescricao());
			prep.setString(2, e.getMarca());
			prep.setDouble(3, e.getPrecoCusto());
			prep.setDouble(4, e.getPrecoVenda());
			prep.setDouble(5, e.getSaldo());
			prep.execute();
		} catch (Exception e2) {
			e2.printStackTrace();
		}
		con.desconecta();
	}
	
	public LinkedList<Estoque> listar()  {
		LinkedList<Estoque> lista = new LinkedList<Estoque>();
		Conexao con = new Conexao();
		try {
			String sql = "SELECT idproduto, descricao, marca, preco_custo, preco_venda, saldo " + 
					"FROM bdprodutos.cad_produtos";
			Statement sta = con.getConexao().createStatement();
			ResultSet res = sta.executeQuery(sql);
			while (res.next()) {
				Estoque es = new Estoque();
				es.setIdproduto(res.getInt("idproduto"));
				es.setDescricao(res.getString("descricao"));
				es.setMarca(res.getString("marca"));
				es.setPrecoCusto(res.getDouble("preco_custo"));
				es.setPrecoVenda(res.getDouble("preco_venda"));
				es.setSaldo(res.getDouble("saldo"));
				lista.add(es);
			}
			res.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
		con.desconecta();
		return lista;
	}
	
	public void excluir(int idproduto) {
		Conexao con = new Conexao();
		try {
			String sql = "DELETE FROM bdprodutos.cad_produtos\r\n" + 
					"WHERE idproduto = ?";
			PreparedStatement prep = con.getConexao().prepareStatement(sql);
			prep.setInt(1, idproduto);
			prep.execute();
			
		} catch (Exception e2) {
			e2.printStackTrace();
		}
		
		con.desconecta();
	}
}
