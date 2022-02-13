import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class FacebookUI extends StatefulWidget {
  const FacebookUI({Key? key}) : super(key: key);

  static String id = "facebook_ui_page";
  @override
  _FacebookUIState createState() => _FacebookUIState();
}

class _FacebookUIState extends State<FacebookUI> {
  bool _isLike = false;
  final _wisdom = [
    "Qurʼon tilovat qilganda uni tinglanglar va jim turinglar, shoyad rahmatga erishsangiz.",
    "Sizning nafsingiz xuddi dushmaningiz kabidir. Agar u sizni jiddiy deb bilsa, u sizga itoat qiladi. Agar u sizdan birorta zaiflikni topsa, u sizni maxbus qilib oladi.",
    "Ilm egallashdan eng katta maqsad - inson qalbi va niyatini Allohdan oʻzga barcha narsadan poklashidir",
    "Kimdir 100 foizlik imkoniyatdan 10 foiz foydalanadi, kimdir 10 foizlik imkoniyatdan 100 foiz foydalanadi. Ikkinchi toifa doim yutadi.",
    "Shunday inson boʻlingki, sizni koʻrib, dunyodan hali yaxshilik koʻtarilmapti, deyishsin.",
    "Qurʼon tilovat qilganda uni tinglanglar va jim turinglar, shoyad rahmatga erishsangiz.",
    "Sizning nafsingiz xuddi dushmaningiz kabidir",
    "Ilm egallashdan eng katta maqsad - inson qalbi va niyatini Allohdan oʻzga barcha narsadan poklashidir",
    "Kimdir 100 foizlik imkoniyatdan 10 foiz foydalanadi, kimdir 10 foizlik imkoniyatdan 100 foiz foydalanadi. Ikkinchi toifa doim yutadi.",
    "Shunday inson boʻlingki, sizni koʻrib, dunyodan hali yaxshilik koʻtarilmapti, deyishsin.",
  ];

  final _person = [
    'assets/images/person/img_1.png',
    'assets/images/person/img_3.png',
    'assets/images/person/img_2.png',
    'assets/images/person/img_1.png',
    'assets/images/person/img_4.png',
    'assets/images/person/img_5.png',
    'assets/images/person/img_6.png',
    'assets/images/person/img_7.png',
    'assets/images/person/img_8.png',
    'assets/images/person/img_9.png',
  ];

  final _user = [
    'Martina Randolph',
    'Andrew Parker',
    'Karen Castillo',
    'Maisy Humr',
    'Hurry Potter',
    'Martina Randolph',
    'Leo Rup',
    'Indiana Dostov',
    'Pikasso Radrigez',
    'Anjelika Jons',
  ];

  final _story = [
    'assets/images/story/img.png',
    'assets/images/story/img_1.png',
    'assets/images/story/img_2.png',
    'assets/images/story/img_3.png',
    'assets/images/story/img_4.png',
    'assets/images/story/img_5.png',
    'assets/images/story/img_6.png',
    'assets/images/story/img_7.png',
    'assets/images/story/img_8.png',
    'assets/images/story/img_9.png',
  ];
  final _listName = [
    'Lusy',
    'Martin',
    'Karen',
    'Selena',
    'Xose',
    'Dima',
    'Jack',
    'Sundar',
    'Leo',
    'Selena',
  ];
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 6,
      child: Scaffold(
        backgroundColor: Colors.grey.shade400,
        appBar: AppBar(
          backgroundColor: Colors.black,
          elevation: 0,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('facebook', style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold, color: Colors.blue),),
              Row(
                children: [
                  CircleAvatar(
                    radius: 20,
                    backgroundColor: Colors.grey.withOpacity(0.3),
                    child: IconButton(
                      onPressed: (){},
                      icon: Icon(Icons.search, color: Colors.white, size: 19.5,),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  CircleAvatar(
                    radius: 20,
                    backgroundColor: Colors.grey.withOpacity(0.3),
                    child: IconButton(
                      onPressed: (){},
                      icon: Icon(Icons.camera_alt, color: Colors.white, size: 19.5,),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
        body: SingleChildScrollView(
          physics: const ScrollPhysics(),
          scrollDirection: Axis.vertical,
          child: Column(
            children: [

              // #search and login
              Padding(
                padding: const EdgeInsets.only(top: 1, bottom: 0.5),
                child: Container(
                  height: 60,
                  color: Colors.black,
                  width: double.infinity,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const Padding(
                        padding: EdgeInsets.only(left: 10),
                        child: SizedBox(
                          height: 40,
                          width: 40,
                          child: CircleAvatar(
                            radius: 25,
                            foregroundImage: AssetImage('assets/images/person/img_1.png'),
                          ),
                        ),
                      ),

                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: Container(
                          height: 40,
                          width: MediaQuery.of(context).size.width - 70,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(22.5),
                            border: Border.all(
                              width: 1,
                              color: Colors.grey
                            )
                          ),
                          child: const TextField(
                            decoration: InputDecoration(
                              contentPadding: EdgeInsets.only(left: 15, bottom: 10),
                              border: InputBorder.none,
                              hintText: "What's on your mind?",
                              hintStyle: TextStyle(fontSize: 17, fontWeight: FontWeight.w400, color: Colors.grey)
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),

              // #catagory
              Container(
                height: 45,
                color: Colors.black,
                width: double.infinity,
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: Container(
                    color: Colors.grey,
                    child: Row(
                      children: [

                        // #live
                        Expanded(
                            child: Container(
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Container(
                                      child:Icon(Icons.photo_camera_front, color: Colors.red,),
                                      alignment: Alignment.center,
                                    ),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    Text('Live', style: TextStyle(color: Colors.white),),
                                  ],
                                ),
                                color: Colors.black,
                                margin: EdgeInsets.only(right: 0.5),
                            )
                        ),

                        // #photo
                        Expanded(
                            child: Container(
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Container(
                                    child:const Icon(Icons.image, color: Colors.green,),
                                    alignment: Alignment.center,
                                  ),
                                  const SizedBox(
                                    width: 5,
                                  ),
                                  const Text('Photo', style: TextStyle(color: Colors.white),),
                                ],
                              ),
                              color: Colors.black,
                              margin: const EdgeInsets.only(right: 0.5),
                            )
                        ),

                        // #check
                        Expanded(
                            child: Container(
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Container(
                                    child:const Icon(Icons.location_on, color: Colors.red,),
                                    alignment: Alignment.center,
                                  ),
                                  const SizedBox(
                                    width: 5,
                                  ),
                                  const Text('Check in', style: TextStyle(color: Colors.white),),
                                ],
                              ),
                              color: Colors.black,
                            )
                        ),
                      ],
                    ),
                  ),
                )
              ),

              // #story
              Padding(
                padding: const EdgeInsets.only(top: 10, bottom: 5),
                child: Container(
                  height: MediaQuery.of(context).size.height / 3,
                  width: MediaQuery.of(context).size.width,
                  color: Colors.black,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        physics: const ScrollPhysics(),
                        shrinkWrap: true,
                        itemCount: _person.length,
                        itemBuilder: (context, index) {
                        return Padding(
                          padding: index == 0 ? const EdgeInsets.only(left: 10, right: 5) : const EdgeInsets.symmetric(horizontal: 5),
                          child: Stack(
                            children: [
                              // #story
                              Container(
                                height: MediaQuery.of(context).size.height / 3 - 20,
                                width: MediaQuery.of(context).size.width / 3,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    image: DecorationImage(
                                        image: AssetImage(_story[index]),
                                        fit: BoxFit.cover
                                    )
                                ),
                              ),

                              // #person
                              Positioned(
                                child: Container(
                                  height: 46,
                                  width: 46,
                                  decoration: BoxDecoration(
                                    color: Colors.transparent,
                                    borderRadius: BorderRadius.circular(23),
                                    border: Border.all(
                                      width: 2.5,
                                      color: Colors.blue
                                    ),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.all(3.0),
                                    child: CircleAvatar(
                                      radius: 17,
                                      foregroundImage: AssetImage(_person[index]),
                                    ),
                                  ),
                                ),
                                left: 10,
                                top: 10,
                              ),

                              // #name
                              Positioned(
                                  child: Text(_listName[index], style: const TextStyle(fontWeight: FontWeight.w400, color: Colors.white),),
                                    left: 10,
                                bottom: 10,
                              )
                            ],
                          )
                        );
                      }),
                    ),
                  ),
                ),

              // #content
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 5),
                child: ListView.builder(
                  physics: const ScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: _story.length,
                  itemBuilder: (context, index) {
                    return Padding(
                        padding: const EdgeInsets.symmetric(vertical: 5),
                        child: Container(
                          width: double.infinity,
                          child: Column(
                            children: [

                              // #bio user
                              Container(
                                height: 60,
                                color: Colors.black,
                                width: MediaQuery.of(context).size.width,
                                child: Row(
                                  children: [

                                    // #images
                                    Container(
                                      height: 60,
                                      width: 60,
                                      color: Colors.black,
                                      child: Padding(
                                        padding: const EdgeInsets.only(left: 10, top: 5, right: 8),
                                        child: CircleAvatar(
                                          radius: 25,
                                          foregroundImage: AssetImage(_person[index]),
                                        ),
                                      ),
                                    ),

                                    //#text person
                                    Container(
                                      width: MediaQuery.of(context).size.width - 60,
                                      color: Colors.white,
                                      child: Row(
                                        children: [
                                          Container(
                                            width: MediaQuery.of(context).size.width - 160,
                                            height: 60,
                                            child: Column(
                                              mainAxisAlignment: MainAxisAlignment.end,
                                              crossAxisAlignment: CrossAxisAlignment.start,
                                              children: [
                                                Text(_user[index], style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold, color: Colors.white),),
                                                SizedBox(height: 2,),
                                                Text('1 hr ago', style: TextStyle(fontSize: 13, fontWeight: FontWeight.w300, color: Colors.white),),
                                                SizedBox(height: 8,),
                                              ],
                                            ),
                                            color: Colors.black,
                                          ),

                                          // #IconButton
                                          Container(
                                            width: 100,
                                            height: 60,
                                            color: Colors.black,
                                            child: Row(
                                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                              crossAxisAlignment: CrossAxisAlignment.start,
                                              children: [
                                                IconButton(
                                                  onPressed: (){},
                                                  icon: Icon(Icons.more_horiz_rounded, color: Colors.white, size: 28,),
                                                ),
                                                IconButton(
                                                  onPressed: (){},
                                                  icon: Icon(Icons.close, color: Colors.white, size: 28,),
                                                ),
                                              ],
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                                //width: double.infinity,
                              ),

                              // #content
                              Container(
                                height: 80,
                                color: Colors.black,
                                width: MediaQuery.of(context).size.width,
                                child: Padding(
                                  padding: const EdgeInsets.only(top: 5, right: 6, left: 10, bottom: 5),
                                  child: Text(_wisdom[index], style: const TextStyle(fontSize: 15, color: Colors.white),),
                                ),
                              ),

                              // #images content
                             ClipRRect(
                               child: Image(
                                 image: AssetImage(_story[index]),
                               ),
                             ),

                              // #fovorite and likes
                              Container(
                                height: 90,
                                color: Colors.black,
                                width: MediaQuery.of(context).size.width,
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(horizontal: 10),
                                  child: Container(
                                    height: 90,
                                    color: Colors.black,
                                    width: MediaQuery.of(context).size.width,
                                    child: Column(
                                      children: [
                                        Expanded(
                                          child: Container(

                                            child: Row(
                                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                              crossAxisAlignment: CrossAxisAlignment.center,
                                              children: [
                                                Container(
                                                  width: MediaQuery.of(context).size.width/2,
                                                  child: Row(
                                                    crossAxisAlignment: CrossAxisAlignment.center,
                                                    mainAxisAlignment: MainAxisAlignment.start,
                                                    children: [
                                                      IconButton(
                                                        onPressed: (){
                                                          setState(() {
                                                            _isLike = true;
                                                          });
                                                        },
                                                        icon: _isLike == true ? Icon(Icons.favorite, color: Colors.red,)
                                                            : Icon(FontAwesomeIcons.thumbsUp, size: 20, color: Colors.white,)
                                                      ),
                                                      Text('222', style: TextStyle(fontWeight: FontWeight.w400, color: Colors.white),
                                                      textAlign: TextAlign.start,
                                                      )
                                                    ],
                                                  ),
                                                ),
                                                Text('43 comments 6 shares', style: TextStyle(fontWeight: FontWeight.w400, color: Colors.white),),
                                              ],
                                            ),
                                          ),
                                        ),
                                        Expanded(
                                          child: Container(
                                            color: Colors.black,
                                              child: Row(
                                                children: [

                                                  // #like
                                                  Expanded(
                                                      child: Container(
                                                        child: Row(
                                                          mainAxisAlignment: MainAxisAlignment.center,
                                                          children: [
                                                            Container(
                                                              child: FaIcon(FontAwesomeIcons.thumbsUp, color: Colors.blue, size: 20,),
                                                              alignment: Alignment.center,
                                                            ),
                                                            SizedBox(
                                                              width: 5,
                                                            ),
                                                            Text('Like', style: TextStyle(color: Colors.blue),),
                                                          ],
                                                        ),
                                                        color: Colors.black,
                                                        margin: EdgeInsets.only(right: 0.5),
                                                      )
                                                  ),

                                                  // #comment
                                                  Expanded(
                                                      child: Container(
                                                        child: Row(
                                                          mainAxisAlignment: MainAxisAlignment.center,
                                                          children: [
                                                            Container(
                                                              child:FaIcon(FontAwesomeIcons.commentAlt, color: Colors.white, size: 20,),
                                                              alignment: Alignment.center,
                                                            ),
                                                            const SizedBox(
                                                              width: 5,
                                                            ),
                                                            Text('Comment', style: TextStyle(color: Colors.white),),
                                                          ],
                                                        ),
                                                        color: Colors.black,
                                                        margin: EdgeInsets.only(right: 0.5),
                                                      )
                                                  ),

                                                  // #share
                                                  Expanded(
                                                      child: Container(
                                                        child: Row(
                                                          mainAxisAlignment: MainAxisAlignment.center,
                                                          children: [
                                                            Container(
                                                              child:FaIcon(FontAwesomeIcons.share, color: Colors.white, size: 20,),
                                                              alignment: Alignment.center,
                                                            ),
                                                            const SizedBox(
                                                              width: 5,
                                                            ),
                                                            Text('Share', style: TextStyle(color: Colors.white),),
                                                          ],
                                                        ),
                                                        color: Colors.black,
                                                      )
                                                  ),
                                                ],
                                              ),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                    );
                  }
              ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
