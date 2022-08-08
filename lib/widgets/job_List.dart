class Job{
  String logoURL;
  String company;
  String title;
  String location;
   List <String> req;
   Job( this.logoURL, this.company, this.title, this.location, this.req);


   static List <Job> generatedJobList () {
     return [
       Job('Airbnb inc','Airbnb inc','417 Marian pla Texas \n united states','assets/images/airbnb_logo.png',[
         'Creative with an Eye shape and color',
         'understand differrent materials and producttion methods',
         'Creative with an Eye shape and color',
         'understand differrent materials and producttion methods''Creative with an Eye shape and color',
         'understand differrent materials and producttion methods',

       ]),
       Job('assets/images/google_logo.png','Gooogle LLC','Product design','417 Marian pla Texas \n united states',[
         'Creative with an Eye shape and color',
         'understand differrent materials and producttion methods',
         'Creative with an Eye shape and color',
         'understand differrent materials and producttion methods''Creative with an Eye shape and color',
         'understand differrent materials and producttion methods',

       ]),



  ];

   }

}