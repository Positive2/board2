package com.spring.board.dto;

import java.sql.Timestamp;

public class BoardDto {
	private int board_num;
	private String board_title;
	private String board_writer;
	private String board_content;
	private int board_hit;
	private int board_recommend;
	private Timestamp board_reg_date;
	private int board_reply_count;
	public int getBoard_num() {
		return board_num;
	}
	public void setBoard_num(int board_num) {
		this.board_num = board_num;
	}
	public String getBoard_title() {
		return board_title;
	}
	public void setBoard_title(String board_title) {
		this.board_title = board_title;
	}
	public String getBoard_writer() {
		return board_writer;
	}
	public void setBoard_writer(String board_writer) {
		this.board_writer = board_writer;
	}
	public String getBoard_content() {
		return board_content;
	}
	public void setBoard_content(String board_content) {
		this.board_content = board_content;
	}
	public int getBoard_hit() {
		return board_hit;
	}
	public void setBoard_hit(int board_hit) {
		this.board_hit = board_hit;
	}
	public int getBoard_recommend() {
		return board_recommend;
	}
	public void setBoard_recommend(int board_recommend) {
		this.board_recommend = board_recommend;
	}
	public Timestamp getBoard_reg_date() {
		return board_reg_date;
	}
	public void setBoard_reg_date(Timestamp board_reg_date) {
		this.board_reg_date = board_reg_date;
	}
	public int getBoard_reply_count() {
		return board_reply_count;
	}
	public void setBoard_reply_count(int board_reply_count) {
		this.board_reply_count = board_reply_count;
	}
	
	@Override
	public String toString() {
		return "BoardDto [board_num=" + board_num + ", board_title=" + board_title + ", board_writer=" + board_writer
				+ ", board_content=" + board_content + ", board_hit=" + board_hit + ", board_recommend="
				+ board_recommend + ", board_reg_date=" + board_reg_date + ", board_reply_count=" + board_reply_count
				+ "]";
	}
	
	
}