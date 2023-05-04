import 'package:flutter/material.dart';

String baeconText =
    'Bacon ipsum dolor amet short loin capicola biltong, spare ribs pancetta jerky jowl picanha shoulder buffalo alcatra tail beef bacon. Pork belly buffalo pork short loin. Buffalo tri-tip beef ribs, ribeye ground round biltong doner meatball short loin ball tip tenderloin cow sausage chislic. Short ribs doner pork chop landjaeger t-bone. Meatloaf tail tri-tip corned beef filet mignon ball tip shankle ribeye tongue cow. Burgdoggen beef corned beef short ribs venison chicken fatback beef ribs. Pork loin rump drumstick cow ham. Capicola cupim ground round tongue alcatra, bresaola filet mignon jerky spare ribs t-bone cow doner shankle prosciutto fatback. T-bone andouille boudin tri-tip. Short ribs short loin hamburger jowl pancetta, turducken flank ham chicken turkey cupim kielbasa corned beef pork belly. Cupim biltong frankfurter shank, bresaola ham chislic spare ribs tri-tip alcatra swine bacon. Ground round t-bone tongue cow brisket strip steak. Turkey ground round andouille sirloin, pork leberkas tri-tip. Pastrami landjaeger strip steak cupim. Ball tip pork belly pancetta chislic ribeye short ribs salami, landjaeger drumstick spare ribs doner tenderloin. Biltong pastrami venison short ribs capicola rump doner brisket. Pork pork chop filet mignon jerky.';

class DescriptionPage extends StatelessWidget {
  const DescriptionPage({
    super.key,
    required this.title,
    required this.imagePath,
  });
  final String title;
  final String imagePath;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(children: [
            Image.asset(imagePath),
            Text(
              title,
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              baeconText,
              style: const TextStyle(
                fontSize: 16,
              ),
              textAlign: TextAlign.justify,
            ),
          ]),
        ),
      ),
    );
  }
}
