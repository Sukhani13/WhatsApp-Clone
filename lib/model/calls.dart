class Call {
  String name;
  String time;
  String url;

  Call({this.name, this.time, this.url});
}

List<Call> incoming = [
  new Call(name: "Person 1", time: "Today, 12:00 am", url: ""),
  new Call(name: "Person 3", time: "Today, 12:00 am", url: ""),
  new Call(name: "Person 5", time: "Yesterday, 12:00 am", url: ""),
];

List<Call> outgoing = [
  new Call(name: "Person 2", time: "Today, 12:00 am", url: ""),
  new Call(name: "Person 4", time: "Yestersay, 12:00 am", url: ""),
];
