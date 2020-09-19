import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:intl/intl.dart';
import 'package:flutter/material.dart';
import '../../constants/transaction_const.dart';
//transaction card
class UserTransactionCard extends StatelessWidget {
   DateTime day;
   String donee;
   String donor;
   Timestamp datetime;
   String amount;
  String donorImage;
  UserTransactionCard({this.day,@required this.donor, @required this.donee, @required this.datetime, @required this.donorImage, @required this.amount});
  
                      
String setDate(DateTime day){
  
  DateTime now = DateTime.now();
  final day2 = DateTime(day.year,day.month,day.day);
  int day1 = now.difference(day2).inDays;
  final today = DateTime(now.year, now.month, now.day);
  final yesterday = DateTime(now.year,now.month,now.day-1);
  var timeAgo = day1.toString();
  String ago ;
  if(day2 == today){
    ago = 'Today';
  }
  else if(day2 == yesterday){
      ago = 'Yesterday';
  }
  else if(day1 >=2  && day1 < 30){
    ago = '$timeAgo days ago';
  } 

  else if(day1 >=30 && day1<=32){
    ago = ' 1 month ago';
  }
  else{
    ago = 'Few months ago';
  }
  return(ago);       
}
  
  @override
  Widget build(BuildContext context) {
    DateTime date = datetime.toDate();
    String time = DateFormat('dd MMM yyyy').format(date);
    // DateTime date = DateTime.parse(time);
    // print(date);
    //  DateFormat format = new DateFormat("dd MMM yyyy");
    // DateTime formattedDate = format.parse(time);
    // String displayTime = DateFormat('dd MMM yyyy').format(formattedDate);
     double donatedamount = double.parse(amount);
    MediaQueryData queryData;
    queryData = MediaQuery.of(context);
    double height =  queryData.size.height*0.007;
    double cardWidth = MediaQuery.of(context).size.width*0.9;
    double width = cardWidth*0.035;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(setDate(date), style: kTransactionCardBoxText,),
        SizedBox(
                    height: queryData.size.height*0.007,
                  ),
        Container(
              margin: EdgeInsets.symmetric(vertical: height),
              width:MediaQuery.of(context).size.width*0.95,
              height:MediaQuery.of(context).size.height*0.1,
              decoration:kHomeDecoration,
              padding: EdgeInsets.all(width),
              child: Container(
                 width: cardWidth*1,
                child: Row(
                  children: <Widget>[
                  FittedBox(
                    child: Container(
                      width: cardWidth*0.12,
                      child: CircleAvatar(
                        backgroundImage: NetworkImage(donorImage),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: cardWidth*0.03,
                  ),
                  Container(
                    width: cardWidth*0.45,
                    child: FittedBox(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Container(
                             width: cardWidth*0.4,
                            child: FittedBox(
                                child: Row(
                                children: <Widget>[
                                  FittedBox(
                                    child: Text(
                                      'to:',
                                      style: kTransactionCardBoxText
                                    ),
                                  ),
                                  SizedBox(
                                    width: MediaQuery.of(context).size.width*0.02,
                                  ),
                                  FittedBox(
                                    child: Text(
                                      donee, 
                                      style: kTransactionCardDoneeBoxText
                                    ),
                                  ),
                                ]
                              ),
                            ),
                          ),
                          FittedBox(
                            child: Wrap(
                               alignment: WrapAlignment.spaceBetween,
                               direction: Axis.vertical,
                               children: [
                                Text( 
                                    donor, 
                                    style:kDetailTransactionCardText
                                  ),
                                SizedBox(
                                  width: MediaQuery.of(context).size.width*0.02,
                                ),
                                Text(
                                  '$time',
                                  style: kDetailTransactionCardText
                                ),
                              ],
                            ),
                          ),
                          
                        ]
                      ),
                    ),
                  ),
                  SizedBox(
                    width: cardWidth*0.05,
                  ),
                    Container(
                      alignment: Alignment(1.0,0.0),
                      width: cardWidth*0.30,
                      child: FittedBox(
                              child: Text('Rs $donatedamount',
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight:FontWeight.bold,
                                  color: Color(0xFFFA2E69),
                                ),
                              ),
                            ),
                    ),  
                  ]
                  
                ),
              ),
                  
        
        ),
        SizedBox(
                    height: height*0.02,
                  ),
      ],
    );
  }
}


