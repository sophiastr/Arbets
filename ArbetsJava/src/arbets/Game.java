package arbets;

import java.time.LocalDateTime;

public class Game {
	private int id;
	private LocalDateTime datetime;
	private String playingField;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public LocalDateTime getDatetime() {
		return datetime;
	}
	public void setDatetime(LocalDateTime datetime) {
		this.datetime = datetime;
	}
	public String getPlayingField() {
		return playingField;
	}
	public void setPlayingField(String playingField) {
		this.playingField = playingField;
	}
	@Override
	public String toString() {
		return "Game [id=" + id + ", datetime=" + datetime + ", playingField=" + playingField + "]";
	}
}
