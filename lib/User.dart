class User{
  String name;
  String username;
  String avatar;
  String banner;
  String about;
  int following;
  int follower;
  int friend;
  int State;
  int city;
  User(this.name, this.username, this.avatar, this.banner, this.about, this.following, this.follower, this.friend , this.State, this.city);
  User.witoutCityAndState(this.name, this.username, this.avatar, this.banner, this.about, this.following, this.follower, this.friend );
}

class Feed {
  User user;
  String feed;
  String image;
  int likes;
  int shares;
  int comments;
  int timeStamps;
  bool liked;
  bool reshared;
  Feed(this.user, this.feed, this.image, this.likes, this.shares, this.comments,
      this.timeStamps, this.liked, this.reshared);

}