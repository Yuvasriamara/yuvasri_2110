import 'package:flutter/material.dart';

class Onboarding1View extends StatelessWidget {
  const Onboarding1View({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    int currentPageIndex = 0;  // This will represent the current page

    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              // Image with specific dimensions, position, border-radius, and opacity
              Padding(
                padding: const EdgeInsets.only(top: 72.0, bottom: 24.0),
                child: Image.asset(
                  'assets/onboarding1.jpg', // Ensure the path is correct
                  width: 346.0,
                  height: 367.0,
                  fit: BoxFit.cover,
                ),
              ),
              // Title Text with specific width, height, and opacity
              Padding(
                padding: const EdgeInsets.only(bottom: 24.0),
                child: Text(
                  'Wide range of Food Categories & More',
                  style: Theme.of(context).textTheme.headlineMedium,
                  textAlign: TextAlign.center,
                ),
              ),
              // Description Text with specific width, height, and opacity
              Padding(
                padding: const EdgeInsets.only(bottom: 24.0),
                child: Text(
                  'Browse through our extensive list of restaurants and dishes, and when you\'re ready to order, simply add your desired items to your cart and checkout. It\'s that easy!',
                  style: Theme.of(context).textTheme.bodyLarge,
                  textAlign: TextAlign.center,
                ),
              ),
              // Dot Indicators
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: List.generate(3, (index) {
                  return Container(
                    margin: EdgeInsets.symmetric(horizontal: 5),
                    width: 10,
                    height: 10,
                    decoration: BoxDecoration(
                      color: currentPageIndex == index
                          ? Colors.blue  // Highlight current dot
                          : Colors.grey,  // Default color for other dots
                      shape: BoxShape.circle,
                    ),
                  );
                }),
              ),
              SizedBox(height: 24),
              // Row with Skip and Next Buttons
              Padding(
                padding: const EdgeInsets.only(bottom: 16.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    // Skip Button on the left
                    TextButton(
                      onPressed: () {
                        // Navigate to the Home screen
                        Navigator.pushReplacementNamed(context, '/home'); // Replace '/home' with your actual route
                      },
                      style: ButtonStyle(
                        padding: MaterialStateProperty.all(
                          EdgeInsets.symmetric(horizontal: 22, vertical: 20),
                        ),
                        backgroundColor: MaterialStateProperty.all(Colors.transparent),
                        shape: MaterialStateProperty.all(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(18),
                              bottomLeft: Radius.circular(18),
                            ),
                          ),
                        ),
                      ),
                      child: const Text(
                        'Skip',
                        style: TextStyle(fontSize: 16, color: Colors.blue),
                      ),
                    ),
                    // Next Button on the right with red color
                    ElevatedButton(
                      onPressed: () {
                        // Navigate to Onboarding Screen 2
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(builder: (context) => Onboarding2View()), // Update this with your actual second screen
                        );
                      },
                      style: ElevatedButton.styleFrom(
                        fixedSize: Size(183, 58), // Button size
                        backgroundColor: Color(0xFFE47070), // Button color (red)
                        padding: EdgeInsets.symmetric(horizontal: 22, vertical: 20),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(18),
                        ),
                      ),
                      child: const Text('Next'),
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
}

class Onboarding2View extends StatelessWidget {
  const Onboarding2View({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text("Onboarding Screen 2"),
      ),
    );
  }
}
