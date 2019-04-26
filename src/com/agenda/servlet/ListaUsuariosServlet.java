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
	
	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException{
		
			service= new CadastraUsuarioService();
			
			List<Pessoa> pessoas = service.buscaPessoas();
			
			request.setAttribute("pessoas", pessoas);
			
			request.getRequestDispatcher("lista_contatos.jsp").forward(request, response);
			
		}
					
	}

