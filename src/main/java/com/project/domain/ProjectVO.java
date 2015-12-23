package com.project.domain;

public class ProjectVO {
	private Integer id;
	private String name;
	private String start_date;
	private String end_date;
	private String website;
	private String detail;

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getStart_date() {
		return start_date;
	}

	public void setStart_date(String start_date) {
		this.start_date = start_date;
	}

	public String getEnd_date() {
		return end_date;
	}

	public void setEnd_date(String end_date) {
		this.end_date = end_date;
	}

	public String getWebsite() {
		return website;
	}

	public void setWebsite(String website) {
		this.website = website;
	}

	public String getDetail() {
		return detail;
	}

	public void setDetail(String detail) {
		this.detail = detail;
	}

	@Override
	public String toString() {
		return "ProjectVO[id: " + id + ", name: " + name + ", start_date: "
				+ start_date + ", end_date:" + end_date + ", website: "
				+ website + ", detail: " + detail + "]\n";
	}

}
