package com.agenda.servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.agenda.model.Pessoa;
import com.agenda.service.CadastraUsuarioService;

@WebServlet("/busca-contatos")
public class ListaUsuariosServlet extends HttpServlet {

	private static final long serialVersionUID = 1L;
	private CadastraUsuarioService service;


	public String execute(HttpServletRequest  request, HttpServletResponse response) throws Exception{
		this.service = new CadastraUsuarioService();
		List <Pessoa> contatos = this.service.buscaPessoas();
		request.setAttribute("contatos", contatos);
		return "tabela-contato.jsp";
	}
	
	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response)

		throws ServletException, IOException {
		service = new CadastraUsuarioService();
		List<Pessoa> pessoas = service.buscaPessoas();
		request.setAttribute("contatos", pessoas);
		request.getRequestDispatcher("lista_contatos.jsp").forward(request, response);
	}
}
