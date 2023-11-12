import 'package:carousel_slider/carousel_slider.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../widgets/custom_card.dart';
import '../widgets/custom_icon_favourite.dart';
import '../widgets/custom_increase_decrease_button.dart';


class ProductDetailsView extends StatefulWidget {

  static const routeName = '/product-details';
  const ProductDetailsView({super.key});

  @override
  State<ProductDetailsView> createState() => _ProductDetailsViewState();
}

class _ProductDetailsViewState extends State<ProductDetailsView> {
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Product Details',
          style: TextStyle(
            color: Color(0xff06004F),
          )
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: ImageIcon(
              AssetImage('assets/icons/search_icon.png'),
              color: Color(0xff004182),
            )
          ),
          IconButton(
            onPressed: () {},
            icon: ImageIcon(
              AssetImage('assets/icons/cart.png'),
              color: Color(0xff004182),
            )
          )
        ],
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        centerTitle: true,
      ),
      body:Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                Container(

                height: 300,
                width: double.infinity,
                /*margin: EdgeInsets.symmetric(horizontal: 16),*/
                clipBehavior: Clip.antiAlias,
                decoration: BoxDecoration(
                  color: Colors.transparent,
                  borderRadius: BorderRadius.circular(15),
                  border: Border.all(
                    color: Color(0xff004182),
                  )
                ),
                  child: CarouselSlider(
                    options: CarouselOptions(
                      height: double.infinity,
                      autoPlay: false,
                      viewportFraction: 1,
                      onPageChanged: (index, reason) {
                        setState(() {
                          currentIndex = index;
                        });
                      }
                    ),
                    items: [
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          image: DecorationImage(image: AssetImage('assets/images/product_image.jpeg'),fit: BoxFit.cover)
                          )
                        )
                    ]
                  )
              ),
                Positioned(
                bottom: 0,
                left: 0,
                right: 0,
                child: DotsIndicator(
                  dotsCount: 1,
                  position: currentIndex,
                  decorator: DotsDecorator(
                    activeColor: Color(0xff004182),
                    color: Colors.grey,
                    size: Size(10, 10),))),

                Positioned(
                    top: 16,
                    right: 16,
                    child: CustomIconFavourite()
                ),

    ],
            ),
            SizedBox(height: 24),
            Row(
              children: [
                Text(
                  'Nike Air Jordon',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                    color: Color(0xff06004F),
                  ),
                ),
                Spacer(),
                Text(
                  'EGP 3,500',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                    color: Color(0xff004182),
                  )
                )
              ]

            ),
            SizedBox(height: 16),
            Row(
              children: [
                Row(
                  children: [
                    CustomCard(),
                    SizedBox(width: 8),
                    Text(
                      " ⭐ 4.8 (7,500)"
                    )
                  ]
                ),
                SizedBox(width: 16),
                Expanded(child: CustomIncreaseDecreaseButton()),
              ]
            ),
            Text("Description" ,
              style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                  color: Color(0xff06004F),
              ),
            ),
            SizedBox(height: 16),
            Text("Nike is a multinational corporation that designs, develops,"
                " and sells athletic footwear ,apparel, and accessories......Read More",

              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w400,
                color: Color(0xff004182),
              ),),
            Text('size',style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w500,
              color: Color(0xff06004F),
            ),

            )

          ]
        ),
      )
    );
  }
}
