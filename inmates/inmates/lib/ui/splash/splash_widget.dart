import './splash_helper.dart';

class SplashWidget extends StatefulWidget {
  SplashWidget();

  @override
  _SplashWidgetState createState() => _SplashWidgetState();
}

class _SplashWidgetState extends State<SplashWidget> {
  bool _firstStateEnabled = true;

  @override
  void initState() {
    super.initState();

    SplashHelper().navigateHelper(context);

    Future.delayed(
        Duration(
          milliseconds: 2000,
        ), () {
      setState(() {
        _firstStateEnabled = false;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: AnimatedCrossFade(
        firstChild: _firstWidget(),
        secondChild: _secondWidget(),
        crossFadeState: _firstStateEnabled
            ? CrossFadeState.showFirst
            : CrossFadeState.showSecond,
        duration: Duration(milliseconds: 500),
      ),
    );
  }

  Widget _firstWidget() {
    return CircleAvatar(
      backgroundColor: Colors.white38,
      radius: MediaQuery.of(context).size.height / 10,
      child: Image.asset(
        "assets/images/dormitory.png",
        fit: BoxFit.scaleDown,
        height: MediaQuery.of(context).size.height / 10,
      ),
    );
  }

  Widget _secondWidget() {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        CircleAvatar(
          backgroundColor: Colors.white38,
          radius: MediaQuery.of(context).size.height / 10,
          child: Image.asset(
            "assets/images/dormitory.png",
            fit: BoxFit.scaleDown,
            height: MediaQuery.of(context).size.height / 10,
          ),
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height / 4,
        ),
        // Container(
        // padding: EdgeInsets.all(16.0,),
        //   child: Text(
        //     "Inmates",
        //     style: TextStyle(
        //       color: Colors.white,
        //       fontSize: 24.0,
        //     ),
        //     textAlign: TextAlign.center,
        //   ),
        // ),
        _circularProgressBar(),
        Container(
          color: Colors.red,
        ),
      ],
    );
  }

  Widget _circularProgressBar() {
    return Center(
      child: Container(
        padding: EdgeInsets.symmetric(
          vertical: 16.0,
        ),
        child: Theme(
            data: ThemeData(
              accentColor: Colors.white,
            ),
            child: CircularProgressIndicator()),
      ),
    );
  }
}
