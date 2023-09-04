class account{
  String username = "";
  String password = "";
  String mobilenum = "";
  String email = "";
  String vechileNum = "";
  int vechiletype = 0;

  account();

  
  String getUsername()
  {
    return this.username;
  }

  String getPassword()
  {
    return this.password;
  }

  String getMobilenum()
  {
    return this.mobilenum;
  }
  String getVechileNum()
  {
    return this.vechileNum;
  }
  int getVechileType()
  {
    return this.vechiletype;
  }

  void setUsername(String username)
  {
    this.username = username;
  }
  void setPassword(String password)
  {
    this.password = password;
  }
}