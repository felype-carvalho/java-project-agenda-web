package com.agenda.service;

import java.util.List;

import com.agenda.dao.PessoaDAO;
import com.agenda.model.Pessoa;
import com.sun.org.apache.bcel.internal.generic.DALOAD;

public class CadastraUsuarioService {

	private PessoaDAO dao = new PessoaDAO();
	
	public void cadastra(Pessoa pessoa) {				
		this.dao.cadastro(pessoa);				
	}
	public List<Pessoa> buscaPessoas(){						
		return this.dao.buscaPessoas();
	}
	public void removeContato(Pessoa pessoa) {
		this.dao.remove(pessoa);
	}
	public void alterar(Pessoa pessoa) {
		this.dao.alterar(pessoa);
	}
}
