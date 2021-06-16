package com.quiz.model;

public class QuizVO {
	private int no;	//번호
	private String category;	//장르
	private String content;	//퀴즈내용
	private String exam1;	//보기1
	private String exam2;	//보기2
	private String exam3;	//보기3
	private String exam4;	//보기4
	private int answer;	//정답
	
	public QuizVO() {
		super();
	}

	public QuizVO(int no, String category, String content, String exam1, String exam2, String exam3, String exam4,
			int answer) {
		super();
		this.no = no;
		this.category = category;
		this.content = content;
		this.exam1 = exam1;
		this.exam2 = exam2;
		this.exam3 = exam3;
		this.exam4 = exam4;
		this.answer = answer;
	}

	public int getNo() {
		return no;
	}

	public void setNo(int no) {
		this.no = no;
	}

	public String getCategory() {
		return category;
	}

	public void setCategory(String category) {
		this.category = category;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public String getExam1() {
		return exam1;
	}

	public void setExam1(String exam1) {
		this.exam1 = exam1;
	}

	public String getExam2() {
		return exam2;
	}

	public void setExam2(String exam2) {
		this.exam2 = exam2;
	}

	public String getExam3() {
		return exam3;
	}

	public void setExam3(String exam3) {
		this.exam3 = exam3;
	}

	public String getExam4() {
		return exam4;
	}

	public void setExam4(String exam4) {
		this.exam4 = exam4;
	}

	public int getAnswer() {
		return answer;
	}

	public void setAnswer(int answer) {
		this.answer = answer;
	}

	@Override
	public String toString() {
		return "QuizVO [no=" + no + ", category=" + category + ", content=" + content + ", exam1=" + exam1 + ", exam2="
				+ exam2 + ", exam3=" + exam3 + ", exam4=" + exam4 + ", answer=" + answer + "]";
	}

	
}
