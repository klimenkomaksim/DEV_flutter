import 'package:dev_flutter/components/post.dart';
import 'package:flutter/material.dart';
import 'package:dev_flutter/temporary/post_data.dart';

class PostScreen extends StatelessWidget {
  const PostScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(),
        body: Post(
            title: postData.title,
            coverImageUrl: postData.coverImage,
            tags: postData.tags,
            username: postData.username,
            data: postData.data,
            publishDate: postData.publishDate,
            profileImageUrl: postData.profileImage));
  }
}
