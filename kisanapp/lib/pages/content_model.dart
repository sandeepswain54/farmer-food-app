class UnboardingContent{
  String image;
  String title;
  String description;
  UnboardingContent(
    {
      required this.description,required this.image,required this.title
    }

  );

  List<UnboardingContent> contents=[
UnboardingContent(description: 'Get farm-fresh fruits and vegetables\n directly from local farmers Skip the middlemen and enjoy quality.', image: 'images/pc1', title: 'Fresh Produce at\n Your Doorstep'),
UnboardingContent(description: "Shop directly from farmers and\n ensure fair prices while enjoying fresh, quality produce.", image: "images/pc2", title: "Support Local Farmers"),
UnboardingContent(description: "Browse, order, and get fresh produce\n delivered with just a few taps.", image: "images/pc3", title: "Fast and Easy Ordering")
  ];

}