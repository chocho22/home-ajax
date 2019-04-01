package dao.impl;

import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.Map;

import ajax.db.DBCon;
import dao.MovieDAO;

public class MovieDAOImpl implements MovieDAO {
	private static String insertMovie = "insert into movie_info( " +
			" mi_num,mi_name,mi_year,mi_national,mi_vendor,mi_director) " +
			" values(seq_mi_num.nextval,?,?,?,?,?) ";

	@Override
	public int insertMovie(Map<String, String> movie) {
		try {
			PreparedStatement ps = DBCon.getCon().prepareStatement(insertMovie);
			ps.setString(1, movie.get("ui_name"));
			ps.setString(2, movie.get("ui_year"));
			ps.setString(3, movie.get("ui_national"));
			ps.setString(4, movie.get("ui_vendor"));
			ps.setString(5, movie.get("ui_director"));
			return ps.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			DBCon.close();
		}
		return 0;
	}
}
