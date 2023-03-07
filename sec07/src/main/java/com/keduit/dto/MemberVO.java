package com.keduit.dto;

// DB데이터 정보 저장
public class MemberVO {
   private String name;   // 이름
   private String userid;   // 이름
   private String pwd;      // 비밀번호
   private String email;   // 이메일
   private String phone;
   private int admin;      // 0:사용자 1: 관리자
   
   public String getName() {
      return name;
   }
   public void setName(String name) {
      this.name = name;
   }
   public String getUserid() {
      return userid;
   }
   public void setUserid(String userid) {
      this.userid = userid;
   }
   public String getPwd() {
      return pwd;
   }
   public void setPwd(String pwd) {
      this.pwd = pwd;
   }
   public String getEmail() {
      return email;
   }
   public void setEmail(String email) {
      this.email = email;
   }
   public String getPhone() {
      return phone;
   }
   public void setPhone(String phone) {
      this.phone = phone;
   }
   public int getAdmin() {
      return admin;
   }
   public void setAdmin(int admin) {
      this.admin = admin;
   }
   
   @Override
   public String toString() {
      return "memberVO [name=" + name + ", userid=" + userid + ", pwd=" + pwd + ", email=" + email + ", phone="
            + phone + ", admin=" + admin + "]";
   }   
}