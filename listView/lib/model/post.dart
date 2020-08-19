class Post {
  const Post({
    this.title,
    this.author,
    this.imageUrl
  });

  final String title;
  final String author;
  final String imageUrl ;
}

final List<Post>posts = [
  Post(title: 'yasda',author: 'sasdasd',imageUrl: 'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1597839788768&di=6fb8cc6904670c5cf193349f05241086&imgtype=0&src=http%3A%2F%2Fpic1.win4000.com%2Fwallpaper%2F4%2F57d7abcf2070b.jpg'),
  Post(title: 'yasdasd',author: 'sasdasdasd',imageUrl: 'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1597842665334&di=7cac45e24e78020b582b6ccc9fc11777&imgtype=0&src=http%3A%2F%2Fb-ssl.duitang.com%2Fuploads%2Fitem%2F201706%2F07%2F20170607220005_L3inN.jpeg'),
  Post(title: 'ysdasdakjzkhkjhhkhkj',author: 's123123123',imageUrl: 'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1597839788768&di=6fb8cc6904670c5cf193349f05241086&imgtype=0&src=http%3A%2F%2Fpic1.win4000.com%2Fwallpaper%2F4%2F57d7abcf2070b.jpg'),
  Post(title: 'ysdasdakjzkhkjhhkhkj',author: 's123123123',imageUrl: 'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1597839788768&di=6fb8cc6904670c5cf193349f05241086&imgtype=0&src=http%3A%2F%2Fpic1.win4000.com%2Fwallpaper%2F4%2F57d7abcf2070b.jpg')
];