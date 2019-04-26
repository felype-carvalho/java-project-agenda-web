package com.agenda.service;

import java.util.List;

import com.agenda.dao.PessoaDAO;
import com.agenda.model.Pessoa;
import com.sun.org.apache.bcel.internal.generic.DALOAD;

public class CadastraUsuarioService {

	public void cadastra(Pessoa pessoa) {
		
		PessoaDAO canal = new PessoaDAO();
		
		canal.cadastro(pessoa);
		
		
		
	}
	
	public List<Pessoa> buscaPessoas(){
		
		PessoaDAO dao = new PessoaDAO();
		
		dao.buscaPessoas();
		
		return dao.buscaPessoas();
	}
}
