package com.quiz.model;

public class QuizListVO {
	private int listNo;
	private int no;
	private int getPoint;
    private int corCount;
	
    public QuizListVO() {
		super();
	}

	public QuizListVO(int listNo, int no, int getPoint, int corCount) {
		super();
		this.listNo = listNo;
		this.no = no;
		this.getPoint = getPoint;
		this.corCount = corCount;
	}

	public int getListNo() {
		return listNo;
	}

	public void setListNo(int listNo) {
		this.listNo = listNo;
	}

	public int getNo() {
		return no;
	}

	public void setNo(int no) {
		this.no = no;
	}

	public int getGetPoint() {
		return getPoint;
	}

	public void setGetPoint(int getPoint) {
		this.getPoint = getPoint;
	}

	public int getCorCount() {
		return corCount;
	}

	public void setCorCount(int corCount) {
		this.corCount = corCount;
	}

	@Override
	public String toString() {
		return "QuizListVO [listNo=" + listNo + ", no=" + no + ", getPoint=" + getPoint + ", corCount=" + corCount
				+ "]";
	}

	
    
    
}
