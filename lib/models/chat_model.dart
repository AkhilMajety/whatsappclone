class ChatModel {
  final String name;
  final String message;
  final String time;
  final String avatarUrl;

  ChatModel({this.avatarUrl, this.message, this.name, this.time});
}
  List<ChatModel> dummyData = [
    new ChatModel(
      name: "Akhil",
      message: "Hello how are you",
      time: "15:30",
      avatarUrl:
          "https://www.cricdost.com/blog/wp-content/uploads/2019/01/rohit-sharma.png",
    ),
        new ChatModel(
      name: "Rohith",
      message: "Sixer",
      time: "15:30",
      avatarUrl:
          "https://www.cricdost.com/blog/wp-content/uploads/2019/01/rohit-sharma.png",
    ),
        new ChatModel(
      name: "Pollard",
      message: "Out of the stadium",
      time: "15:30",
      avatarUrl:
          "https://www.cricdost.com/blog/wp-content/uploads/2019/01/rohit-sharma.png",
    ),    new ChatModel(
      name: "Quinton",
      message: "Hello how are you",
      time: "15:30",
      avatarUrl:
          "https://www.cricdost.com/blog/wp-content/uploads/2019/01/rohit-sharma.png",
    )
  ];
