import './image_helper.dart';

class ImageAvatar extends StatelessWidget {
  final String imagePath;
  final double radius;

  const ImageAvatar(
    this.imagePath, {
    this.radius,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: _imageAvatar(),
    );
  }

  Widget _imageAvatar() {
    return FutureBuilder(
      future: ImageHelper().assetImageExists(imagePath, null),
      builder: (BuildContext context, AsyncSnapshot snapshot) {
        if (snapshot.hasData == false) {
          return CircularProgressIndicator();
        }
        return Center(
          child: Container(
            width: radius ?? 80.0,
            height: radius ?? 80.0,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                fit: BoxFit.scaleDown,
                image: AssetImage(snapshot.data),
              ),
            ),
          ),
        );
      },
    );
  }
}
