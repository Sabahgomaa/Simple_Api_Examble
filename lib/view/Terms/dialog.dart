import 'package:flutter/cupertino.dart';
import 'package:simple_api_example/core/route.dart';
import 'package:simple_api_example/view/Terms/controller.dart';

showTermsDialog(BuildContext context) {
  final controller = TermsCubit.of(context);
  showCupertinoDialog(
      context: MagicRouter.currentContext,
      builder: (context) => CupertinoAlertDialog(
            title: Text('Terms'),
            content: Text('Bla' * 100),
            actions: [
              CupertinoButton(
                onPressed: () {
                  controller.agree(true);
                  MagicRouter.pop();
                },
                child: Text('Agree'),
              ),
              CupertinoButton(
                child: Text('Cancel'),
                onPressed: MagicRouter.pop,
              )
            ],
          ));
}
