class Status {
  String name;
  String time;
  String url;

  Status({this.name, this.time, this.url});
}

List<Status> recentUpdates = [
  new Status(name: "Person 1", time: "Today, 12:00 am", url: ""),
  new Status(name: "Person 2", time: "Today, 12:00 am", url: ""),
  new Status(name: "Person 3", time: "Today, 12:00 am", url: ""),
  new Status(name: "Person 4", time: "Today, 12:00 am", url: ""),
];

List<Status> viewedUpdates = [
  new Status(name: "Person 5", time: "Yesterday, 12:00 am", url: ""),
  new Status(name: "Person 6", time: "Yesterday, 12:00 am", url: ""),
  new Status(name: "Person 7", time: "Yesterday, 12:00 am", url: ""),
  new Status(name: "Person 8", time: "Yesterday, 12:00 am", url: ""),
];
