import './login_helper.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: InmatesAppbar(context),
        body: LoginWidget(),
      ),
    );
  }
}