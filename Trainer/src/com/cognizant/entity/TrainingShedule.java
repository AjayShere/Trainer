package com.cognizant.entity;

import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
@Entity
public class TrainingShedule {
	
	@Id
	private Integer sheduleId;
	private Date startDate;
	private Integer Duration;
	
	@ManyToOne( fetch = FetchType.LAZY)
	@JoinColumn(name="TrainerId")
	private TrainerDetails TrainerDetails;

	
	
	
	public Integer getSheduleId() {
		return sheduleId;
	}

	public void setSheduleId(Integer sheduleId) {
		this.sheduleId = sheduleId;
	}

	public Date getStartDate() {
		return startDate;
	}

	public void setStartDate(Date startDate) {
		this.startDate = startDate;
	}

	public Integer getDuration() {
		return Duration;
	}

	public void setDuration(Integer duration) {
		Duration = duration;
	}

	public TrainerDetails getTrainerDetails() {
		return TrainerDetails;
	}

	public void setTrainerDetails(TrainerDetails trainerDetails) {
		TrainerDetails = trainerDetails;
	}

	public TrainingShedule() {
		
		// TODO Auto-generated constructor stub
	}

	@Override
	public String toString() {
		return "TrainingShedule [sheduleId=" + sheduleId + ", startDate=" + startDate + ", Duration=" + Duration
				+ ", TrainerDetails=" + TrainerDetails + "]";
	}

	public TrainingShedule(Integer sheduleId, Date startDate, Integer duration,
			com.cognizant.entity.TrainerDetails trainerDetails) {
		super();
		this.sheduleId = sheduleId;
		this.startDate = startDate;
		Duration = duration;
		TrainerDetails = trainerDetails;
	}
	
	

}
