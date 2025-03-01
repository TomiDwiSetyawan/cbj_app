import 'package:cybear_jinni/domain/home_user/home_user_entity.dart';
import 'package:flutter/material.dart';

class ErrorSoftwareInfoCard extends StatelessWidget {
  const ErrorSoftwareInfoCard({
    required this.homeUser,
    Key? key,
  }) : super(key: key);

  final HomeUserEntity? homeUser;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Theme.of(context).errorColor,
      child: Padding(
        padding: const EdgeInsets.all(4),
        child: Column(
          children: <Widget>[
            Text(
              'Invalid software nfo, please, contact support',
              style: (Theme.of(context).primaryTextTheme.bodyText2)!
                  .copyWith(fontSize: 18),
            ),
            const SizedBox(height: 2),
            Text(
              'Details for nerds:',
              style: Theme.of(context).primaryTextTheme.bodyText2,
            ),
            Text(
              homeUser!.failureOption.fold(() => '', (f) => f.toString()),
              style: Theme.of(context).primaryTextTheme.bodyText2,
            ),
          ],
        ),
      ),
    );
  }
}
