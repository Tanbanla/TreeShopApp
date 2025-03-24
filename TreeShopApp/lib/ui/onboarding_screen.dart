import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_application_1/constants.dart';
import 'package:flutter_application_1/ui/root_page.dart';

class OnboardingScreen extends StatefulWidget{
  const OnboardingScreen({super.key});
  @override
  State<StatefulWidget> createState() => _OnboardingScreenState();
}
class _OnboardingScreenState extends State<OnboardingScreen>{
  final PageController _pageController = PageController(initialPage: 0);
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation:  0,
        backgroundColor: Colors.white,
        actions: [
          Padding(padding: const EdgeInsets.only( right: 20, top: 20), child: InkWell(
            onTap: () => null,
            child: const Text('Skip', style: TextStyle(
              color: Colors.grey,
              fontWeight:  FontWeight.w400,
              fontSize: 16,

            ),),
          ),
          )
        ],
      ),
      body: Stack(
        alignment:  Alignment.bottomCenter,
        children: [
          PageView(
            onPageChanged: (int page) {
              setState(() {
                currentIndex = page;
              });
            },
            controller: _pageController,
            children: [
              creatPage(img: 'assets/images/plant-one.png', title: Constants.titleOne,  description: Constants.descriptionOne,),
              creatPage(img: 'assets/images/plant-two.png', title: Constants.titleTwo,  description: Constants.descriptionTwo,),
              creatPage(img: 'assets/images/plant-three.png', title: Constants.titleThree,  description: Constants.descriptionThree,),
            ],
          ),
          Positioned(
            bottom: 80,
            left: 20,
            child: 
              Row(
                children: _buildIndicator(),
              ),
          ),
          Positioned(
            bottom: 60,
            right: 30,
            child: Container(
              child: IconButton(
                onPressed: (){
                  setState(() {
                    if(currentIndex <2 ){
                      currentIndex++;
                      if(currentIndex <3){
                        _pageController.nextPage(duration:const Duration(milliseconds: 300), curve: Curves.easeIn);
                      }
                    }else{
                      Navigator.pushReplacement(context, MaterialPageRoute(builder: (_) => const RootPage(),),);
                    }
                  });
                }, 
                icon: const  Icon(Icons.arrow_forward_ios, size:  24,color: Colors.white,)
              ),
              padding: const EdgeInsets.all(4),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Constants.primaryColor,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _indicator(bool isActive){
    return AnimatedContainer(
        duration: const Duration(milliseconds: 300),
        height: 10,
        width: isActive ? 20: 8,
        margin: const EdgeInsets.only(right: 5),
        decoration: BoxDecoration(
          color: Constants.primaryColor,
          borderRadius: BorderRadius.circular(5)
        ),
      );
  }

  List<Widget> _buildIndicator (){
    List<Widget> indicators= [];
    
    for(int i= 0; i<3;i++){
      if(currentIndex ==i){
        indicators.add(_indicator(true));
      }else{
        indicators.add(_indicator(false));
      }
    }
    return indicators;
  }
}

// ignore: camel_case_types
class creatPage extends StatelessWidget {
  final String img;
  final String title;
  final String description;
  const creatPage({
    super.key, required this.img, required this.title, required this.description
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 50, right: 50, bottom: 80),
      child: Column(
        mainAxisAlignment:  MainAxisAlignment.center,
        children: [
          SizedBox( height: 350, child:  Image.asset(img),),
          const SizedBox( height: 20,),
          Text(title,textAlign: TextAlign.center, style: TextStyle(
            color: Constants.primaryColor,
            fontSize: 30,
            fontWeight: FontWeight.bold
          ),),
          const SizedBox(height: 20,),
          Text(description, textAlign:  TextAlign.center, style: const TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w400,
            color:  Colors.grey,
          ),),
          const SizedBox(height: 20,),
        ],
      ),
    );
  }
}


