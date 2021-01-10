package com.web.store.campaign.model;

import java.io.Serializable;

import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.OneToOne;
import javax.persistence.PrimaryKeyJoinColumn;
import javax.persistence.Table;

import org.hibernate.annotations.GenericGenerator;
import org.hibernate.annotations.Parameter;

@Entity
@Table(name="discountParams")
public class DiscountParams implements Serializable{	
	
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	@Id
	@GenericGenerator(name = "generator", strategy = "foreign", parameters = @Parameter(name="property", value = "campaign"))
	@GeneratedValue(generator = "generator")
	private Integer id;
	private Double offParam;
	private Integer amountOffParam;
	private Integer	amountUpTo;
	@OneToOne(fetch = FetchType.LAZY)
	@PrimaryKeyJoinColumn
	private Campaign campaign;
	
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public Double getOffParam() {
		return offParam;
	}
	public void setOffParam(Double offParam) {
		this.offParam = offParam;
	}
	public Integer getAmountOffParam() {
		return amountOffParam;
	}
	public void setAmountOffParam(Integer amountOffParam) {
		this.amountOffParam = amountOffParam;
	}
	public Integer getAmountUpTo() {
		return amountUpTo;
	}
	public void setAmountUpTo(Integer amountUpTo) {
		this.amountUpTo = amountUpTo;
	}
	public Campaign getCampaign() {
		return campaign;
	}
	public void setCampaign(Campaign campaign) {
		this.campaign = campaign;
	}
	
	
}