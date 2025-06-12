import 'package:flutter/cupertino.dart';
import 'package:tasks/features/live/view/widget/comments_builder.dart';
import 'package:tasks/models/live_model.dart';

class CommentsList extends StatelessWidget {
  const CommentsList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder:(context,index)=> commentsBuilder(users[index]),
      itemCount: users.length,
    );
  }
}
