import 'package:flutter/material.dart';

class TextLearnView extends StatelessWidget {
  TextLearnView({super.key, this.username});
  final String name = "fazil";

  final String? username;

  final ProjectKeys keys = ProjectKeys();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              ("Welcome $name ${name.length} "),
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.right,
              style: TextStyle(
                decoration: TextDecoration.underline,

                color: const Color.fromARGB(255, 54, 244, 117),
                fontStyle: FontStyle.italic,
                wordSpacing: 2,
                letterSpacing: 2,
                fontSize: 16,
                fontWeight: FontWeight.w600,
              ),
            ),
            Text(
              ("hello $name ${name.length} "),
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.right,
              style: ProjectStyles.WelcomeStyle,
            ),
            Text(
              ("hello $name ${name.length} "),
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.right,
              style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                color: ProjectColors.welcomeColor,
              ),
            ),

            Text(username ?? ""),

            Text(keys.Welcome),
          ],
        ),
      ),
    );
  }
}

class ProjectKeys {
  final String Welcome = "merhaba";
}

class ProjectStyles {
  static TextStyle WelcomeStyle = const TextStyle(
    decoration: TextDecoration.underline,

    color: Colors.red,
    fontStyle: FontStyle.italic,
    wordSpacing: 2,
    letterSpacing: 2,
    fontSize: 16,
    fontWeight: FontWeight.w600,
  );
}

class ProjectColors {
  static Color welcomeColor = Colors.deepPurple;
}
