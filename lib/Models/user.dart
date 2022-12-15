class User {
  String dpUrl = "https://randomuser.me/api/portraits/men/";
  String name;
  String lastMessage;
  String lastMessageTime;
  String lastCallTime;
  String about;

  User(this.name, this.lastMessage, this.lastMessageTime, this.lastCallTime,
      this.about);
}
