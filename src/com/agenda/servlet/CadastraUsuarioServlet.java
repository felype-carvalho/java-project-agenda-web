package com.agenda.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.agenda.model.Pessoa;
import com.agenda.service.CadastraUsuarioService;

public class CadastraUsuarioServlet extends HttpServlet {
	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response)

			throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		Pessoa pessoa = new Pessoa();
		pessoa.setNome(request.getParameter("nome"));
		pessoa.setEndereco(request.getParameter("endereco"));
		pessoa.setTelefone(request.getParameter("telefone"));
		pessoa.setEmail(request.getParameter("email"));

		CadastraUsuarioService service = new CadastraUsuarioService();
		service.cadastra(pessoa);
		response.sendRedirect("busca-contatos");
	}

}
