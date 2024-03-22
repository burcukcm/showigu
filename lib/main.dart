
import 'package:flutter/material.dart';
import 'package:switch_kullanimi/Constants/app_constants.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'showigu',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {

    var screeninfo=MediaQuery.of(context);
    final double screenheight =screeninfo.size.height;
    final double screenwidth=screeninfo.size.width;

    return  Scaffold(
      backgroundColor:AppColors.bgcolor,
    body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              width: screenwidth,
              height: screenheight / 2,
              decoration: BoxDecoration(
                color: AppColors.firstcolor,
                image: const DecorationImage(
                  image: AssetImage(AppImages.image1),
                  fit: BoxFit.cover,
                ),
                border: Border.all(
                  color: AppColors.firstcolor,
                ),
                borderRadius: const BorderRadius.only(
                  bottomLeft: BorderSize.circular30,
                  bottomRight: BorderSize.circular30,
                ),
              ),
            ),
             const Padding(
              padding: EdgeInsets.only(right:AppSize.padding20, left:AppSize.padding20, top:AppSize.padding30),
              child: TextField(
                decoration: InputDecoration(
                  icon: Icon(Icons.account_circle_rounded),
                  labelText: AppStrings.userText,
                ),
              ),
             ),
             const Padding(
              padding: EdgeInsets.only(right :AppSize.padding20 ,left:AppSize.padding20),
              child: TextField(
                decoration: InputDecoration(
                  icon: Icon(Icons.lock),
                  labelText: AppStrings.lockText,
                ),
                obscureText: true,
              ),
            ),
            TextButton( child:const Text(AppStrings.forgotText,style: TextStyle(color: Colors.red),),
            onPressed:() {

             },
            ),
             SizedBox(
               width: screenwidth/2,
               child: ElevatedButton(
                style: ButtonStyle(
                  backgroundColor:MaterialStateProperty.all<Color>(AppColors.buttonbg),
                ),
                child:const Text(AppStrings.loginText,style: TextStyle(color:AppColors.firstcolor),),
                onPressed: (){
                },
               ),
             ),
          ],
        ),
      ),
    );
  }
}
