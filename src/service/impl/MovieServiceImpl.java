package service.impl;

import java.util.List;
import java.util.Map;

import dao.impl.MovieDAOImpl;
import dao.MovieDAO;
import service.MovieService;

public class MovieServiceImpl implements MovieService {
	private MovieDAO mdao = new MovieDAOImpl();
	
	@Override
	public List<Map<String, String>> selectMovieList() {
		return mdao.selectMovieList();
	}

	@Override
	public Map<String, String> selectMovie(int miNum) {
		return mdao.selectMovieByNum(miNum);
	}
	
	@Override
	public int insertMovie(Map<String, String> movie) {
		return mdao.insertMovie(movie);
	}


	@Override
	public int deleteMovie(int miNum) {
		return mdao.deleteMovie(miNum);
	}
}
