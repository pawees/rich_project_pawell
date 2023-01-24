

import 'package:flutter/material.dart';


class CardScreen extends StatelessWidget {
  const CardScreen( {Key? key})
      : super(key: key);


  @override
  Widget build(BuildContext context) {
    return CardView();
  }
}

class CardView extends StatefulWidget {
  CardView({Key? key}) : super(key: key);


  @override
  CardViewState createState() => CardViewState();
}

class CardViewState extends State<CardView> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    print('build $context');
    return
      SingleChildScrollView(
            physics: AlwaysScrollableScrollPhysics(),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                  decoration: BoxDecoration(
                    border: Border(
                        bottom:
                        BorderSide(color: Theme.of(context).dividerColor)),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(20, 20, 20, 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Карта',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 16),
                        )
                      ],
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 17.0, horizontal: 17),
                    child: Text(
                      'Ваша карта',
                      style:
                      TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                  ),
                ),
                cardBarcode(),
                SizedBox(
                  height: 60,
                ),
              ],
            ),
          );

  }

  Widget bonusesDiscount() {
    return Container(
      height: 150,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
            bottomRight: Radius.circular(16), bottomLeft: Radius.circular(16)),
        //color: Colors.white,
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 16),
        child: Row(
          children: [
            Expanded(
              flex: 7,
              child: Container(
                height: 105,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(8)),
                  color: Color.fromRGBO(119, 177, 44, 1),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 16.0, vertical: 16),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Ваша скидка',
                            style: textOnBonuses(),
                          ),
                          Icon(
                            Icons.info_outline,
                            color: Colors.white,
                          ),
                        ],
                      ),
                      Text(
                        '150',
                        style: numbers(),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              width: 17,
            ),
            // Expanded(
            //   flex: 3,
            //   child: Container(
            //     height: 116.h,
            //     decoration: BoxDecoration(
            //       borderRadius: BorderRadius.all(Radius.circular(8)),
            //       color: Color.fromRGBO(119, 177, 44, 1),
            //     ),
            //     child: Padding(
            //       padding: const EdgeInsets.symmetric(
            //           horizontal: 16.0, vertical: 16),
            //       child: Column(
            //         crossAxisAlignment: CrossAxisAlignment.start,
            //         mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //         children: [
            //           Text(
            //             'Скидка',
            //             style: textOnBonuses(),
            //           ),
            //           Text(
            //             '${(clientInfo!.currentSale).round()}%',
            //             style: numbers(),
            //           ),
            //         ],
            //       ),
            //     ),
            //   ),
            // ),
          ],
        ),
      ),
    );
  }

  Widget cardBarcode() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 17),
      child: Card(
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(20))),
        child: Padding(
          padding: const EdgeInsets.fromLTRB(16, 16, 16, 8),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset(
                    'img/Frame 31.png',
                    scale: 2,
                  ), Container(
                    width: 121,
                    height: 38,
                    decoration: BoxDecoration(
                        borderRadius:
                        BorderRadius.all(Radius.circular(20)),
                        color: Color.fromRGBO(254, 200, 75, 1)),
                    child: Center(
                        child: Text(
                          'Сотрудник',
                          style: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.w600),
                        )),
                  )

                ],
              ),
              SizedBox(
                height: 39,
              ),
            ],
          ),
        ),
      ),
    );
  }



  Widget infoEmployee() {
    return TextButton(
        onPressed: () async {},
        child: Text(
          'Условия программы лояльности',
          style: TextStyle(color: Colors.black54),
        ));
  }

  Widget cardEmployee() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(8)),
            color: Color.fromRGBO(247, 191, 76, 1)),
        child: Padding(
          padding: const EdgeInsets.fromLTRB(16, 16, 16, 7),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Лимит покупки на месяц',
                    style: TextStyle(fontSize: 12),
                  ),
                  Row(
                    children: [
                      Text(
                        '10 р.',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        width: 6,
                      ),
                      Icon(
                        Icons.info_outline,
                        color: Colors.white,
                      )
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: 16,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Потраченор.',
                      style: TextStyle(
                          color: Color.fromRGBO(113, 79, 8, 1),
                          fontSize: 15),
                    ),
                    Text(
                      'Осталось р.',
                      style: TextStyle(
                          color: Color.fromRGBO(113, 79, 8, 1),
                          fontSize: 15),
                    ),
                  ],
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }

  TextStyle numbers() {
    return TextStyle(
        color: Colors.white, fontSize: 24 , fontWeight: FontWeight.bold);
  }

  TextStyle textOnBonuses() {
    return TextStyle(
      color: Colors.white,
      fontSize: 15 ,
    );
  }
}


