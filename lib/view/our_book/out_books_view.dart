import 'package:book_grocer/common/color_extenstion.dart';
import 'package:flutter/material.dart';

class OurBooksView extends StatefulWidget {
  const OurBooksView({super.key});

  @override
  State<OurBooksView> createState() => _OurBooksViewState();
}

class _OurBooksViewState extends State<OurBooksView> {

  List imageArr = ["assets/img/ob1.png","assets/img/ob2.png","assets/img/ob3.png"];

  @override
  Widget build(BuildContext context) {
    var media  = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              alignment: Alignment.topCenter,
              children: [

              Image.asset("assets/img/our_books_top.png", width:  media.width, fit: BoxFit.fitWidth, ),
             

              AppBar(
                  backgroundColor: Colors.transparent,
                  elevation: 0,
                  leading: IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: const Icon(
                      Icons.arrow_back_ios,
                      color: Colors.white,
                    ),
                  ),
                ),

                Container(
                  height: media.width * 0.9 ,
                 
                  alignment: Alignment.bottomLeft,
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child:  Row( children: imageArr.map((iName) {
                      var isFirst= imageArr.first == iName;
                      var isLast = imageArr.last == iName;
                    return Container(
                      margin: const EdgeInsets.symmetric(horizontal: 8),
                      padding: isFirst ? const EdgeInsets.only(left: 15 ) : ( isLast ? const EdgeInsets.only(right: 15) : null ) ,
                      child: Image.asset( iName,  height: 120 , fit: BoxFit.fitHeight, ),);
                  } ).toList() , ),),
                )

              

            ],),


            Padding(
              padding: const EdgeInsets.symmetric(vertical: 25, horizontal: 20),
              child: Text("""Our book, meticulously crafted over months of research and collaboration, stands as a testament to the collective expertise and passion of our team. From the initial conceptualization to the final edits, every page reflects our commitment to delivering a comprehensive and engaging resource. The chapters unfold like a well-woven tapestry, seamlessly connecting ideas and insights, providing readers with a rich and immersive experience. This isn't just a book; it's a journey through the depths of knowledge, carefully curated to enlighten and inspire. We invite you to delve into the pages of 'Our Book' and embark on a voyage of discovery, where each paragraph is a stepping stone, and each chapter is a gateway to new perspectives and understanding. Our hope is that this literary endeavor becomes a source of inspiration, sparking conversations, fostering learning, and leaving an indelible mark on the minds of those who choose to explore its contents.""", textAlign: TextAlign.center , style: TextStyle(color: TColor.subTitle, fontSize: 15),),
            )
            
          ],
        ),
      ),
    );
  }
}
