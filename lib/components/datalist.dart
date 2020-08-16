

class Activities{
   String title;
 String image;
   String author;
   String date;
   int likes;
   int comments;
   
 

 Activities({
   this.title,
   this.image,
   this.author,
   this.date,
   this.likes,
   this.comments,
   
 });
}

List <Activities> activitydata = [

  Activities(
     title: 'Clothes Distribution to Poor Kids',
      image: 'images1/jelleke.jpg',
      author: 'BY:Helping Hands',
      date: '1 July 2020',
      likes: 65,
      comments: 21,
  ),

   Activities(
      title: 'Elderly Care Refurnished',
      image: 'images1/janko.jpg',
      author: 'By:Hamro Sewa Kendra',
      date: '23 June 2020',
      likes: 227,
      comments: 45,
    ),
      
    //   Activities(
    //   title: 'Elderly Care Refurnished',
    //   image: 'janko.jpg',
    //   author: 'By:Hamro Sewa Kendra',
    //   date: '23 June 2020',
    //   likes: 227,
    //   comments: 45,
    // ),
   
];
 