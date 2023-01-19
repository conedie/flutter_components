import 'package:flutter/material.dart';
import 'package:flutter_components/theme/app_theme.dart';

class CustomCard2 extends StatelessWidget {
  final String imgUrl;
  final String? nameImg;
  const CustomCard2({super.key, required this.imgUrl, this.nameImg});
  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAlias,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      elevation: 30,
      shadowColor: AppTheme.primary.withOpacity(0.4),
      child: Column(
        children: [
          FadeInImage(
            image: NetworkImage(imgUrl),
            placeholder: const AssetImage('assets/jar-loading.gif'),
            width: double.infinity,
            height: 230,
            fit: BoxFit.cover,
          ),
          if (nameImg != null)
            Container(
              alignment: AlignmentDirectional.centerEnd,
              padding: const EdgeInsets.only(right: 20, top: 10, bottom: 10),
              child: Text(nameImg!),
            )
        ],
      ),
    );
  }
}
