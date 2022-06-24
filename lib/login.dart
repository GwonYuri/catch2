import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:camera/camera.dart';

bool pwobscure = true;
TextEditingController emailController = TextEditingController(text: '');

class login extends StatefulWidget {
  final List<CameraDescription> cameras;

  login(this.cameras);

  @override
  _loginState createState() => _loginState();
}

class _loginState extends State<login> {
  TextEditingController passwordController = TextEditingController(text: '');

  bool _isChecked = false;

  @override
  Widget build(BuildContext context) {
    TextTheme textTheme = Theme.of(context).textTheme;

    return Scaffold(
      body: ListView(
        children: [
          // Center(
          //   child: Padding(
          //     padding: EdgeInsets.only(top: 401.h),
          //     child: Image.asset(
          //       //'assets/images/app_logo.png',
          //       width: 340.w,
          //       height: 71.h,
          //     ),
          //   ),
          // ),
          SizedBox(height: 121.h),
          //SizedBox(height: 91.h),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 62.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 109.h),
                SizedBox(
                  height: 86.h,
                  child: TextFormField(
                    style: textTheme.headline6!,
                    controller: emailController,
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.symmetric(
                        horizontal: 20.w,
                        vertical: 14.h,
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                        borderSide: BorderSide(color: Color(0xffa2a2a2), width: 1.0),
                      ),
                      // disabledBorder: OutlineInputBorder(
                      //   borderSide: BorderSide(color: Color(0xffa2a2a2), width: 1.0),
                      // ),
                      filled: true,
                      fillColor: Color(0xfff3f3f3),
                      hintText: '아이디 또는 이메일 ',
                      hintStyle: textTheme.button!.copyWith(
                          color: Colors.black.withOpacity(0.4)),


                    ),
                    // validator: (value) {
                    //   if (value == null || value.isEmpty) {
                    //     return '이메일을 다시 입력해주세요.';
                    //   }
                    //   return null;
                    // },
                  ),
                ),

                SizedBox(height: 31.h),
                SizedBox(
                  height: 86.h,
                  child: TextFormField(
                    style: textTheme.headline6!,
                    controller: passwordController,
                    keyboardType: TextInputType.visiblePassword,
                    decoration: InputDecoration(
                      suffixIcon: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        // added line
                        mainAxisSize: MainAxisSize.min,
                        // added line
                        children: <Widget>[
                          IconButton(
                            icon: pwobscure
                                ? const Icon(Icons.visibility_off)
                                : const Icon(Icons.visibility),
                            onPressed: () {
                              setState(() {
                                pwobscure = !pwobscure;
                              });
                            },
                          ),
                        ],
                      ),
                      //filled: true,
                      contentPadding: EdgeInsets.symmetric(
                        horizontal: 20.w,
                        vertical: 14.h,
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                        borderSide: BorderSide(color: Color(0xffa2a2a2), width: 1.0),
                      ),
                      filled: true,
                      fillColor: Color(0xfff3f3f3),
                      hintText: '비밀번호',
                      hintStyle: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 28.sp,
                          height: 50/28,
                          letterSpacing: 0.15
                      ),
                    ),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return '비밀번호를 다시 입력해주세요.';
                      }
                      return null;
                    },
                    obscureText: pwobscure ? true : false,
                  ),
                ),

                //SizedBox(height: 37.h),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(62.w, 0, 62.w, 0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                TextButton(
                  onPressed: () {},
                  child: Text(
                    "비밀번호를 잊으셨나요?",
                    style: textTheme.bodyText1!.copyWith(
                      color: Colors.black,
                      //color: AppColors.primary[800],
                    ),
                  ),
                ),
                //SizedBox(height: 62.h),
              ],
            ),
          ),
          //SizedBox(height: 62.h),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 62.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Row(
                //   mainAxisAlignment: MainAxisAlignment.start,
                //   children: [
                //     Checkbox(
                //         value: _isChecked,
                //         onChanged: (value) {
                //           setState(() {
                //             _isChecked = value!;
                //           });
                //         }),
                //     Text(
                //       "Remember me",
                //       style: textTheme.bodyText1!.copyWith(
                //         color: AppColors.secondary,
                //       ),
                //     ),
                //   ],
                // ),
                Center(
                  child: Column(
                    children: [
                      SizedBox(height: 64.h),
                      SizedBox(
                        height: 86.h,
                        child: ElevatedButton(
                          onPressed: () {
                            //Get.offAll(() => home(cameras));

                          },
                          child: Text(
                            "로그인",
                            style: textTheme.bodyText1!.copyWith(
                              color: Colors.white,
                            ),
                          ),
                          style: ButtonStyle(

                              fixedSize:
                              MaterialStateProperty.all(Size(700.w, 120.h)),
                              backgroundColor: MaterialStateProperty.all(
                                //AppColors.primary[800],
                                Colors.black,
                              ),
                              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(15.0),
                                  )
                              ),
                              side: MaterialStateProperty.all(
                                BorderSide(
                                  width: 0,
                                ),
                              )),
                        ),
                      ),
                      SizedBox(height: 70.h),
                      Divider(
                        //color: AppColors.onPrimary2,
                        color: Colors.black,
                      ),
                      //SizedBox(height: 144.h),
                      SizedBox(height: 70.h),
                      Text(
                        "계정이 없으신가요? ",
                        style: textTheme.bodyText1!.copyWith(
                          //color: AppColors.onPrimary2,
                          color: Colors.black,
                        ),
                      ),
                      TextButton(
                        onPressed: () {
                          //Get.to(() => const signin());
                          Navigator.pushNamed(context, '/login');
                        },
                        child: Text(
                          "회원가입",
                          style: textTheme.bodyText1!.copyWith(
                            //color: AppColors.primary[800],
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
