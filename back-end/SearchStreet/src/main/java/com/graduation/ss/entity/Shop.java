package com.graduation.ss.entity;

import java.sql.Time;
import java.util.Date;
import java.util.List;

public class Shop {
	private Long shopId;
	private String shopName;
	private List<ShopImg> shopImgList;
	private String businessLicenseImg;
	private String businessLicenseCode;
	private Integer perCost;
	private String phone;
	private String province;
	private String city;
	private String district;
	private String fullAddress;
	private String shopMoreInfo;
	//1:是移动商铺，0：不是移动商铺
	private Integer isMobile;
	private Time openTime;
	private Time closeTime;
	private String profileImg;
	private Float latitude;
	private Float longitude;
	//0：审核中，1：许可，2：不许可
	private Integer enableStatus;
	private String businessScope;
	private Date createTime;
	private Date lastEditTime;
	private Long userId;
	
	public Integer getPerCost() {
		return perCost;
	}
	public void setPerCost(Integer perCost) {
		this.perCost = perCost;
	}
	public Long getShopId() {
		return shopId;
	}
	public void setShopId(Long shopId) {
		this.shopId = shopId;
	}
	public String getShopName() {
		return shopName;
	}
	public void setShopName(String shopName) {
		this.shopName = shopName;
	}
	public List<ShopImg> getShopImgList() {
		return shopImgList;
	}
	public void setShopImgList(List<ShopImg> shopImgList) {
		this.shopImgList = shopImgList;
	}
	public String getBusinessLicenseImg() {
		return businessLicenseImg;
	}
	public void setBusinessLicenseImg(String businessLicenseImg) {
		this.businessLicenseImg = businessLicenseImg;
	}
	public String getBusinessLicenseCode() {
		return businessLicenseCode;
	}
	public void setBusinessLicenseCode(String businessLicenseCode) {
		this.businessLicenseCode = businessLicenseCode;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getProvince() {
		return province;
	}
	public void setProvince(String province) {
		this.province = province;
	}
	public String getCity() {
		return city;
	}
	public void setCity(String city) {
		this.city = city;
	}
	public String getDistrict() {
		return district;
	}
	public void setDistrict(String district) {
		this.district = district;
	}
	public String getFullAddress() {
		return fullAddress;
	}
	public void setFullAddress(String fullAddress) {
		this.fullAddress = fullAddress;
	}
	public String getShopMoreInfo() {
		return shopMoreInfo;
	}
	public void setShopMoreInfo(String shopMoreInfo) {
		this.shopMoreInfo = shopMoreInfo;
	}
	public Integer getIsMobile() {
		return isMobile;
	}
	public void setIsMobile(Integer isMobile) {
		this.isMobile = isMobile;
	}
	
	public Time getOpenTime() {
		return openTime;
	}
	public void setOpenTime(Time openTime) {
		this.openTime = openTime;
	}
	public Time getCloseTime() {
		return closeTime;
	}
	public void setCloseTime(Time closeTime) {
		this.closeTime = closeTime;
	}
	public String getProfileImg() {
		return profileImg;
	}
	public void setProfileImg(String profileImg) {
		this.profileImg = profileImg;
	}
	public Float getLatitude() {
		return latitude;
	}
	public void setLatitude(Float latitude) {
		this.latitude = latitude;
	}
	public Float getLongitude() {
		return longitude;
	}
	public void setLongitude(Float longitude) {
		this.longitude = longitude;
	}
	public Integer getEnableStatus() {
		return enableStatus;
	}
	public void setEnableStatus(Integer enableStatus) {
		this.enableStatus = enableStatus;
	}
	public String getBusinessScope() {
		return businessScope;
	}
	public void setBusinessScope(String businessScope) {
		this.businessScope = businessScope;
	}
	public Date getCreateTime() {
		return createTime;
	}
	public void setCreateTime(Date createTime) {
		this.createTime = createTime;
	}
	public Date getLastEditTime() {
		return lastEditTime;
	}
	public void setLastEditTime(Date lastEditTime) {
		this.lastEditTime = lastEditTime;
	}
	public Long getUserId() {
		return userId;
	}
	public void setUserId(Long userId) {
		this.userId = userId;
	}
	@Override
	public String toString() {
		return "Shop [shopId=" + shopId + ", shopName=" + shopName + ", shopImgList=" + shopImgList
				+ ", businessLicenseImg=" + businessLicenseImg + ", businessLicenseCode=" + businessLicenseCode
				+ ", perCost=" + perCost + ", phone=" + phone + ", province=" + province + ", city=" + city
				+ ", district=" + district + ", fullAddress=" + fullAddress + ", shopMoreInfo=" + shopMoreInfo
				+ ", isMobile=" + isMobile + ", openTime=" + openTime + ", closeTime=" + closeTime + ", profileImg="
				+ profileImg + ", latitude=" + latitude + ", longitude=" + longitude + ", enableStatus=" + enableStatus
				+ ", businessScope=" + businessScope + ", createTime=" + createTime + ", lastEditTime=" + lastEditTime
				+ ", userId=" + userId + "]";
	}
	
	
}
