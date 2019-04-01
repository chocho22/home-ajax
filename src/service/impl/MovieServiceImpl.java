package service.impl;

import java.util.Map;

import dao.impl.MovieDAOImpl;
import dao.MovieDAO;
import service.MovieService;

public class MovieServiceImpl implements MovieService {
	private MovieDAO mdao = new MovieDAOImpl();
	@Override
	public int insertMovie(Map<String, String> movie) {
		return mdao.insertMovie(movie);
	}
}
