// / import 'package:fluttermaterial.dart';

//  class Quote extends StatelessWidget {
//    Quote({super.key});

//    final List<Map<String, String>> quotes = [
//      {
//        "text":
//            "The only limit to our realization of tomorrow is our doubts of today.",
//        "author": "Franklin D. Roosevelt"
//      },
//      {
//        "text": "Do what you can, with what you have, where you are.",
//        "author": "Theodore Roosevelt"
//      },
//      {
//        "text":
//            "Success is not final, failure is not fatal: It is the courage to continue that counts.",
//        "author": "Winston S. Churchill"
//      },
//      {
//        "text": "Believe you can and you're halfway there.",
//        "author": "Theodore Roosevelt"
//      },
//      {
//        "text":
//            "You are never too old to set another goal or to dream a new dream.",
//        "author": "C.S. Lewis"
//      }
//    ];

//    @override
//    Widget build(BuildContext context) {
//      return Scaffold(
//        appBar: AppBar(
//          title: const Text('Inspiring Quotes'),
//          centerTitle: true,
//          flexibleSpace: Container(
//            decoration: BoxDecoration(
//              gradient: LinearGradient(
//                  colors: [
//                    Colors.purple[500]!,  end color of the gradient

//                     Colors.green[500]!, this is the start color of the gradient
//                    Colors.blue[500]!,  middle color of the gradient
//                  ],
//                  begin: Alignment.topLeft,  gradient start from top left
//                  end: Alignment.bottomRight), gradient ends at bottom right
//            ),
//          ),
//        ),
//        body: Container(
//          decoration: BoxDecoration(
//            gradient: LinearGradient(
//                colors: [
//                  Colors.red[400]!,  end color of the gradient
//                  Colors.blue[400]!,  middle color of the gradient

//                   Colors.green[500]!, this is the start color of the gradient
//                  Colors.purple[400]!
//                ],
//                begin: Alignment.topLeft,  gradient start from top left
//                end: Alignment.bottomRight), gradient ends at bottom right
//          ),
//          child: ListView.builder(
//            itemCount: quotes.length,
//            itemBuilder: (context, index) {
//              return _buildQuoteCard(context, quotes[index]);
//            },
//          ),
//        ),
//      );
//    }

//    Widget _buildQuoteCard(BuildContext context, Map<String, String> quote) {
//      return GestureDetector(
//        onTap: () {
//          Navigator.push(
//            context,
//            MaterialPageRoute(builder: (context) => QuoteDetailScreen(quote)),
//          );
//        },
//        child: Card(
//          margin: const EdgeInsets.all(15),
//          color: Colors.white.withOpacity(0.9),
//          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
//          elevation: 8,
//          child: Padding(
//            padding: const EdgeInsets.all(20),
//            child: Column(
//              crossAxisAlignment: CrossAxisAlignment.start,
//              children: [
//                Text(
//                  quote["text"]!,
//                  style:
//                      const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
//                  textAlign: TextAlign.left,
//                ),
//                const SizedBox(height: 10),
//                Text(
//                  "- ${quote["author"]}",
//                  style:
//                      const TextStyle(fontSize: 16, fontStyle: FontStyle.italic),
//                  textAlign: TextAlign.right,
//                ),
//              ],
//            ),
//          ),
//        ),
//      );
//    }
//  }

//  class QuoteDetailScreen extends StatelessWidget {
//    final Map<String, String> quote;

//    const QuoteDetailScreen(this.quote, {super.key});

//    @override
//    Widget build(BuildContext context) {
//      return Scaffold(
//        appBar: AppBar(
//          title: const Text('Quote Details'),
//          backgroundColor: Colors.purple[200],
//        ),
//        body: Container(
//          decoration: BoxDecoration(
//            gradient: LinearGradient(
//                colors: [
//                  Colors.yellow[400]!,
//                  Colors.purple[400]!,
//                  Colors.blue[400]!,

//                   Colors.red[400]!,
//                ],
//                begin: Alignment.topLeft,  gradient start from top left
//                end: Alignment.bottomRight), gradient ends at bottom right
//          ),
//          child: Center(
//            child: Padding(
//              padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
//              child: Card(
//                color: Colors.white.withOpacity(0.9),
//                shape: RoundedRectangleBorder(
//                    borderRadius: BorderRadius.circular(15)),
//                elevation: 8,
//                child: Padding(
//                  padding:
//                      const EdgeInsets.symmetric(vertical: 40, horizontal: 20),
//                  child: Column(
//                    mainAxisSize: MainAxisSize.min,
//                    children: [
//                      Text(
//                        quote["text"]!,
//                        style: const TextStyle(
//                            fontSize: 24, fontWeight: FontWeight.bold),
//                        textAlign: TextAlign.center,
//                      ),
//                      const SizedBox(height: 20),
//                      Text(
//                        "- ${quote["author"]}",
//                        style: const TextStyle(
//                            fontSize: 20, fontStyle: FontStyle.italic),
//                        textAlign: TextAlign.center,
//                      ),
//                    ],
//                  ),
//                ),
//              ),
//            ),
//          ),
//        ),
//      );
//    }
//  }

//  import 'package:fluttermaterial.dart';
//  import 'dart:async';

//  class FutureBuilderWidget extends StatelessWidget {
//     Simulating a network call that returns data after 2 seconds
//    Future<String> fetchData() async {
//      await Future.delayed(const Duration(seconds: 2));
//      return 'Data loaded successfully!';
//    }

//    @override
//    Widget build(BuildContext context) {
//      return Scaffold(
//        appBar: AppBar(
//          title: Text('FutureBuilder MyBottomNav'),
//        ),
//        body: Center(
//          child: FutureBuilder<String>(
//            future: fetchData(),  The future to wait for
//            initialData:
//                'Loading initial data...',  Optional: shows initial data
//             Optional: used to track how many times the FutureBuilder rebuilds
//            builder: (BuildContext context, AsyncSnapshot<String> snapshot) {
//               Check the current state of the future
//              if (snapshot.connectionState == ConnectionState.waiting) {
//                 Display a loading indicator while the future is running
//                return CircularProgressIndicator();
//              } else if (snapshot.hasError) {
//                 Display an error message if the future fails
//                return Text(
//                  'Error: ${snapshot.error}',
//                  style: TextStyle(color: Colors.red),
//                );
//              } else if (snapshot.connectionState == ConnectionState.done) {
//                 Display the data when the future is completed
//                return Text(
//                  snapshot.data ?? 'No Data',
//                  style: TextStyle(fontSize: 18, color: Colors.green),
//                );
//              } else {
//                 Handle any other connection state
//                return Text('State: ${snapshot.connectionState}');
//              }
//            },
//          ),
//        ),
//      );
//    }
//  }

//  import 'package:fluttermaterial.dart';

//  class FutureBuilderWidget extends StatelessWidget {
//     This is a sample asynchronous function that simulates a network call.
//    Future<String> fetchData() async {
//      await Future.delayed(const Duration(seconds: 2));  Simulate a network delay
//      return "Data fetched successfully!";
//    }

//    @override
//    Widget build(BuildContext context) {
//      return Scaffold(
//        appBar: AppBar(
//          title: Text('FutureBuilder MyBottomNav'),
//        ),
//        body: Center(
//          child: FutureBuilder<String>(
//             Required properties
//            future: fetchData(),  The future to be resolved
//            builder: (BuildContext context, AsyncSnapshot<String> snapshot) {
//               Checking the connection state of the future
//              if (snapshot.connectionState == ConnectionState.waiting) {
//                return CircularProgressIndicator();  Show loading indicator while waiting
//              } else if (snapshot.hasError) {
//                return Text(
//                    'Error: ${snapshot.error}');  Show error message if there's an error
//              } else if (snapshot.hasData) {
//                return Text(
//                    'Result: ${snapshot.data}');  Show the data when available
//              } else {
//                return Text('No data available');  Fallback for no data case
//              }
//            },
//            initialData:
//                'Loading...',  Initial data displayed before future completes
//          ),
//        ),
//      );
//    }
//  }

//  import 'package:fluttermaterial.dart';

//  class FutureBuilderWidget extends StatelessWidget {
//    const FutureBuilderWidget({super.key});

//     Simulating a network call with a delay
//    Future<String> fetchData() async {
//      await Future.delayed(const Duration(seconds: 2));  Simulate network delay
//      return "Data fetched successfully!";
//    }

//    @override
//    Widget build(BuildContext context) {
//      return Scaffold(
//        body: Container(
//          decoration: BoxDecoration(
//            gradient: LinearGradient(
//                colors: [
//                  Colors.green[200]!,  middle color of the gradient

//                  Colors.blue[500]!,
//                  Colors.blue[200]!,  end color of the gradient
//                  this is the start color of the gradient
//                ],
//                begin: Alignment.topLeft,  gradient start from top left
//                end: Alignment.bottomRight), gradient ends at bottom right
//          ),
//          child: Center(
//            child: FutureBuilder<String>(
//              future: fetchData(),  The future to be resolved
//              initialData: 'Fetching data...',  Initial data while waiting
//              builder: (BuildContext context, AsyncSnapshot<String> snapshot) {
//                 Check the connection state of the future
//                switch (snapshot.connectionState) {
//                  case ConnectionState.waiting:
//                    return _buildLoadingIndicator();  Show loading indicator
//                  case ConnectionState.done:
//                    if (snapshot.hasError) {
//                      return _buildErrorWidget(
//                          snapshot.error);  Show error message
//                    } else if (snapshot.hasData) {
//                      return _buildSuccessWidget(
//                          snapshot.data);  Show fetched data
//                    }
//                    break;
//                  default:
//                    return _buildErrorWidget(
//                        "Unknown state");  Fallback for unknown state
//                }
//                return Container();  Fallback container
//              },
//            ),
//          ),
//        ),
//      );
//    }

//     Widget to display while loading
//    Widget _buildLoadingIndicator() {
//      return Column(
//        mainAxisAlignment: MainAxisAlignment.center,
//        children: [
//          CircularProgressIndicator(),  Circular loading indicator
//          SizedBox(height: 20),  Spacing
//          Text('Loading...', style: TextStyle(fontSize: 20, color: Colors.grey)),
//        ],
//      );
//    }

//     Widget to display on success
//    Widget _buildSuccessWidget(String? data) {
//      return Card(
//        elevation: 4,
//        margin: EdgeInsets.all(16),
//        child: Padding(
//          padding: const EdgeInsets.all(16.0),
//          child: Column(
//            mainAxisSize: MainAxisSize.min,
//            children: [
//              Icon(Icons.check_circle,
//                  color: Colors.green, size: 48),  Success icon
//              SizedBox(height: 10),  Spacing
//              Text('Result:',
//                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
//              SizedBox(height: 10),  Spacing
//              Text(data ?? '',
//                  style: TextStyle(fontSize: 18)),  Display fetched data
//            ],
//          ),
//        ),
//      );
//    }

//     Widget to display on error
//    Widget _buildErrorWidget(Object? error) {
//      return Card(
//        elevation: 4,
//        margin: EdgeInsets.all(16),
//        child: Padding(
//          padding: const EdgeInsets.all(16.0),
//          child: Column(
//            mainAxisSize: MainAxisSize.min,
//            children: [
//              Icon(Icons.error, color: Colors.red, size: 48),  Error icon
//              SizedBox(height: 10),  Spacing
//              Text('Error occurred:',
//                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
//              SizedBox(height: 10),  Spacing
//              Text(error.toString(),
//                  style: TextStyle(fontSize: 18)),  Display error message
//            ],
//          ),
//        ),
//      );
//    }
//  }

//  import 'package:fluttermaterial.dart';

//  class FutureBuilderWidget extends StatelessWidget {
//    const FutureBuilderWidget({super.key});

//     Simulating a network call with a delay
//    Future<String> fetchData() async {
//      await Future.delayed(
//          const Duration(seconds: 2));  Simulate a 2-second network delay
//      return "Data fetched successfully!";  Return a success message after the delay
//    }

//    @override
//    Widget build(BuildContext context) {
//      return Scaffold(
//        body: Container(
//           Set a gradient background for the entire screen
//          decoration: BoxDecoration(
//            gradient: LinearGradient(
//                colors: [
//                  Colors.green[200]!,  Start color of the gradient
//                  Colors.blue[500]!,  Middle color of the gradient
//                  Colors.blue[200]!,  End color of the gradient
//                ],
//                begin:
//                    Alignment.topLeft,  Gradient starts from the top left corner
//                end: Alignment
//                    .bottomRight),  Gradient ends at the bottom right corner
//          ),
//          child: Center(
//            child: FutureBuilder<String>(
//              future:
//                  fetchData(),  The future that will be resolved (fetching data)
//              initialData:
//                  'Fetching data...',  Initial message displayed while waiting for data
//              builder: (BuildContext context, AsyncSnapshot<String> snapshot) {
//                 Check the connection state of the future
//                switch (snapshot.connectionState) {
//                  case ConnectionState.waiting:
//                    return _buildLoadingIndicator();  Show loading indicator while waiting for data
//                  case ConnectionState.done:
//                    if (snapshot.hasError) {
//                      return _buildErrorWidget(snapshot
//                          .error);  Show error message if there's an error
//                    } else if (snapshot.hasData) {
//                      return _buildSuccessWidget(
//                          snapshot.data);  Show fetched data if successful
//                    }
//                    break;
//                  default:
//                    return _buildErrorWidget(
//                        "Unknown state");  Fallback for unknown state
//                }
//                return Container();  Fallback container in case no condition is met
//              },
//            ),
//          ),
//        ),
//      );
//    }

//     Widget to display while loading (waiting for data)
//    Widget _buildLoadingIndicator() {
//      return Column(
//        mainAxisAlignment:
//            MainAxisAlignment.center,  Center the loading indicator vertically
//        children: [
//          CircularProgressIndicator(),  Circular loading spinner to indicate progress
//          SizedBox(height: 20),  Space between loading spinner and text
//          Text('Loading...',
//              style: TextStyle(
//                  fontSize: 20, color: Colors.grey)),  Loading text message
//        ],
//      );
//    }

//     Widget to display when data is successfully fetched
//    Widget _buildSuccessWidget(String? data) {
//      return Card(
//        elevation: 4,  Shadow effect for the card
//        margin: EdgeInsets.all(16),  Margin around the card
//        child: Padding(
//          padding: const EdgeInsets.all(16.0),  Padding inside the card
//          child: Column(
//            mainAxisSize: MainAxisSize
//                .min,  Minimize the height of the column based on content size
//            children: [
//              Icon(Icons.check_circle,
//                  color: Colors.green, size: 48),  Success icon (check mark)
//              SizedBox(height: 10),  Space between icon and text
//              Text('Result:',
//                  style: TextStyle(
//                      fontSize: 24,
//                      fontWeight: FontWeight.bold)),  Title for result section
//              SizedBox(height: 10),  Space between title and result text
//              Text(data ?? '',
//                  style: TextStyle(
//                      fontSize:
//                          18)),  Display fetched data or empty string if null
//            ],
//          ),
//        ),
//      );
//    }

//     Widget to display when an error occurs during fetching data
//    Widget _buildErrorWidget(Object? error) {
//      return Card(
//        elevation: 4,  Shadow effect for the card
//        margin: EdgeInsets.all(16),  Margin around the card
//        child: Padding(
//          padding: const EdgeInsets.all(16.0),  Padding inside the card
//          child: Column(
//            mainAxisSize:
//                MainAxisSize.min,  Minimize height based on content size
//            children: [
//              Icon(Icons.error,
//                  color: Colors.red, size: 48),  Error icon (red cross)
//              SizedBox(height: 10),  Space between icon and text
//              Text('Error occurred:',
//                  style: TextStyle(
//                      fontSize: 24,
//                      fontWeight: FontWeight.bold)),  Title for error section
//              SizedBox(height: 10),  Space between title and error message text
//              Text(error.toString(),
//                  style:
//                      TextStyle(fontSize: 18)),  Display error message as text
//            ],
//          ),
//        ),
//      );
//    }
//  }

//  import 'package:fluttermaterial.dart';

//  class ButtonWidgetsDemo extends StatelessWidget {
//    @override
//    Widget build(BuildContext context) {
//      return Scaffold(
//        appBar: AppBar(
//          title: Text('Button Widgets Demo'),
//        ),
//        body: Container(
//          decoration: BoxDecoration(
//            gradient: LinearGradient(
//              colors: [
//                Colors.blue[200]!,
//                Colors.purple[500]!,
//              ],
//              begin: Alignment.topLeft,
//              end: Alignment.bottomRight,
//            ),
//          ),
//          child: Column(
//            mainAxisAlignment: MainAxisAlignment.center,
//            children: [
//               Elevated Button
//              ElevatedButton(
//                onPressed: () {
//                   Action when button is pressed
//                  ScaffoldMessenger.of(context).showSnackBar(
//                      SnackBar(content: Text('Elevated Button Pressed!')));
//                },
//                style: ElevatedButton.styleFrom(
//                  backgroundColor: Colors.green,  Background color
//                  foregroundColor: Colors.white,  Text color
//                  padding: EdgeInsets.symmetric(
//                      horizontal: 20, vertical: 15),  Padding inside the button
//                  textStyle: TextStyle(fontSize: 20),  Text style
//                ),
//                child: Text('Elevated Button'),
//              ),
//              SizedBox(height: 20),  Spacing between buttons

//               Text Button
//              TextButton(
//                onPressed: () {
//                   Action when button is pressed
//                  ScaffoldMessenger.of(context).showSnackBar(
//                      SnackBar(content: Text('Text Button Pressed!')));
//                },
//                style: TextButton.styleFrom(
//                  foregroundColor: Colors.blue,  Text color
//                  padding: EdgeInsets.symmetric(
//                      horizontal: 20, vertical: 15),  Padding inside the button
//                  textStyle: TextStyle(fontSize: 20),  Text style
//                ),
//                child: Text('Text Button'),
//              ),
//              SizedBox(height: 20),  Spacing between buttons

//               Icon Button
//              IconButton(
//                icon: Icon(Icons.favorite,
//                    color: Colors.red, size: 30),  Icon to display
//                onPressed: () {
//                   Action when button is pressed
//                  ScaffoldMessenger.of(context).showSnackBar(
//                      SnackBar(content: Text('Icon Button Pressed!')));
//                },
//                tooltip: 'Favorite',  Tooltip when long-pressed
//              ),
//              SizedBox(height: 20),  Spacing between buttons

//               Floating Action Button
//              FloatingActionButton(
//                onPressed: () {
//                   Action when button is pressed
//                  ScaffoldMessenger.of(context).showSnackBar(
//                      SnackBar(content: Text('Floating Action Button Pressed!')));
//                },
//                backgroundColor: Colors.orange,  Background color of FAB
//                child: Icon(Icons.add),  Icon inside FAB
//              ),
//            ],
//          ),
//        ),
//      );
//    }
//  }

//  import 'package:fluttermaterial.dart';

//  class ButtonWidgetsDemo extends StatelessWidget {
//    const ButtonWidgetsDemo({super.key});

//    @override
//    Widget build(BuildContext context) {
//      return Scaffold(
//        body: Container(
//           Set the Container to fill the whole screen
//          width: double.infinity,  Full width
//          height: double.infinity,  Full height
//          decoration: BoxDecoration(
//            gradient: LinearGradient(
//              colors: [
//                Colors.blue[200]!,
//                Colors.purple[500]!,
//              ],
//              begin: Alignment.topLeft,
//              end: Alignment.bottomRight,
//            ),
//          ),
//          child: Column(
//            mainAxisAlignment:
//                MainAxisAlignment.center,  Center items vertically
//            crossAxisAlignment:
//                CrossAxisAlignment.center,  Center items horizontally
//            children: [
//               Elevated Button
//              ElevatedButton(
//                onPressed: () {
//                   Action when button is pressed
//                  ScaffoldMessenger.of(context).showSnackBar(
//                    const SnackBar(
//                      content: Text(
//                        'Elevated Button Pressed!',
//                        style: TextStyle(fontSize: 18),
//                      ),
//                    ),
//                  );
//                },
//                style: ElevatedButton.styleFrom(
//                  backgroundColor: Colors.green[400],  Background color
//                  foregroundColor: Colors.black, elevation: 4,
//                   Text color
//                  padding: const EdgeInsets.symmetric(
//                      horizontal: 30, vertical: 15),  Padding inside the button
//                  textStyle: const TextStyle(fontSize: 20),  Text style
//                ),
//                child: const Text(
//                  'Code Flicks',
//                  style: TextStyle(
//                    fontSize: 26,
//                    fontWeight: FontWeight.bold,
//                  ),
//                ),
//              ),

//              const SizedBox(height: 50),  Spacing between buttons

//               Text Button
//              TextButton(
//                onPressed: () {
//                   Action when button is pressed
//                  ScaffoldMessenger.of(context).showSnackBar(
//                    const SnackBar(
//                      content: Text(
//                        'Text Button Pressed!',
//                        style: TextStyle(fontSize: 18),
//                      ),
//                    ),
//                  );
//                },
//                style: TextButton.styleFrom(
//                  foregroundColor: Colors.black,  Text color
//                  elevation: 5,
//                  padding: const EdgeInsets.symmetric(
//                      horizontal: 20, vertical: 15),  Padding inside the button
//                  textStyle: const TextStyle(fontSize: 20),  Text style
//                ),
//                child: const Text(
//                  'Press Me',
//                  style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
//                ),
//              ),

//              const SizedBox(height: 50),  Spacing between buttons

//               Icon Button
//              IconButton(
//                icon: const Icon(Icons.fingerprint,
//                    color: Colors.black, size: 70),  Icon to display
//                onPressed: () {
//                   Action when button is pressed
//                  ScaffoldMessenger.of(context).showSnackBar(
//                    const SnackBar(
//                      content: Text(
//                        'Icon Button Pressed!',
//                        style: TextStyle(fontSize: 18),
//                      ),
//                    ),
//                  );
//                },
//                tooltip: 'fingerprint',  Tooltip when long-pressed
//              ),
//              const SizedBox(height: 50),  Spacing between buttons

//               Floating Action Button
//              FloatingActionButton(
//                onPressed: () {
//                   Action when button is pressed
//                  ScaffoldMessenger.of(context).showSnackBar(
//                    const SnackBar(
//                      content: Text(
//                        'Floating Action Button Pressed!',
//                        style: TextStyle(fontSize: 18),
//                      ),
//                    ),
//                  );
//                },
//                backgroundColor: Colors.blue[500],  Background color of FAB
//                child: const Icon(
//                  Icons.person,
//                  size: 50,
//                ),  Icon inside FAB
//              ),
//            ],
//          ),
//        ),
//      );
//    }
//  }

//  import 'package:fluttermaterial.dart';

//  class TooltipMyBottomNav extends StatelessWidget {
//    const TooltipMyBottomNav({super.key});

//    @override
//    Widget build(BuildContext context) {
//      return Scaffold(
//        appBar: AppBar(
//          title: const Text(
//            ' Tooltip ',
//            style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
//          ),
//          centerTitle: true,
//          backgroundColor: Colors.green[500],  Darker app bar color
//        ),
//        body: Center(
//          child: Column(
//            mainAxisAlignment: MainAxisAlignment.center,
//            children: [
//               Tooltip for the first button
//              Tooltip(
//                message: 'Click to add an item',
//                padding: const EdgeInsets.all(10),  Padding around the tooltip
//                margin: const EdgeInsets.symmetric(
//                    horizontal: 20, vertical: 10),  Margin around the tooltip
//                decoration: BoxDecoration(
//                  color: Colors.green[200],  Background color of the tooltip
//                  borderRadius: BorderRadius.circular(8),  Rounded corners

//                  boxShadow: const [
//                    BoxShadow(
//                      color: Colors.black26,
//                      blurRadius: 8.0,
//                      offset: Offset(0, 4),
//                    ),
//                  ],
//                ),
//                textStyle: const TextStyle(
//                  color: Colors.black,  Text color inside the tooltip
//                  fontWeight: FontWeight.bold,  Bold text
//                ),
//                child: ElevatedButton(
//                  onPressed: () {},
//                  style: ElevatedButton.styleFrom(
//                    foregroundColor: Colors.blue[500],  Button background color
//                    padding: const EdgeInsets.symmetric(
//                        horizontal: 30, vertical: 15),  Button padding
//                    shape: RoundedRectangleBorder(
//                      borderRadius:
//                          BorderRadius.circular(50),  Rounded button corners
//                    ),
//                    elevation: 5,  Button elevation for shadow effect
//                  ),
//                  child: const Text('Add Item', style: TextStyle(fontSize: 18)),
//                ),
//              ),
//              const SizedBox(height: 80),  Space between buttons

//               Tooltip for the second button
//              Tooltip(
//                message: 'Click to remove an item',
//                padding: const EdgeInsets.all(10),
//                margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
//                decoration: BoxDecoration(
//                  color: Colors.red[500],
//                  borderRadius: BorderRadius.circular(8),
//                  boxShadow: const [
//                    BoxShadow(
//                      color: Colors.black26,
//                      blurRadius: 8.0,
//                      offset: Offset(0, 4),
//                    ),
//                  ],
//                ),
//                textStyle: const TextStyle(
//                  color: Colors.white,
//                  fontWeight: FontWeight.bold,
//                ),
//                child: ElevatedButton(
//                  onPressed: () {},
//                  style: ElevatedButton.styleFrom(
//                    foregroundColor: Colors.blue[500],
//                    padding:
//                        const EdgeInsets.symmetric(horizontal: 30, vertical: 15),
//                    shape: RoundedRectangleBorder(
//                      borderRadius:
//                          BorderRadius.circular(50),  Rounded button corners
//                    ),
//                    elevation: 5,  Button elevation for shadow effect
//                  ),
//                  child:
//                      const Text('Remove Item', style: TextStyle(fontSize: 18)),
//                ),
//              ),
//            ],
//          ),
//        ),
//      );
//    }
//  }

//  import 'package:fluttermaterial.dart';

//  class MyDropdownButton extends StatefulWidget {
//    @override
//    _MyDropdownButtonState createState() => _MyDropdownButtonState();
//  }

//  class _MyDropdownButtonState extends State<MyDropdownButton> {
//    String? selectedValue;  Variable to hold the selected value
//    final List<String> items = [
//      'Coding',
//      'Photography',
//      'Reading',
//      'Cooking',
//    ];

//    @override
//    Widget build(BuildContext context) {
//      return Scaffold(
//        appBar: AppBar(
//          title: Text('Dropdown Button'),
//          backgroundColor: Colors.teal[100],  App bar color
//        ),
//        body: Center(
//          child: Container(
//            padding: EdgeInsets.symmetric(
//                horizontal: 56),  Padding around the dropdown
//            child: DropdownButton<String>(
//              isExpanded:
//                  true,  Makes the dropdown button expand to fill available space
//              hint: Text(
//                'Select Hobby',
//                style: TextStyle(
//                    fontSize: 18,
//                    color: Colors.grey[600],
//                    fontWeight: FontWeight.bold),  Hint text style
//              ),
//              items: items.map((String item) {
//                return DropdownMenuItem<String>(
//                  value: item,
//                  child: Text(
//                    item,
//                    style: const TextStyle(
//                      fontSize: 18,
//                    ),  Item text style
//                  ),
//                );
//              }).toList(),
//              value: selectedValue,  Current selected value
//              onChanged: (String? value) {
//                setState(() {
//                  selectedValue = value;  Update the selected value
//                });
//              },
//              dropdownColor:
//                  Colors.teal[100],  Background color of the dropdown menu
//              style: TextStyle(
//                  color: Colors.black,
//                  fontSize: 16),  Style of the selected item text
//              underline: Container(),  Remove underline for a cleaner look
//              iconEnabledColor: Colors.black,  Color of the dropdown icon
//              iconSize: 40,  Size of the dropdown icon
//            ),
//          ),
//        ),
//      );
//    }
//  }

//  import 'package:fluttermaterial.dart';

//  class BottomNavBarDemo extends StatefulWidget {
//    @override
//    _BottomNavBarDemoState createState() => _BottomNavBarDemoState();
//  }

//  class _BottomNavBarDemoState extends State<BottomNavBarDemo> {
//     Current index of the selected bottom navigation bar item
//    int _currentIndex = 0;
//     List of pages to display based on the selected item
//    final List<Widget> _pages = [
//      Myslides(),
//      SearchPage(),
//      ProfilePage(),
//      SettingsPage(),
//    ];

//     Function to handle item taps
//    void _onItemTapped(int index) {
//      setState(() {
//        _currentIndex = index;  Update the current index
//      });
//    }

//    @override
//    Widget build(BuildContext context) {
//      return Scaffold(
//        appBar: AppBar(
//          title: Text('Bottom Navigation Bar MyBottomNav'),
//          backgroundColor: Colors.teal[100],
//        ),
//        body: _pages[_currentIndex],  Display the selected page
//        bottomNavigationBar: BottomNavigationBar(
//          items: const <BottomNavigationBarItem>[
//            BottomNavigationBarItem(
//              icon: Icon(Icons.home),
//              label: 'Home',
//              backgroundColor: Color.fromARGB(
//                  255, 143, 196, 239),  Background color for the item
//            ),
//            BottomNavigationBarItem(
//              icon: Icon(Icons.search),
//              label: 'Search',
//              backgroundColor: Color.fromARGB(
//                  255, 124, 228, 128),  Background color for the item
//            ),
//            BottomNavigationBarItem(
//              icon: Icon(Icons.person),
//              label: 'Profile',
//              backgroundColor: Color.fromARGB(
//                  255, 230, 170, 80),  Background color for the item
//            ),
//            BottomNavigationBarItem(
//              icon: Icon(Icons.settings),
//              label: 'Settings',
//              backgroundColor: Color.fromARGB(
//                  255, 191, 99, 207),  Background color for the item
//            ),
//          ],
//          currentIndex: _currentIndex,  Set the current index
//          selectedItemColor: Colors.white,  Color of selected item text and icon
//          unselectedItemColor: Colors.black54,  Color of unselected items
//          showUnselectedLabels: true,  Show labels for unselected items
//          onTap: _onItemTapped,  Handle taps on items
//          elevation: 5,  Elevation for shadow effect
//        ),
//      );
//    }
//  }

//   Home Page Widget
//  class Myslides extends StatelessWidget {
//    @override
//    Widget build(BuildContext context) {
//      return Center(
//          child: Text('Home Page',
//              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)));
//    }
//  }

//   Search Page Widget
//  class SearchPage extends StatelessWidget {
//    @override
//    Widget build(BuildContext context) {
//      return Center(
//          child: Text('Search Page',
//              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)));
//    }
//  }

//   Profile Page Widget
//  class ProfilePage extends StatelessWidget {
//    @override
//    Widget build(BuildContext context) {
//      return Center(
//          child: Text('Profile Page',
//              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)));
//    }
//  }

//   Settings Page Widget
//  class SettingsPage extends StatelessWidget {
//    @override
//    Widget build(BuildContext context) {
//      return Center(
//          child: Text('Settings Page',
//              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)));
//    }
//  }

//  import 'package:fluttermaterial.dart';

//  class DismissibleMyBottomNav extends StatefulWidget {
//    const DismissibleMyBottomNav({Key? key}) : super(key: key);

//    @override
//    State<DismissibleMyBottomNav> createState() => _DismissibleMyBottomNavState();
//  }

//  class _DismissibleMyBottomNavState extends State<DismissibleMyBottomNav> {
//     List of items to display
//    final List<String> items = [
//      "Apple",
//      "Banana",
//      "Cherry",
//      "Date",
//      "Elderberry"
//    ];

//    @override
//    Widget build(BuildContext context) {
//      return Scaffold(
//        appBar: AppBar(
//          title: const Text('Dismissible Widget MyBottomNav'),
//        ),
//        body: ListView.builder(
//          itemCount: items.length,
//          itemBuilder: (context, index) {
//            return Dismissible(
//               Each Dismissible must contain a Key. Keys allow Flutter to uniquely identify widgets.
//              key: Key(items[index]),
//               Callback that is called when the item is dismissed
//              onDismissed: (direction) {
//                 Remove the item from the data source
//                setState(() {
//                  items.removeAt(index);
//                });
//                 Show a snackbar to provide feedback to the user
//                ScaffoldMessenger.of(context).showSnackBar(
//                  SnackBar(content: Text('${items[index]} dismissed')),
//                );
//              },
//               Background widget displayed when swiping
//              background: Container(
//                color: Colors.green,
//                alignment: Alignment.centerLeft,
//                padding: const EdgeInsets.symmetric(horizontal: 20),
//                child: const Icon(Icons.check, color: Colors.white),
//              ),
//               Secondary background widget displayed when swiping in the opposite direction
//              secondaryBackground: Container(
//                color: Colors.red,
//                alignment: Alignment.centerRight,
//                padding: const EdgeInsets.symmetric(horizontal: 20),
//                child: const Icon(Icons.delete, color: Colors.white),
//              ),
//               The main content of the Dismissible widget
//              child: Card(
//                margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
//                elevation: 5,
//                child: ListTile(
//                  title: Text(items[index]),
//                  trailing: const Icon(Icons.arrow_forward_ios),
//                ),
//              ),
//            );
//          },
//        ),
//      );
//    }
//  }

//  import 'package:fluttermaterial.dart';

//  class DismissibleMyBottomNav extends StatefulWidget {
//    const DismissibleMyBottomNav({Key? key}) : super(key: key);

//    @override
//    State<DismissibleMyBottomNav> createState() => _DismissibleMyBottomNavState();
//  }

//  class _DismissibleMyBottomNavState extends State<DismissibleMyBottomNav> {
//     List of items to display
//    final List<String> items = [
//      "Apple",
//      "Banana",
//      "Cherry",
//      "Date",
//      "Elderberry"
//    ];

//    @override
//    Widget build(BuildContext context) {
//      return Scaffold(
//        appBar: AppBar(
//          title: const Text('Dismissible Widget MyBottomNav'),
//        ),
//        body: ListView.builder(
//          itemCount: items.length,
//          itemBuilder: (context, index) {
//            return Dismissible(
//               Each Dismissible must contain a Key. Keys allow Flutter to uniquely identify widgets.
//              key: Key(items[index]),
//               Callback that is called when the item is dismissed
//              onDismissed: (direction) {
//                 Store the item being dismissed
//                String dismissedItem = items[index];

//                 Remove the item from the data source
//                setState(() {
//                  items.removeAt(index);
//                });

//                 Show a snackbar to provide feedback to the user
//                ScaffoldMessenger.of(context).showSnackBar(
//                  SnackBar(content: Text('$dismissedItem dismissed')),
//                );
//              },
//               Background widget displayed when swiping
//              background: Container(
//                color: Colors.green,
//                alignment: Alignment.centerLeft,
//                padding: const EdgeInsets.symmetric(horizontal: 20),
//                child: const Icon(Icons.check, color: Colors.white),
//              ),
//               Secondary background widget displayed when swiping in the opposite direction
//              secondaryBackground: Container(
//                color: Colors.red,
//                alignment: Alignment.centerRight,
//                padding: const EdgeInsets.symmetric(horizontal: 20),
//                child: const Icon(Icons.delete, color: Colors.white),
//              ),
//               The main content of the Dismissible widget
//              child: Card(
//                margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
//                elevation: 5,
//                child: ListTile(
//                  title: Text(items[index]),
//                  trailing: const Icon(Icons.arrow_forward_ios),
//                ),
//              ),
//            );
//          },
//        ),
//      );
//    }
//  }

//  import 'package:fluttermaterial.dart';

//  class MyPage extends StatefulWidget {
//    const MyPage({super.key});

//    @override
//    _MyLiquidState createState() => _MyLiquidState();
//  }

//  class _MyLiquidState extends State<MyPage> {
//     Create a PageController to control the PageView
//    final PageController _controller = PageController();

//     Current page index
//    int final _currentPage = 0;

//     List of pages to display in the PageView
//    final List<Widget> _pages = [
//      Container(
//        color: Colors.teal[200],
//        child: const Center(
//            child: Text('Welcome to Page 1',
//                style: TextStyle(fontSize: 24, color: Colors.white))),
//      ),
//      Container(
//        color: Colors.blue[200],
//        child: const Center(
//            child: Text('This is Page 2',
//                style: TextStyle(fontSize: 24, color: Colors.white))),
//      ),
//      Container(
//        color: Colors.purple[200],
//        child: const Center(
//            child: Text('You are on Page 3',
//                style: TextStyle(fontSize: 24, color: Colors.white))),
//      ),
//    ];

//    @override
//    Widget build(BuildContext context) {
//      return Scaffold(
//        appBar: AppBar(
//          title: const Text('PageView MyBottomNav'),
//        ),
//        body: PageView(
//           Set the scroll direction to horizontal
//          scrollDirection: Axis.horizontal,
//           Set the controller for the PageView
//          controller: _controller,
//           Enable page snapping
//          pageSnapping: true,
//           Physics for scrolling behavior
//          physics: const BouncingScrollPhysics(),
//           Callback when the page changes
//          onPageChanged: (index) {
//            setState(() {
//              _currentPage = index;  Update current page index
//            });
//          },
//           List of pages to display
//          children: _pages,
//        ),
//        bottomNavigationBar: BottomNavigationBar(
//          items: const [
//            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Page 1'),
//            BottomNavigationBarItem(icon: Icon(Icons.business), label: 'Page 2'),
//            BottomNavigationBarItem(icon: Icon(Icons.school), label: 'Page 3'),
//          ],
//          currentIndex: _currentPage,  Highlight current page
//          onTap: (index) {
//            _controller.jumpToPage(index);  Jump to selected page
//          },
//        ),
//      );
//    }
//  }

//  import 'package:fluttermaterial.dart';

//  class My_SwitchListTile extends StatefulWidget {
//    @override
//    _SwitchListTileMyBottomNavState createState() => _SwitchListTileMyBottomNavState();
//  }

//  class _SwitchListTileMyBottomNavState extends State<My_SwitchListTile> {
//     Variable to hold the state of the switch
//    final bool _isSwitched = false;

//    @override
//    Widget build(BuildContext context) {
//      return Scaffold(
//        appBar: AppBar(
//          title: Text(
//            'SwitchListTile MyBottomNav',
//          ),
//          backgroundColor: Colors.green[200],
//        ),
//        body: Center(
//          child: Column(
//            mainAxisAlignment: MainAxisAlignment.center,
//            children: [
//               SwitchListTile widget
//              SwitchListTile(
//                title: Text(
//                  'Enable Notifications',
//                  style: TextStyle(fontSize: 19, fontWeight: FontWeight.bold),
//                ),
//                subtitle: Text('Receive daily updates from code flicks'),
//                value: _isSwitched,  Current state of the switch
//                onChanged: (bool value) {
//                  setState(() {
//                    _isSwitched = value;  Update the switch state
//                  });
//                },
//                secondary: Icon(Icons.notifications,
//                    color: Colors.blue),  Icon on the left
//                activeColor: Colors.green,  Color when the switch is on
//                inactiveThumbColor: Colors.red,  Color when the switch is off
//              ),
//              SizedBox(height: 20),  Space between elements
//               Display current state message
//              Text(
//                _isSwitched ? 'Notifications are ON' : 'Notifications are OFF',
//                style: TextStyle(fontSize: 17, fontWeight: FontWeight.w500),
//              ),
//            ],
//          ),
//        ),
//      );
//    }
//  }

//  import 'package:fluttermaterial.dart';

//  class My_Card extends StatefulWidget {
//    @override
//    _MyShimmerState createState() => _MyShimmerState();
//  }

//  class _MyShimmerState extends State<My_Card> {
//     List to hold the items
//    List<String> items = List.generate(20, (index) => 'Item ${index + 1}');

//     Function to simulate data fetching
//    Future<void> _refreshData() async {
//       Simulate a network call with a delay
//      await Future.delayed(const Duration(seconds: 2));

//       Update the list with data (for demonstration purposes)
//      setState(() {
//        items = List.generate(20, (index) => 'New Item ${index + 1}');
//      });
//    }

//    @override
//    Widget build(BuildContext context) {
//      return Scaffold(
//        appBar: AppBar(
//          title: Text('RefreshIndicator MyBottomNav'),
//        ),
//        body: RefreshIndicator(
//           Trigger the refresh action when pulled down
//          onRefresh: _refreshData,
//           Color of the indicator when refreshing
//          color: Colors.white,
//           Background color of the indicator
//          backgroundColor: Colors.blue,
//           Displacement of the indicator from the top of the screen
//          displacement: 40.0,
//           Child widget that will be wrapped in the RefreshIndicator
//          child: ListView.builder(
//            itemCount: items.length,
//            itemBuilder: (context, index) {
//              return Card(
//                margin: EdgeInsets.all(10),
//                elevation: 5,
//                child: ListTile(
//                  leading: Icon(Icons.list, color: Colors.blue),
//                  title: Text(
//                    items[index],
//                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
//                  ),
//                  subtitle: Text('This is item number ${index + 1}'),
//                ),
//              );
//            },
//          ),
//        ),
//      );
//    }
//  }

//  import 'package:fluttermaterial.dart';

//  void main() {
//    runApp(MyPOP());
//  }

//  class MyPOP extends StatelessWidget {
//    @override
//    Widget build(BuildContext context) {
//      return MaterialApp(
//        title: 'Flutter Card Widget MyBottomNav',
//        theme: ThemeData(
//          primarySwatch: Colors.blue,
//        ),
//        home: My_Card(),
//      );
//    }
//  }

//  class My_Card extends StatelessWidget {
//    @override
//    Widget build(BuildContext context) {
//      return Scaffold(
//        appBar: AppBar(
//          title: Text('Card Widget MyBottomNav'),
//        ),
//        body: Center(
//          child: SingleChildScrollView(
//            child: Column(
//              mainAxisAlignment: MainAxisAlignment.center,
//              children: [
//                 Card with various properties
//                Card(
//                   Margin around the card
//                  margin: EdgeInsets.all(16),
//                   Elevation for shadow effect
//                  elevation: 10,
//                   Background color of the card
//                  color: Colors.white,
//                   Shape of the card with rounded corners
//                  shape: RoundedRectangleBorder(
//                    borderRadius: BorderRadius.circular(15),
//                    side: BorderSide(color: Colors.blueAccent, width: 2),
//                  ),
//                   Clip behavior to clip child content
//                  clipBehavior: Clip.antiAlias,
//                  child: Padding(
//                    padding: const EdgeInsets.all(16.0),
//                    child: Column(
//                      crossAxisAlignment: CrossAxisAlignment.start,
//                      children: [
//                         Image widget inside the card
//                        ClipRRect(
//                          borderRadius: BorderRadius.circular(10),
//                          child: Image.network(
//                            'https:media.istockphoto.comid1290079537photoview-of-world-famous-iguasu-waterfalls-in-brazil.png?s=612x612&w=0&k=20&c=ofh2JmjM_KMHMf3SOHPQ8vdq_hRqMXvAuyCm9x354vw=',
//                            fit: BoxFit.cover,
//                          ),
//                        ),
//                        SizedBox(height: 12),  Space between image and text
//                         Title text
//                        Text(
//                          'Beautiful Landscape',
//                          style: TextStyle(
//                            fontSize: 20,
//                            fontWeight: FontWeight.bold,
//                          ),
//                        ),
//                        SizedBox(height: 8),  Space between title and subtitle
//                         Subtitle text
//                        Text(
//                          'A breathtaking view of nature.',
//                          style: TextStyle(fontSize: 16, color: Colors.grey[600]),
//                        ),
//                        SizedBox(height: 12),  Space before button
//                         Action button
//                        ElevatedButton(
//                          onPressed: () {
//                             Action when button is pressed
//                            ScaffoldMessenger.of(context).showSnackBar(
//                              SnackBar(content: Text('Button Pressed!')),
//                            );
//                          },
//                          child: Text('View More'),
//                          style: ElevatedButton.styleFrom(
//                            foregroundColor: Colors.blue,  Button color
//                            padding: EdgeInsets.symmetric(
//                                horizontal: 20, vertical: 10),
//                          ),
//                        ),
//                      ],
//                    ),
//                  ),
//                ),
//              ],
//            ),
//          ),
//        ),
//      );
//    }
//  }

//  import 'package:fluttermaterial.dart';

//  class FirstPage extends StatelessWidget {
//    @override
//    Widget build(BuildContext context) {
//      return Scaffold(
//        appBar: AppBar(
//          title: Text("First Page"),
//          backgroundColor: Colors.blue[200],
//        ),
//        body: Container(
//          decoration: BoxDecoration(
//            gradient: LinearGradient(
//              colors: [Colors.teal[200]!, Colors.blue[200]!],
//              begin: Alignment.topLeft,
//              end: Alignment.bottomRight,
//            ),
//          ),
//          child: Center(
//            child: Column(
//              mainAxisAlignment: MainAxisAlignment.center,
//              children: [
//                Text('Welcome to Code Flicks!',
//                    style: TextStyle(fontSize: 24, color: Colors.white)),
//                SizedBox(height: 20),
//                ElevatedButton(
//                  onPressed: () => Navigator.push(
//                     Navigate to SecondPage when pressed
//                    context,
//                    MaterialPageRoute(
//                        builder: (context) =>
//                            SecondPage()), Create a route for SecondPage
//                  ),
//                  child: Text('Go to Second Page'),
//                ),
//              ],
//            ),
//          ),
//        ),
//      );
//    }
//  }

//  class SecondPage extends StatelessWidget {
//    @override
//    Widget build(BuildContext context) {
//      return Scaffold(
//        appBar: AppBar(
//          title: Text("Second Page"),
//          backgroundColor: Colors.teal[200],
//        ),
//        body: Container(
//          decoration: BoxDecoration(
//            gradient: LinearGradient(
//              colors: [Colors.blue[200]!, Colors.teal[200]!],
//              begin: Alignment.topLeft,
//              end: Alignment.bottomRight,
//            ),
//          ),
//          child: Center(
//            child: Column(
//              mainAxisAlignment: MainAxisAlignment.center,
//              children: [
//                Text('You are on the Second Page!',
//                    style: TextStyle(fontSize: 24, color: Colors.white)),
//                SizedBox(height: 20),
//                ElevatedButton(
//                  onPressed: () => Navigator.pop(
//                      context),  Navigate back to previous page when pressed
//                  child: Text('Go Back'),  Button text for going back
//                ),
//              ],
//            ),
//          ),
//        ),
//      );
//    }
//  }

//  import 'package:fluttermaterial.dart';

//  class My_Card extends StatelessWidget {
//    @override
//    Widget build(BuildContext context) {
//      return Scaffold(
//        appBar: AppBar(
//          title: Text(
//            'AlertDialog',
//          ),
//          backgroundColor: Colors.green[200],
//        ),
//        body: Center(
//          child: ElevatedButton(
//            child: Text(
//              'Show AlertDialog',
//              style: TextStyle(
//                fontSize: 18,
//              ),
//            ),
//            onPressed: () => _showAlterDialog(context),
//            style: ElevatedButton.styleFrom(
//               backgroundColor: Colors.blue,  Background color
//               foregroundColor: Colors.black,  Text (foreground) color
//              elevation: 5,  Shadow elevation
//              padding:
//                  EdgeInsets.symmetric(horizontal: 20, vertical: 10),  Padding
//              shape: RoundedRectangleBorder(
//                borderRadius: BorderRadius.circular(20),  Rounded corners
//              ),
//            ),
//          ),
//        ),
//      );
//    }

//     Function to display the enhanced AlertDialog
//    void _showAlterDialog(BuildContext context) {
//      showDialog(
//        context: context,
//        builder: (BuildContext context) {
//          return AlertDialog(
//            title: Row(
//              children: [
//                Icon(Icons.warning, color: Colors.red),  Warning Icon
//                SizedBox(width: 10),  Spacing between icon and text
//                Text('Warning!'),  Title of the dialog
//              ],
//            ),
//            content: Text(
//              'Are you ready to embrace the chaos? 😅\n'
//              'Once you hit “OK,” there’s no turning back 🔙, just coding 🧑🏻‍💻 ahead🔥\n '
//              '                                     - Code Flicks',

//              style: TextStyle(fontSize: 16),  Custom font size
//            ),
//            actions: <Widget>[
//              TextButton(
//                style: ElevatedButton.styleFrom(
//                  foregroundColor: Colors.red,
//                ),
//                child: Text(
//                  'Cancel',
//                  style: TextStyle(color: Colors.red),
//                ),  Cancel button with custom color
//                onPressed: () {
//                  Navigator.of(context).pop();  Close the dialog
//                },
//              ),
//              ElevatedButton(
//                child: Text('OK',
//                    style: TextStyle(
//                        color: Colors.green)),  Confirm button with custom color
//                style: ElevatedButton.styleFrom(
//                    foregroundColor: Colors.green),  Custom button color
//                onPressed: () {
//                   Add your action here
//                  Navigator.of(context).pop();  Close the dialog
//                },
//              ),
//            ],
//            shape: RoundedRectangleBorder(
//              borderRadius: BorderRadius.circular(40),  Rounded corners
//            ),
//            backgroundColor: Colors.white,  Background color of the dialog
//            elevation: 10,  Shadow elevation
//          );
//        },
//      );
//    }
//  }

//  import 'package:fluttermaterial.dart';

//  class FitnessStepper extends StatefulWidget {
//    @override
//    _FitnessStepperState createState() => _FitnessStepperState();
//  }

//   State class for managing the stepper's state
//  class _FitnessStepperState extends State<FitnessStepper> {
//     Variable to track the current step index
//    int _currentStep = 0;

//     List of steps in the stepper
//    List<Step> get steps => [
//          Step(
//            title: const Text(
//              'Welcome',
//              style: TextStyle(fontSize: 18),
//            ),  Title of the first step
//            content: const Text(
//              'Let’s get started on your fitness journey!',
//            ),  Content for the first step
//            isActive: true,  Mark this step as active
//          ),
//          Step(
//            title: const Text(
//              'Set Your Goal',
//              style: TextStyle(fontSize: 18),
//            ),  Title of the second step
//            content: const Text(
//                'What is your primary fitness goal?'),  Content for the second step
//            isActive: _currentStep >= 1,  Active if current step is 1 or more
//          ),
//          Step(
//            title: const Text(
//              'Workout Frequency',
//              style: TextStyle(fontSize: 18),
//            ),  Title of the third step
//            content: const Text(
//                'How often do you want to work out?'),  Content for the third step
//            isActive: _currentStep >= 2,  Active if current step is 2 or more
//          ),
//          Step(
//            title: const Text(
//              'Diet Preferences',
//              style: TextStyle(fontSize: 18),
//            ),  Title of the fourth step
//            content: const Text(
//                'Do you have any dietary preferences?'),  Content for the fourth step
//            isActive: _currentStep >= 3,  Active if current step is 3 or more
//          ),
//          Step(
//            title: const Text(
//              'Ready to Start!',
//              style: TextStyle(fontSize: 18),
//            ),  Title of the fifth step
//            content: const Text(
//                'You’re all set to begin your fitness journey! Let’s go!'),  Content for the fifth step
//            isActive: _currentStep >= 4,  Active if current step is 4 or more
//          ),
//        ];

//     Function to move to the next step in the stepper
//    void _nextStep() {
//      if (_currentStep < steps.length - 1) {
//         Check if not at last step
//        setState(
//            () => _currentStep++);  Increment current step index and rebuild UI
//      }
//    }

//     Function to move to the previous step in the stepper
//    void _prevStep() {
//      if (_currentStep > 0) {
//         Check if not at first step
//        setState(
//            () => _currentStep--);  Decrement current step index and rebuild UI
//      }
//    }

//    @override
//    Widget build(BuildContext context) {
//      return Scaffold(
//        appBar: AppBar(
//          title: const Text(
//            'Fitness Onboarding',  Title of the app bar
//          ),
//          backgroundColor: Colors.blue[200],  Background color of the app bar
//        ),
//        body: Stepper(
//          type: StepperType.vertical,  Set vertical orientation for the stepper
//          currentStep: _currentStep,  Current active step index
//          onStepContinue:
//              _nextStep,  Function called when continuing to next step
//          onStepCancel:
//              _prevStep,  Function called when canceling back to previous step
//          steps: steps,  List of steps defined above
//        ),
//      );
//    }
//  }

//  import 'package:fluttermaterial.dart';

//  class CustomSlider extends StatefulWidget {
//    @override
//    _CustomSliderState createState() => _CustomSliderState();
//  }

//  class _CustomSliderState extends State<CustomSlider> {
//    double _currentValue = 50;  Initial value of the slider

//    @override
//    Widget build(BuildContext context) {
//      return Scaffold(
//        appBar: AppBar(
//          title: Text("Custom Slider"),
//          backgroundColor: Colors.teal,
//        ),
//        body: Center(
//          child: Column(
//            mainAxisAlignment: MainAxisAlignment.center,
//            children: <Widget>[
//              Text(
//                'Value: ${_currentValue.toStringAsFixed(1)}',  Display current value
//                style: TextStyle(fontSize: 24, color: Colors.black),
//              ),
//              SliderTheme(
//                data: SliderTheme.of(context).copyWith(
//                  activeTrackColor: Colors.teal,
//                  inactiveTrackColor: Colors.grey,
//                  thumbColor: Colors.tealAccent,
//                  overlayColor: Colors.teal.withOpacity(0.2),
//                  valueIndicatorColor: Colors.tealAccent,
//                  valueIndicatorTextStyle:
//                      TextStyle(color: Colors.white, fontSize: 16),
//                ),
//                child: Slider(
//                  value: _currentValue,
//                  min: 0,
//                  max: 100,
//                  divisions: 10,  Number of discrete divisions
//                  label: _currentValue
//                      .round()
//                      .toString(),  Show label with current value
//                  onChanged: (double newValue) {
//                    setState(() {
//                      _currentValue = newValue;  Update the current value
//                    });
//                  },
//                  onChangeStart: (double startValue) {
//                    print('Started at $startValue');  Log start value
//                  },
//                  onChangeEnd: (double endValue) {
//                    print('Ended at $endValue');  Log end value
//                  },
//                ),
//              ),
//            ],
//          ),
//        ),
//      );
//    }
//  }

//  import 'package:fluttermaterial.dart';

//  class DraggableSheetMyBottomNav extends StatelessWidget {
//    @override
//    Widget build(BuildContext context) {
//      return Scaffold(
//        appBar: AppBar(
//          title: Text("Draggable Scrollable Sheet"),
//          backgroundColor: Colors.teal,
//        ),
//        body: Stack(
//          children: [
//             Background content
//            Center(
//              child: Text(
//                'Drag up the sheet!',
//                style: TextStyle(fontSize: 24),
//              ),
//            ),
//             DraggableScrollableSheet
//            DraggableScrollableSheet(
//              initialChildSize: 0.25,  Initial height of the sheet
//              minChildSize: 0.1,  Minimum height of the sheet
//              maxChildSize: 0.8,  Maximum height of the sheet
//              builder: (BuildContext context, ScrollController scrollController) {
//                return ClipRRect(
//                  borderRadius: BorderRadius.vertical(
//                      top: Radius.circular(16)),  Rounded corners
//                  child: Container(
//                    color: Colors.white,
//                    child: ListView.builder(
//                      controller: scrollController,
//                      itemCount: 30,  Number of items in the list
//                      itemBuilder: (context, index) {
//                        return ListTile(
//                          title: Text('Item ${index + 1}'),  List item text
//                          tileColor: index.isOdd
//                              ? Colors.teal[100]
//                              : Colors.white,  Alternate colors for items
//                        );
//                      },
//                    ),
//                  ),
//                );
//              },
//            ),
//          ],
//        ),
//      );
//    }
//  }

//  import 'package:fluttermaterial.dart';

//  class SearchMyBottomNav extends StatelessWidget {
//    @override
//    Widget build(BuildContext context) {
//      return Scaffold(
//        appBar: AppBar(
//          title: Text("Search MyBottomNav"),  Title of the app bar
//          actions: [
//            IconButton(
//              icon: Icon(Icons.search),  Search icon in the app bar
//              onPressed: () {
//                showSearch(
//                  context: context,
//                  delegate: CustomSearchDelegate(),  Custom search delegate
//                );
//              },
//            ),
//          ],
//        ),
//        body: Center(
//          child: Text(
//              'Press the search icon to start searching!'),  Placeholder text
//        ),
//      );
//    }
//  }

//   Custom Search Delegate class
//  class CustomSearchDelegate extends SearchDelegate<String> {
//    final List<String> items =
//        List.generate(50, (index) => 'Item ${index + 1}');  Sample data

//    @override
//    String get searchFieldLabel =>
//        'Search items...';  Placeholder for the search field

//    @override
//    List<Widget> buildActions(BuildContext context) {
//      return [
//        IconButton(
//          icon: Icon(Icons.clear),  Clear button to reset search
//          onPressed: () {
//            query = '';  Clear the query
//            showSuggestions(context);  Show suggestions again after clearing
//          },
//        ),
//      ];
//    }

//    @override
//    Widget buildLeading(BuildContext context) {
//      return IconButton(
//        icon: Icon(Icons.arrow_back),  Back button to close search
//        onPressed: () {
//          close(context,
//              '');  Close the search delegate with an empty string instead of null
//        },
//      );
//    }

//    @override
//    Widget buildResults(BuildContext context) {
//      final results = items
//          .where((item) => item.toLowerCase().contains(query.toLowerCase()))
//          .toList();  Filter results based on query

//      return results.isNotEmpty
//          ? ListView.builder(
//              itemCount: results.length,
//              itemBuilder: (context, index) {
//                return ListTile(
//                  title: Text(results[index]),  Display filtered results
//                  onTap: () {
//                    close(context,
//                        results[index]);  Close and return selected item
//                  },
//                );
//              },
//            )
//          : Center(child: Text('No results found.'));  Handle no results case
//    }

//    @override
//    Widget buildSuggestions(BuildContext context) {
//      final suggestions = items
//          .where((item) => item.toLowerCase().startsWith(query.toLowerCase()))
//          .toList();  Suggest items based on query

//      return suggestions.isNotEmpty
//          ? ListView.builder(
//              itemCount: suggestions.length,
//              itemBuilder: (context, index) {
//                return ListTile(
//                  title: Text(suggestions[index]),  Display suggestions
//                  onTap: () {
//                    query = suggestions[
//                        index];  Update query with selected suggestion
//                    showResults(
//                        context);  Show results for the selected suggestion
//                  },
//                );
//              },
//            )
//          : Center(
//              child: Text('No suggestions found.'));  Handle no suggestions case
//    }
//  }

//   card widget beautiful ui
//  import 'package:fluttermaterial.dart';

//  class My_Card extends StatelessWidget {
//    const My_Card({super.key});

//    @override
//    Widget build(BuildContext context) {
//      return Scaffold(
//        appBar: AppBar(
//          title: const Text('Card Widget'),
//          backgroundColor: Colors.blueGrey[100],
//        ),
//        body: Center(
//          child: Column(
//            mainAxisAlignment: MainAxisAlignment.center,
//            children: [
//               Card with various properties
//              Card(
//                 Margin around the card
//                margin: const EdgeInsets.all(18),
//                 Elevation for shadow effect
//                elevation: 10,
//                 Background color of the card
//                color: Colors.blue[100],
//                 Shape of the card with rounded corners
//                shape: RoundedRectangleBorder(
//                  borderRadius: BorderRadius.circular(15),
//                  side: const BorderSide(color: Colors.blue, width: 2),
//                ),
//                 Clip behavior to clip child content
//                clipBehavior: Clip.antiAlias,
//                child: Padding(
//                  padding: const EdgeInsets.all(16.0),
//                  child: Column(
//                    crossAxisAlignment: CrossAxisAlignment.start,
//                    children: [
//                       Image widget inside the card
//                      ClipRRect(
//                        borderRadius: BorderRadius.circular(10),
//                        child: Image.network(
//                          'https:cdn.pixabay.comphoto202405152057developer-8764524_1280.png',
//                          fit: BoxFit.cover,
//                        ),
//                      ),
//                      const SizedBox(height: 12),  Space between image and text
//                       Title text
//                      const Text(
//                        'Developer',
//                        style: TextStyle(
//                          fontSize: 20,
//                          fontWeight: FontWeight.bold,
//                        ),
//                      ),
//                      const SizedBox(
//                          height: 8),  Space between title and subtitle
//                       Subtitle text
//                      Text(
//                        'Taking a quick power nap to fix all bugs.',
//                        style: TextStyle(fontSize: 16, color: Colors.grey[600]),
//                      ),
//                      const SizedBox(height: 12),  Space before button
//                       Action button
//                      ElevatedButton(
//                        onPressed: () {
//                           Action when button is pressed
//                          ScaffoldMessenger.of(context).showSnackBar(
//                            const SnackBar(
//                              backgroundColor: Color.fromARGB(255, 186, 219, 247),
//                              content: Text(
//                                'Button Pressed!',
//                                style: TextStyle(color: Colors.black),
//                              ),
//                            ),
//                          );
//                        },
//                        style: ElevatedButton.styleFrom(
//                          foregroundColor: Colors.blueGrey,  Button color
//                          padding: const EdgeInsets.symmetric(
//                              horizontal: 20, vertical: 10),
//                        ),
//                        child: const Text('View More'),
//                      ),
//                    ],
//                  ),
//                ),
//              ),
//            ],
//          ),
//        ),
//      );
//    }
//  }

//  import 'package:fluttermaterial.dart';
//  import 'package:flutter_slidableflutter_slidable.dart';

//  class SlidableContactList extends StatefulWidget {
//    @ovew
//    _SlidableContactListState createState() => _SlidableContactListState();
//  }

//  class _SlidableContactListState extends State<SlidableContactList> {
//    List<String> contacts = List.generate(10, (index) => 'Contact ${index + 1}');

//    @override
//    Widget build(BuildContext context) {
//      return Scaffold(
//        appBar: AppBar(
//          title: Text('Contacts'),
//        ),
//        body: ListView.builder(
//          itemCount: contacts.length,
//          itemBuilder: (context, index) {
//            return Slidable(
//               Wrap each contact in a Slidable widget
//              child: Card(
//                margin: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
//                elevation: 2,
//                child: ListTile(
//                  leading: Icon(Icons.person, color: Colors.blue),
//                  title: Text(contacts[index]),
//                  subtitle: Text('Swipe to delete'),
//                  trailing: Icon(Icons.chevron_right),
//                ),
//              ),
//               Start action pane for swipe from left to right
//              startActionPane: ActionPane(
//                motion: const DrawerMotion(),
//                children: [
//                  SlidableAction(
//                    onPressed: (context) {
//                       Action to call the contact
//                      ScaffoldMessenger.of(context).showSnackBar(
//                          SnackBar(content: Text('Calling ${contacts[index]}')));
//                    },
//                    backgroundColor: Colors.green,
//                    foregroundColor: Colors.white,
//                    icon: Icons.call,
//                    label: 'Call',
//                  ),
//                ],
//              ),
//               End action pane for swipe from right to left
//              endActionPane: ActionPane(
//                motion: const ScrollMotion(),
//                children: [
//                  SlidableAction(
//                    onPressed: (context) {
//                       Confirm deletion of the contact
//                      _confirmDelete(context, index);
//                    },
//                    backgroundColor: Colors.red,
//                    foregroundColor: Colors.white,
//                    icon: Icons.delete,
//                    label: 'Delete',
//                  ),
//                ],
//              ),
//            );
//          },
//        ),
//      );
//    }

//    void _confirmDelete(BuildContext context, int index) {
//      showDialog(
//        context: context,
//        builder: (BuildContext context) {
//          return AlertDialog(
//            title: Text('Delete Contact'),
//            content: Text('Are you sure you want to delete ${contacts[index]}?'),
//            actions: [
//              TextButton(
//                onPressed: () {
//                  Navigator.of(context).pop();  Close the dialog
//                },
//                child: Text('Cancel'),
//              ),
//              TextButton(
//                onPressed: () {
//                  setState(() {
//                    contacts.removeAt(index);  Remove the contact from the list
//                  });
//                  Navigator.of(context).pop();  Close the dialog
//                  ScaffoldMessenger.of(context).showSnackBar(
//                      SnackBar(content: Text('${contacts[index]} deleted')));
//                },
//                child: Text('Delete'),
//              ),
//            ],
//          );
//        },
//      );
//    }
//  }

//  import 'package:fluttermaterial.dart';
//  import 'package:badgesbadges.dart'
//      as badges;  Importing the badges package with alias

//  class BadgeDemo extends StatefulWidget {
//    @override
//    _BadgeDemoState createState() => _BadgeDemoState();
//  }

//  class _BadgeDemoState extends State<BadgeDemo> {
//    int _cartItemCount = 5;  Initial cart item count

//    @override
//    Widget build(BuildContext context) {
//      return Scaffold(
//        appBar: AppBar(
//          title: Text('Badges MyBottomNav'),
//          backgroundColor: Colors.green[100],
//          actions: [
//             Badge on shopping cart icon
//            badges.Badge(
//              badgeContent: Text(
//                '$_cartItemCount',  Display the item count
//                style: TextStyle(
//                    color: Colors.white, fontSize: 16),  Style for text
//              ),
//              badgeStyle: badges.BadgeStyle(
//                badgeColor: Colors.red,  Badge background color
//                padding: EdgeInsets.all(8),  Padding inside the badge
//                borderRadius: BorderRadius.circular(4),  Rounded corners
//              ),
//              position: badges.BadgePosition.topEnd(
//                  top: -8, end: -10),  Position of the badge
//              child: IconButton(
//                icon: Icon(Icons.shopping_cart, size: 30),  Shopping cart icon
//                onPressed: () {
//                  setState(() {
//                    _cartItemCount++;  Increment item count for demo purpose
//                  });
//                },
//              ),
//            ),
//            SizedBox(width: 20),  Space between icons
//            badges.Badge(
//              badgeContent:
//                  Icon(Icons.star, color: Colors.white),  Star icon in badge
//              badgeStyle: badges.BadgeStyle(
//                badgeColor: Colors.green,  Green badge for notifications
//                padding: EdgeInsets.all(8),  Padding inside the badge
//                borderRadius: BorderRadius.circular(4),  Rounded corners
//              ),
//              position: badges.BadgePosition.topStart(
//                  top: -12, start: -10),  Position of the badge
//              child: IconButton(
//                icon: Icon(Icons.notifications, size: 30),  Notifications icon
//                onPressed: () {
//                  ScaffoldMessenger.of(context).showSnackBar(
//                    SnackBar(content: Text('You have new notifications!')),
//                  );
//                },
//              ),
//            ),
//          ],
//        ),
//        body: Container(
//           decoration: BoxDecoration(
//             gradient: LinearGradient(colors: [
//               Colors.green[200]!,
//               Colors.blue[200]!,
//             ], begin: Alignment.topRight, end: Alignment.bottomLeft),
//           ),
//          child: Center(
//            child: Text(
//              'Press the icons to see badge interactions!',
//              style: TextStyle(fontSize: 18),
//            ),
//          ),
//        ),
//      );
//    }
//  }

//  material route

//  import 'package:fluttermaterial.dart';

//  class My_FirstPage extends StatelessWidget {
//    const My_FirstPage({super.key});

//    @override
//    Widget build(BuildContext context) {
//      return Scaffold(
//        appBar: AppBar(
//          title: const Text("First Page"),
//          backgroundColor: Colors.blue[200],
//        ),
//        body: Container(
//          decoration: BoxDecoration(
//            gradient: LinearGradient(
//              colors: [Colors.teal[200]!, Colors.blue[200]!],
//              begin: Alignment.topLeft,
//              end: Alignment.bottomRight,
//            ),
//          ),
//          child: Center(
//            child: Column(
//              mainAxisAlignment: MainAxisAlignment.center,
//              children: [
//                const Text(
//                  "Welcome to Code Flicks😊",
//                  style: TextStyle(
//                    fontSize: 26,
//                    color: Colors.white,
//                  ),
//                ),
//                const SizedBox(
//                  height: 20,
//                ),
//                ElevatedButton(
//                  onPressed: () => Navigator.push(
//                     navigate to secondpage when pressed
//                    context,
//                    MaterialPageRoute(
//                        builder: (context) =>
//                            const SecondPage()),  create a route for secondpage
//                  ),
//                  child: const Text("Go to Second Page"),
//                ),
//              ],
//            ),
//          ),
//        ),
//      );
//    }
//  }

//  class SecondPage extends StatelessWidget {
//    const SecondPage({super.key});

//    @override
//    Widget build(BuildContext context) {
//      return Scaffold(
//        appBar: AppBar(
//          title: const Text("Second Page"),
//          backgroundColor: Colors.teal[200],
//        ),
//        body: Container(
//          decoration: BoxDecoration(
//            gradient: LinearGradient(
//              colors: [Colors.blue[200]!, Colors.teal[200]!],
//              begin: Alignment.topLeft,
//              end: Alignment.bottomRight,
//            ),
//          ),
//          child: Center(
//            child: Column(
//              mainAxisAlignment: MainAxisAlignment.center,
//              children: [
//                const Text(
//                  "You are on the Second PagePage😉",
//                  style: TextStyle(fontSize: 24, color: Colors.white),
//                ),
//                const SizedBox(
//                  height: 20,
//                ),
//                ElevatedButton(
//                  onPressed: () => Navigator.pop(
//                      context),  Navigate back to previous page when pressed

//                  child: const Text("Go Back"),  button text for going back
//                ),
//              ],
//            ),
//          ),
//        ),
//      );
//    }
//  }

//  import 'package:fluttermaterial.dart';
//  import 'package:flutter_rating_barflutter_rating_bar.dart';

//  void main() {
//    runApp(MyLottie());
//  }

//  class MyLottie extends StatelessWidget {
//    @override
//    Widget build(BuildContext context) {
//      return MaterialApp(
//        title: 'Enhanced Flutter Rating Bar Demo',
//        theme: ThemeData(
//          primarySwatch: Colors.blue,
//          textTheme: TextTheme(
//            bodyText1: TextStyle(color: Colors.white),
//            headline6:
//                TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
//          ),
//        ),
//        home: RatingBarDemo(),
//      );
//    }
//  }

//  class RatingBarDemo extends StatefulWidget {
//    @override
//    _RatingBarDemoState createState() => _RatingBarDemoState();
//  }

//  class _RatingBarDemoState extends State<RatingBarDemo> {
//    double _rating = 3.5;  Initial rating

//    @override
//    Widget build(BuildContext context) {
//      return Scaffold(
//        body: Container(
//          decoration: BoxDecoration(
//            gradient: LinearGradient(
//              colors: [Colors.blueAccent, Colors.purpleAccent],
//              begin: Alignment.topLeft,
//              end: Alignment.bottomRight,
//            ),
//          ),
//          child: Center(
//            child: Card(
//              elevation: 10,
//              shape: RoundedRectangleBorder(
//                borderRadius: BorderRadius.circular(20),  Rounded corners
//              ),
//              color: Colors.white.withOpacity(0.9),  Semi-transparent card
//              child: Padding(
//                padding: const EdgeInsets.all(20.0),
//                child: Column(
//                  mainAxisSize: MainAxisSize.min,
//                  children: <Widget>[
//                    Text(
//                      'Rate Us',
//                      style: Theme.of(context)
//                          .textTheme
//                          .headline6
//                          .copyWith(fontSize: 28),
//                    ),
//                    SizedBox(height: 20),
//                     Display the rating bar
//                    RatingBar.builder(
//                      initialRating: _rating,
//                      minRating: 1,
//                      direction: Axis.horizontal,
//                      allowHalfRating: true,
//                      itemCount: 5,
//                      itemSize: 50.0,
//                      unratedColor: Colors.grey.withOpacity(
//                          0.5),  More subtle color for unrated stars
//                      itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
//                      itemBuilder: (context, _) => Icon(
//                        Icons.star,
//                        color: Colors.amber,  Color for rated stars
//                      ),
//                      onRatingUpdate: (rating) {
//                        setState(() {
//                          _rating =
//                              rating;  Update the rating state on user interaction
//                        });
//                        print(rating);  Print the rating to console
//                      },
//                    ),
//                    SizedBox(height: 20),
//                    Text(
//                      'Your Rating:',
//                      style: Theme.of(context)
//                          .textTheme
//                          .bodyText1
//                          .copyWith(fontSize: 24),
//                    ),
//                    SizedBox(height: 10),
//                    Text(
//                      _rating.toString(),
//                      style: Theme.of(context)
//                          .textTheme
//                          .headline6
//                          .copyWith(fontSize: 32),
//                    ),
//                  ],
//                ),
//              ),
//            ),
//          ),
//        ),
//      );
//    }
//  }

//  import 'package:fluttermaterial.dart';
//  import 'package:flutter_rating_barflutter_rating_bar.dart';

//  class RatingBarDemo extends StatefulWidget {
//    @override
//    _RatingBarDemoState createState() => _RatingBarDemoState();
//  }

//  class _RatingBarDemoState extends State<RatingBarDemo> {
//    double _rating = 3.5;  Initial rating

//    @override
//    Widget build(BuildContext context) {
//      return Scaffold(
//        body: Container(
//          decoration: BoxDecoration(
//            gradient: LinearGradient(
//              colors: [Colors.blue[200]!, Colors.green[100]!],
//              begin: Alignment.topLeft,
//              end: Alignment.bottomRight,
//            ),
//          ),
//          child: Center(
//            child: Card(
//              elevation: 10,
//              shape: RoundedRectangleBorder(
//                borderRadius: BorderRadius.circular(20),  Rounded corners
//              ),
//              color: Colors.white.withOpacity(0.9),  Semi-transparent card
//              child: Padding(
//                padding: const EdgeInsets.all(20.0),
//                child: Column(
//                  mainAxisSize: MainAxisSize.min,
//                  children: <Widget>[
//                    Text(
//                      'Rate Us',
//                      style: TextStyle(
//                          fontSize: 28,
//                          fontWeight: FontWeight.bold,
//                          color: Colors.black),
//                    ),
//                    SizedBox(height: 20),
//                     Display the rating bar
//                    RatingBar.builder(
//                      initialRating: _rating,
//                      minRating: 1,
//                      direction: Axis.horizontal,
//                      allowHalfRating: true,
//                      itemCount: 5,
//                      itemSize: 50.0,
//                      unratedColor: Colors.grey.withOpacity(
//                          0.5),  More subtle color for unrated stars
//                      itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
//                      itemBuilder: (context, _) => Icon(
//                        Icons.star,
//                        color: Colors.amber,  Color for rated stars
//                      ),
//                      onRatingUpdate: (rating) {
//                        setState(() {
//                          _rating =
//                              rating;  Update the rating state on user interaction
//                        });
//                        print(rating);  Print the rating to console
//                      },
//                    ),
//                    SizedBox(height: 20),
//                    Text(
//                      'Your Rating:',
//                      style: TextStyle(fontSize: 24, color: Colors.black),
//                    ),
//                    SizedBox(height: 10),
//                    Text(
//                      _rating.toString(),
//                      style: TextStyle(
//                          fontSize: 32,
//                          fontWeight: FontWeight.bold,
//                          color: Colors.black),
//                    ),
//                  ],
//                ),
//              ),
//            ),
//          ),
//        ),
//      );
//    }
//  }

//  import 'package:fluttermaterial.dart';
//  import 'package:flutter_rating_barflutter_rating_bar.dart';

//  class RatingBarDemo extends StatefulWidget {
//    @override
//    _RatingBarDemoState createState() => _RatingBarDemoState();
//  }

//  class _RatingBarDemoState extends State<RatingBarDemo> {
//    final double _rating = 3.5;  Initial rating set to 3.5

//    @override
//    Widget build(BuildContext context) {
//      return Scaffold(
//        body: Container(
//           Container to hold the gradient background
//          decoration: BoxDecoration(
//            gradient: LinearGradient(
//              colors: [Colors.blue[200]!, Colors.green[200]!],  Gradient colors
//              begin: Alignment.topLeft,  Start of the gradient
//              end: Alignment.bottomRight,  End of the gradient
//            ),
//          ),
//          child: Center(
//            child: Card(
//              elevation: 10,  Shadow effect for the card
//              shape: RoundedRectangleBorder(
//                borderRadius:
//                    BorderRadius.circular(20),  Rounded corners for the card
//              ),
//              color: Colors.white.withOpacity(
//                  0.9),  Semi-transparent white background for the card
//              child: Padding(
//                padding: const EdgeInsets.all(20.0),  Padding inside the card
//                child: Column(
//                  mainAxisSize:
//                      MainAxisSize.min,  Minimize space taken by the column
//                  children: <Widget>[
//                    Text(
//                      'Rate Us',  Title text for rating prompt
//                      style: TextStyle(
//                          fontSize: 28,
//                          fontWeight: FontWeight.bold,
//                          color: Colors.black),
//                    ),
//                    SizedBox(height: 20),  Space between title and rating bar

//                     Rating Bar Widget
//                    RatingBar.builder(
//                      initialRating:
//                          _rating,  Set initial rating from state variable
//                      minRating: 1,  Minimum rating value (1 star)
//                      direction: Axis.horizontal,  Arrange stars horizontally
//                      allowHalfRating:
//                          true,  Allow half-star ratings (e.g., 2.5)
//                      itemCount: 5,  Total number of stars (5 stars)
//                      itemSize: 50.0,  Size of each star icon
//                      unratedColor: Colors.grey.withOpacity(
//                          0.5),  Color for unrated stars (subtle gray)
//                      itemPadding: EdgeInsets.symmetric(
//                          horizontal: 4.0),  Padding between stars

//                       Builder function to specify how each star looks
//                      itemBuilder: (context, _) => Icon(
//                        Icons.star,
//                        color: Colors.amber,  Color for rated stars (amber)
//                      ),

//                       Callback function when rating is updated by user interaction
//                      onRatingUpdate: (rating) {
//                        setState(() {
//                          _rating = rating;  Update state with new rating value
//                        });
//                        print(
//                            rating);  Print the new rating to console for debugging
//                      },
//                    ),

//                    SizedBox(
//                        height:
//                            20),  Space between rating bar and rating display

//                    Text(
//                      'Your Rating:',  Label for displaying current rating
//                      style: TextStyle(fontSize: 24, color: Colors.black),
//                    ),
//                    SizedBox(
//                        height:
//                            10),  Space between label and actual rating display

//                    Text(
//                      _rating.toString(),  Display current rating as text
//                      style: TextStyle(
//                          fontSize: 32,
//                          fontWeight: FontWeight.bold,
//                          color: Colors.black),
//                    ),
//                  ],
//                ),
//              ),
//            ),
//          ),
//        ),
//      );
//    }
//  }

//  import 'package:fluttermaterial.dart';  Import the Material design package for Flutter
//  import 'package:share_plusshare_plus.dart';  Import the Share Plus package for sharing content

//   SharePage widget that contains the UI for sharing content
//  class SharePage extends StatelessWidget {
//     Function to handle sharing content
//    void _onShare(BuildContext context) async {
//       Define the text to share
//      const String text = "Check out this Cool Flutter app!";
//       Define the subject for the share dialog (optional)
//      const String subject = "Flutter Share";

//       Use the Share package to share the text and subject
//      await Share.share(text, subject: subject);
//    }

//    @override
//    Widget build(BuildContext context) {
//      return Scaffold(
//        appBar: AppBar(
//          title: Text(
//            'Share Button',
//            style: TextStyle(fontSize: 32),
//          ),  Title of the AppBar
//          backgroundColor: Colors.blue[200],
//        ),
//        body: Center(
//          child: Column(
//            mainAxisAlignment:
//                MainAxisAlignment.center,  Center the column vertically
//            children: <Widget>[
//               A visually appealing text widget
//              const Text(
//                'Tap the button 👇 below to share!',  Instruction text
//                style: TextStyle(
//                    fontSize: 22,
//                    fontWeight: FontWeight.bold),  Style for the text
//              ),
//              const SizedBox(height: 20),  Space between the text and button
//              ElevatedButton(
//                onPressed: () =>
//                    _onShare(context),  Call _onShare when button is pressed
//                child: Text(
//                  'Share Now',
//                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
//                ),  Text displayed on the button
//                style: ElevatedButton.styleFrom(
//                  elevation: 6,
//                  foregroundColor: Colors.blueAccent,  Color of the button text
//                  padding: const EdgeInsets.symmetric(
//                      horizontal: 20,
//                      vertical: 15),  Padding around the button text
//                  textStyle:
//                      const TextStyle(fontSize: 18),  Style for button text size
//                ),
//              ),
//            ],
//          ),
//        ),
//      );
//    }
//  }

//  import 'package:fluttermaterial.dart';
//  import 'package:liquid_pull_to_refreshliquid_pull_to_refresh.dart';

//  class MyLiquid extends StatefulWidget {
//    @override
//    _MyLiquidState createState() => _MyLiquidState();
//  }

//  class _MyLiquidState extends State<MyLiquid> {
//     Key for the LiquidPullToRefresh widget
//    final GlobalKey<LiquidPullToRefreshState> _refreshIndicatorKey =
//        GlobalKey<LiquidPullToRefreshState>();

//     Sample data list
//    List<String> items = List.generate(20, (index) => "Item $index");

//     Method to handle refresh logic
//    Future<void> _handleRefresh() async {
//       Simulate network delay
//      await Future.delayed(const Duration(seconds: 2));
//       Update your data here (,for MyBottomNav, fetch new data)
//      setState(() {
//        items.add(
//            "New Item ${items.length}");  Adding a item for demonstration
//      });
//    }

//    @override
//    Widget build(BuildContext context) {
//      return Scaffold(
//        appBar: AppBar(
//          title: Text('Liquid Pull to Refresh MyBottomNav'),
//        ),
//        body: LiquidPullToRefresh(
//          key: _refreshIndicatorKey,
//          onRefresh: _handleRefresh,
//          height: 100.0,  Height of the pull-to-refresh indicator
//          color: Colors.blue[100],  Color of the indicator
//          backgroundColor: Colors.white,  Background color of the indicator
//          showChildOpacityTransition: true,  Transition effect for child widgets
//          child: ListView.builder(
//            itemCount: items.length,
//            itemBuilder: (context, index) {
//              return ListTile(
//                title: Text(items[index]),
//              );
//            },
//          ),
//        ),
//      );
//    }
//  }

//  import 'package:fluttermaterial.dart';  Import Flutter material design package
//  import 'package:liquid_pull_to_refreshliquid_pull_to_refresh.dart';  Import the Liquid Pull to Refresh package

//  class LiquidPull extends StatefulWidget {
//    @override
//    _LiquidPullState createState() =>
//        _LiquidPullState();  Create state for LiquidPull
//  }

//  class _LiquidPullState extends State<LiquidPull> {
//     Key for managing the Liquid Pull to Refresh widget
//    final GlobalKey<LiquidPullToRefreshState> _refreshIndicatorKey =
//        GlobalKey<LiquidPullToRefreshState>();

//     Sample data list with titles and asset image paths
//    List<Map<String, String>> items = List.generate(20, (index) {
//      return {
//        "title": "Beautiful Place $index",  Title for each item
//        "image": "imagesdev.jpeg",  Path to the asset image
//      };
//    });

//     Method to handle refresh action
//    Future<void> _handleRefresh() async {
//      await Future.delayed(
//          const Duration(seconds: 2));  Simulate a network delay of 2 seconds
//      setState(() {
//        items.add({
//          "title":
//              "New Beautiful Place ${items.length}",  Add a item with an updated title
//          "image": "imagesdev.jpeg"  Use the same asset image for new items
//        });
//      });
//    }

//    @override
//    Widget build(BuildContext context) {
//      return Scaffold(
//        appBar: AppBar(
//          title: Text('Liquid Pull to Refresh MyBottomNav'),  Title of the app bar
//          centerTitle: true,  Center the title in the app bar
//        ),
//        body: LiquidPullToRefresh(
//          key:
//              _refreshIndicatorKey,  Assign the key to the LiquidPullToRefresh widget
//          onRefresh:
//              _handleRefresh,  Call _handleRefresh when pulled down to refresh
//          height: 100.0,  Height of the refresh indicator when pulled down
//          color: Colors.blue,  Color of the refresh indicator
//          backgroundColor:
//              Colors.white,  Background color of the refresh indicator
//          showChildOpacityTransition:
//              true,  Enable opacity transition for child widgets during refresh
//          child: ListView.builder(
//            itemCount: items.length,  Number of items in the list
//            itemBuilder: (context, index) {
//              return Card(
//                elevation: 4,  Shadow effect for the card
//                margin: EdgeInsets.all(8),  Margin around each card
//                shape: RoundedRectangleBorder(
//                    borderRadius:
//                        BorderRadius.circular(15)),  Rounded corners for cards
//                child: ClipRRect(
//                  borderRadius: BorderRadius.circular(
//                      15),  Clip corners of child widgets to match card shape
//                  child: Column(
//                    children: [
//                      Image.asset(
//                        items[index][
//                            "image"]!,  Load asset image using path from items list
//                        fit: BoxFit
//                            .cover,  Cover entire area of image widget without distortion
//                        height: 200,  Height of the image widget
//                        width:
//                            double.infinity,  Width takes full available width
//                      ),
//                      Padding(
//                        padding: const EdgeInsets.all(
//                            16.0),  Padding around text inside card
//                        child: Text(
//                          items[index]["title"]!,  Display title from items list
//                          style: TextStyle(
//                            fontSize: 20,  Font size for title text
//                            fontWeight: FontWeight.bold,  Make title text bold
//                          ),
//                          textAlign:
//                              TextAlign.center,  Center align text in card
//                        ),
//                      ),
//                    ],
//                  ),
//                ),
//              );
//            },
//          ),
//        ),
//      );
//    }
//  }

//  import 'package:fluttermaterial.dart';
//  import 'package:shimmershimmer.dart';

//  class MyShimmer extends StatefulWidget {
//    @override
//    _MyShimmerState createState() => _MyShimmerState();
//  }

//  class _MyShimmerState extends State<MyShimmer> {
//    bool _isLoading = true;

//    @override
//    void initState() {
//      super.initState();
//       Simulate a network call
//      Future.delayed(const Duration(seconds: 3), () {
//        setState(() {
//          _isLoading = false;  Stop loading after 3 seconds
//        });
//      });
//    }

//    @override
//    Widget build(BuildContext context) {
//      return Scaffold(
//        appBar: AppBar(title: Text('Shimmer Effect')),
//        body: _isLoading ? _buildLoadingList() : _buildDataList(),
//      );
//    }

//     Method to build the loading shimmer effect
//    Widget _buildLoadingList() {
//      return ListView.builder(
//        itemCount: 10,
//        itemBuilder: (context, index) {
//          return Shimmer.fromColors(
//            baseColor: Colors.grey[500]!,
//            highlightColor: Colors.grey[100]!,
//            child: Container(
//              height: 100,
//              margin: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
//              decoration: BoxDecoration(
//                color: Colors.white,
//                borderRadius: BorderRadius.circular(12),
//              ),
//            ),
//          );
//        },
//      );
//    }

//     Method to build the actual data list
//    Widget _buildDataList() {
//      return ListView.builder(
//        itemCount: 10,
//        itemBuilder: (context, index) {
//          return Container(
//            height: 100,
//            margin: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
//            decoration: BoxDecoration(
//              color: Colors.blueAccent,
//              borderRadius: BorderRadius.circular(12),
//            ),
//            child: Center(
//              child: Text(
//                'Item $index',
//                style: TextStyle(color: Colors.white, fontSize: 24),
//              ),
//            ),
//          );
//        },
//      );
//    }
//  }

//  import 'package:fluttermaterial.dart';

//  class MySemantics extends StatelessWidget {
//    @override
//    Widget build(BuildContext context) {
//      return Scaffold(
//        appBar: AppBar(
//          title: Text('Semantics Widget Demo'),
//        ),
//        body: Center(
//          child: Column(
//            mainAxisAlignment: MainAxisAlignment.center,
//            children: [
//               A button with semantics for accessibility
//              Semantics(
//                label:
//                    'Increment counter',  Descriptive label for screen readers
//                button: true,  Indicates this widget is a button
//                child: FloatingActionButton(
//                  onPressed: () {
//                     Increment action here
//                  },
//                  tooltip: 'Increment',  Tooltip for the button
//                  child: Icon(Icons.add),
//                ),
//              ),
//              SizedBox(height: 20),
//               A text field with semantics for accessibility
//              Semantics(
//                label: 'Enter your name',  Descriptive label for the text field
//                hint: 'Type your name here',  Hint for the input field
//                child: TextField(
//                  decoration: InputDecoration(
//                    border: OutlineInputBorder(),
//                    labelText: 'Name',
//                  ),
//                ),
//              ),
//              SizedBox(height: 20),
//               A switch with semantics for accessibility
//              Semantics(
//                label: 'Enable notifications',  Descriptive label for the switch
//                enabled: true,  Indicates if the switch is enabled
//                child: Switch(
//                  value: true,  Current state of the switch
//                  onChanged: (bool value) {
//                     Toggle action here
//                  },
//                ),
//              ),
//            ],
//          ),
//        ),
//      );
//    }
//  }

//  import 'package:fluttermaterial.dart';

//  class MySem extends StatefulWidget {
//    @override
//    _MySemState createState() => _MySemState();
//  }

//  class _MySemState extends State<MySem> {
//    final double _sliderValue = 0.5;  Slider value
//    bool _notificationsEnabled = false;  Checkbox state

//    void _incrementCounter() {
//       Increment action logic here
//      ScaffoldMessenger.of(context).showSnackBar(
//        SnackBar(content: Text('Counter incremented!')),
//      );
//    }

//    void _toggleNotifications(bool? value) {
//      setState(() {
//        _notificationsEnabled = value ?? false;  Update checkbox state
//      });
//    }

//    @override
//    Widget build(BuildContext context) {
//      return Scaffold(
//        appBar: AppBar(
//          title: Text('Enhanced Semantics Widget Demo'),
//        ),
//        body: Padding(
//          padding: const EdgeInsets.all(16.0),
//          child: Center(
//            child: Column(
//              mainAxisAlignment: MainAxisAlignment.center,
//              children: [
//                 Button with semantics for accessibility
//                Semantics(
//                  label:
//                      'Increment counter',  Descriptive label for screen readers
//                  button: true,  Indicates this widget is a button
//                  child: ElevatedButton(
//                    onPressed: _incrementCounter,
//                    style: ElevatedButton.styleFrom(
//                      padding: EdgeInsets.symmetric(horizontal: 32, vertical: 16),
//                      textStyle: TextStyle(fontSize: 20),
//                      foregroundColor: Colors.blueAccent,  Button color
//                    ),
//                    child: Text('Increment Counter'),
//                  ),
//                ),
//                SizedBox(height: 20),

//                 Slider with semantics for accessibility
//                Semantics(
//                  label: 'Adjust volume',  Descriptive label for the slider
//                  value: _sliderValue.toString(),  Current value of the slider
//                  child: Column(
//                    children: [
//                      Text('Volume Level', style: TextStyle(fontSize: 18)),
//                      Slider(
//                        value: _sliderValue,
//                        min: 0.0,
//                        max: 1.0,
//                        divisions: 10,
//                        label: (_sliderValue * 100).round().toString(),
//                        activeColor:
//                            Colors.blueAccent,  Slider color when active
//                        inactiveColor: Colors.grey,  Slider color when inactive
//                        onChanged: (double value) {
//                          setState(() {
//                            _sliderValue = value;
//                          });
//                        },
//                      ),
//                    ],
//                  ),
//                ),
//                SizedBox(height: 20),

//                 Checkbox with semantics for accessibility
//                Semantics(
//                  label:
//                      'Enable notifications',  Descriptive label for the checkbox
//                  checked: _notificationsEnabled,  Current state of the checkbox
//                  child: Row(
//                    mainAxisAlignment: MainAxisAlignment.center,
//                    children: [
//                      Checkbox(
//                        value: _notificationsEnabled,
//                        onChanged: _toggleNotifications,
//                      ),
//                      Text('Enable Notifications',
//                          style: TextStyle(fontSize: 18)),
//                    ],
//                  ),
//                ),
//              ],
//            ),
//          ),
//        ),
//      );
//    }
//  }

//  import 'package:fluttermaterial.dart';

//  class AnimatedAlignMyBottomNav extends StatefulWidget {
//    @override
//    _AnimatedAlignMyBottomNavState createState() => _AnimatedAlignMyBottomNavState();
//  }

//  class _AnimatedAlignMyBottomNavState extends State<AnimatedAlignMyBottomNav> {
//    AlignmentGeometry _alignment = Alignment.topLeft;

//    void _toggleAlignment() {
//      setState(() {
//        _alignment = _alignment == Alignment.topLeft
//            ? Alignment.center
//            : Alignment.topLeft;
//      });
//    }

//    @override
//    Widget build(BuildContext context) {
//      return Scaffold(
//        appBar: AppBar(
//          title: Text("Animated Align"),
//        ),
//        body: Center(
//          child: GestureDetector(
//            onTap: _toggleAlignment,
//            child: AnimatedAlign(
//              alignment: _alignment,
//              duration: const Duration(seconds: 1),
//              curve: Curves.fastOutSlowIn,
//              child: Container(
//                width: 100,
//                height: 100,
//                decoration: BoxDecoration(
//                  color: Colors.teal,
//                  borderRadius: BorderRadius.circular(15),
//                  boxShadow: [
//                    BoxShadow(
//                      color: Colors.black26,
//                      blurRadius: 10.0,
//                      spreadRadius: 2.0,
//                    ),
//                  ],
//                ),
//                child: Center(
//                  child: Text(
//                    'Tap Me!',
//                    style: TextStyle(
//                      color: Colors.white,
//                      fontWeight: FontWeight.bold,
//                    ),
//                  ),
//                ),
//              ),
//            ),
//          ),
//        ),
//      );
//    }
//  }
//  import 'package:fluttermaterial.dart';

//  class AnimatedAlignMyBottomNav extends StatefulWidget {
//    @override
//    _AnimatedAlignMyBottomNavState createState() => _AnimatedAlignMyBottomNavState();
//  }

//  class _AnimatedAlignMyBottomNavState extends State<AnimatedAlignMyBottomNav> {
//    AlignmentGeometry _alignment = Alignment.topLeft;

//    void _toggleAlignment() {
//      setState(() {
//        _alignment = _alignment == Alignment.topLeft
//            ? Alignment.center
//            : Alignment.bottomRight;
//      });
//    }

//    @override
//    Widget build(BuildContext context) {
//      return Scaffold(
//        appBar: AppBar(
//          title: Text("Animated Align with Image"),
//        ),
//        body: Center(
//          child: GestureDetector(
//            onTap: _toggleAlignment,
//            child: AnimatedAlign(
//              alignment: _alignment,
//              duration: const Duration(seconds: 1),
//              curve: Curves.fastOutSlowIn,
//              child: Container(
//                width: 100,
//                height: 100,
//                decoration: BoxDecoration(
//                  color: Colors.teal,
//                  borderRadius: BorderRadius.circular(15),
//                  boxShadow: [
//                    BoxShadow(
//                      color: Colors.black26,
//                      blurRadius: 10.0,
//                      spreadRadius: 2.0,
//                    ),
//                  ],
//                ),
//                child: ClipRRect(
//                  borderRadius: BorderRadius.circular(15),
//                  child: Image.asset(
//                    'imagesdeveloper.png',  Replace with your image path
//                    fit: BoxFit.cover,
//                  ),
//                ),
//              ),
//            ),
//          ),
//        ),
//      );
//    }
//  }
//  import 'package:fluttermaterial.dart';

//   Define an enum for the segmented button options
//  enum Options { pizza, burger, momo, noodles }

//  class Choices extends StatefulWidget {
//    const Choices({super.key});

//    @override
//    _ChoicesState createState() => _ChoicesState();
//  }

//  class _ChoicesState extends State<Choices> {
//     Track the selected option
//    Options? selectedOption;

//    @override
//    Widget build(BuildContext context) {
//      return Scaffold(
//        appBar: AppBar(
//          title: const Text('Segmented Button'),
//          backgroundColor: Colors.green[200],  Teal color for the AppBar
//        ),
//        body: Center(
//          child: Padding(
//            padding: const EdgeInsets.all(16.0),
//            child: Column(
//              mainAxisAlignment: MainAxisAlignment.center,
//              children: <Widget>[
//                const Text(
//                  'Choose Your Fav Food:',
//                  style: TextStyle(
//                      fontSize: 28,  Increased font size for the title
//                      fontWeight: FontWeight.bold,
//                      color: Colors.black),  Darker teal for text
//                ),
//                const SizedBox(height: 20),
//                 Create the SegmentedButton with creative options
//                SegmentedButton<Options>(
//                  segments: const <ButtonSegment<Options>>[
//                    ButtonSegment<Options>(
//                      value: Options.pizza,
//                      label: Text('🍕 Pizza'),
//                    ),
//                    ButtonSegment<Options>(
//                      value: Options.burger,
//                      label: Text('🍔 Burger'),
//                    ),
//                    ButtonSegment<Options>(
//                      value: Options.momo,
//                      label: Text('🥟 Momo'),
//                    ),
//                    ButtonSegment<Options>(
//                      value: Options.noodles,
//                      label: Text('🍟 French Fries'),
//                    ),
//                  ],
//                  selected: selectedOption != null ? {selectedOption!} : {},
//                  onSelectionChanged: (Set<Options> newSelection) {
//                    setState(() {
//                       Allow only one selection
//                      selectedOption =
//                          newSelection.isNotEmpty ? newSelection.first : null;
//                    });
//                  },
//                  multiSelectionEnabled: false,  Only allow single selection
//                  emptySelectionAllowed: true,
//                  style: ButtonStyle(
//                    backgroundColor: WidgetStateProperty.all(
//                        Colors.teal[100]),  Light teal for button background
//                    foregroundColor: WidgetStateProperty.all(
//                        Colors.black),  Black text color for better contrast
//                    padding: WidgetStateProperty.all(const EdgeInsets.symmetric(
//                        vertical: 20)),  Increased padding for larger buttons
//                    textStyle: WidgetStateProperty.all(
//                        const TextStyle(fontSize: 20)),  Larger text for buttons
//                  ),
//                  showSelectedIcon: true,
//                  selectedIcon: const Icon(Icons.check,
//                      color: Colors.white),  White check icon for selected state
//                ),
//                const SizedBox(height: 20),
//                 Display the selected option as text with improved styling
//                const Text(
//                  'Selected Food:',
//                  style: TextStyle(
//                      fontSize: 22,
//                      fontWeight: FontWeight
//                          .bold),  Increased font size for selected food label
//                ),
//                const SizedBox(height: 10),
//                Text(
//                  selectedOption == null
//                      ? 'None'
//                      : _formatOptionName(
//                          selectedOption!),  Use helper function to format option name
//                  style: TextStyle(
//                      fontSize: 18,
//                      color: Colors.red[600],
//                      fontWeight:
//                          FontWeight.bold),  Darker teal for selected text
//                ),
//              ],
//            ),
//          ),
//        ),
//      );
//    }

//     Helper function to format option names nicely
//    String _formatOptionName(Options option) {
//      switch (option) {
//        case Options.pizza:
//          return 'Pizza';
//        case Options.burger:
//          return 'Burger';
//        case Options.momo:
//          return 'Momo';
//        case Options.noodles:
//          return 'Noodles';
//      }
//    }
//  }

//  import 'package:fluttermaterial.dart';

//  class MyCarouselView extends StatelessWidget {
//     List of asset image paths
//    final List<String> imageimages = [
//      "imagesmessi.png",
//      "imagesronaldo.png",
//      "imagesneymar.png",
//      "imagesdeveloper.png",
//    ];

//    MyCarouselView({super.key});

//    @override
//    Widget build(BuildContext context) {
//      return Scaffold(
//        appBar: AppBar(
//          title: const Text('Carousel View '),
//        ),
//        body: Center(
//          child: Column(
//            children: [
//               Wrap CarouselView in a SizedBox to provide height
//              SizedBox(
//                height: 500,  Set a fixed height for the carousel
//                child: CarouselView.(
//                  itemCount: imageimages.length,
//                  itemBuilder: (context, index) {
//                    return Container(
//                      margin: const EdgeInsets.all(10),  Margin around each item
//                      decoration: BoxDecoration(
//                        borderRadius:
//                            BorderRadius.circular(15),  Rounded corners
//                        boxShadow: const [
//                          BoxShadow(
//                            color: Colors.black26,
//                            blurRadius: 10.0,
//                            offset: Offset(0, 5),  Shadow position
//                          ),
//                        ],
//                      ),
//                      child: ClipRRect(
//                        borderRadius: BorderRadius.circular(
//                            15),  Ensure image corners are rounded
//                        child: Image.asset(
//                          imageimages[index],
//                          fit: BoxFit.cover,  Cover the entire container
//                        ),
//                      ),
//                    );
//                  },
//                ),
//              ),
//              const SizedBox(
//                  height: 20),  Space between carousel and other content
//              const Text(
//                'Swipe to see more images!',
//                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
//              ),
//            ],
//          ),
//        ),
//      );
//    }
//  }

//  import 'package:fluttermaterial.dart';
//  import 'package:carousel_slidercarousel_slider.dart';  Import the carousel_slider package

//  class MyCarouselView extends StatelessWidget {
//     List of asset image paths
//    final List<String> imageimages = [
//      "imagesmessi.png",
//    ];

//    MyCarouselView({super.key});

//    @override
//    Widget build(BuildContext context) {
//      return Scaffold(
//        appBar: AppBar(
//          title: const Text('Carousel View'),
//        ),
//        body: Center(
//          child: Column(
//            children: [
//               Wrap CarouselSlider in a SizedBox to provide height
//              SizedBox(
//                height: 500,  Set a fixed height for the carousel
//                child: CarouselSlider.builder(
//                  itemCount: imageimages.length,
//                  itemBuilder: (context, index, realIndex) {
//                    return Container(
//                      margin: const EdgeInsets.all(10),  Margin around each item
//                      decoration: BoxDecoration(
//                        borderRadius:
//                            BorderRadius.circular(15),  Rounded corners
//                        boxShadow: const [
//                          BoxShadow(
//                            color: Colors.black26,
//                            blurRadius: 10.0,
//                            offset: Offset(0, 5),  Shadow position
//                          ),
//                        ],
//                      ),
//                      child: ClipRRect(
//                        borderRadius: BorderRadius.circular(
//                            15),  Ensure image corners are rounded
//                        child: Image.asset(
//                          imageimages[index],
//                          fit: BoxFit.cover,  Cover the entire container
//                        ),
//                      ),
//                    );
//                  },
//                  options: CarouselOptions(
//                    autoPlay: true,  Enable auto-play
//                    enlargeCenterPage: true,  Enlarge the center item
//                    aspectRatio: 2.0,  Aspect ratio of the carousel
//                    onPageChanged: (index, reason) {
//                      print(
//                          'Current index: $index');  Print current index on change
//                    },
//                  ),
//                ),
//              ),
//              const SizedBox(
//                  height: 20),  Space between carousel and other content
//              const Text(
//                'Swipe to see more images!',
//                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
//              ),
//            ],
//          ),
//        ),
//      );
//    }
//  }

//  import 'package:fluttermaterial.dart';

//  class MyCarousel extends StatelessWidget {
//    const MyCarousel({Key? key}) : super(key: key);

//    @override
//    Widget build(BuildContext context) {
//      return Scaffold(
//        appBar: AppBar(title: const Text('Image Carousel')),
//        body: CarouselView(
//          itemExtent: 200.0,  Set the height of the images
//          children: [
//            Image.asset('imagesmessi.png', fit: BoxFit.cover),
//            Image.asset('imagesronaldo.png', fit: BoxFit.cover),
//            Image.asset('imagesneymar.png', fit: BoxFit.cover),
//          ],
//        ),
//      );
//    }
//  }

//  import 'package:fluttermaterial.dart';
//  import 'package:carousel_slidercarousel_slider.dart';

//  class MyCarousel extends StatelessWidget {
//    const MyCarousel({Key? key}) : super(key: key);

//    @override
//    Widget build(BuildContext context) {
//      return Scaffold(
//        appBar: AppBar(title: const Text('Image Carousel')),
//        body: Center(
//          child: CarouselSlider(
//            options: CarouselOptions(
//              height: 400.0,
//              autoPlay: true,
//              autoPlayInterval: const Duration(seconds: 3),
//              enlargeCenterPage: true,
//              viewportFraction: 0.85,
//              enableInfiniteScroll: true,
//            ),
//            items: [
//              'imagesmessi.png',
//              'imagesronaldo.png',
//              'imagesneymar.png',
//              'imagesdeveloper.png',
//            ].map((imagePath) {
//              return Container(
//                margin: const EdgeInsets.symmetric(horizontal: 5.0),
//                decoration: BoxDecoration(
//                  borderRadius: BorderRadius.circular(15),
//                  boxShadow: [
//                    BoxShadow(
//                      color: Colors.black26,
//                      blurRadius: 10.0,
//                      offset: const Offset(0, 5),  Shadow position
//                    ),
//                  ],
//                ),
//                child: ClipRRect(
//                  borderRadius: BorderRadius.circular(15),
//                  child: Image.asset(imagePath, fit: BoxFit.cover),
//                ),
//              );
//            }).toList(),
//          ),
//        ),
//      );
//    }
//  }

//  import 'package:fluttermaterial.dart';

//  class BeautifulSwitchMyBottomNav extends StatefulWidget {
//    @override
//    _BeautifulSwitchMyBottomNavState createState() => _BeautifulSwitchMyBottomNavState();
//  }

//  class _BeautifulSwitchMyBottomNavState extends State<BeautifulSwitchMyBottomNav> {
//    bool isSwitched = false;  Initial state of the switch

//    @override
//    Widget build(BuildContext context) {
//      return Scaffold(
//        appBar: AppBar(
//          title: Text('Beautiful Switch Widget'),
//          backgroundColor: Colors.teal,
//        ),
//        body: Center(
//          child: Container(
//            decoration: BoxDecoration(
//              gradient: LinearGradient(
//                colors: [Colors.teal, Colors.lightBlueAccent],
//                begin: Alignment.topLeft,
//                end: Alignment.bottomRight,
//              ),
//            ),
//            padding: EdgeInsets.all(30),
//            child: Column(
//              mainAxisAlignment: MainAxisAlignment.center,
//              children: <Widget>[
//                 Custom Switch with beautiful UI
//                AnimatedContainer(
//                  duration: const Duration(milliseconds: 500),  Animation duration
//                  curve: Curves.easeInOut,  Animation curve
//                  decoration: BoxDecoration(
//                    color: isSwitched
//                        ? Colors.green
//                        : Colors.red,  Background color based on switch state
//                    borderRadius: BorderRadius.circular(30),  Rounded corners
//                  ),
//                  padding: EdgeInsets.all(16),
//                  child: Row(
//                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                    children: [
//                      Text(
//                        'Toggle Switch',
//                        style: TextStyle(
//                          color: Colors.white,
//                          fontSize: 20,
//                        ),
//                      ),
//                      Switch(
//                        value: isSwitched,  Current state of the switch
//                        onChanged: (value) {
//                          setState(() {
//                            isSwitched = value;  Update the state on toggle
//                          });
//                        },
//                        activeColor: Colors.white,  Color when switch is on
//                        inactiveThumbColor:
//                            Colors.white,  Color of the thumb when off
//                        inactiveTrackColor:
//                            Colors.grey[500],  Track color when switch is off
//                        activeTrackColor: Colors
//                            .lightGreenAccent,  Track color when switch is on
//                      ),
//                    ],
//                  ),
//                ),
//                SizedBox(height: 20),  Spacing below the switch
//                Text(
//                  'Switch is ${isSwitched ? "ON" : "OFF"}',  Display current state
//                  style: TextStyle(
//                      fontSize: 24,
//                      fontWeight: FontWeight.bold,
//                      color: Colors.white),
//                ),
//              ],
//            ),
//          ),
//        ),
//      );
//    }
//  }

//  void main() {
//    runApp(MaterialApp(
//      debugShowCheckedModeBanner: false,
//      home: BeautifulSwitchMyBottomNav(),
//    ));
//  }

//  import 'package:fluttermaterial.dart';

//  class BeautifulSwitchMyBottomNav extends StatefulWidget {
//    const BeautifulSwitchMyBottomNav({super.key});

//    @override
//    _BeautifulSwitchMyBottomNavState createState() => _BeautifulSwitchMyBottomNavState();
//  }

//  class _BeautifulSwitchMyBottomNavState extends State<BeautifulSwitchMyBottomNav> {
//    bool isSwitched = false;  Initial state of the switch

//    @override
//    Widget build(BuildContext context) {
//      return MaterialApp(
//        debugShowCheckedModeBanner: false,
//        theme: isSwitched
//            ? ThemeData.dark()
//            : ThemeData.light(),  Toggle between light and dark themes
//        home: Scaffold(
//          appBar: AppBar(
//            title: const Text(
//              'Switch',
//              style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
//            ),
//          ),
//          body: Center(
//            child: Padding(
//              padding: const EdgeInsets.all(20.0),
//              child: Card(
//                elevation: 5,
//                shape: RoundedRectangleBorder(
//                  borderRadius: BorderRadius.circular(15),
//                ),
//                child: Padding(
//                  padding: const EdgeInsets.all(20.0),
//                  child: Row(
//                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                    children: [
//                      const Text(
//                        'Dark Mode',
//                        style: TextStyle(fontSize: 20),
//                      ),
//                      Switch(
//                        value: isSwitched,
//                        onChanged: (value) {
//                          setState(() {
//                            isSwitched = value;  Update the state on toggle
//                          });
//                        },
//                        activeColor: Colors.green,  Color when switch is on
//                        inactiveThumbColor:
//                            Colors.grey,  Color of the thumb when off
//                      ),
//                    ],
//                  ),
//                ),
//              ),
//            ),
//          ),
//        ),
//      );
//    }
//  }

//  import 'package:fluttermaterial.dart';

//   Main widget for the BeautifulSwitchMyBottomNav
//  class BeautifulSwitchMyBottomNav extends StatefulWidget {
//    const BeautifulSwitchMyBottomNav({super.key});

//    @override
//    _BeautifulSwitchMyBottomNavState createState() => _BeautifulSwitchMyBottomNavState();
//  }

//   State class for managing the switch's state
//  class _BeautifulSwitchMyBottomNavState extends State<BeautifulSwitchMyBottomNav> {
//    bool isSwitched = false;  Initial state of the switch (false = Light Theme)

//    @override
//    void initState() {
//      super.initState();
//       Print the initial theme based on the switch's state
//      if (!isSwitched) {
//        print('App started with Light Theme');
//      } else {
//        print('App started with Dark Theme');
//      }
//    }

//    @override
//    Widget build(BuildContext context) {
//      return MaterialApp(
//        debugShowCheckedModeBanner: false,  Hides the debug banner
//        theme: isSwitched
//            ? ThemeData.dark()
//            : ThemeData.light(),  Set theme based on switch state
//        home: Scaffold(
//          appBar: AppBar(
//            title: Text(
//              isSwitched
//                  ? 'Dark Mode'
//                  : 'Light Mode',  Change title based on theme
//              style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
//            ),
//          ),
//          body: Center(
//            child: Padding(
//              padding: const EdgeInsets.all(20.0),  Padding around the card
//              child: Card(
//                elevation: 10,  Shadow effect for the card
//                shape: RoundedRectangleBorder(
//                  borderRadius:
//                      BorderRadius.circular(20),  Rounded corners for the card
//                ),
//                child: Padding(
//                  padding: const EdgeInsets.all(40.0),  Padding inside the card
//                  child: Column(
//                    mainAxisSize:
//                        MainAxisSize.min,  Size of the column based on children
//                    children: [
//                       Display an image based on the current theme
//                      Image.asset(
//                        isSwitched ? 'imagesboy.jpeg' : 'imagesdeveloper.png',
//                        height: 200,  Height of the image
//                        width: 200,  Width of the image
//                      ),
//                      const SizedBox(height: 20),  Space between elements

//                       Display the current mode (LightDark)
//                      Text(
//                        isSwitched ? 'Dark Mode' : 'Light Mode',
//                        style: TextStyle(
//                            fontSize: 32,
//                            fontWeight: FontWeight
//                                .bold),  Increased font size for visibility
//                      ),

//                      const SizedBox(height: 10),  Space between elements

//                      const Text(
//                        'Switch between light and dark themes for a better visual experience.',
//                        textAlign: TextAlign.center,
//                        style: TextStyle(
//                            fontSize: 20),  Increased font size for readability
//                      ),

//                      const SizedBox(height: 20),  Space between elements

//                      Row(
//                        mainAxisAlignment: MainAxisAlignment
//                            .spaceEvenly,  Align children evenly in a row
//                        children: [
//                          Expanded(
//                              child: Text(isSwitched ? 'Dark' : 'Light',
//                                  style: TextStyle(
//                                      fontSize:
//                                          20))),  Display current theme label

//                          Switch(
//                            value: isSwitched,  Current state of the switch
//                            onChanged: (value) {
//                              setState(() {
//                                isSwitched =
//                                    value;  Update switch state when changed
//                              });
//                            },
//                            activeColor:
//                                Colors.green,  Color when switch is active (on)
//                            inactiveThumbColor: Colors
//                                .grey,  Color when switch is inactive (off)
//                          ),
//                        ],
//                      )
//                    ],
//                  ),
//                ),
//              ),
//            ),
//          ),
//        ),
//      );
//    }
//  }

//  Import necessary Flutter packages
//  Import necessary Flutter packages

//  import 'package:fluttermaterial.dart';
//  import 'package:slide_to_actslide_to_act.dart';

//   Main function to run the app

//   SlideToUnlockScreen widget containing the Slide to Action widget
//  class SlideToUnlockScreen extends StatelessWidget {
//    @override
//    Widget build(BuildContext context) {
//      return Scaffold(
//        appBar: AppBar(
//          title: Text('Slide to Unlock'),
//          centerTitle: true,
//          elevation: 4,
//        ),
//        body: Center(
//          child: Padding(
//            padding: const EdgeInsets.all(24.0),
//            child: Column(
//              mainAxisAlignment: MainAxisAlignment.center,
//              children: [
//                 Adding an icon and a title for context
//                Icon(
//                  Icons.lock,
//                  size: 100,
//                  color: Colors.blue[200],
//                ),
//                SizedBox(height: 20),
//                Text(
//                  'Swipe to Unlock',
//                  style: TextStyle(
//                    fontSize: 24,
//                    fontWeight: FontWeight.bold,
//                    color: Colors.black87,
//                  ),
//                  textAlign: TextAlign.center,
//                ),
//                SizedBox(height: 40),
//                SlideAction(
//                   Customize the appearance of the slide action
//                  height: 70,  Custom height for the SlideAction
//                  outerColor: Colors.green[200],  Outer color
//                  innerColor: Colors.white,  Inner color
//                  textColor: Colors.black,  Text color
//                  text: 'Slide to Unlock',  Text on the slider
//                  textStyle: TextStyle(
//                    fontSize: 18,
//                    fontWeight: FontWeight.bold,
//                  ),
//                  sliderButtonIconSize: 30,  Size of the slider button icon
//                  sliderButtonIconPadding: 16,  Padding around the icon
//                  sliderButtonYOffset: 0,  Vertical offset of the slider button
//                  enabled: true,  Enable or disable sliding
//                  borderRadius: 52,  Rounded corners for the action
//                  elevation: 6,  Elevation for shadow effect
//                  animationDuration:
//                      const Duration(milliseconds: 500),  Animation duration
//                  onSubmit: () {
//                    ScaffoldMessenger.of(context).showSnackBar(
//                      SnackBar(content: Text('Unlocked!')),
//                    );
//                  },
//                  sliderButtonIcon: Icon(Icons.chevron_right,
//                      color: Colors.white),  Custom icon for slider button
//                ),
//              ],
//            ),
//          ),
//        ),
//      );
//    }
//  }

//  import 'package:fluttermaterial.dart';
//  import 'package:slide_to_actslide_to_act.dart';

//   Main function to run the app

//   SlideToUnlockScreen widget containing the Slide to Action widget
//  class SlideToUnlockScreen extends StatefulWidget {
//    const SlideToUnlockScreen({super.key});

//    @override
//    _SlideToUnlockScreenState createState() => _SlideToUnlockScreenState();
//  }

//  class _SlideToUnlockScreenState extends State<SlideToUnlockScreen> {
//    bool _isUnlocked = false;  State variable to track if unlocked

//    @override
//    Widget build(BuildContext context) {
//      return Scaffold(
//        appBar: AppBar(
//          title: const Text('Slide to Unlock'),
//          centerTitle: true,
//        ),
//        body: Center(
//          child: Padding(
//            padding: const EdgeInsets.all(24.0),
//            child: Column(
//              mainAxisAlignment: MainAxisAlignment.center,
//              children: [
//                 Adding an icon that changes based on unlock state
//                Icon(
//                  _isUnlocked ? Icons.lock_open : Icons.lock,
//                  size: 100,
//                   color: Colors.blue[500],
//                  color: Colors.purple[500],
//                ),
//                const SizedBox(height: 20),
//                Text(
//                  _isUnlocked ? 'Unlocked!' : 'Locked!',
//                  style: const TextStyle(
//                    fontSize: 24,
//                    fontWeight: FontWeight.bold,
//                    color: Colors.black87,
//                  ),
//                  textAlign: TextAlign.center,
//                ),
//                const SizedBox(height: 40),
//                SlideAction(
//                   Customize the appearance of the slide action
//                  height: 70,  Custom height for the SlideAction
//                  outerColor: Colors.purple[200],  Outer color
//                  innerColor: Colors.blueGrey[400],  Inner color
//                  textColor: Colors.black,  Text color
//                  text: 'Slide to Unlock',  Text on the slider
//                  textStyle: const TextStyle(
//                    fontSize: 18,
//                    fontWeight: FontWeight.bold,
//                  ),
//                  sliderButtonIconSize: 30,  Size of the slider button icon
//                  sliderButtonIconPadding: 16,  Padding around the icon
//                  sliderButtonYOffset: 0,  Vertical offset of the slider button
//                  enabled: !_isUnlocked,  Disable sliding if already unlocked
//                  borderRadius: 52,  Rounded corners for the action
//                  elevation: 6,  Elevation for shadow effect
//                  animationDuration:
//                      const Duration(milliseconds: 500),  Animation duration
//                  onSubmit: () {
//                    setState(() {
//                      _isUnlocked = true;  Update state to unlocked
//                    });
//                    ScaffoldMessenger.of(context).showSnackBar(
//                      const SnackBar(content: Text('Unlocked!')),
//                    );
//                    return null;
//                  },
//                  sliderButtonIcon: const Icon(Icons.chevron_right,
//                      color: Colors.white),  Custom icon for slider button
//                ),
//              ],
//            ),
//          ),
//        ),
//      );
//    }
//  }

//  import 'package:fluttermaterial.dart';
//  import 'package:slide_to_actslide_to_act.dart';

//   Main function to run the app

//   SlideToUnlockScreen widget containing the Slide to Action widget
//  class SlideToUnlockScreen extends StatefulWidget {
//    @override
//    _SlideToUnlockScreenState createState() => _SlideToUnlockScreenState();
//  }

//  class _SlideToUnlockScreenState extends State<SlideToUnlockScreen> {
//    bool _isUnlocked = false;  State variable to track if unlocked

//    void _toggleLock() {
//      setState(() {
//        _isUnlocked = !_isUnlocked;  Toggle lock state
//      });
//    }

//    @override
//    Widget build(BuildContext context) {
//      return Scaffold(
//        appBar: AppBar(
//          title: Text('Slide Action'),
//          backgroundColor: Colors.purple[200],
//        ),
//        body: Center(
//          child: Padding(
//            padding: const EdgeInsets.all(24.0),
//            child: Column(
//              mainAxisAlignment: MainAxisAlignment.center,
//              children: [
//                 Adding an icon that changes based on unlock state
//                Icon(
//                  _isUnlocked ? Icons.lock_open : Icons.lock,
//                  size: 100,
//                  color: Colors.blue[500],
//                ),
//                SizedBox(height: 20),
//                Text(
//                  _isUnlocked ? 'Unlocked!' : 'Swipe to Unlock',
//                  style: TextStyle(
//                    fontSize: 24,
//                    fontWeight: FontWeight.bold,
//                    color: Colors.black87,
//                  ),
//                  textAlign: TextAlign.center,
//                ),
//                SizedBox(height: 40),
//                SlideAction(
//                   Customize the appearance of the slide action
//                  height: 70,  Custom height for the SlideAction
//                  outerColor: Colors.purple[200],  Outer color
//                  innerColor: Colors.white,  Inner color
//                  textColor: Colors.black,  Text color
//                  text: _isUnlocked
//                      ? 'Slide to Lock'
//                      : 'Slide to Unlock',  Text on the slider
//                  textStyle: TextStyle(
//                    fontSize: 18,
//                    fontWeight: FontWeight.bold,
//                  ),
//                  sliderButtonIconSize: 30,  Size of the slider button icon
//                  sliderButtonIconPadding: 16,  Padding around the icon
//                  sliderButtonYOffset: 0,  Vertical offset of the slider button
//                  enabled: true,  Enable sliding
//                  borderRadius: 52,  Rounded corners for the action
//                  elevation: 6,  Elevation for shadow effect
//                  animationDuration:
//                      const Duration(milliseconds: 500),  Animation duration
//                  onSubmit: () {
//                    _toggleLock();  Toggle lock state on submit
//                    ScaffoldMessenger.of(context).showSnackBar(
//                      SnackBar(
//                          content: Text(_isUnlocked ? 'Locked!' : 'Unlocked!')),
//                    );
//                  },
//                  sliderButtonIcon: Icon(Icons.chevron_right,
//                      color: Colors.blueGrey),  Custom icon for slider button
//                ),
//              ],
//            ),
//          ),
//        ),
//      );
//    }
//  }

//  import 'package:fluttermaterial.dart';

//  class MyAnimatedList extends StatefulWidget {
//    @override
//    _MyAnimatedListState createState() => _MyAnimatedListState();
//  }

//  class _MyAnimatedListState extends State<MyAnimatedList> {
//     Key to manage the state of the AnimatedList
//    final GlobalKey<AnimatedListState> _listKey = GlobalKey<AnimatedListState>();

//     List to hold items displayed in the AnimatedList
//    final List<String> _items = ['Item 1', 'Item 2', 'Item 3'];

//     Method to add a new item to the list
//    void _addItem() {
//      final newIndex = _items.length;  Determine the index for the item
//      _items.add('Item ${newIndex + 1}');  Add item to the list
//      listKey.currentState
//          ?.insertItem(newIndex);  Animate the insertion of the item
//    }

//     Method to remove an item from the list at a given index
//    void _removeItem(int index) {
//       Check if the index is valid before proceeding
//      if (index < 0 || index >= _items.length) return;

//      final removedItem =
//          _items[index];  Store the item to be removed for animation

//      setState(() {
//        _items.removeAt(index);  Update the list by removing the item
//      });

//       Animate removal of the item from the list
//      _listKey.currentState?.removeItem(
//        index,
//        (context, animation) => _buildItem(
//            removedItem, animation),  Build item for removal animation
//      );
//    }

//     Method to build each item in the list with an animation effect
//    Widget _buildItem(String item, Animation<double> animation) {
//      return SizeTransition(
//        sizeFactor: animation,  Animate size change during insertionremoval
//        child: Card(
//          color: Colors.green[200],
//          margin: EdgeInsets.symmetric(
//              vertical: 5, horizontal: 10),  Margin around each card
//          child: ListTile(
//            title:
//                Text(item, style: TextStyle(fontSize: 18)),  Display item text
//            trailing: IconButton(
//              icon: Icon(Icons.remove_circle),  Icon button to remove item
//              onPressed: () {
//                int index =
//                    _items.indexOf(item);  Find index of the item to remove
//                if (index != -1) {
//                   Ensure index is valid before removing
//                  _removeItem(index);  Call method to remove item safely
//                }
//              },
//            ),
//          ),
//        ),
//      );
//    }

//    @override
//    Widget build(BuildContext context) {
//      return Scaffold(
//        appBar: AppBar(
//          title: Text(
//            'Animated List',
//            style: TextStyle(fontSize: 26),
//          ),
//           backgroundColor: Colors.green[200],
//        ),  App bar with title

//        body: AnimatedList(
//          key: _listKey,  Key for managing state of AnimatedList
//          initialItemCount: _items.length,  Initial number of items in the list
//          itemBuilder: (context, index, animation) => _buildItem(
//              _items[index], animation),  Build items with animation effect
//        ),
//        floatingActionButton: FloatingActionButton(
//          onPressed: _addItem,  Add item when button is pressed
//          child: Icon(Icons.add),  Icon for adding items
//        ),
//      );
//    }
//  }

//  import 'package:fluttermaterial.dart';

//  class MyTab extends StatefulWidget {
//    @override
//    _MyTabState createState() => _MyTabState();
//  }

//  class _MyTabState extends State<MyTab> with SingleTickerProviderStateMixin {
//    late TabController _tabController;

//     List of tabs with icons
//    final List<Tab> myTabs = <Tab>[
//      Tab(icon: Icon(Icons.home), text: 'Home'),
//      Tab(icon: Icon(Icons.person), text: 'Profile'),
//      Tab(icon: Icon(Icons.settings), text: 'Settings'),
//    ];

//    @override
//    void initState() {
//      super.initState();
//       Initialize the TabController with the number of tabs and vsync
//      _tabController = TabController(length: myTabs.length, vsync: this);
//    }

//    @override
//    void dispose() {
//       Dispose of the controller when not needed
//      tabController.dispose();
//      super.dispose();
//    }

//    @override
//    Widget build(BuildContext context) {
//      return Scaffold(
//        appBar: AppBar(
//          title: Text('T A B B A R'),
//          backgroundColor: Colors.blue[200],  Updated AppBar color
//          bottom: TabBar(
//            controller: _tabController,
//            indicatorColor: Colors.white,  Color of the indicator
//            indicatorWeight: 4.0,  Thickness of the indicator
//            labelColor: Colors.black,  Color of the selected tab text
//            unselectedLabelColor: Colors.blueGrey,  Color of unselected tab text
//            tabs: myTabs,
//          ),
//        ),
//        body: TabBarView(
//          controller: _tabController,
//          children: [
//             Content for Home tab
//            Container(
//              color: Colors.green[500],  Background color for Home tab
//              child: Center(
//                child: Text(
//                  'Welcome to Home 🏠',
//                  style: TextStyle(
//                      fontSize: 32,  Increased font size
//                      color: Colors.white),
//                ),
//              ),
//            ),
//             Content for Profile tab
//            Container(
//              color: Colors.green[500],  Background color for Profile tab
//              child: Center(
//                child: Text(
//                  'Your Profile 🧑🏻‍💻',
//                  style: TextStyle(
//                      fontSize: 32,  Increased font size
//                      color: Colors.white),
//                ),
//              ),
//            ),
//             Content for Settings tab
//            Container(
//              color: Colors.green[500],  Background color for Settings tab
//              child: Center(
//                child: Text(
//                  'Systme Settings ⚙️',
//                  style: TextStyle(
//                      fontSize: 32,  Increased font size
//                      color: Colors.white),
//                ),
//              ),
//            ),
//          ],
//        ),
//      );
//    }
//  }

//  import 'package:fluttermaterial.dart';

//  void main() {
//    runApp(MyLottie());
//  }

//  class MyLottie extends StatelessWidget {
//    @override
//    Widget build(BuildContext context) {
//      return MaterialApp(
//        title: 'CloseButton MyBottomNav',
//        theme: ThemeData(
//          primarySwatch: Colors.blue,
//        ),
//        home: CloseButtonDemo(),
//      );
//    }
//  }

//  class CloseButtonDemo extends StatelessWidget {
//    @override
//    Widget build(BuildContext context) {
//      return Scaffold(
//        appBar: AppBar(
//          title: Text('CloseButton Demo'),
//        ),
//        body: Center(
//          child: Container(
//            padding: EdgeInsets.all(20.0),
//            decoration: BoxDecoration(
//              color: Colors.white,
//              borderRadius: BorderRadius.circular(15.0),
//              boxShadow: [
//                BoxShadow(
//                  color: Colors.black26,
//                  blurRadius: 10.0,
//                  offset: Offset(0, 4),
//                ),
//              ],
//            ),
//            child: Column(
//              mainAxisSize: MainAxisSize.min,
//              children: [
//                 Title text
//                Text(
//                  'Welcome to Flutter!',
//                  style: TextStyle(
//                    fontSize: 24,
//                    fontWeight: FontWeight.bold,
//                    color: Colors.blueAccent,
//                  ),
//                ),
//                SizedBox(height: 20),

//                 Description text
//                Text(
//                  'This is an MyBottomNav of a CloseButton widget with various properties.',
//                  textAlign: TextAlign.center,
//                  style: TextStyle(fontSize: 16, color: Colors.black54),
//                ),
//                SizedBox(height: 40),

//                 CloseButton with custom properties
//                CloseButton(
//                  color: Colors.red,  Change the color of the button
//                  onPressed: () {
//                     Navigate to the closing message screen
//                    Navigator.of(context).push(MaterialPageRoute(
//                      builder: (context) => ClosingMessageScreen(),
//                    ));
//                  },
//                ),
//              ],
//            ),
//          ),
//        ),
//      );
//    }
//  }

//  class ClosingMessageScreen extends StatelessWidget {
//    @override
//    Widget build(BuildContext context) {
//      return Scaffold(
//        appBar: AppBar(
//          title: Text('Closed'),
//        ),
//        body: Center(
//          child: Column(
//            mainAxisAlignment: MainAxisAlignment.center,
//            children: [
//               Display an image or icon
//              Icon(
//                Icons.check_circle_outline,
//                size: 100,
//                color: Colors.green,
//              ),
//              SizedBox(height: 20),

//               Message indicating the page has been closed
//              Text(
//                'You have closed this page!',
//                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
//              ),
//              SizedBox(height: 20),

//               Button to go back to the previous screen
//              ElevatedButton(
//                onPressed: () {
//                  Navigator.of(context).pop();  Go back to the previous screen
//                },
//                child: Text('Go Back'),
//              ),
//            ],
//          ),
//        ),
//      );
//    }
//  }

//  import 'package:fluttermaterial.dart';

//  class CloseButtonDemo extends StatelessWidget {
//    @override
//    Widget build(BuildContext context) {
//      return Scaffold(
//        appBar: AppBar(
//          title: Text(
//            'CloseButton Demo',
//            style: TextStyle(fontSize: 26),
//          ),
//          backgroundColor: Colors.blue[200],
//        ),
//        body: Center(
//          child: Container(
//            padding: EdgeInsets.all(20.0),
//            decoration: BoxDecoration(
//              gradient: LinearGradient(
//                  colors: [Colors.lightBlue[500]!, Colors.lightGreen[500]!],
//                  begin: Alignment.topLeft,
//                  end: Alignment.bottomLeft),
//              color: Colors.white,
//              borderRadius: BorderRadius.circular(15.0),
//              boxShadow: [
//                BoxShadow(
//                  color: Colors.black26,
//                  blurRadius: 10.0,
//                  offset: Offset(0, 4),
//                ),
//              ],
//            ),
//            child: Column(
//              mainAxisSize: MainAxisSize.min,
//              children: [
//                 Title text
//                Text(
//                  'Welcome to Code Flicks',
//                  style: TextStyle(
//                    fontSize: 26,
//                    fontWeight: FontWeight.bold,
//                    color: Colors.black,
//                  ),
//                ),
//                SizedBox(height: 20),

//                 Description text
//                Text(
//                  'Thousands of candles can be lighted from a single candle, and the life of the candle will not be shortened. Happiness never decreases by being shared -Buddha',
//                  textAlign: TextAlign.center,
//                  style: TextStyle(fontSize: 18, color: Colors.black),
//                ),
//                SizedBox(height: 40),

//                 Tooltip wrapping the CloseButton
//                Tooltip(
//                  message: 'Close this dialog',  Tooltip message
//                  child: CloseButton(
//                    color: Colors.red,  Change the color of the button
//                    onPressed: () {
//                       Navigate to the closing message screen
//                      Navigator.of(context).push(MaterialPageRoute(
//                        builder: (context) => ClosingMessageScreen(),
//                      ));
//                    },
//                  ),
//                ),
//              ],
//            ),
//          ),
//        ),
//      );
//    }
//  }

//  class ClosingMessageScreen extends StatelessWidget {
//    @override
//    Widget build(BuildContext context) {
//      return Scaffold(
//        appBar: AppBar(
//          title: Text('Closed'),
//        ),
//        body: Center(
//          child: Column(
//            mainAxisAlignment: MainAxisAlignment.center,
//            children: [
//               Display an image or icon
//              Icon(
//                Icons.check_circle_outline,
//                size: 100,
//                color: Colors.green,
//              ),
//              SizedBox(height: 20),

//               Message indicating the page has been closed
//              Text(
//                'You have closed this page!',
//                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
//              ),
//              SizedBox(height: 20),

//               Button to go back to the previous screen
//              ElevatedButton(
//                onPressed: () {
// //                 Navigator.of(context).pop(); // Go back to the previous screen
// //               },
// //               child: Text('Go Back'),
// //             ),
// //           ],
// //         ),
// //       ),
// //     );
// //   }
// // }
// // import 'package:flutter/material.dart';
// // import 'package:pull_to_refresh_flutter3/pull_to_refresh_flutter3.dart';

// // class MyLiquidpull extends StatefulWidget {
// //   @override
// //   _MyLiquidpullState createState() => _MyLiquidpullState();
// // }

// // class _MyLiquidpullState extends State<MyLiquidpull> {
// //   List<String> items = List.generate(20, (index) => 'Item $index');
// //   RefreshController _refreshController =
// //       RefreshController(initialRefresh: false);

// //   // Method to simulate data fetching
// //   Future<void> _onRefresh() async {
// //     // Simulate a network call with a delay
// //     await Future.delayed(Duration(seconds: 2));

// //     // Add new items to the list
// //     setState(() {
// //       items.insert(0, 'New Item ${items.length}');
// //     });

// //     // Complete the refresh action
// //     _refreshController.refreshCompleted();
// //   }

// //   @override
// //   Widget build(BuildContext context) {
// //     return Scaffold(
// //       appBar: AppBar(
// //         title: Text('Pull to Refresh Demo'),
// //       ),
// //       body: SmartRefresher(
// //         controller: _refreshController,
// //         enablePullDown: true,
// //         header: WaterDropHeader(), // Custom header for pull-to-refresh
// //         onRefresh: _onRefresh, // Trigger refresh on pull down
// //         child: ListView.builder(
// //           itemCount: items.length,
// //           itemBuilder: (context, index) {
// //             return ListTile(
// //               title: Text(items[index]), // Display item text
// //             );
// //           },
// //         ),
// //       ),
// //     );
// //   }
// // }

// // import 'package:flutter/material.dart';
// // import 'package:liquid_pull_to_refresh/liquid_pull_to_refresh.dart';

// // class Liquid extends StatefulWidget {
// //   @override
// //   _LiquidState createState() => _LiquidState();
// // }

// // class _LiquidState extends State<Liquid> {
// //   List<String> items = List.generate(20, (index) => 'Item $index');

// //   // Method to simulate data fetching
// //   Future<void> _onRefresh() async {
// //     // Simulate a network call with a delay
// //     await Future.delayed(Duration(seconds: 2));

// //     // Add new items to the list
// //     setState(() {
// //       items.insert(0, 'New Item ${items.length}');
// //     });
// //   }

// //   @override
// //   Widget build(BuildContext context) {
// //     return Scaffold(
// //       appBar: AppBar(
// //         title: Text('Liquid Pull to Refresh Demo'),
// //       ),
// //       body: LiquidPullToRefresh(
// //         onRefresh: _onRefresh, // Trigger refresh on pull down
// //         color: Colors.blue, // Color of the refresh indicator
// //         backgroundColor: Colors.white, // Background color of the indicator
// //         child: ListView.builder(
// //           itemCount: items.length,
// //           itemBuilder: (context, index) {
// //             return Card(
// //               margin: EdgeInsets.all(8.0), // Margin around each card
// //               child: ListTile(
// //                 title: Text(items[index]), // Display item text
// //               ),
// //             );
// //           },
// //         ),
// //       ),
// //     );
// //   }
// // }

// // import 'package:flutter/material.dart';
// // import 'package:liquid_pull_to_refresh/liquid_pull_to_refresh.dart';

// // class MyScrollbar extends StatefulWidget {
// //   @override
// //   _MyScrollbarState createState() => _MyScrollbarState();
// // }

// // class _MyScrollbarState extends State<MyScrollbar> {
// //   List<Map<String, String>> items = List.generate(
// //     10,
// //     (index) => {
// //       'title': 'Exciting Event $index',
// //       'description':
// //           'Join us for an exciting event filled with fun and activities!',
// //     },
// //   );

// //   // Method to simulate data fetching
// //   Future<void> _onRefresh() async {
// //     await Future.delayed(Duration(seconds: 2));
// //     setState(() {
// //       items.insert(0, {
// //         'title': 'New Event ${items.length}',
// //         'description': 'Don\'t miss out on this amazing new event!',
// //       });
// //     });
// //   }

// //   @override
// //   Widget build(BuildContext context) {
// //     return Scaffold(
// //       body: LiquidPullToRefresh(
// //         height: 180,
// //         onRefresh: _onRefresh,
// //         color: Colors.green[500], // Color of the refresh indicator
// //         backgroundColor: Colors.blueGrey, // Background color of the indicator
// //         child: ListView.builder(
// //           itemCount: items.length,
// //           itemBuilder: (context, index) {
// //             return Card(
// //               margin: EdgeInsets.all(8.0),
// //               elevation: 6,
// //               shape: RoundedRectangleBorder(
// //                 borderRadius: BorderRadius.circular(15),
// //               ),
// //               color: Colors
// //                   .green[100 + (index % 3) * 100], // Different shades of green
// //               child: Padding(
// //                 padding: const EdgeInsets.all(16.0),
// //                 child: Column(
// //                   crossAxisAlignment: CrossAxisAlignment.start,
// //                   children: [
// //                     Icon(Icons.event,
// //                         size: 40, color: Colors.green[800]), // Event icon
// //                     SizedBox(height: 10),
// //                     Text(
// //                       items[index]['title']!,
// //                       style:
// //                           TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
// //                     ),
// //                     SizedBox(height: 8),
// //                     Text(
// //                       items[index]['description']!,
// //                       style: TextStyle(color: Colors.grey[700]),
// //                     ),
// //                   ],
// //                 ),
// //               ),
// //             );
// //           },
// //         ),
// //       ),
// //     );
// //   }
// // }

// // import 'package:flutter/material.dart';

// // void main() {
// //   runApp(MyLottie());
// // }

// // class MyLottie extends StatelessWidget {
// //   @override
// //   Widget build(BuildContext context) {
// //     return MaterialApp(
// //       title: 'Flutter Time Picker',
// //       theme: ThemeData(
// //         primarySwatch: Colors.blue,
// //       ),
// //       home: TimePickerHome(),
// //     );
// //   }
// // }

// // class TimePickerHome extends StatefulWidget {
// //   @override
// //   _TimePickerHomeState createState() => _TimePickerHomeState();
// // }

// // class _TimePickerHomeState extends State<TimePickerHome> {
// //   TimeOfDay _selectedTime = TimeOfDay.now(); // Holds the selected time

// //   // Function to show the time picker dialog
// //   Future<void> _selectTime(BuildContext context) async {
// //     // Show the time picker dialog
// //     final TimeOfDay? picked = await showTimePicker(
// //       context: context,
// //       initialTime: _selectedTime, // Sets the initial time to current time
// //       builder: (BuildContext context, Widget? child) {
// //         return Theme(
// //           data: ThemeData.dark(), // Dark theme for the time picker
// //           child: child!,
// //         );
// //       },
// //     );

// //     // If a time is picked, update the state with the new time
// //     if (picked != null && picked != _selectedTime) {
// //       setState(() {
// //         _selectedTime = picked; // Update the selected time
// //       });
// //     }
// //   }

// //   @override
// //   Widget build(BuildContext context) {
// //     return Scaffold(
// //       appBar: AppBar(
// //         title: Text('Beautiful Time Picker UI'),
// //       ),
// //       body: Center(
// //         child: Column(
// //           mainAxisAlignment: MainAxisAlignment.center,
// //           children: <Widget>[
// //             // Display the selected time in a styled container
// //             Container(
// //               padding: EdgeInsets.all(20),
// //               decoration: BoxDecoration(
// //                 color: Colors.blueAccent,
// //                 borderRadius: BorderRadius.circular(15),
// //                 boxShadow: [
// //                   BoxShadow(
// //                     color: Colors.black26,
// //                     blurRadius: 10.0,
// //                     spreadRadius: 2.0,
// //                   ),
// //                 ],
// //               ),
// //               child: Text(
// //                 // Format time in 12-hour format with AM/PM
// //                 "${_selectedTime.hour % 12 == 0 ? 12 : _selectedTime.hour % 12}:${_selectedTime.minute.toString().padLeft(2, '0')} ${_selectedTime.hour >= 12 ? 'PM' : 'AM'}",
// //                 style: TextStyle(fontSize: 40, color: Colors.white),
// //               ),
// //             ),
// //             SizedBox(height: 30), // Space between elements
// //             ElevatedButton(
// //               onPressed: () =>
// //                   _selectTime(context), // Trigger time picker on press
// //               child: Text('Choose Time'),
// //               style: ElevatedButton.styleFrom(
// //                 foregroundColor: Colors.blue, // Button color
// //                 padding: EdgeInsets.symmetric(horizontal: 30, vertical: 15),
// //                 textStyle: TextStyle(fontSize: 20),
// //               ),
// //             ),
// //           ],
// //         ),
// //       ),
// //     );
// //   }
// // }

// // import 'package:flutter/material.dart';

// // class TimePickerHome extends StatefulWidget {
// //   @override
// //   _TimePickerHomeState createState() => _TimePickerHomeState();
// // }

// // class _TimePickerHomeState extends State<TimePickerHome> {
// //   TimeOfDay _selectedTime = TimeOfDay.now(); // Holds the selected time

// //   // Function to show the time picker dialog
// //   Future<void> _selectTime(BuildContext context) async {
// //     // Show the time picker dialog
// //     final TimeOfDay? picked = await showTimePicker(
// //       context: context,
// //       initialTime: _selectedTime, // Sets the initial time to current time
// //       builder: (BuildContext context, Widget? child) {
// //         return Theme(
// //           data: ThemeData.dark(), // Dark theme for the time picker
// //           child: child!,
// //         );
// //       },
// //     );

// //     // If a time is picked, update the state with the new time
// //     if (picked != null && picked != _selectedTime) {
// //       setState(() {
// //         _selectedTime = picked; // Update the selected time
// //       });
// //     }
// //   }

// //   @override
// //   Widget build(BuildContext context) {
// //     return Scaffold(
// //       body: Container(
// //         decoration: BoxDecoration(
// //           gradient: LinearGradient(
// //             // Gradient background
// //             colors: [
// //               Colors.green[200]!,
// //               Colors.blue[500]!,
// //             ], // Start and end colors of the gradient
// //             begin: Alignment.topLeft, // Starting point of the gradient
// //             end: Alignment.bottomRight, // Ending point of the gradient
// //           ),
// //         ),
// //         child: Center(
// //           child: Column(
// //             mainAxisAlignment: MainAxisAlignment.center,
// //             children: <Widget>[
// //               // Display the selected time in a styled container
// //               Container(
// //                 padding: EdgeInsets.all(30),
// //                 decoration: BoxDecoration(
// //                   color: Colors.white
// //                       .withOpacity(0.9), // Semi-transparent white background
// //                   borderRadius: BorderRadius.circular(20), // Rounded corners
// //                   boxShadow: [
// //                     BoxShadow(
// //                       color: Colors.black26,
// //                       blurRadius: 15.0,
// //                       spreadRadius: 2.0,
// //                     ),
// //                   ],
// //                 ),
// //                 child: Text(
// //                   // Format time in 12-hour format with AM/PM
// //                   "${_selectedTime.hour % 12 == 0 ? 12 : _selectedTime.hour % 12}:${_selectedTime.minute.toString().padLeft(2, '0')} ${_selectedTime.hour >= 12 ? 'PM' : 'AM'}",
// //                   style: TextStyle(
// //                       fontSize: 48,
// //                       fontWeight: FontWeight.bold,
// //                       color: Colors.black),
// //                 ),
// //               ),
// //               SizedBox(height: 40), // Space between elements
// //               ElevatedButton(
// //                 onPressed: () =>
// //                     _selectTime(context), // Trigger time picker on press
// //                 child: Text('Choose Time'),
// //                 style: ElevatedButton.styleFrom(
// //                   foregroundColor: Colors.deepPurpleAccent, // Button color
// //                   padding: EdgeInsets.symmetric(horizontal: 40, vertical: 15),
// //                   textStyle: TextStyle(fontSize: 24),
// //                   shape: RoundedRectangleBorder(
// //                       borderRadius:
// //                           BorderRadius.circular(30)), // Rounded button shape
// //                 ),
// //               ),
// //             ],
// //           ),
// //         ),
// //       ),
// //     );
// //   }
// // }

// // stopwatch
// // import 'package:flutter/material.dart';
// // import 'dart:async';

// // class StopwatchHome extends StatefulWidget {
// //   @override
// //   _StopwatchHomeState createState() => _StopwatchHomeState();
// // }

// // class _StopwatchHomeState extends State<StopwatchHome> {
// //   int _elapsedSeconds = 0; // Variable to store elapsed seconds
// //   bool _isRunning = false; // Flag to check if timer is running
// //   Timer? _timer; // Timer instance

// //   // Function to start the timer
// //   void _startTimer() {
// //     if (_isRunning) return; // Prevent starting if already running

// //     _isRunning = true;
// //     _timer = Timer.periodic(Duration(seconds: 1), (timer) {
// //       setState(() {
// //         _elapsedSeconds++; // Increment elapsed seconds
// //       });
// //     });
// //   }

// //   // Function to stop the timer
// //   void _stopTimer() {
// //     if (!_isRunning) return; // Prevent stopping if not running

// //     _isRunning = false;
// //     _timer?.cancel(); // Cancel the timer
// //   }

// //   // Function to reset the timer
// //   void _resetTimer() {
// //     _stopTimer(); // Stop the timer before resetting
// //     setState(() {
// //       _elapsedSeconds = 0; // Reset elapsed seconds to zero
// //     });
// //   }

// //   // Getter to format elapsed time in MM:ss format
// //   String get formattedTime {
// //     final minutes = (_elapsedSeconds ~/ 60).toString().padLeft(2, '0');
// //     final seconds = (_elapsedSeconds % 60).toString().padLeft(2, '0');
// //     return '$minutes:$seconds';
// //   }

// //   @override
// //   void dispose() {
// //     _timer?.cancel(); // Cancel the timer when disposing
// //     super.dispose();
// //   }

// //   @override
// //   Widget build(BuildContext context) {
// //     return Scaffold(
// //       appBar: AppBar(
// //         // centerTitle: false,
// //         title: const Text(
// //           'Stopwatch',
// //           style: TextStyle(fontSize: 38),
// //         ),
// //         backgroundColor: Colors.green[200],
// //       ),
// //       body: Container(
// //         decoration: BoxDecoration(
// //           gradient: LinearGradient(
// //             colors: [Colors.green[200]!, Colors.green[200]!],
// //             begin: Alignment.topLeft,
// //             end: Alignment.bottomRight,
// //           ),
// //         ),
// //         child: Center(
// //           child: Column(
// //             mainAxisAlignment: MainAxisAlignment.center,
// //             children: [
// //               // Display formatted time with larger font size and shadow effect
// //               Text(
// //                 formattedTime,
// //                 style: TextStyle(
// //                   fontSize: 75,
// //                   // fontWeight: FontWeight.bold,
// //                   color: Colors.black,
// //                   shadows: [
// //                     Shadow(
// //                       blurRadius: 10.0,
// //                       color: Colors.black54,
// //                       offset: Offset(2.0, 2.0),
// //                     ),
// //                   ],
// //                 ),
// //               ),
// //               SizedBox(height: 40), // Space between time display and buttons

// //               // Row for control buttons with spacing and styling
// //               Row(
// //                 mainAxisAlignment: MainAxisAlignment.center,
// //                 children: [
// //                   _buildControlButton('Start', Colors.green, _startTimer),
// //                   SizedBox(width: 20), // Space between buttons
// //                   _buildControlButton('Stop', Colors.red, _stopTimer),
// //                   SizedBox(width: 20), // Space between buttons
// //                   _buildControlButton('Reset', Colors.orange, _resetTimer),
// //                 ],
// //               )
// //             ],
// //           ),
// //         ),
// //       ),
// //     );
// //   }

// //   // Helper function to build a control button with styling
// //   Widget _buildControlButton(
// //       String label, Color color, VoidCallback onPressed) {
// //     return ElevatedButton(
// //       onPressed: onPressed,
// //       child: Text(label,
// //           style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
// //       style: ElevatedButton.styleFrom(
// //         foregroundColor: color, // Button color based on parameter
// //         padding: EdgeInsets.symmetric(horizontal: 30, vertical: 15),
// //         shape: RoundedRectangleBorder(
// //             borderRadius: BorderRadius.circular(30)), // Rounded corners
// //         elevation: 5, // Add shadow effect to button
// //       ),
// //     );
// //   }
// // }

// // Doodle app

// // import 'package:flutter/material.dart';
// // // import 'dart:ui' as ui;

// // // Main page for doodling
// // class DoodlePage extends StatefulWidget {
// //   @override
// //   _DoodlePageState createState() => _DoodlePageState();
// // }

// // class _DoodlePageState extends State<DoodlePage> {
// //   // List to hold the points drawn on the canvas
// //   List<Offset?> points = [];
// //   Color selectedColor = Colors.black; // Default color
// //   double strokeWidth = 5.0; // Default stroke width

// //   // Method to clear the canvas
// //   void clearCanvas() {
// //     setState(() {
// //       points.clear();
// //     });
// //   }

// //   // Method to change the color of the brush
// //   void changeColor(Color color) {
// //     setState(() {
// //       selectedColor = color;
// //     });
// //   }

// //   // Method to change the stroke width
// //   void changeStrokeWidth(double width) {
// //     setState(() {
// //       strokeWidth = width;
// //     });
// //   }

// //   @override
// //   Widget build(BuildContext context) {
// //     return Scaffold(
// //       appBar: AppBar(
// //         title: Text('Doodle App'),
// //         actions: [
// //           IconButton(
// //             icon: Icon(Icons.clear),
// //             onPressed: clearCanvas, // Clear canvas action
// //           ),
// //         ],
// //       ),
// //       body: Column(
// //         children: [
// //           Expanded(
// //             child: GestureDetector(
// //               // Detects user touch and draws on canvas
// //               onPanUpdate: (details) {
// //                 setState(() {
// //                   RenderBox renderBox = context.findRenderObject() as RenderBox;
// //                   points.add(renderBox.globalToLocal(details.globalPosition));
// //                 });
// //               },
// //               onPanEnd: (details) {
// //                 points.add(
// //                     null); // Adds a break in the line when user lifts their finger
// //               },
// //               child: CustomPaint(
// //                 painter: DoodlePainter(points, selectedColor, strokeWidth),
// //                 child: Container(),
// //               ),
// //             ),
// //           ),
// //           // Color selection buttons
// //           Container(
// //             padding: EdgeInsets.all(8.0),
// //             child: Row(
// //               mainAxisAlignment: MainAxisAlignment.center,
// //               children: [
// //                 buildColorButton(Colors.red),
// //                 buildColorButton(Colors.green),
// //                 buildColorButton(Colors.blue),
// //                 buildColorButton(Colors.yellow),
// //                 buildColorButton(Colors.black),
// //               ],
// //             ),
// //           ),
// //           // Stroke width selection slider
// //           Slider(
// //             value: strokeWidth,
// //             min: 1.0,
// //             max: 10.0,
// //             divisions: 9,
// //             label: 'Stroke Width',
// //             onChanged: (value) =>
// //                 changeStrokeWidth(value), // Change stroke width action
// //           ),
// //         ],
// //       ),
// //     );
// //   }

// //   // Widget to create color selection buttons
// //   Widget buildColorButton(Color color) {
// //     return GestureDetector(
// //       onTap: () => changeColor(color), // Change color action
// //       child: Container(
// //         margin: EdgeInsets.all(4.0),
// //         width: 40,
// //         height: 40,
// //         decoration: BoxDecoration(
// //           color: color,
// //           shape: BoxShape.circle,
// //         ),
// //       ),
// //     );
// //   }
// // }

// // // Custom painter for drawing on canvas
// // class DoodlePainter extends CustomPainter {
// //   final List<Offset?> points;
// //   final Color color;
// //   final double strokeWidth;

// //   DoodlePainter(this.points, this.color, this.strokeWidth);

// //   @override
// //   void paint(Canvas canvas, Size size) {
// //     Paint paint = Paint()
// //       ..color = color // Set brush color
// //       ..strokeCap = StrokeCap.round // Round edges for smooth lines
// //       ..strokeWidth = strokeWidth; // Set brush size

// //     for (int i = 0; i < points.length - 1; i++) {
// //       if (points[i] != null && points[i + 1] != null) {
// //         canvas.drawLine(
// //             points[i]!, points[i + 1]!, paint); // Draw line between two points
// //       }
// //     }
// //   }

// //   @override
// //   bool shouldRepaint(CustomPainter oldDelegate) => true; // Redraw when needed
// // }

// // calender

// // import 'package:flutter/material.dart';
// // import 'package:table_calendar/table_calendar.dart';

// // class CalendarHome extends StatefulWidget {
// //   @override
// //   _CalendarHomeState createState() => _CalendarHomeState();
// // }

// // class _CalendarHomeState extends State<CalendarHome> {
// //   late DateTime _focusedDay;
// //   late DateTime _selectedDay;
// //   late CalendarFormat _calendarFormat;

// //   @override
// //   void initState() {
// //     super.initState();
// //     _focusedDay = DateTime.now();
// //     _selectedDay = DateTime.now();
// //     _calendarFormat = CalendarFormat.month; // Default format
// //   }

// //   // Function to get events for a specific date
// //   List<String> _getEventsForDay(DateTime day) {
// //     // Replace with your event fetching logic
// //     return [];
// //   }

// //   @override
// //   Widget build(BuildContext context) {
// //     return Scaffold(
// //       appBar: AppBar(title: Text('Calendar')),
// //       body: Column(
// //         children: [
// //           TableCalendar(
// //             firstDay: DateTime.utc(2020, 1, 1),
// //             lastDay: DateTime.utc(2030, 12, 31),
// //             focusedDay: _focusedDay,
// //             selectedDayPredicate: (day) => isSameDay(_selectedDay, day),
// //             calendarFormat: _calendarFormat,
// //             onFormatChanged: (format) {
// //               setState(() {
// //                 _calendarFormat = format; // Update format when changed
// //               });
// //             },
// //             onDaySelected: (selectedDay, focusedDay) {
// //               setState(() {
// //                 _selectedDay = selectedDay; // Update selected day
// //                 _focusedDay = focusedDay; // Update focused day
// //               });
// //             },
// //             onPageChanged: (focusedDay) {
// //               setState(() {
// //                 _focusedDay =
// //                     focusedDay; // Update focused day when page changes
// //               });
// //             },
// //             eventLoader: _getEventsForDay,
// //           ),
// //           ..._getEventsForDay(_selectedDay)
// //               .map((event) => ListTile(title: Text(event)))
// //               .toList(),
// //         ],
// //       ),
// //     );
// //   }
// // }

// // import 'package:flutter/material.dart';
// // import 'package:table_calendar/table_calendar.dart';

// // void main() {
// //   runApp(MyLottie());
// // }

// // class MyLottie extends StatelessWidget {
// //   const MyLottie({super.key});

// //   @override
// //   Widget build(BuildContext context) {
// //     return MaterialApp(
// //       title: 'Flutter Calendar App',
// //       theme: ThemeData(primarySwatch: Colors.blue),
// //       home: CalendarHome(),
// //     );
// //   }
// // }

// // class CalendarHome extends StatefulWidget {
// //   const CalendarHome({super.key});

// //   @override
// //   _CalendarHomeState createState() => _CalendarHomeState();
// // }

// // class _CalendarHomeState extends State<CalendarHome> {
// //   late DateTime _focusedDay;
// //   late DateTime _selectedDay;
// //   late CalendarFormat _calendarFormat;

// //   @override
// //   void initState() {
// //     super.initState();
// //     _focusedDay = DateTime.now();
// //     _selectedDay = DateTime.now();
// //     _calendarFormat = CalendarFormat.month; // Default format
// //   }

// //   // Function to get events for a specific date
// //   List<String> _getEventsForDay(DateTime day) {
// //     // Replace with your event fetching logic
// //     return [];
// //   }

// //   @override
// //   Widget build(BuildContext context) {
// //     return Scaffold(
// //       appBar: AppBar(title: const Text('Calendar')),
// //       body: Column(
// //         children: [
// //           TableCalendar(
// //             firstDay: DateTime.utc(2020, 1, 1),
// //             lastDay: DateTime.utc(2030, 12, 31),
// //             focusedDay: _focusedDay,
// //             selectedDayPredicate: (day) => isSameDay(_selectedDay, day),
// //             calendarFormat: _calendarFormat,
// //             onFormatChanged: (format) {
// //               setState(() {
// //                 _calendarFormat = format; // Update format when changed
// //               });
// //             },
// //             onDaySelected: (selectedDay, focusedDay) {
// //               setState(() {
// //                 _selectedDay = selectedDay; // Update selected day
// //                 _focusedDay = focusedDay; // Update focused day
// //               });
// //             },
// //             onPageChanged: (focusedDay) {
// //               setState(() {
// //                 _focusedDay =
// //                     focusedDay; // Update focused day when page changes
// //               });
// //             },
// //             eventLoader: _getEventsForDay,
// //           ),
// //           ..._getEventsForDay(_selectedDay)
// //               .map((event) => ListTile(title: Text(event))),
// //         ],
// //       ),
// //     );
// //   }
// // }

// // import 'package:flutter/material.dart';
// // import 'package:anim_search_bar/anim_search_bar.dart';

// // class SearchPage extends StatefulWidget {
// //   @override
// //   _SearchPageState createState() => _SearchPageState();
// // }

// // class _SearchPageState extends State<SearchPage> {
// //   TextEditingController textController = TextEditingController();
// //   List<String> items = [
// //     "Apple",
// //     "Banana",
// //     "Cherry",
// //     "Date",
// //     "Grape",
// //     "Kiwi",
// //     "Mango",
// //     "Orange",
// //     "Peach",
// //     "Pineapple",
// //     "Strawberry",
// //     "Watermelon"
// //   ];
// //   List<String> filteredItems = [];

// //   @override
// //   void initState() {
// //     super.initState();
// //     // Initially, show all items
// //     filteredItems = items;
// //   }

// //   void _filterItems(String query) {
// //     if (query.isEmpty) {
// //       setState(() {
// //         filteredItems = items; // Show all items if query is empty
// //       });
// //     } else {
// //       setState(() {
// //         filteredItems = items
// //             .where((item) => item.toLowerCase().contains(query.toLowerCase()))
// //             .toList(); // Filter items based on query
// //       });
// //     }
// //   }

// //   @override
// //   Widget build(BuildContext context) {
// //     return Scaffold(
// //       appBar: AppBar(
// //         title: Text('Animated Search Bar'),
// //         backgroundColor: Colors.blue[500],
// //       ),
// //       body: Padding(
// //         padding: const EdgeInsets.all(16.0),
// //         child: Column(
// //           children: [
// //             AnimSearchBar(
// //               width: 500, // Width of the search bar
// //               textController: textController, // Controller for managing input
// //               onSuffixTap: () {
// //                 setState(() {
// //                   textController.clear(); // Clear the text field
// //                   filteredItems = items; // Reset filter when cleared
// //                 });
// //               },
// //               helpText: "Search here...", // Placeholder text
// //               prefixIcon: Icon(Icons.search), // Icon to show on the left side
// //               suffixIcon: Icon(Icons.clear), // Icon to show on the right side
// //               animationDurationInMilli:
// //                   500, // Animation duration in milliseconds
// //               onSubmitted: (value) {
// //                 _filterItems(value); // Filter items when submitted
// //               },
// //             ),
// //             SizedBox(height: 20),
// //             Expanded(
// //               child: ListView.builder(
// //                 itemCount: filteredItems.length,
// //                 itemBuilder: (context, index) {
// //                   return ClipRRect(
// //                     borderRadius:
// //                         BorderRadius.circular(16), // Circular border radius
// //                     child: Card(
// //                       margin: EdgeInsets.symmetric(vertical: 6),
// //                       child: ListTile(
// //                           title: Text(filteredItems[index]),
// //                           leading: Icon(Icons.food_bank),
// //                           tileColor: Colors.blue[200]),
// //                     ),
// //                   );
// //                 },
// //               ),
// //             ),
// //           ],
// //         ),
// //       ),
// //     );
// //   }
// // }

// // import 'package:flutter/material.dart';

// // class TodoList extends StatefulWidget {
// //   @override
// //   _TodoListState createState() => _TodoListState();
// // }

// // class _TodoListState extends State<TodoList> {
// //   // List to hold the to-do items
// //   final List<String> _todos = [];
// //   // TextEditingController to manage the input field
// //   final TextEditingController _controller = TextEditingController();

// //   // Method to add a new to-do item
// //   void _addTodo() {
// //     // Check if the input is not empty
// //     if (_controller.text.isNotEmpty) {
// //       setState(() {
// //         // Add the new item to the list
// //         _todos.add(_controller.text);
// //         // Clear the input field after adding
// //         _controller.clear();
// //       });
// //     }
// //   }

// //   // Method to remove a to-do item by index
// //   void _removeTodo(int index) {
// //     setState(() {
// //       // Remove the item from the list at the specified index
// //       _todos.removeAt(index);
// //     });
// //   }

// //   @override
// //   Widget build(BuildContext context) {
// //     return Scaffold(
// //       appBar: AppBar(
// //         title: Text(
// //           'To-Do List', // Title of the app bar
// //           style: TextStyle(fontSize: 30), // Set font size for title
// //         ),
// //       ),
// //       body: Column(
// //         children: [
// //           Padding(
// //             padding:
// //                 const EdgeInsets.all(16.0), // Padding around the text field
// //             child: TextField(
// //               controller: _controller, // Controller for managing input
// //               style: TextStyle(
// //                 fontSize: 26, // Set font size for input text
// //               ),
// //               decoration: InputDecoration(
// //                 labelText: 'Enter a new task', // Label for the text field
// //                 border: OutlineInputBorder(
// //                   borderRadius: BorderRadius.circular(
// //                       40.0), // Rounded corners for the border
// //                   borderSide: BorderSide(color: Colors.black), // Border color
// //                 ),
// //                 contentPadding: EdgeInsets.symmetric(
// //                     horizontal: 20.0,
// //                     vertical: 15.0), // Padding inside the text field
// //                 suffixIcon: IconButton(
// //                   icon: Icon(Icons.add, color: Colors.blue), // Add icon button
// //                   onPressed: _addTodo, // Call addTodo method when pressed
// //                 ),
// //               ),
// //             ),
// //           ),
// //           Expanded(
// //             child: ListView.builder(
// //               itemCount: _todos.length, // Number of items in the list
// //               itemBuilder: (context, index) {
// //                 return Card(
// //                   margin: EdgeInsets.symmetric(
// //                       horizontal: 16, vertical: 8), // Margin around each card
// //                   elevation: 4, // Shadow effect for the card
// //                   child: ListTile(
// //                     title: Text(
// //                       _todos[index], // Display the to-do item text
// //                       style: TextStyle(
// //                           fontSize: 18), // Style for the text in the card
// //                     ),
// //                     trailing: IconButton(
// //                       icon: Icon(Icons.delete,
// //                           color: Colors.red), // Delete icon button
// //                       onPressed: () => _removeTodo(
// //                           index), // Call removeTodo method when pressed
// //                     ),
// //                   ),
// //                 );
// //               },
// //             ),
// //           ),
// //         ],
// //       ),
// //       floatingActionButton: FloatingActionButton(
// //         onPressed: () {
// //           if (_controller.text.isNotEmpty) {
// //             // Check if input is not empty before adding
// //             _addTodo(); // Call addTodo method when pressed
// //           }
// //         },
// //         tooltip: 'Add Task', // Tooltip for the floating action button
// //         child: Icon(
// //           Icons.add,
// //           color: Colors.white, // Color of the icon inside the button
// //           size: 40, // Size of the icon inside the button
// //         ),
// //         backgroundColor:
// //             Colors.amber, // Background color of the floating action button
// //       ),
// //     );
// //   }
// // }

// // import 'package:flutter/material.dart';

// // class BMICalculatorPage extends StatefulWidget {
// //   @override
// //   _BMICalculatorPageState createState() => _BMICalculatorPageState();
// // }

// // class _BMICalculatorPageState extends State<BMICalculatorPage> {
// //   final TextEditingController _heightController = TextEditingController();
// //   final TextEditingController _weightController = TextEditingController();
// //   double _bmi = 0;
// //   String _resultText = "";

// //   // Function to calculate BMI
// //   void _calculateBMI() {
// //     double height = double.tryParse(_heightController.text) ?? 0;
// //     double weight = double.tryParse(_weightController.text) ?? 0;

// //     if (height > 0 && weight > 0) {
// //       setState(() {
// //         _bmi = weight / ((height / 100) * (height / 100)); // BMI formula
// //         _resultText = _getResultText(_bmi);
// //       });
// //     } else {
// //       setState(() {
// //         _resultText = "Please enter valid values!";
// //       });
// //     }
// //   }

// //   // Function to determine the BMI category
// //   String _getResultText(double bmi) {
// //     if (bmi < 18.5) {
// //       return "Underweight";
// //     } else if (bmi >= 18.5 && bmi < 24.9) {
// //       return "Normal weight";
// //     } else if (bmi >= 25 && bmi < 29.9) {
// //       return "Overweight";
// //     } else {
// //       return "Obese";
// //     }
// //   }

// //   @override
// //   Widget build(BuildContext context) {
// //     return Scaffold(
// //       appBar: AppBar(
// //         title: Text('BMI Calculator'),
// //       ),
// //       body: Padding(
// //         padding: const EdgeInsets.all(16.0),
// //         child: Column(
// //           mainAxisAlignment: MainAxisAlignment.center,
// //           children: [
// //             // Height input field
// //             TextField(
// //               controller: _heightController,
// //               keyboardType: TextInputType.number,
// //               decoration: InputDecoration(
// //                 labelText: 'Height (cm)',
// //                 border: OutlineInputBorder(),
// //                 prefixIcon: Icon(Icons.height),
// //               ),
// //             ),
// //             SizedBox(height: 16),

// //             // Weight input field
// //             TextField(
// //               controller: _weightController,
// //               keyboardType: TextInputType.number,
// //               decoration: InputDecoration(
// //                 labelText: 'Weight (kg)',
// //                 border: OutlineInputBorder(),
// //                 prefixIcon: Icon(Icons.fitness_center),
// //               ),
// //             ),
// //             SizedBox(height: 16),

// //             // Calculate button
// //             ElevatedButton(
// //               onPressed: _calculateBMI,
// //               child: Text(
// //                 'Calculate BMI',
// //                 style: TextStyle(fontSize: 18),
// //               ),
// //             ),
// //             SizedBox(height: 30),

// //             // Displaying the result
// //             Text(
// //               'Your BMI is:',
// //               style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
// //             ),
// //             SizedBox(height: 8),
// //             Text(
// //               _bmi.toStringAsFixed(2),
// //               style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
// //             ),
// //             SizedBox(height: 8),
// //             Text(
// //               _resultText,
// //               style: TextStyle(
// //                   fontSize: 24,
// //                   fontWeight: FontWeight.bold,
// //                   color: Colors.blue),
// //             ),
// //           ],
// //         ),
// //       ),
// //     );
// //   }
// // }

// // import 'package:flutter/material.dart';

// // class BMICalculatorPage extends StatefulWidget {
// //   @override
// //   _BMICalculatorPageState createState() => _BMICalculatorPageState();
// // }

// // class _BMICalculatorPageState extends State<BMICalculatorPage> {
// //   final TextEditingController _heightController = TextEditingController();
// //   final TextEditingController _weightController = TextEditingController();
// //   double _bmi = 0;
// //   String _resultText = "";

// //   // Function to calculate BMI
// //   void _calculateBMI() {
// //     double height = double.tryParse(_heightController.text) ?? 0;
// //     double weight = double.tryParse(_weightController.text) ?? 0;

// //     if (height > 0 && weight > 0) {
// //       setState(() {
// //         _bmi = weight / ((height / 100) * (height / 100)); // BMI formula
// //         _resultText = _getResultText(_bmi);
// //       });
// //     } else {
// //       setState(() {
// //         _resultText = "Please enter valid values!";
// //       });
// //     }
// //   }

// //   // Function to determine the BMI category
// //   String _getResultText(double bmi) {
// //     if (bmi < 18.5) {
// //       return "Underweight";
// //     } else if (bmi >= 18.5 && bmi < 24.9) {
// //       return "Normal weight";
// //     } else if (bmi >= 25 && bmi < 29.9) {
// //       return "Overweight";
// //     } else {
// //       return "Obese";
// //     }
// //   }

// //   @override
// //   Widget build(BuildContext context) {
// //     return Scaffold(
// //       body: Stack(
// //         children: [
// //           // Background gradient
// //           Container(
// //             decoration: BoxDecoration(
// //               gradient: LinearGradient(
// //                 colors: [Colors.blue[500]!, Colors.green[400]!],
// //                 begin: Alignment.topLeft,
// //                 end: Alignment.bottomRight,
// //               ),
// //             ),
// //           ),
// //           // Main content
// //           Padding(
// //             padding: const EdgeInsets.all(16.0),
// //             child: Column(
// //               mainAxisAlignment: MainAxisAlignment.center,
// //               children: [
// //                 // AppBar with transparent background
// //                 AppBar(
// //                   title: Text(
// //                     'BMI Calculator',
// //                     style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
// //                   ),
// //                   centerTitle: true,
// //                   backgroundColor: Colors.transparent,
// //                   elevation: 0,
// //                 ),

// //                 // Height input field
// //                 TextField(
// //                   controller: _heightController,
// //                   keyboardType: TextInputType.number,
// //                   style: TextStyle(fontSize: 22), // Increase text size
// //                   decoration: InputDecoration(
// //                     labelText: 'Height (cm)',
// //                     labelStyle: TextStyle(
// //                         fontSize: 20,
// //                         color: Colors.blueGrey), // Increase label text size
// //                     border: OutlineInputBorder(
// //                       borderRadius: BorderRadius.circular(20),
// //                     ),
// //                     prefixIcon: Icon(Icons.height, color: Colors.black),
// //                     filled: true,
// //                     fillColor: Colors.white.withOpacity(0.8),
// //                     contentPadding: EdgeInsets.symmetric(
// //                         vertical: 20, horizontal: 16), // Increase padding
// //                   ),
// //                 ),
// //                 SizedBox(height: 16),

// //                 // Weight input field
// //                 TextField(
// //                   controller: _weightController,
// //                   keyboardType: TextInputType.number,
// //                   style: TextStyle(fontSize: 22), // Increase text size
// //                   decoration: InputDecoration(
// //                     labelText: 'Weight (kg)',
// //                     labelStyle: TextStyle(
// //                         fontSize: 20,
// //                         color: Colors.blueGrey), // Increase label text size
// //                     border: OutlineInputBorder(
// //                       borderRadius: BorderRadius.circular(20),
// //                     ),
// //                     prefixIcon: Icon(Icons.fitness_center, color: Colors.black),
// //                     filled: true,
// //                     fillColor: Colors.white.withOpacity(0.8),
// //                     contentPadding: EdgeInsets.symmetric(
// //                         vertical: 20, horizontal: 16), // Increase padding
// //                   ),
// //                 ),
// //                 SizedBox(height: 16),

// //                 // Calculate button
// //                 ElevatedButton(
// //                   onPressed: _calculateBMI,
// //                   style: ElevatedButton.styleFrom(
// //                     backgroundColor:
// //                         Colors.white, // Set button background color
// //                     foregroundColor: Colors.red, // Set button text color
// //                     shape: RoundedRectangleBorder(
// //                       borderRadius: BorderRadius.circular(20),
// //                     ),
// //                     padding: EdgeInsets.symmetric(vertical: 15, horizontal: 30),
// //                   ),
// //                   child: Text(
// //                     'Calculate BMI',
// //                     style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
// //                   ),
// //                 ),
// //                 SizedBox(height: 30),

// //                 // Displaying the result
// //                 Text(
// //                   'Your BMI is:',
// //                   style: TextStyle(
// //                       fontSize: 20,
// //                       fontWeight: FontWeight.bold,
// //                       color: Colors.white),
// //                 ),
// //                 SizedBox(height: 8),
// //                 Text(
// //                   _bmi.toStringAsFixed(2),
// //                   style: TextStyle(
// //                       fontSize: 32,
// //                       fontWeight: FontWeight.bold,
// //                       color: Colors.white),
// //                 ),
// //                 SizedBox(height: 8),
// //                 Text(
// //                   _resultText,
// //                   style: TextStyle(
// //                       fontSize: 24,
// //                       fontWeight: FontWeight.bold,
// //                       color: Colors.yellowAccent),
// //                 ),
// //               ],
// //             ),
// //           ),
// //         ],
// //       ),
// //     );
// //   }
// // }

// // import 'package:flutter/material.dart';

// // // Main function to run the app
// // void main() {
// //   runApp(const VotingApp());
// // }

// // // Main Voting App widget
// // class VotingApp extends StatelessWidget {
// //   const VotingApp({Key? key}) : super(key: key);

// //   @override
// //   Widget build(BuildContext context) {
// //     return MaterialApp(
// //       title: 'Voting App',
// //       theme: ThemeData(
// //         primarySwatch: Colors.teal,
// //         visualDensity: VisualDensity.adaptivePlatformDensity,
// //       ),
// //       debugShowCheckedModeBanner: false,
// //       home: const VotingMyScrollbar(),
// //     );
// //   }
// // }

// // // Home page of the voting app
// // class VotingMyScrollbar extends StatefulWidget {
// //   const VotingMyScrollbar({Key? key}) : super(key: key);

// //   @override
// //   _VotingMyScrollbarState createState() => _VotingMyScrollbarState();
// // }

// // class _VotingMyScrollbarState extends State<VotingMyScrollbar> {
// //   int pepperoniVotes = 0; // Votes for Pepperoni
// //   int veggieVotes = 0; // Votes for Veggie
// //   int hawaiianVotes = 0; // Votes for Hawaiian

// //   // Function to handle voting
// //   void vote(String option) {
// //     setState(() {
// //       if (option == 'Pepperoni') {
// //         pepperoniVotes++;
// //       } else if (option == 'Veggie') {
// //         veggieVotes++;
// //       } else if (option == 'Hawaiian') {
// //         hawaiianVotes++;
// //       }
// //     });
// //   }

// //   @override
// //   Widget build(BuildContext context) {
// //     return Scaffold(
// //       appBar: AppBar(
// //         title: const Text('Vote for Your Favorite Pizza Topping'),
// //         centerTitle: true,
// //       ),
// //       body: Padding(
// //         padding: const EdgeInsets.all(16.0),
// //         child: Column(
// //           mainAxisAlignment: MainAxisAlignment.center,
// //           children: <Widget>[
// //             // Display voting options
// //             Text(
// //               'Choose your favorite topping:',
// //               style: Theme.of(context).textTheme.headlineSmall,
// //               textAlign: TextAlign.center,
// //             ),
// //             const SizedBox(height: 20),
// //             // Option buttons
// //             ElevatedButton(
// //               onPressed: () => vote('Pepperoni'),
// //               style: ElevatedButton.styleFrom(
// //                 padding:
// //                     const EdgeInsets.symmetric(vertical: 20, horizontal: 40),
// //                 backgroundColor: Colors.redAccent, // Button color for Pepperoni
// //               ),
// //               child: Text('Pepperoni ($pepperoniVotes votes)'),
// //             ),
// //             const SizedBox(height: 20),
// //             ElevatedButton(
// //               onPressed: () => vote('Veggie'),
// //               style: ElevatedButton.styleFrom(
// //                 padding:
// //                     const EdgeInsets.symmetric(vertical: 20, horizontal: 40),
// //                 backgroundColor: Colors.green, // Button color for Veggie
// //               ),
// //               child: Text('Veggie ($veggieVotes votes)'),
// //             ),
// //             const SizedBox(height: 20),
// //             ElevatedButton(
// //               onPressed: () => vote('Hawaiian'),
// //               style: ElevatedButton.styleFrom(
// //                 padding:
// //                     const EdgeInsets.symmetric(vertical: 20, horizontal: 40),
// //                 backgroundColor: Colors.orange, // Button color for Hawaiian
// //               ),
// //               child: Text('Hawaiian ($hawaiianVotes votes)'),
// //             ),
// //             const SizedBox(height: 40),
// //             // Display results
// //             Text(
// //               'Current Results:',
// //               style: Theme.of(context).textTheme.titleLarge,
// //             ),
// //             const SizedBox(height: 10),
// //             Text('Pepperoni has $pepperoniVotes votes'),
// //             Text('Veggie has $veggieVotes votes'),
// //             Text('Hawaiian has $hawaiianVotes votes'),
// //           ],
// //         ),
// //       ),
// //     );
// //   }
// // }

// // import 'package:flutter/material.dart';

// // // Main function to run the app
// // void main() {
// //   runApp(const VotingApp());
// // }

// // // Main Voting App widget
// // class VotingApp extends StatelessWidget {
// //   const VotingApp({Key? key}) : super(key: key);

// //   @override
// //   Widget build(BuildContext context) {
// //     return MaterialApp(
// //       title: 'Voting App',
// //       theme: ThemeData(
// //         primarySwatch: Colors.teal,
// //         visualDensity: VisualDensity.adaptivePlatformDensity,
// //       ),
// //       debugShowCheckedModeBanner: false,
// //       home: const VotingMyScrollbar(),
// //     );
// //   }
// // }

// // // Home page of the voting app
// // class VotingMyScrollbar extends StatefulWidget {
// //   const VotingMyScrollbar({Key? key}) : super(key: key);

// //   @override
// //   _VotingMyScrollbarState createState() => _VotingMyScrollbarState();
// // }

// // class _VotingMyScrollbarState extends State<VotingMyScrollbar> {
// //   int pepperoniVotes = 0; // Votes for Pepperoni
// //   int veggieVotes = 0; // Votes for Veggie
// //   int hawaiianVotes = 0; // Votes for Hawaiian

// //   // Function to handle voting
// //   void vote(String option) {
// //     setState(() {
// //       if (option == 'Pepperoni') {
// //         pepperoniVotes++;
// //       } else if (option == 'Veggie') {
// //         veggieVotes++;
// //       } else if (option == 'Hawaiian') {
// //         hawaiianVotes++;
// //       }
// //     });
// //   }

// //   @override
// //   Widget build(BuildContext context) {
// //     return Scaffold(
// //       body: Container(
// //         decoration: const BoxDecoration(
// //           image: DecorationImage(
// //             image: AssetImage('images/pizzza.png'), // Background image
// //             fit: BoxFit.cover,
// //           ),
// //         ),
// //         child: Padding(
// //           padding: const EdgeInsets.all(16.0),
// //           child: Column(
// //             mainAxisAlignment: MainAxisAlignment.center,
// //             children: <Widget>[
// //               // Display voting options
// //               Text(
// //                 'Choose your favorite topping:',
// //                 style: Theme.of(context)
// //                     .textTheme
// //                     .headlineMedium
// //                     ?.copyWith(color: Colors.white),
// //                 textAlign: TextAlign.center,
// //               ),
// //               const SizedBox(height: 20),
// //               // Option buttons with enhanced style
// //               ElevatedButton(
// //                 onPressed: () => vote('Pepperoni'),
// //                 style: ElevatedButton.styleFrom(
// //                   padding:
// //                       const EdgeInsets.symmetric(vertical: 20, horizontal: 40),
// //                   backgroundColor:
// //                       Colors.redAccent, // Button color for Pepperoni
// //                   shape: RoundedRectangleBorder(
// //                       borderRadius: BorderRadius.circular(30)),
// //                   elevation: 5,
// //                 ),
// //                 child: Text('Pepperoni ($pepperoniVotes votes)',
// //                     style: const TextStyle(fontSize: 18)),
// //               ),
// //               const SizedBox(height: 20),
// //               ElevatedButton(
// //                 onPressed: () => vote('Veggie'),
// //                 style: ElevatedButton.styleFrom(
// //                   padding:
// //                       const EdgeInsets.symmetric(vertical: 20, horizontal: 40),
// //                   backgroundColor: Colors.green, // Button color for Veggie
// //                   shape: RoundedRectangleBorder(
// //                       borderRadius: BorderRadius.circular(30)),
// //                   elevation: 5,
// //                 ),
// //                 child: Text('Veggie ($veggieVotes votes)',
// //                     style: const TextStyle(fontSize: 18)),
// //               ),
// //               const SizedBox(height: 20),
// //               ElevatedButton(
// //                 onPressed: () => vote('Hawaiian'),
// //                 style: ElevatedButton.styleFrom(
// //                   padding:
// //                       const EdgeInsets.symmetric(vertical: 20, horizontal: 40),
// //                   backgroundColor: Colors.orange, // Button color for Hawaiian
// //                   shape: RoundedRectangleBorder(
// //                       borderRadius: BorderRadius.circular(30)),
// //                   elevation: 5,
// //                 ),
// //                 child: Text('Hawaiian ($hawaiianVotes votes)',
// //                     style: const TextStyle(fontSize: 18)),
// //               ),
// //               const SizedBox(height: 40),
// //               // Display results with larger text
// //               Text(
// //                 'Current Results:',
// //                 style: Theme.of(context)
// //                     .textTheme
// //                     .headlineSmall
// //                     ?.copyWith(color: Colors.white),
// //               ),
// //               const SizedBox(height: 10),
// //               Text('Pepperoni has $pepperoniVotes votes',
// //                   style: const TextStyle(fontSize: 22, color: Colors.white)),
// //               Text('Veggie has $veggieVotes votes',
// //                   style: const TextStyle(fontSize: 22, color: Colors.white)),
// //               Text('Hawaiian has $hawaiianVotes votes',
// //                   style: const TextStyle(fontSize: 22, color: Colors.white)),
// //             ],
// //           ),
// //         ),
// //       ),
// //     );
// //   }
// // }

// // import 'package:flutter/material.dart';

// // // Main function to run the app

// // // Home page of the voting app
// // class VotingMyScrollbar extends StatefulWidget {
// //   const VotingMyScrollbar({Key? key}) : super(key: key);

// //   @override
// //   _VotingMyScrollbarState createState() => _VotingMyScrollbarState();
// // }

// // class _VotingMyScrollbarState extends State<VotingMyScrollbar> {
// //   int pepperoniVotes = 0; // Votes for Pepperoni
// //   int veggieVotes = 0; // Votes for Veggie
// //   int hawaiianVotes = 0; // Votes for Hawaiian

// //   // Function to handle voting
// //   void vote(String option) {
// //     setState(() {
// //       if (option == 'Pepperoni') {
// //         pepperoniVotes++;
// //       } else if (option == 'Veggie') {
// //         veggieVotes++;
// //       } else if (option == 'Hawaiian') {
// //         hawaiianVotes++;
// //       }
// //     });
// //   }

// //   @override
// //   Widget build(BuildContext context) {
// //     return Scaffold(
// //       body: Stack(
// //         children: [
// //           // Background image
// //           Container(
// //             decoration: const BoxDecoration(
// //               image: DecorationImage(
// //                 image: AssetImage('images/pizzza.png'), // Background image
// //                 fit: BoxFit.cover, // Fill the entire screen
// //               ),
// //             ),
// //           ),
// //           // Foreground content
// //           Padding(
// //             padding: const EdgeInsets.all(16.0),
// //             child: Column(
// //               mainAxisAlignment: MainAxisAlignment.center,
// //               children: <Widget>[
// //                 SizedBox(height: 100),
// //                 // Display voting options
// //                 Center(
// //                   child: Text(
// //                     'Choose your favorite topping:',
// //                     style: Theme.of(context).textTheme.headlineMedium?.copyWith(
// //                         color: Colors.lightBlueAccent,
// //                         fontWeight: FontWeight.bold),
// //                     textAlign: TextAlign.center,
// //                   ),
// //                 ),
// //                 const SizedBox(height: 20),
// //                 // Option buttons with enhanced style
// //                 ElevatedButton(
// //                   onPressed: () => vote('Pepperoni'),
// //                   style: ElevatedButton.styleFrom(
// //                     padding: const EdgeInsets.symmetric(
// //                         vertical: 20, horizontal: 20),
// //                     backgroundColor: Colors.white, // Button color for Pepperoni
// //                     shape: RoundedRectangleBorder(
// //                         borderRadius: BorderRadius.circular(30)),
// //                     elevation: 5,
// //                   ),
// //                   child: Text('Pepperoni ($pepperoniVotes votes)',
// //                       style: const TextStyle(
// //                           fontSize: 18,
// //                           fontWeight: FontWeight.bold,
// //                           color: Colors.black)),
// //                 ),
// //                 const SizedBox(height: 20),
// //                 ElevatedButton(
// //                   onPressed: () => vote('Veggie'),
// //                   style: ElevatedButton.styleFrom(
// //                     padding: const EdgeInsets.symmetric(
// //                         vertical: 20, horizontal: 20),
// //                     backgroundColor: Colors.white, // Button color for Veggie
// //                     shape: RoundedRectangleBorder(
// //                         borderRadius: BorderRadius.circular(30)),
// //                     elevation: 5,
// //                   ),
// //                   child: Text('Veggie ($veggieVotes votes)',
// //                       style: const TextStyle(
// //                           fontSize: 18,
// //                           fontWeight: FontWeight.bold,
// //                           color: Colors.black)),
// //                 ),
// //                 const SizedBox(height: 20),
// //                 ElevatedButton(
// //                   onPressed: () => vote('Hawaiian'),
// //                   style: ElevatedButton.styleFrom(
// //                     padding: const EdgeInsets.symmetric(
// //                         vertical: 20, horizontal: 20),
// //                     backgroundColor: Colors.white, // Button color for Hawaiian
// //                     shape: RoundedRectangleBorder(
// //                         borderRadius: BorderRadius.circular(30)),
// //                     elevation: 5,
// //                   ),
// //                   child: Text('Hawaiian ($hawaiianVotes votes)',
// //                       style: const TextStyle(
// //                         fontSize: 18,
// //                         color: Colors.black,
// //                         fontWeight: FontWeight.bold,
// //                       )),
// //                 ),
// //                 const SizedBox(height: 40),
// //                 // Display results with larger text
// //                 Text(
// //                   'Current Results:',
// //                   style: Theme.of(context)
// //                       .textTheme
// //                       .headlineSmall
// //                       ?.copyWith(color: Colors.white),
// //                 ),
// //                 const SizedBox(height: 10),
// //                 Text('Pepperoni has $pepperoniVotes votes',
// //                     style: const TextStyle(
// //                         fontSize: 26,
// //                         color: Colors.white,
// //                         fontWeight: FontWeight.bold)),
// //                 Text('Veggie has $veggieVotes votes',
// //                     style: const TextStyle(
// //                         fontSize: 26,
// //                         color: Colors.white,
// //                         fontWeight: FontWeight.bold)),
// //                 Text('Hawaiian has $hawaiianVotes votes',
// //                     style: const TextStyle(
// //                         fontSize: 26,
// //                         color: Colors.white,
// //                         fontWeight: FontWeight.bold)),
// //               ],
// //             ),
// //           ),
// //         ],
// //       ),
// //     );
// //   }
// // }

// //voting app
// // import 'package:flutter/material.dart';
// // class VotingMyScrollbar extends StatefulWidget {
// //   const VotingMyScrollbar({Key? key}) : super(key: key);

// //   @override
// //   _VotingMyScrollbarState createState() => _VotingMyScrollbarState();
// // }
// // class _VotingMyScrollbarState extends State<VotingMyScrollbar> {
// //   int pepperoniVotes = 0; // Votes for Pepperoni
// //   int veggieVotes = 0; // Votes for Veggie
// //   int hawaiianVotes = 0; // Votes for Hawaiian

// //   // Function to handle voting
// //   void vote(String option) {
// //     setState(() {
// //       if (option == 'Pepperoni') {
// //         pepperoniVotes++;
// //       } else if (option == 'Veggie') {
// //         veggieVotes++;
// //       } else if (option == 'Hawaiian') {
// //         hawaiianVotes++;
// //       }
// //     });
// //   }

// //   @override
// //   Widget build(BuildContext context) {
// //     return Scaffold(
// //       body: Stack(
// //         children: [
// //           // Background image
// //           Container(
// //             decoration: const BoxDecoration(
// //               image: DecorationImage(
// //                 image: AssetImage('images/pizzza.png'), // Background image
// //                 fit: BoxFit.cover, // Fill the entire screen
// //               ),
// //             ),
// //           ),
// //           // Foreground content with a semi-transparent overlay for better readability
// //           Container(
// //             color: Colors.black45, // Semi-transparent overlay
// //           ),
// //           Padding(
// //             padding: const EdgeInsets.all(16.0),
// //             child: Column(
// //               mainAxisAlignment: MainAxisAlignment.center,
// //               children: <Widget>[
// //                 SizedBox(height: 100),
// //                 // Display voting options with improved text style
// //                 Center(
// //                   child: Text(
// //                     'Choose Your Favorite Topping:',
// //                     style: Theme.of(context).textTheme.headlineMedium?.copyWith(
// //                         color: Colors.amberAccent,
// //                         fontWeight: FontWeight.bold,
// //                         fontSize: 26),
// //                     textAlign: TextAlign.center,
// //                   ),
// //                 ),
// //                 const SizedBox(height: 20),
// //                 // Option buttons with enhanced style and shadow effects
// //                 buildVoteButton('Pepperoni', pepperoniVotes, Colors.red[400]!),
// //                 const SizedBox(height: 20),
// //                 buildVoteButton('Veggie', veggieVotes, Colors.green[400]!),
// //                 const SizedBox(height: 20),
// //                 buildVoteButton('Hawaiian', hawaiianVotes, Colors.blue[500]!),
// //                 const SizedBox(height: 40),
// //                 // Display results with larger text and improved readability
// //                 Text(
// //                   'Current Results:',
// //                   style: Theme.of(context).textTheme.headlineSmall?.copyWith(
// //                       color: Colors.white,
// //                       fontSize: 28,
// //                       fontWeight: FontWeight.bold),
// //                 ),
// //                 const SizedBox(height: 10),
// //                 buildResultText('Pepperoni has $pepperoniVotes votes'),
// //                 buildResultText('Veggie has $veggieVotes votes'),
// //                 buildResultText('Hawaiian has $hawaiianVotes votes'),
// //               ],
// //             ),
// //           ),
// //         ],
// //       ),
// //     );
// //   }

// //   ElevatedButton buildVoteButton(String topping, int votes, Color buttonColor) {
// //     return ElevatedButton(
// //       onPressed: () => vote(topping),
// //       style: ElevatedButton.styleFrom(
// //         padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
// //         backgroundColor: buttonColor, // Button color for toppings
// //         shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
// //         elevation: 10,
// //         shadowColor: Colors.black54,
// //       ),
// //       child: Text('$topping ($votes votes)',
// //           style: const TextStyle(
// //               fontSize: 18, fontWeight: FontWeight.bold, color: Colors.white)),
// //     );
// //   }

// //   Text buildResultText(String result) {
// //     return Text(result,
// //         style: const TextStyle(
// //           fontSize: 24,
// //           color: Colors.yellow,
// //         ));
// //   }
// // }

// // import 'package:flutter/material.dart';
// // import 'package:lottie/lottie.dart';

// // class MyLottie extends StatefulWidget {
// //   const MyLottie({super.key});

// //   @override
// //   State<MyLottie> createState() => _MyLottieState();
// // }

// // class _MyLottieState extends State<MyLottie> with TickerProviderStateMixin {
// //   late final AnimationController _controller;

// //   @override
// //   void initState() {
// //     super.initState();
// //     // Initialize the AnimationController
// //     _controller = AnimationController(vsync: this);
// //   }

// //   @override
// //   void dispose() {
// //     // Dispose of the controller to free up resources
// //     _controller.dispose();
// //     super.dispose();
// //   }

// //   @override
// //   Widget build(BuildContext context) {
// //     return Scaffold(
// //       body: Container(
// //         decoration: BoxDecoration(
// //           gradient: LinearGradient(
// //             colors: [Colors.blue[400]!, Colors.green[500]!],
// //             begin: Alignment.topLeft,
// //             end: Alignment.bottomRight,
// //           ),
// //         ),
// //         child: Center(
// //           child: Column(
// //             mainAxisAlignment: MainAxisAlignment.center,
// //             children: [
// //               // Lottie Animation
// //               Lottie.asset(
// //                 'images/subs.json', // Load Lottie animation from images
// //                 controller: _controller,
// //                 onLoaded: (composition) {
// //                   // Configure the AnimationController with the duration of the Lottie file
// //                   _controller
// //                     ..duration = composition
// //                         .duration // Set duration based on composition
// //                     ..forward(); // Start the animation
// //                 },
// //                 // Customize animation properties for a beautiful UI
// //                 width: 600, // Increased width for better visibility
// //                 height: 600, // Increased height for better visibility
// //                 fit: BoxFit.contain, // Contain the animation within its bounds
// //                 repeat: true, // Loop the animation indefinitely
// //                 reverse: true, // Reverse the animation after reaching the end
// //               ),
// //               const SizedBox(height: 20), // Spacing between animation and text
// //               const Text(
// //                 'Subscribe Now!',
// //                 style: TextStyle(
// //                   fontSize: 28, // Increased font size for better visibility
// //                   fontWeight: FontWeight.bold,
// //                   color: Colors.white,
// //                   shadows: [
// //                     Shadow(
// //                       blurRadius: 10.0,
// //                       color: Colors.black54,
// //                       offset: Offset(2.0, 2.0),
// //                     ),
// //                   ],
// //                 ),
// //               ),
// //               const SizedBox(height: 10), // Additional spacing below text
// //               const Text(
// //                 'Tap to Subscribe', // Additional instruction text
// //                 style: TextStyle(
// //                   fontSize: 18,
// //                   color: Colors.white70,
// //                   shadows: [
// //                     Shadow(
// //                       blurRadius: 5.0,
// //                       color: Colors.black38,
// //                       offset: Offset(1.0, 1.0),
// //                     ),
// //                   ],
// //                 ),
// //               ),
// //             ],
// //           ),
// //         ),
// //       ),
// //       floatingActionButton: FloatingActionButton(
// //         onPressed: () {
// //           // Control play/pause of the animation on button press
// //           if (_controller.isAnimating) {
// //             _controller.stop(); // Stop animation if currently playing
// //           } else {
// //             _controller.repeat(); // Repeat animation if stopped
// //           }
// //         },
// //         child: const Icon(Icons.play_arrow), // Play icon for button
// //       ),
// //     );
// //   }
// // }

// // import 'package:flutter/material.dart';

// // class NeumorphismPage extends StatefulWidget {
// //   const NeumorphismPage({Key? key}) : super(key: key);

// //   @override
// //   State<NeumorphismPage> createState() => _NeumorphismPageState();
// // }

// // class _NeumorphismPageState extends State<NeumorphismPage> {
// //   bool _isPlayElevated = true;
// //   bool _isPauseElevated = true;
// //   bool _isStopElevated = true;

// //   @override
// //   Widget build(BuildContext context) {
// //     return Scaffold(
// //       backgroundColor: Colors.grey[500],
// //       body: Center(
// //         child: Column(
// //           mainAxisAlignment: MainAxisAlignment.center,
// //           children: [
// //             // Simple music logo in the center
// //             Icon(Icons.music_note, size: 100, color: Colors.black54),
// //             const SizedBox(height: 50), // Space between logo and buttons

// //             // Horizontal button layout with even spacing
// //             Row(
// //               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
// //               children: [
// //                 buildNeumorphicButton(Icons.play_arrow, () {
// //                   setState(() {
// //                     _isPlayElevated = !_isPlayElevated;
// //                   });
// //                 }, _isPlayElevated),
// //                 buildNeumorphicButton(Icons.pause, () {
// //                   setState(() {
// //                     _isPauseElevated = !_isPauseElevated;
// //                   });
// //                 }, _isPauseElevated),
// //                 buildNeumorphicButton(Icons.stop, () {
// //                   setState(() {
// //                     _isStopElevated = !_isStopElevated;
// //                   });
// //                 }, _isStopElevated),
// //               ],
// //             ),
// //           ],
// //         ),
// //       ),
// //     );
// //   }

// //   // Function to build neumorphic buttons
// //   Widget buildNeumorphicButton(
// //       IconData icon, VoidCallback onTap, bool isElevated) {
// //     return GestureDetector(
// //       onTap: onTap,
// //       child: AnimatedContainer(
// //         duration: const Duration(milliseconds: 200),
// //         height: 80, // Increased button height
// //         width: 80, // Increased button width
// //         decoration: BoxDecoration(
// //           color: Colors.grey[500],
// //           borderRadius: BorderRadius.circular(40), // Circular buttons
// //           boxShadow: isElevated
// //               ? [
// //                   BoxShadow(
// //                     color: Colors.grey.shade400,
// //                     offset: const Offset(4, 4),
// //                     blurRadius: 15,
// //                     spreadRadius: 1,
// //                   ),
// //                   BoxShadow(
// //                     color: Colors.white,
// //                     offset: const Offset(-4, -4),
// //                     blurRadius: 15,
// //                     spreadRadius: 1,
// //                   ),
// //                 ]
// //               : [
// //                   BoxShadow(
// //                     color: Colors.grey.shade600.withOpacity(0.5),
// //                     offset: const Offset(2, 2),
// //                     blurRadius: 15,
// //                     spreadRadius: 1,
// //                   ),
// //                   BoxShadow(
// //                     color: Colors.white.withOpacity(0.5),
// //                     offset: const Offset(-2, -2),
// //                     blurRadius: 15,
// //                     spreadRadius: 1,
// //                   ),
// //                 ],
// //         ),
// //         alignment: Alignment.center,
// //         child: Icon(icon, size: 36, color: Colors.black54), // Larger icon size
// //       ),
// //     );
// //   }
// // }

// // import 'package:flutter/material.dart';

// // class RadioButtonPage extends StatefulWidget {
// //   @override
// //   _RadioButtonPageState createState() => _RadioButtonPageState();
// // }

// // class _RadioButtonPageState extends State<RadioButtonPage> {
// //   // Variable to hold the currently selected value
// //   int? _selectedValue;

// //   @override
// //   Widget build(BuildContext context) {
// //     return Scaffold(
// //       appBar: AppBar(
// //         title: Text('Custom Radio Buttons'),
// //       ),
// //       body: Padding(
// //         padding: const EdgeInsets.all(16.0),
// //         child: Column(
// //           children: [
// //             // Radio button for option 1
// //             RadioListTile<int>(
// //               title: Text('Option 1',
// //                   style: TextStyle(fontSize: 26)), // Increased font size
// //               value: 1,
// //               groupValue: _selectedValue,
// //               onChanged: (value) {
// //                 setState(() {
// //                   _selectedValue = value; // Update the selected value
// //                 });
// //               },
// //               activeColor: Colors.green, // Color when selected
// //               fillColor: WidgetStateProperty.all(
// //                   Colors.green), // Fill color when selected
// //               visualDensity: VisualDensity
// //                   .compact, // Compact visual density for larger buttons
// //             ),
// //             // Radio button for option 2
// //             RadioListTile<int>(
// //               title: Text('Option 2',
// //                   style: TextStyle(fontSize: 26)), // Increased font size
// //               value: 2,
// //               groupValue: _selectedValue,
// //               onChanged: (value) {
// //                 setState(() {
// //                   _selectedValue = value; // Update the selected value
// //                 });
// //               },
// //               activeColor: Colors.blue, // Color when selected
// //               fillColor: WidgetStateProperty.all(
// //                   Colors.blue), // Fill color when selected
// //               visualDensity: VisualDensity
// //                   .compact, // Compact visual density for larger buttons
// //             ),
// //             // Radio button for option 3
// //             RadioListTile<int>(
// //               title: Text('Option 3',
// //                   style: TextStyle(fontSize: 26)), // Increased font size
// //               value: 3,
// //               groupValue: _selectedValue,
// //               onChanged: (value) {
// //                 setState(() {
// //                   _selectedValue = value; // Update the selected value
// //                 });
// //               },
// //               activeColor: Colors.red, // Color when selected
// //               fillColor: WidgetStateProperty.all(
// //                   Colors.red), // Fill color when selected
// //               visualDensity: VisualDensity
// //                   .compact, // Compact visual density for larger buttons
// //             ),
// //             SizedBox(height: 50), // Spacer for better UI layout

// //             // Elevated button with increased size and padding
// //             ElevatedButton(
// //               onPressed: () {
// //                 // Action to be performed on button press, e.g., submit selection
// //                 showDialog(
// //                   context: context,
// //                   builder: (context) => AlertDialog(
// //                     title: Text(
// //                       'Selected Option',
// //                     ),
// //                     content: Text(
// //                         'You selected Option $_selectedValue'), // Display selected option
// //                     actions: [
// //                       TextButton(
// //                         onPressed: () => Navigator.of(context).pop(),
// //                         child: Text('OK'),
// //                       ),
// //                     ],
// //                   ),
// //                 );
// //               },
// //               style: ElevatedButton.styleFrom(
// //                 padding: EdgeInsets.symmetric(
// //                     vertical: 16.0,
// //                     horizontal:
// //                         32.0), // Increased padding for larger button size
// //                 textStyle: TextStyle(
// //                     fontSize: 18), // Increased font size for button text
// //               ),
// //               child: Text('Submit'), // Button to submit selection
// //             ),
// //           ],
// //         ),
// //       ),
// //     );
// //   }
// // }

// // import 'package:flutter/material.dart';

// // void main() {
// //   runApp(SchoolDashboard());
// // }

// // class SchoolDashboard extends StatelessWidget {
// //   @override
// //   Widget build(BuildContext context) {
// //     return MaterialApp(
// //       title: 'School Dashboard',
// //       theme: ThemeData(
// //         primarySwatch: Colors.blue,
// //       ),
// //       home: DashboardScreen(),
// //     );
// //   }
// // }

// // class DashboardScreen extends StatelessWidget {
// //   @override
// //   Widget build(BuildContext context) {
// //     return Scaffold(
// //       appBar: AppBar(
// //         title: Text('School Dashboard'),
// //         centerTitle: true,
// //       ),
// //       body: SingleChildScrollView(
// //         child: Column(
// //           children: [
// //             // Header Section
// //             Container(
// //               padding: EdgeInsets.all(20),
// //               decoration: BoxDecoration(
// //                 color: Colors.blueAccent,
// //                 borderRadius:
// //                     BorderRadius.vertical(bottom: Radius.circular(30)),
// //               ),
// //               child: Column(
// //                 children: [
// //                   Text(
// //                     'Welcome to Our School',
// //                     style: TextStyle(
// //                         fontSize: 24,
// //                         color: Colors.white,
// //                         fontWeight: FontWeight.bold),
// //                   ),
// //                   SizedBox(height: 10),
// //                   Text(
// //                     'Your success is our priority!',
// //                     style: TextStyle(fontSize: 16, color: Colors.white70),
// //                   ),
// //                 ],
// //               ),
// //             ),

// //             // Cards Section
// //             Padding(
// //               padding: const EdgeInsets.all(20.0),
// //               child: GridView.count(
// //                 crossAxisCount: 2,
// //                 shrinkWrap: true,
// //                 physics: NeverScrollableScrollPhysics(),
// //                 children: [
// //                   // Card for Attendance
// //                   DashboardCard(
// //                     title: 'Attendance',
// //                     iconData: Icons.check_circle,
// //                     color: Colors.green,
// //                   ),
// //                   // Card for Grades
// //                   DashboardCard(
// //                     title: 'Grades',
// //                     iconData: Icons.grade,
// //                     color: Colors.yellow,
// //                   ),
// //                   // Card for Assignments
// //                   DashboardCard(
// //                     title: 'Assignments',
// //                     iconData: Icons.assignment,
// //                     color: Colors.orange,
// //                   ),
// //                   // Card for Events
// //                   DashboardCard(
// //                     title: 'Events',
// //                     iconData: Icons.event,
// //                     color: Colors.purple,
// //                   ),
// //                 ],
// //               ),
// //             ),
// //           ],
// //         ),
// //       ),
// //     );
// //   }
// // }

// // // Custom Widget for Dashboard Cards
// // class DashboardCard extends StatelessWidget {
// //   final String title;
// //   final IconData iconData;
// //   final Color color;

// //   const DashboardCard({
// //     Key? key,
// //     required this.title,
// //     required this.iconData,
// //     required this.color,
// //   }) : super(key: key);

// //   @override
// //   Widget build(BuildContext context) {
// //     return Card(
// //       elevation: 5,
// //       shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
// //       child: Container(
// //         decoration: BoxDecoration(
// //           borderRadius: BorderRadius.circular(15),
// //           color: color.withOpacity(0.1), // Light background for card
// //         ),
// //         child: Padding(
// //           padding: const EdgeInsets.all(20.0),
// //           child: Column(
// //             mainAxisAlignment: MainAxisAlignment.center,
// //             children: [
// //               Icon(iconData, size: 40, color: color),
// //               SizedBox(height: 10),
// //               Text(
// //                 title,
// //                 style: TextStyle(
// //                     fontSize: 20, fontWeight: FontWeight.bold, color: color),
// //               ),
// //             ],
// //           ),
// //         ),
// //       ),
// //     );
// //   }
// // }

// // import 'package:flutter/material.dart';

// // class DashboardScreen extends StatelessWidget {
// //   @override
// //   Widget build(BuildContext context) {
// //     String greeting = _getGreeting();

// //     return Scaffold(
// //       appBar: AppBar(
// //         title: Text(
// //           'School App UI',
// //           style: TextStyle(fontSize: 30),
// //         ),
// //         centerTitle: true,
// //         backgroundColor: Colors.blue[100],
// //       ),
// //       body: SingleChildScrollView(
// //         child: Padding(
// //           padding: const EdgeInsets.all(20.0),
// //           child: Column(
// //             crossAxisAlignment: CrossAxisAlignment.center,
// //             children: [
// //               // School Name
// //               Text(
// //                 'Code Flicks School ',
// //                 style: TextStyle(
// //                     fontSize: 28,
// //                     fontWeight: FontWeight.bold,
// //                     color: Colors.blue),
// //               ),
// //               SizedBox(height: 10),

// //               // Short Inspirational Quote
// //               Text(
// //                 '"Learn Today, Lead Tomorrow."',
// //                 style: TextStyle(
// //                   fontSize: 16,
// //                   // fontStyle: FontStyle.italic,
// //                   color: Colors.grey[700],
// //                 ),
// //               ),
// //               SizedBox(height: 20),

// //               // Greeting Section
// //               Container(
// //                 padding: EdgeInsets.all(20),
// //                 decoration: BoxDecoration(
// //                   gradient: LinearGradient(
// //                     colors: [Colors.deepPurple[500]!, Colors.blueAccent[400]!],
// //                     begin: Alignment.topLeft,
// //                     end: Alignment.bottomRight,
// //                   ),
// //                   borderRadius:
// //                       BorderRadius.vertical(bottom: Radius.circular(30)),
// //                 ),
// //                 child: Column(
// //                   crossAxisAlignment: CrossAxisAlignment.start,
// //                   children: [
// //                     Text(
// //                       greeting, // Only greeting message
// //                       style: TextStyle(
// //                           fontSize: 24,
// //                           color: Colors.white,
// //                           fontWeight: FontWeight.bold),
// //                     ),
// //                     SizedBox(height: 10),
// //                     Text(
// //                       'Have a Good Day!',
// //                       style: TextStyle(fontSize: 18, color: Colors.white70),
// //                     ),
// //                   ],
// //                 ),
// //               ),

// //               SizedBox(height: 20), // Gap between sections

// //               // Profile Section
// //               Row(
// //                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
// //                 children: [
// //                   CircleAvatar(
// //                     radius: 40,
// //                     backgroundImage:
// //                         AssetImage('images/dev.jpeg'), // Add your image here
// //                   ),
// //                   Column(
// //                     crossAxisAlignment: CrossAxisAlignment.start,
// //                     children: [
// //                       Text('John',
// //                           style: TextStyle(
// //                               fontSize: 18, fontWeight: FontWeight.bold)),
// //                       Text('Grade 10', style: TextStyle(color: Colors.grey)),
// //                     ],
// //                   ),
// //                   Icon(Icons.notifications, size: 30, color: Colors.deepPurple),
// //                 ],
// //               ),

// //               SizedBox(height: 20), // Gap between sections

// //               // Cards Section
// //               GridView.builder(
// //                 gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
// //                   crossAxisCount: 2, // Keep it as 3 columns
// //                   childAspectRatio: 1.2, // Adjust aspect ratio for better fit
// //                   crossAxisSpacing: 10, // Space between columns
// //                   mainAxisSpacing: 10, // Space between rows
// //                 ),
// //                 itemCount: 6, // Total number of cards
// //                 shrinkWrap: true, // Allow GridView to take only necessary space
// //                 physics:
// //                     NeverScrollableScrollPhysics(), // Disable scrolling for GridView
// //                 itemBuilder: (BuildContext context, int index) {
// //                   switch (index) {
// //                     case 0:
// //                       return DashboardCard(
// //                         title: 'Attendance',
// //                         iconData: Icons.check_circle,
// //                         color: Colors.green[600]!,
// //                       );
// //                     case 1:
// //                       return DashboardCard(
// //                         title: 'Grades',
// //                         iconData: Icons.grade,
// //                         color: Colors.orange[600]!,
// //                       );
// //                     case 2:
// //                       return DashboardCard(
// //                         title: 'Assignments',
// //                         iconData: Icons.assignment,
// //                         color: Colors.blue[600]!,
// //                       );
// //                     case 3:
// //                       return DashboardCard(
// //                         title: 'Events',
// //                         iconData: Icons.event,
// //                         color: Colors.purple[600]!,
// //                       );
// //                     case 4:
// //                       return DashboardCard(
// //                         title: 'Exams',
// //                         iconData: Icons.school,
// //                         color: Colors.brown[600]!,
// //                       );
// //                     case 5:
// //                       return DashboardCard(
// //                         title: 'Exam Results',
// //                         iconData: Icons.assessment,
// //                         color: Colors.red[600]!,
// //                       );
// //                     default:
// //                       return Container();
// //                   }
// //                 },
// //               ),

// //               SizedBox(height: 20), // Gap between sections

// //               // Footer Section with Additional Information
// //               Container(
// //                 padding: EdgeInsets.all(20),
// //                 decoration: BoxDecoration(
// //                     color: Colors.grey[200],
// //                     borderRadius: BorderRadius.circular(15)),
// //                 child: Column(
// //                     crossAxisAlignment: CrossAxisAlignment.start,
// //                     children: [
// //                       Text('Upcoming Events',
// //                           style: TextStyle(
// //                               fontSize: 20, fontWeight: FontWeight.bold)),
// //                       SizedBox(height: 10),
// //                       Text('- Science Fair on Nov 10',
// //                           style: TextStyle(color: Colors.black87)),
// //                       Text('- Parent-Teacher Meeting on Nov 15',
// //                           style: TextStyle(color: Colors.black87)),
// //                       Text('- Coding Workshop on Nov 20',
// //                           style: TextStyle(color: Colors.black87)),
// //                     ]),
// //               )
// //             ],
// //           ),
// //         ),
// //       ),
// //     );
// //   }

// //   // Function to get greeting based on the time of day
// //   static String _getGreeting() {
// //     final hour = DateTime.now().hour;
// //     if (hour < 12) {
// //       return 'Good Morning 🌄';
// //     } else if (hour < 17) {
// //       return 'Good Afternoon 🌞';
// //     } else {
// //       return 'Good Evening 🌄';
// //     }
// //   }
// // }

// // // Custom Widget for Dashboard Cards
// // class DashboardCard extends StatelessWidget {
// //   final String title;
// //   final IconData iconData;
// //   final Color color;

// //   const DashboardCard({
// //     Key? key,
// //     required this.title,
// //     required this.iconData,
// //     required this.color,
// //   }) : super(key: key);

// //   @override
// //   Widget build(BuildContext context) {
// //     return Card(
// //       elevation: 5,
// //       shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
// //       child: Container(
// //         decoration: BoxDecoration(
// //             borderRadius: BorderRadius.circular(15),
// //             color: color.withOpacity(0.1)),
// //         child: Padding(
// //           padding: const EdgeInsets.all(20.0),
// //           child: Column(
// //             mainAxisAlignment: MainAxisAlignment.center,
// //             children: [
// //               Icon(iconData, size: 40, color: color),
// //               const SizedBox(height: 10),
// //               Text(title,
// //                   style: TextStyle(
// //                       fontSize: 20, fontWeight: FontWeight.bold, color: color))
// //             ],
// //           ),
// //         ),
// //       ),
// //     );
// //   }
// // }

// // import 'package:flutter/material.dart';

// // class DashboardScreen extends StatelessWidget {
// //   @override
// //   Widget build(BuildContext context) {
// //     String greeting = _getGreeting();

// //     return Scaffold(
// //       appBar: AppBar(
// //         title: const Text(
// //           'School App UI',
// //           style: TextStyle(fontSize: 30),
// //         ),
// //         centerTitle: true,
// //         backgroundColor: Colors.blue[100],
// //       ),
// //       body: SingleChildScrollView(
// //         child: Padding(
// //           padding: const EdgeInsets.all(10.0),
// //           child: Column(
// //             crossAxisAlignment: CrossAxisAlignment.center,
// //             children: [
// //               Stack(
// //                 children: [
// //                   // Background image with transparency
// //                   Container(
// //                     width: double.infinity,
// //                     height: 250, // Adjust height as necessary
// //                     decoration: BoxDecoration(
// //                       image: DecorationImage(
// //                         image: const AssetImage(
// //                             'images/ed.png'), // Path to your background image
// //                         fit: BoxFit.cover,
// //                         colorFilter: ColorFilter.mode(
// //                           Colors.black.withOpacity(0.5), // Adjust transparency
// //                           BlendMode.darken,
// //                         ),
// //                       ),
// //                       borderRadius: BorderRadius.circular(15),
// //                     ),
// //                   ),
// //                   // Overlay gradient and content
// //                   Padding(
// //                     padding: const EdgeInsets.all(20.0),
// //                     child: Column(
// //                       crossAxisAlignment: CrossAxisAlignment.start,
// //                       children: [
// //                         const Text(
// //                           'Code Flicks School',
// //                           style: TextStyle(
// //                               fontSize: 28,
// //                               fontWeight: FontWeight.bold,
// //                               color: Colors.white),
// //                         ),
// //                         const SizedBox(height: 10),
// //                         const Text(
// //                           '"Learn Today, Lead Tomorrow."',
// //                           style: TextStyle(
// //                             fontSize: 16,
// //                             color: Colors.white,
// //                           ),
// //                         ),
// //                         SizedBox(height: 20),
// //                         // Greeting section
// //                         Text(
// //                           greeting,
// //                           style: TextStyle(
// //                               fontSize: 24,
// //                               color: Colors.white,
// //                               fontWeight: FontWeight.bold),
// //                         ),
// //                         SizedBox(height: 10),
// //                         Text(
// //                           'Have a Good Day!',
// //                           style: TextStyle(fontSize: 18, color: Colors.white70),
// //                         ),
// //                         const SizedBox(height: 20),
// //                         // Profile Section
// //                         const Row(
// //                           mainAxisAlignment: MainAxisAlignment.spaceBetween,
// //                           children: [
// //                             CircleAvatar(
// //                               radius: 40,
// //                               backgroundImage: AssetImage(
// //                                   'images/dev.jpeg'), // Path to your profile image
// //                             ),
// //                             Icon(Icons.notifications,
// //                                 size: 30, color: Colors.red),
// //                           ],
// //                         ),
// //                         Column(
// //                           children: [
// //                             Text(
// //                               'John',
// //                               style: TextStyle(
// //                                   fontSize: 18,
// //                                   fontWeight: FontWeight.bold,
// //                                   color: Colors.black),
// //                             ),
// //                             Text(
// //                               'Grade 10',
// //                               style: TextStyle(color: Colors.black),
// //                             ),
// //                           ],
// //                         ),
// //                       ],
// //                     ),
// //                   ),
// //                 ],
// //               ),

// //               SizedBox(height: 20), // Gap between sections

// //               // Cards Section
// //               GridView.builder(
// //                 gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
// //                   crossAxisCount: 2,
// //                   childAspectRatio: 1.2,
// //                   crossAxisSpacing: 10,
// //                   mainAxisSpacing: 10,
// //                 ),
// //                 itemCount: 6,
// //                 shrinkWrap: true,
// //                 physics: NeverScrollableScrollPhysics(),
// //                 itemBuilder: (BuildContext context, int index) {
// //                   switch (index) {
// //                     case 0:
// //                       return DashboardCard(
// //                         title: 'Attendance',
// //                         iconData: Icons.check_circle,
// //                         color: Colors.green[600]!,
// //                       );
// //                     case 1:
// //                       return DashboardCard(
// //                         title: 'Grades',
// //                         iconData: Icons.grade,
// //                         color: Colors.orange[600]!,
// //                       );
// //                     case 2:
// //                       return DashboardCard(
// //                         title: 'Assignments',
// //                         iconData: Icons.assignment,
// //                         color: Colors.blue[600]!,
// //                       );
// //                     case 3:
// //                       return DashboardCard(
// //                         title: 'Events',
// //                         iconData: Icons.event,
// //                         color: Colors.purple[600]!,
// //                       );
// //                     case 4:
// //                       return DashboardCard(
// //                         title: 'Exams',
// //                         iconData: Icons.school,
// //                         color: Colors.brown[600]!,
// //                       );
// //                     case 5:
// //                       return DashboardCard(
// //                         title: 'Exam Results',
// //                         iconData: Icons.assessment,
// //                         color: Colors.red[600]!,
// //                       );
// //                     default:
// //                       return Container();
// //                   }
// //                 },
// //               ),

// //               SizedBox(height: 20), // Gap between sections

// //               // Footer Section with Additional Information
// //               Container(
// //                 padding: const EdgeInsets.all(20),
// //                 decoration: BoxDecoration(
// //                     color: Colors.grey[200],
// //                     borderRadius: BorderRadius.circular(15)),
// //                 child: const Column(
// //                     crossAxisAlignment: CrossAxisAlignment.start,
// //                     children: [
// //                       Text('Upcoming Events',
// //                           style: TextStyle(
// //                               fontSize: 20, fontWeight: FontWeight.bold)),
// //                       SizedBox(height: 10),
// //                       Text('- Science Fair on Nov 10',
// //                           style: TextStyle(color: Colors.black87)),
// //                       Text('- Parent-Teacher Meeting on Nov 15',
// //                           style: TextStyle(color: Colors.black87)),
// //                       Text('- Coding Workshop on Nov 20',
// //                           style: TextStyle(color: Colors.black87)),
// //                     ]),
// //               ),
// //             ],
// //           ),
// //         ),
// //       ),
// //     );
// //   }

// //   // Function to get greeting based on the time of day
// //   static String _getGreeting() {
// //     final hour = DateTime.now().hour;
// //     if (hour < 12) {
// //       return 'Good Morning 🌄';
// //     } else if (hour < 17) {
// //       return 'Good Afternoon 🌞';
// //     } else {
// //       return 'Good Evening 🌄';
// //     }
// //   }
// // }

// // // Custom Widget for Dashboard Cards
// // class DashboardCard extends StatelessWidget {
// //   final String title;
// //   final IconData iconData;
// //   final Color color;

// //   const DashboardCard({
// //     Key? key,
// //     required this.title,
// //     required this.iconData,
// //     required this.color,
// //   }) : super(key: key);

// //   @override
// //   Widget build(BuildContext context) {
// //     return Card(
// //       elevation: 5,
// //       shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
// //       child: Container(
// //         decoration: BoxDecoration(
// //             borderRadius: BorderRadius.circular(15),
// //             color: color.withOpacity(0.1)),
// //         child: Padding(
// //           padding: const EdgeInsets.all(20.0),
// //           child: Column(
// //             mainAxisAlignment: MainAxisAlignment.center,
// //             children: [
// //               Icon(iconData, size: 40, color: color),
// //               const SizedBox(height: 10),
// //               Text(title,
// //                   style: TextStyle(
// //                       fontSize: 20, fontWeight: FontWeight.bold, color: color))
// //             ],
// //           ),
// //         ),
// //       ),
// //     );
// //   }
// // }

// // import 'package:flutter/material.dart';
// // import 'package:lottie/lottie.dart';

// // void main() => runApp(const MyLottie());

// // class MyLottie extends StatefulWidget {
// //   const MyLottie({super.key});

// //   @override
// //   State<MyLottie> createState() => _MyLottieState();
// // }

// // class _MyLottieState extends State<MyLottie> with TickerProviderStateMixin {
// //   late final AnimationController _controller;

// //   @override
// //   void initState() {
// //     super.initState();
// //     // Initialize the AnimationController with a vsync provider
// //     _controller = AnimationController(vsync: this);
// //   }

// //   @override
// //   void dispose() {
// //     // Dispose of the controller when the widget is removed from the widget tree
// //     _controller.dispose();
// //     super.dispose();
// //   }

// //   @override
// //   Widget build(BuildContext context) {
// //     return MaterialApp(
// //       home: Scaffold(
// //         appBar: AppBar(
// //           title: const Text('Lottie Animation MyBottomNav'),
// //         ),
// //         body: Center(
// //           child: Lottie.asset(
// //             'images/subs.json', // Path to your Lottie JSON file
// //             controller: _controller,
// //             onLoaded: (composition) {
// //               // Configure the AnimationController with the duration of the Lottie file
// //               _controller
// //                 ..duration =
// //                     composition.duration // Set duration from composition
// //                 ..forward(); // Start the animation
// //             },
// //           ),
// //         ),
// //         floatingActionButton: FloatingActionButton(
// //           onPressed: () {
// //             // Control the animation playback with button press
// //             if (_controller.isAnimating) {
// //               _controller
// //                   .stop(); // Stop the animation if it's currently playing
// //             } else {
// //               _controller.repeat(); // Repeat the animation if it's stopped
// //             }
// //           },
// //           child: const Icon(Icons.play_arrow),
// //         ),
// //       ),
// //     );
// //   }
// // }

// // import 'package:flutter/material.dart';
// // import 'package:lottie/lottie.dart';

// // class MyLottie extends StatefulWidget {
// //   const MyLottie({super.key});

// //   @override
// //   State<MyLottie> createState() => _MyLottieState();
// // }

// // class _MyLottieState extends State<MyLottie> with TickerProviderStateMixin {
// //   late final AnimationController _controller;

// //   @override
// //   void initState() {
// //     super.initState();
// //     // Initialize the AnimationController with a vsync provider
// //     _controller = AnimationController(vsync: this);
// //   }

// //   @override
// //   void dispose() {
// //     // Dispose of the controller when the widget is removed from the widget tree
// //     _controller.dispose();
// //     super.dispose();
// //   }

// //   @override
// //   Widget build(BuildContext context) {
// //     return Scaffold(
// //       appBar: AppBar(
// //         title: const Text('Lottie Animation MyBottomNav'),
// //       ),
// //       body: Container(
// //         decoration: BoxDecoration(
// //             gradient: LinearGradient(
// //                 colors: [Colors.blue[500]!, Colors.green[500]!])),
// //         child: Lottie.network(
// //           'https://lottie.host/6d338f36-d1f2-460e-bde4-1ef35c7e5567/bsHnGKDuNf.json', // URL of the Lottie animation
// //           controller: _controller,
// //           onLoaded: (composition) {
// //             // Configure the AnimationController with the duration of the Lottie file
// //             _controller
// //               ..duration = composition.duration // Set duration from composition
// //               ..forward(); // Start the animation
// //           },
// //         ),
// //       ),
// //       floatingActionButton: FloatingActionButton(
// //         onPressed: () {
// //           // Control the animation playback with button press
// //           if (_controller.isAnimating) {
// //             _controller.stop(); // Stop the animation if it's currently playing
// //           } else {
// //             _controller.repeat(); // Repeat the animation if it's stopped
// //           }
// //         },
// //         child: const Icon(Icons.play_arrow),
// //       ),
// //     );
// //   }
// // }

// // import 'package:flutter/material.dart';
// // import 'package:lottie/lottie.dart';

// // class MyLottie extends StatefulWidget {
// //   const MyLottie({super.key});

// //   @override
// //   State<MyLottie> createState() => _MyLottieState();
// // }

// // class _MyLottieState extends State<MyLottie> with TickerProviderStateMixin {
// //   late final AnimationController _controller;

// //   @override
// //   void initState() {
// //     super.initState();
// //     // Initialize the AnimationController with a vsync provider
// //     _controller = AnimationController(vsync: this);
// //   }

// //   @override
// //   void dispose() {
// //     // Dispose of the controller when the widget is removed from the widget tree
// //     _controller.dispose();
// //     super.dispose();
// //   }

// //   @override
// //   Widget build(BuildContext context) {
// //     return Scaffold(
// //       // Set extendBody to true to allow the body to extend behind the app bar
// //       extendBody: true,
// //       appBar: AppBar(
// //         title: const Text('Lottie Animation MyBottomNav'),
// //         backgroundColor: Colors.blue[100], // Make app bar transparent
// //         elevation: 0, // Remove shadow from app bar
// //       ),
// //       body: Container(
// //         decoration: BoxDecoration(
// //           gradient: LinearGradient(
// //             begin: Alignment.topLeft, // Starting point of the gradient
// //             end: Alignment.bottomRight, // Ending point of the gradient
// //             colors: [
// //               Colors.blue[100]!, // First color of the gradient
// //               Colors.blue[200]!, // Second color of the gradient
// //             ],
// //           ),
// //         ),
// //         child: Center(
// //           child: Lottie.network(
// //             'https://lottie.host/3b1eb924-86e1-4e68-9193-00e81e2aa423/O0XwMV4CCg.json', // URL of the Lottie animation
// //             controller: _controller,
// //             onLoaded: (composition) {
// //               // Configure the AnimationController with the duration of the Lottie file
// //               _controller
// //                 ..duration =
// //                     composition.duration // Set duration from composition
// //                 ..forward(); // Start the animation
// //             },
// //           ),
// //         ),
// //       ),
// //       floatingActionButton: FloatingActionButton(
// //         onPressed: () {
// //           // Control the animation playback with button press
// //           if (_controller.isAnimating) {
// //             _controller.stop(); // Stop the animation if it's currently playing
// //           } else {
// //             _controller.repeat(); // Repeat the animation if it's stopped
// //           }
// //         },
// //         child: const Icon(Icons.play_arrow),
// //       ),
// //     );
// //   }
// // }

// // import 'package:flutter/material.dart';
// // import 'package:pie_chart/pie_chart.dart';

// // class PieChartScreen extends StatelessWidget {
// //   // Sample data for the pie chart
// //   final Map<String, double> dataMap = {
// //     "Android": 40,
// //     "iOS": 30,
// //     "Web": 20,
// //     "Others": 10,
// //   };

// //   // Define a color list for the pie chart sections
// //   final List<Color> colorList = [
// //     Colors.green[400]!,
// //     Colors.blue[400]!,
// //     Colors.red[400]!,
// //     Colors.purple[400]!,
// //   ];

// //   @override
// //   Widget build(BuildContext context) {
// //     return Scaffold(
// //       appBar: AppBar(
// //         title: Text('Enhanced Animated Pie Chart'),
// //         centerTitle: true,
// //         elevation: 4, // Shadow effect for the AppBar
// //       ),
// //       body: Center(
// //         child: Container(
// //           padding: EdgeInsets.all(20), // Add padding around the chart
// //           decoration: BoxDecoration(
// //             color: Colors.white, // Background color for the container
// //             borderRadius: BorderRadius.circular(20), // Rounded corners
// //             boxShadow: [
// //               BoxShadow(
// //                 color: Colors.grey.withOpacity(0.5),
// //                 spreadRadius: 5,
// //                 blurRadius: 10,
// //                 offset: Offset(0, 5), // Changes position of shadow
// //               ),
// //             ],
// //           ),
// //           child: Column(
// //             mainAxisAlignment: MainAxisAlignment.center,
// //             children: [
// //               // Pie Chart with increased size
// //               Container(
// //                 height: MediaQuery.of(context).size.width *
// //                     0.6, // Large size for the pie chart
// //                 child: PieChart(
// //                   dataMap: dataMap, // Data for the pie chart
// //                   animationDuration:
// //                       Duration(milliseconds: 1200), // Animation duration
// //                   chartLegendSpacing: 32, // Spacing for the legend
// //                   chartRadius: MediaQuery.of(context).size.width /
// //                       2, // Increased chart radius
// //                   colorList: colorList, // Color list for the sections
// //                   initialAngleInDegree: 0, // Initial angle of the pie chart
// //                   chartType:
// //                       ChartType.ring, // Type of pie chart (ring or normal)
// //                   ringStrokeWidth: 32, // Width of the ring stroke
// //                   centerText: "", // No center text to avoid clutter
// //                   legendOptions: LegendOptions(
// //                     showLegendsInRow:
// //                         false, // Display legends in a column (vertical)
// //                     legendPosition: LegendPosition.right, // Position of legends
// //                     showLegends: true, // Show legends
// //                     legendShape: BoxShape.circle, // Shape of legend items
// //                     legendTextStyle: TextStyle(
// //                       fontWeight: FontWeight.bold, // Style for legend text
// //                       fontSize: 16, // Increased font size for legend text
// //                     ),
// //                   ),
// //                   chartValuesOptions: ChartValuesOptions(
// //                     showChartValueBackground:
// //                         false, // Hide background for values
// //                     showChartValues: true, // Show values on the chart
// //                     showChartValuesInPercentage:
// //                         true, // Show values as percentages inside slices
// //                     showChartValuesOutside:
// //                         false, // Show values inside the pie chart or not
// //                     decimalPlaces: 1, // Decimal places for values
// //                   ),
// //                 ),
// //               ),
// //             ],
// //           ),
// //         ),
// //       ),
// //     );
// //   }
// // }

// // import 'package:flutter/material.dart';
// // import 'package:pie_chart/pie_chart.dart';

// // class MyPieChart extends StatelessWidget {
// //   // Sample data for the pie chart (Operating System Market Share)
// //   final Map<String, double> dataMap = {
// //     "Windows": 30,
// //     "macOS": 25,
// //     "iOS": 15,
// //     "Android": 10,
// //   };

// //   // Define a soft color list for the pie chart sections
// //   final List<Color> colorList = [
// //     Colors.blue[400]!, // Soft Blue for Windows
// //     Colors.purple[400]!, // Soft Gray for macOS
// //     Colors.green[400]!, // Soft Light Blue for iOS
// //     Colors.amber[400]!, // Soft Amber for Android
// //   ];

// //   @override
// //   Widget build(BuildContext context) {
// //     return Scaffold(
// //       appBar: AppBar(
// //         title: Text(
// //           'Operating System Pie Chart',
// //           style: TextStyle(fontSize: 26),
// //         ),
// //         centerTitle: true,
// //         backgroundColor: Colors.blue[200],
// //       ),
// //       body: Center(
// //         child: Container(
// //           padding: EdgeInsets.all(20), // Add padding around the chart
// //           decoration: BoxDecoration(
// //             gradient: LinearGradient(
// //               colors: [Colors.blue[200]!, Colors.green[200]!],
// //               begin: Alignment.topRight,
// //               end: Alignment.bottomLeft,
// //             ), // Background color for the container
// //             boxShadow: [
// //               BoxShadow(
// //                 color: Colors.grey.withOpacity(0.5),
// //                 spreadRadius: 5,
// //                 blurRadius: 10,
// //                 offset: Offset(0, 5), // Changes position of shadow
// //               ),
// //             ],
// //           ),
// //           child: Column(
// //             mainAxisAlignment: MainAxisAlignment.center,
// //             children: [
// //               // Pie Chart with increased size
// //               Container(
// //                 height: MediaQuery.of(context).size.width *
// //                     0.7, // Large size for the pie chart
// //                 child: PieChart(
// //                   dataMap: dataMap, // Data for the pie chart
// //                   animationDuration:
// //                       Duration(milliseconds: 1200), // Animation duration
// //                   chartLegendSpacing: 32, // Spacing for the legend
// //                   chartRadius: MediaQuery.of(context).size.width /
// //                       1.2, // Increased chart radius for better visibility
// //                   colorList: colorList, // Color list for the sections
// //                   initialAngleInDegree: 0, // Initial angle of the pie chart
// //                   chartType:
// //                       ChartType.ring, // Type of pie chart (ring or normal)
// //                   ringStrokeWidth: 32, // Width of the ring stroke
// //                   centerText:
// //                       "Operating System", // No center text to avoid clutter
// //                   legendOptions: LegendOptions(
// //                     showLegendsInRow:
// //                         false, // Display legends in a column (vertical)
// //                     legendPosition: LegendPosition.right, // Position of legends
// //                     showLegends: true, // Show legends
// //                     legendShape: BoxShape.circle, // Shape of legend items
// //                     legendTextStyle: TextStyle(
// //                       fontWeight: FontWeight.bold, // Style for legend text
// //                       fontSize: 16, // Increased font size for legend text
// //                     ),
// //                   ),
// //                   chartValuesOptions: ChartValuesOptions(
// //                     showChartValueBackground:
// //                         false, // Hide background for values
// //                     showChartValues:
// //                         true, // Show values on the chart as percentages inside slices
// //                     showChartValuesInPercentage: true,
// //                     showChartValuesOutside: false,
// //                     decimalPlaces: 1,
// //                   ),
// //                 ),
// //               ),
// //             ],
// //           ),
// //         ),
// //       ),
// //     );
// //   }
// // }

// // import 'package:flutter/material.dart';

// // void main() {
// //   runApp(MyApp());
// // }

// // class MyApp extends StatelessWidget {
// //   @override
// //   Widget build(BuildContext context) {
// //     return MaterialApp(
// //       title: 'My Profile',
// //       theme: ThemeData(
// //         primarySwatch: Colors.blue,
// //         visualDensity: VisualDensity.adaptivePlatformDensity,
// //       ),
// //       home: ProfilePage(),
// //     );
// //   }
// // }

// // class ProfilePage extends StatelessWidget {
// //   @override
// //   Widget build(BuildContext context) {
// //     return Scaffold(
// //       backgroundColor: Colors.white,
// //       body: SingleChildScrollView(
// //         child: Column(
// //           children: [
// //             // Profile Header
// //             Container(
// //               height: 250,
// //               decoration: BoxDecoration(
// //                 gradient: LinearGradient(
// //                   colors: [Colors.blueAccent, Colors.lightBlue],
// //                   begin: Alignment.topLeft,
// //                   end: Alignment.bottomRight,
// //                 ),
// //                 borderRadius:
// //                     BorderRadius.vertical(bottom: Radius.circular(30)),
// //               ),
// //               child: Column(
// //                 mainAxisAlignment: MainAxisAlignment.center,
// //                 children: [
// //                   CircleAvatar(
// //                     radius: 60,
// //                     backgroundImage:
// //                         NetworkImage('https://via.placeholder.com/150'),
// //                   ),
// //                   SizedBox(height: 10),
// //                   Text(
// //                     'John Doe',
// //                     style: TextStyle(
// //                         fontSize: 24,
// //                         fontWeight: FontWeight.bold,
// //                         color: Colors.white),
// //                   ),
// //                   SizedBox(height: 5),
// //                   Text(
// //                     'Flutter Developer',
// //                     style: TextStyle(fontSize: 16, color: Colors.white70),
// //                   ),
// //                 ],
// //               ),
// //             ),
// //             SizedBox(height: 20),

// //             // Bio Section
// //             Padding(
// //               padding: const EdgeInsets.all(16.0),
// //               child: Text(
// //                 'A passionate Flutter developer with experience in building beautiful and responsive applications.',
// //                 style: TextStyle(fontSize: 16),
// //                 textAlign: TextAlign.center,
// //               ),
// //             ),

// //             // Interests Section
// //             Padding(
// //               padding: const EdgeInsets.symmetric(horizontal: 16.0),
// //               child: Column(
// //                 crossAxisAlignment: CrossAxisAlignment.start,
// //                 children: [
// //                   Text('Interests',
// //                       style:
// //                           TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
// //                   SizedBox(height: 10),
// //                   InterestCard(interestName: 'Coding'),
// //                   InterestCard(interestName: 'Design'),
// //                   InterestCard(interestName: 'Music'),
// //                   InterestCard(interestName: 'Traveling'),
// //                 ],
// //               ),
// //             ),
// //           ],
// //         ),
// //       ),
// //     );
// //   }
// // }

// // class InterestCard extends StatelessWidget {
// //   final String interestName;

// //   const InterestCard({Key? key, required this.interestName}) : super(key: key);

// //   @override
// //   Widget build(BuildContext context) {
// //     return Card(
// //       elevation: 4,
// //       margin: EdgeInsets.symmetric(vertical: 5),
// //       shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
// //       child: Padding(
// //         padding: const EdgeInsets.all(16.0),
// //         child: Text(
// //           interestName,
// //           style: TextStyle(fontSize: 18),
// //         ),
// //       ),
// //     );
// //   }
// // }

// // import 'package:flutter/material.dart';

// // class AnimatedTextScreen extends StatefulWidget {
// //   @override
// //   _AnimatedTextScreenState createState() => _AnimatedTextScreenState();
// // }

// // class _AnimatedTextScreenState extends State<AnimatedTextScreen>
// //     with SingleTickerProviderStateMixin {
// //   late AnimationController _controller;
// //   late Animation<Offset> _offsetAnimation;

// //   @override
// //   void initState() {
// //     super.initState();
// //     _controller = AnimationController(
// //       duration: const Duration(seconds: 3),
// //       vsync: this,
// //     )..repeat(reverse: true);

// //     _offsetAnimation = Tween<Offset>(
// //       begin: Offset(-1.0, 0.0), // Start off-screen to the left
// //       end: Offset(0.0, 0.0), // End at the original position
// //     ).animate(CurvedAnimation(
// //       parent: _controller,
// //       curve: Curves.easeInCubic,
// //     ));
// //   }

// //   @override
// //   void dispose() {
// //     _controller.dispose();
// //     super.dispose();
// //   }

// //   @override
// //   Widget build(BuildContext context) {
// //     return Scaffold(
// //       body: Stack(
// //         fit: StackFit.expand,
// //         children: [
// //           // Background Image
// //           Container(
// //             decoration: BoxDecoration(
// //               image: DecorationImage(
// //                 image: AssetImage(
// //                     'images/developer.png'), // Replace with your image path
// //                 fit: BoxFit.cover,
// //               ),
// //             ),
// //           ),
// //           // Animated Text
// //           SlideTransition(
// //             position: _offsetAnimation,
// //             child: Center(
// //               child: Text(
// //                 'Code is Poetry - Embrace the Developer Spirit!',
// //                 style: TextStyle(
// //                   fontSize: 24,
// //                   fontWeight: FontWeight.bold,
// //                   color: Colors.white,
// //                   shadows: [
// //                     Shadow(
// //                       blurRadius: 10.0,
// //                       color: Colors.black.withOpacity(0.5),
// //                       offset: Offset(2.0, 2.0),
// //                     ),
// //                   ],
// //                 ),
// //                 textAlign: TextAlign.center,
// //               ),
// //             ),
// //           ),
// //         ],
// //       ),
// //     );
// //   }
// // }

// // import 'package:flutter/material.dart';
// // import 'package:marquee/marquee.dart';

// // class DeveloperMarqueeScreen extends StatelessWidget {
// //   @override
// //   Widget build(BuildContext context) {
// //     return Scaffold(
// //       body: Stack(
// //         fit: StackFit.expand,
// //         children: [
// //           // Background Image
// //           Container(
// //             decoration: const BoxDecoration(
// //               image: DecorationImage(
// //                 image: AssetImage(
// //                     'images/dev.jpeg'), // Replace with your image path
// //                 fit: BoxFit.cover,
// //               ),
// //             ),
// //           ),
// //           // Marquee Text
// //           Center(
// //             child: Container(
// //               height: 100, // Height of the marquee container
// //               child: Marquee(
// //                 text:
// //                     ' 🚀⚡️ Subscribe to 🧑🏻‍💻 Code Flicks for 🔥 Awesome 🧑🏻‍💻Flutter Tutorials! 🚀 Join the Journey! 💻✨',
// //                 style: TextStyle(
// //                   fontSize: 24,
// //                   fontWeight: FontWeight.bold,
// //                   color: Colors.white,
// //                   shadows: [
// //                     Shadow(
// //                       blurRadius: 10.0,
// //                       color: Colors.black.withOpacity(0.7),
// //                       offset: const Offset(2.0, 2.0),
// //                     ),
// //                   ],
// //                 ),
// //                 scrollAxis: Axis.horizontal,
// //                 crossAxisAlignment: CrossAxisAlignment.center,
// //                 blankSpace: 20.0,
// //                 velocity: 50.0, // Speed of the scrolling text
// //                 pauseAfterRound:
// //                     const Duration(seconds: 1), // Pause after each round
// //                 startPadding: 10.0, // Padding at the start of the marquee
// //               ),
// //             ),
// //           ),
// //         ],
// //       ),
// //     );
// //   }
// // }

// // import 'package:flutter/material.dart';

// // class Wheel extends StatelessWidget {
// //   const Wheel({Key? key}) : super(key: key);

// //   @override
// //   Widget build(BuildContext context) {
// //     return Scaffold(
// //       appBar: AppBar(
// //         title: const Text("Stylish Wheel of Wonders"),
// //         centerTitle: true,
// //       ),
// //       body: Center(
// //         child: ListWheelScrollView(
// //           itemExtent: 100,
// //           diameterRatio: 2.0,
// //           offAxisFraction: -0.5,
// //           useMagnifier: true,
// //           magnification: 1.2,
// //           children: List.generate(20, (index) {
// //             return Container(
// //               margin: const EdgeInsets.symmetric(vertical: 10),
// //               decoration: BoxDecoration(
// //                 color: Colors.primaries[index % Colors.primaries.length],
// //                 borderRadius: BorderRadius.circular(15),
// //                 boxShadow: [
// //                   BoxShadow(
// //                     color: Colors.black26,
// //                     offset: const Offset(0, 4),
// //                     blurRadius: 8,
// //                   ),
// //                 ],
// //               ),
// //               child: Center(
// //                 child: Text(
// //                   'Mystical Item ${index + 1}',
// //                   style: const TextStyle(
// //                       fontSize: 18,
// //                       fontWeight: FontWeight.bold,
// //                       color: Colors.white),
// //                 ),
// //               ),
// //             );
// //           }),
// //         ),
// //       ),
// //     );
// //   }
// // }

// // import 'package:flutter/material.dart';

// // class Wheel extends StatelessWidget {
// //   const Wheel({Key? key}) : super(key: key);

// //   @override
// //   Widget build(BuildContext context) {
// //     return Scaffold(
// //       appBar: AppBar(
// //         title: const Text("Stylish Wheel of Wonders"),
// //         centerTitle: true,
// //         backgroundColor: Colors.blue[200],
// //       ),
// //       body: Stack(
// //         children: [
// //           // Background Gradient
// //           Container(
// //             decoration: BoxDecoration(
// //               gradient: LinearGradient(
// //                 colors: [Colors.blue[200]!, Colors.green[200]!],
// //                 begin: Alignment.topLeft,
// //                 end: Alignment.bottomRight,
// //               ),
// //             ),
// //           ),
// //           Center(
// //             child: ListWheelScrollView(
// //               itemExtent: 100,
// //               diameterRatio: 2.0,
// //               offAxisFraction: -0.5,
// //               useMagnifier: true,
// //               magnification: 1.2,
// //               children: List.generate(20, (index) {
// //                 return Container(
// //                   margin: const EdgeInsets.symmetric(vertical: 10),
// //                   decoration: BoxDecoration(
// //                     color: Colors.primaries[index % Colors.primaries.length],
// //                     borderRadius: BorderRadius.circular(20),
// //                     boxShadow: [
// //                       BoxShadow(
// //                         color: Colors.black54,
// //                         offset: const Offset(0, 6),
// //                         blurRadius: 12,
// //                       ),
// //                     ],
// //                   ),
// //                   child: Center(
// //                     child: Text(
// //                       'Mystical Item ${index + 1}',
// //                       style: const TextStyle(
// //                         fontSize: 20,
// //                         fontWeight: FontWeight.bold,
// //                         color: Colors.white,
// //                       ),
// //                     ),
// //                   ),
// //                 );
// //               }),
// //             ),
// //           ),
// //         ],
// //       ),
// //     );
// //   }
// // }

// // import 'package:flutter/material.dart';

// // class Wheel extends StatelessWidget {
// //   const Wheel({Key? key}) : super(key: key);

// //   @override
// //   Widget build(BuildContext context) {
// //     return Scaffold(
// //       appBar: AppBar(
// //         title: const Text("Flutter Tools & Widgets"),
// //         centerTitle: true,
// //         backgroundColor: Colors.blue[200],
// //       ),
// //       body: Stack(
// //         children: [
// //           // Background Gradient Container
// //           Container(
// //             decoration: BoxDecoration(
// //               gradient: LinearGradient(
// //                 colors: [
// //                   Colors.blue[200]!,
// //                   Colors.green[200]!
// //                 ], // Gradient colors
// //                 begin: Alignment.topLeft,
// //                 end: Alignment.bottomRight,
// //               ),
// //             ),
// //           ),
// //           Center(
// //             child: ListWheelScrollView(
// //               itemExtent: 120, // Height of each item in the wheel
// //               diameterRatio: 2.0, // Controls the diameter of the wheel
// //               offAxisFraction:
// //                   -0.5, // Adjusts the vertical position of the wheel
// //               useMagnifier:
// //                   true, // Enables magnification effect on selected item
// //               magnification: 1.2, // Magnification factor for selected item
// //               children: List.generate(20, (index) {
// //                 // Generate a list of items for the wheel
// //                 return Container(
// //                   margin: const EdgeInsets.symmetric(
// //                       vertical: 10), // Vertical margin for each item
// //                   decoration: BoxDecoration(
// //                     color: Colors.primaries[index %
// //                         Colors.primaries
// //                             .length], // Color for each item based on index
// //                     borderRadius:
// //                         BorderRadius.circular(20), // Rounded corners for items
// //                     boxShadow: [
// //                       BoxShadow(
// //                         color: Colors.black54, // Shadow color
// //                         offset: const Offset(0, 6), // Shadow offset
// //                         blurRadius: 12, // Blur radius for shadow effect
// //                       ),
// //                     ],
// //                   ),
// //                   child: Center(
// //                     child: Column(
// //                       mainAxisAlignment: MainAxisAlignment.center,
// //                       children: [
// //                         Text(
// //                           _getItemName(index), // Get item name based on index
// //                           style: const TextStyle(
// //                             fontSize: 22, // Font size for item name
// //                             fontWeight: FontWeight.bold, // Bold text style
// //                             color: Colors.white, // Text color for item name
// //                           ),
// //                         ),
// //                         const SizedBox(
// //                             height: 5), // Space between name and description
// //                         Text(
// //                           _getItemDescription(
// //                               index), // Get item description based on index
// //                           style: const TextStyle(
// //                             fontSize: 16, // Font size for item description
// //                             color: Colors
// //                                 .white70, // Text color for description (lighter shade)
// //                           ),
// //                           textAlign:
// //                               TextAlign.center, // Center align text description
// //                         ),
// //                       ],
// //                     ),
// //                   ),
// //                 );
// //               }),
// //             ),
// //           ),
// //         ],
// //       ),
// //     );
// //   }

// //   String _getItemName(int index) {
// //     // Provide a short list of popular Flutter tools and widgets
// //     const itemNames = [
// //       "Flutter SDK", // Name of Flutter framework
// //       "Dart", // Programming language used in Flutter apps
// //       "Widget", // Basic building block of Flutter UI
// //       "Package", // Reusable piece of code that adds functionality
// //       "Provider", // State management solution for Flutter
// //       "Hive", // Lightweight key-value database
// //       "Riverpod", // Modern state management library for Dart
// //       "FlutterFire", // Plugins to integrate with Firebase
// //     ];
// //     return itemNames[index %
// //         itemNames.length]; // Return name based on index (looping through list)
// //   }

// //   String _getItemDescription(int index) {
// //     // Provide descriptions for the Flutter tools and widgets
// //     const itemDescriptions = [
// //       "The framework for building natively compiled apps.",
// //       "The programming language used for Flutter apps.",
// //       "A basic building block of Flutter UI.",
// //       "A reusable piece of code that adds functionality.",
// //       "A state management solution for Flutter.",
// //       "A lightweight and fast key-value database.",
// //       "A modern state management library for Dart.",
// //       "A set of Flutter plugins to integrate with Firebase.",
// //     ];
// //     return itemDescriptions[index %
// //         itemDescriptions
// //             .length]; // Return description based on index (looping through list)
// //   }
// // }

// // import 'package:flutter/material.dart';
// // import 'dart:math';

// // class AnimatedContainerPage extends StatefulWidget {
// //   @override
// //   _AnimatedContainerPageState createState() => _AnimatedContainerPageState();
// // }

// // class _AnimatedContainerPageState extends State<AnimatedContainerPage> {
// //   // Properties for the animated container
// //   Color _color = Colors.blue[200]!;
// //   double _width = 200.0;
// //   double _height = 200.0;
// //   BorderRadiusGeometry _borderRadius = BorderRadius.circular(15);

// //   // Function to generate random size within screen limits
// //   double _randomSize(double maxWidth) {
// //     return Random().nextDouble() * (maxWidth - 50) +
// //         50; // Size between 50 and maxWidth
// //   }

// //   // Function to change properties based on icon tapped
// //   void _changeProperties(String shapeType) {
// //     final maxWidth = MediaQuery.of(context).size.width; // Get screen width

// //     setState(() {
// //       switch (shapeType) {
// //         case 'circle':
// //           // Randomize width and height for circle and oval
// //           if (Random().nextBool()) {
// //             // Randomly choose between circle and oval
// //             _width = _randomSize(maxWidth);
// //             _height = _width; // Keep it circular
// //             _borderRadius = BorderRadius.circular(_width / 2); // Circle
// //           } else {
// //             _width = _randomSize(maxWidth);
// //             _height = _randomSize(maxWidth / 2); // Oval shape
// //             _borderRadius = BorderRadius.circular(_height / 2); // Oval
// //           }
// //           _color =
// //               Colors.primaries[Random().nextInt(Colors.primaries.length)][200]!;
// //           break;
// //         case 'square':
// //           // Randomize width and height for square and cube-like shape
// //           if (Random().nextBool()) {
// //             // Randomly choose between square and cube-like shape
// //             _width = _randomSize(maxWidth);
// //             _height = _width; // Keep it square
// //             _borderRadius = BorderRadius.circular(0); // Square
// //           } else {
// //             _width = _randomSize(maxWidth);
// //             _height = _width * 1.5; // Cube-like shape (taller)
// //             _borderRadius =
// //                 BorderRadius.circular(10); // Slightly rounded corners
// //           }
// //           _color =
// //               Colors.primaries[Random().nextInt(Colors.primaries.length)][400]!;
// //           break;
// //         case 'rectangle':
// //           // Randomize width and height for rectangle and cylinder-like shape
// //           if (Random().nextBool()) {
// //             // Randomly choose between rectangle and cylinder-like shape
// //             _width = _randomSize(maxWidth);
// //             _height = _randomSize(maxWidth / 2); // Rectangle (width > height)
// //             _borderRadius = BorderRadius.circular(20); // Rounded rectangle
// //           } else {
// //             _width = _randomSize(maxWidth);
// //             _height = 100; // Fixed height for cylinder effect
// //             _borderRadius =
// //                 BorderRadius.circular(50); // Rounded edges for cylinder effect
// //           }
// //           _color =
// //               Colors.primaries[Random().nextInt(Colors.primaries.length)][400]!;
// //           break;
// //         default:
// //           break;
// //       }
// //     });
// //   }

// //   @override
// //   Widget build(BuildContext context) {
// //     return Scaffold(
// //       appBar: AppBar(
// //         title: Text(
// //           'Animated Container',
// //           style: TextStyle(fontSize: 26),
// //         ),
// //       ),
// //       body: Center(
// //         child: AnimatedContainer(
// //           duration: Duration(seconds: 1),
// //           curve: Curves.easeInOut,
// //           width: min(_width,
// //               MediaQuery.of(context).size.width), // Ensure width fits screen
// //           height: min(_height,
// //               MediaQuery.of(context).size.height), // Ensure height fits screen
// //           decoration: BoxDecoration(
// //             color: _color,
// //             borderRadius: _borderRadius,
// //             boxShadow: [
// //               BoxShadow(
// //                 color: Colors.black26,
// //                 blurRadius: 10,
// //                 offset: Offset(0, 5),
// //               ),
// //             ],
// //           ),
// //           child: Center(
// //             child: Text(
// //               'Tap an icon!',
// //               style: TextStyle(
// //                 fontSize: 24,
// //                 fontWeight: FontWeight.bold,
// //                 color: Colors.black,
// //               ),
// //             ),
// //           ),
// //         ),
// //       ),
// //       bottomNavigationBar: BottomAppBar(
// //         child: Row(
// //           mainAxisAlignment: MainAxisAlignment.spaceAround,
// //           children: [
// //             IconButton(
// //               icon: Icon(Icons.circle_outlined,
// //                   size: 40, color: Colors.blue[400]),
// //               onPressed: () => _changeProperties('circle'),
// //             ),
// //             IconButton(
// //               icon: Icon(Icons.square_outlined,
// //                   size: 40, color: Colors.green[400]),
// //               onPressed: () => _changeProperties('square'),
// //             ),
// //             IconButton(
// //               icon: Icon(Icons.rectangle_outlined,
// //                   size: 40, color: Colors.orange[400]),
// //               onPressed: () => _changeProperties('rectangle'),
// //             ),
// //           ],
// //         ),
// //       ),
// //     );
// //   }
// // }

// // import 'package:flutter/material.dart';

// // class MyScrollbar extends StatefulWidget {
// //   @override
// //   _MyScrollbarState createState() => _MyScrollbarState();
// // }

// // class _MyScrollbarState extends State<MyScrollbar> {
// //   // Boolean to control scrollbar visibility
// //   bool _isAlwaysShown = true; // If true, scrollbar is always visible

// //   @override
// //   Widget build(BuildContext context) {
// //     return Scaffold(
// //       appBar: AppBar(
// //         title: Text('Nature-Inspired Color Palette'), // Title of the app bar
// //         backgroundColor: Colors.green[200], // App bar color
// //       ),
// //       body: Column(
// //         crossAxisAlignment: CrossAxisAlignment.start,
// //         children: [
// //           Expanded(
// //             child: Scrollbar(
// //               thumbVisibility:
// //                   _isAlwaysShown, // Control visibility (deprecated)
// //               child: NotificationListener<ScrollNotification>(
// //                 onNotification: (ScrollNotification notification) {
// //                   setState(() {
// //                     // Update scrollbar visibility based on scroll position
// //                     _isAlwaysShown = notification.metrics.pixels > 0;
// //                   });
// //                   return true;
// //                 },
// //                 child: ListView.builder(
// //                   padding: EdgeInsets.all(16.0), // Padding around the list
// //                   itemCount: 50, // Number of items in the list
// //                   itemBuilder: (context, index) =>
// //                       MyItem(index), // Build each item
// //                 ),
// //               ),
// //             ),
// //           ),
// //         ],
// //       ),
// //     );
// //   }
// // }

// // // Custom widget to represent each item in the list
// // class MyItem extends StatelessWidget {
// //   final int index;

// //   const MyItem(this.index); // Constructor to receive index

// //   @override
// //   Widget build(BuildContext context) {
// //     final color = Colors
// //         .primaries[index % Colors.primaries.length]; // Color based on index

// //     // Define a list of nature-inspired names
// //     final List<String> names = [
// //       'Ocean Breeze',
// //       'Sunset Glow',
// //       'Forest Green',
// //       'Mountain Mist',
// //       'Desert Sand',
// //       'Lavender Fields',
// //       'Cherry Blossom',
// //       'Autumn Leaves',
// //       'Midnight Sky',
// //       'Golden Sunrise',
// //     ];

// //     // Use modulo to cycle through names based on index
// //     String name = names[index % names.length];

// //     return Card(
// //       elevation: 4, // Shadow effect for elevation
// //       margin:
// //           EdgeInsets.symmetric(vertical: 8.0), // Vertical spacing between items
// //       shape: RoundedRectangleBorder(
// //         borderRadius: BorderRadius.circular(12), // Rounded corners for card
// //       ),
// //       child: ListTile(
// //         contentPadding: EdgeInsets.all(16.0), // Padding for the tile
// //         leading: CircleAvatar(
// //           backgroundColor: color, // Background color for leading widget
// //           child: Text('${index + 1}',
// //               style: TextStyle(color: Colors.white)), // Number in circle avatar
// //         ),
// //         title: Text(
// //           name,
// //           style: TextStyle(fontWeight: FontWeight.bold), // Bold title text
// //         ),
// //         subtitle: Text(
// //           'A soothing shade reminiscent of $name.',
// //           style: TextStyle(
// //               color: Colors.grey[600]), // Subtitle showing color description
// //         ),
// //       ),
// //     );
// //   }
// // }
// // import 'package:flutter/material.dart';
// // import 'dart:math'; // Importing dart:math for random number generation

// // class MyAnimatedList extends StatefulWidget {
// //   const MyAnimatedList({Key? key}) : super(key: key);

// //   @override
// //   State<MyAnimatedList> createState() => _MyAnimatedListState();
// // }

// // class _MyAnimatedListState extends State<MyAnimatedList> {
// //   final GlobalKey<AnimatedListState> _listKey = GlobalKey();

// //   // Initial list of programming languages to display in the AnimatedList
// //   final List<String> _data = [
// //     'Dart',
// //     'Python',
// //     'Java',
// //     'C++',
// //     'JavaScript',
// //     'C'
// //   ];

// //   // Expanded list of programming languages for random addition
// //   final List<String> programmingLanguages = [
// //     'Swift',
// //     'Kotlin',
// //     'Ruby',
// //     'Rust',
// //     'PHP',
// //     'Go',
// //     'TypeScript',
// //     'Scala',
// //     'Haskell',
// //     'Perl',
// //     'C#',
// //     'Lua',
// //   ];

// //   @override
// //   Widget build(BuildContext context) {
// //     return Scaffold(
// //       appBar: AppBar(
// //         title: const Text(
// //           'AnimatedList',
// //           style: TextStyle(fontSize: 26),
// //         ),
// //         centerTitle: true,
// //         backgroundColor: Colors.teal[200], // AppBar color
// //       ),
// //       body: Column(
// //         children: <Widget>[
// //           Expanded(
// //             child: AnimatedList(
// //               key: _listKey,
// //               initialItemCount: _data.length,
// //               itemBuilder: (context, index, animation) {
// //                 return _buildItem(_data[index], animation);
// //               },
// //             ),
// //           ),
// //           // Button Row for Adding and Removing Items
// //           Padding(
// //             padding: const EdgeInsets.all(16.0),
// //             child: Row(
// //               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
// //               children: <Widget>[
// //                 ElevatedButton(
// //                   onPressed: _addItem,
// //                   style: ElevatedButton.styleFrom(
// //                     backgroundColor: Colors.green[400], // Button color
// //                     padding: const EdgeInsets.symmetric(
// //                         horizontal: 20, vertical: 10),
// //                     shape: RoundedRectangleBorder(
// //                         borderRadius: BorderRadius.circular(30)),
// //                   ),
// //                   child: const Text(
// //                     'Add Language',
// //                     style: TextStyle(
// //                         color: Colors.black,
// //                         fontWeight: FontWeight.bold,
// //                         fontSize: 15),
// //                   ),
// //                 ),
// //                 ElevatedButton(
// //                   onPressed: _removeItem,
// //                   style: ElevatedButton.styleFrom(
// //                     backgroundColor: Colors.red[400], // Button color
// //                     padding: const EdgeInsets.symmetric(
// //                         horizontal: 20, vertical: 10),
// //                     shape: RoundedRectangleBorder(
// //                         borderRadius: BorderRadius.circular(30)),
// //                   ),
// //                   child: const Text(
// //                     'Remove Language',
// //                     style: TextStyle(
// //                         color: Colors.black,
// //                         fontWeight: FontWeight.bold,
// //                         fontSize: 15),
// //                   ),
// //                 ),
// //               ],
// //             ),
// //           ),
// //         ],
// //       ),
// //     );
// //   }

// //   // Builds each item in the AnimatedList with a fade and size transition
// //   Widget _buildItem(String item, Animation<double> animation) {
// //     return FadeTransition(
// //       opacity: animation,
// //       child: SizeTransition(
// //         sizeFactor: animation,
// //         child: Card(
// //           margin: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
// //           elevation: 6.0, // Adds shadow for depth
// //           shape: RoundedRectangleBorder(
// //               borderRadius: BorderRadius.circular(15)), // Rounded corners
// //           child: Padding(
// //             padding: const EdgeInsets.all(16.0),
// //             child: Row(
// //               mainAxisAlignment: MainAxisAlignment.spaceBetween,
// //               children: [
// //                 Text(
// //                   item,
// //                   style: const TextStyle(
// //                       fontSize: 18, fontWeight: FontWeight.bold),
// //                 ),
// //                 Icon(Icons.code,
// //                     color: Colors.teal), // Icon representing coding
// //               ],
// //             ),
// //           ),
// //         ),
// //       ),
// //     );
// //   }

// //   // Adds a new random programming language to the list and animates its addition
// //   void _addItem() {
// //     if (programmingLanguages.isNotEmpty) {
// //       final randomIndex = Random()
// //           .nextInt(programmingLanguages.length); // Generate a random index
// //       String newLanguage = programmingLanguages[randomIndex];
// //       _data.add(newLanguage);
// //       _listKey.currentState
// //           ?.insertItem(_data.length - 1); // Insert at the end of the list

// //       // Remove the added language from the options to prevent duplicates until reset
// //       programmingLanguages.removeAt(randomIndex);
// //     }
// //   }

// //   // Removes the last programming language from the list and animates its removal
// //   void _removeItem() {
// //     if (_data.isNotEmpty) {
// //       final removedIndex = _data.length - 1; // Get the index of the last item
// //       final removedItem = _data.removeLast(); // Remove the last item
// //       _listKey.currentState?.removeItem(
// //         removedIndex,
// //         (context, animation) => _buildItem(removedItem, animation),
// //       );

// //       // Optionally add back removed language to allow re-adding later
// //       programmingLanguages.add(removedItem);
// //     }
// //   }
// // }

// // import 'package:flutter/material.dart';
// // import 'dart:math'; // Importing dart:math for random number generation

// // class MyAnimatedGrid extends StatefulWidget {
// //   const MyAnimatedGrid({Key? key}) : super(key: key);

// //   @override
// //   State<MyAnimatedGrid> createState() => _MyAnimatedGridState();
// // }

// // class _MyAnimatedGridState extends State<MyAnimatedGrid> {
// //   final List<String> _data = [
// //     'Dart',
// //     'Python',
// //     'Java',
// //     'C++',
// //     'JavaScript',
// //     'C'
// //   ];

// //   // Expanded list of programming languages for random addition
// //   final List<String> programmingLanguages = [
// //     'Swift',
// //     'Kotlin',
// //     'Ruby',
// //     'Rust',
// //     'PHP',
// //     'Go',
// //     'TypeScript',
// //     'Scala',
// //     'Haskell',
// //     'Perl',
// //     'C#',
// //     'Lua',
// //   ];

// //   @override
// //   Widget build(BuildContext context) {
// //     return Scaffold(
// //       appBar: AppBar(
// //         title: const Text(
// //           'Animated Grid',
// //           style: TextStyle(fontSize: 26),
// //         ),
// //         centerTitle: true,
// //         backgroundColor: Colors.teal[200], // AppBar color
// //       ),
// //       body: Column(
// //         children: <Widget>[
// //           Expanded(
// //             child: GridView.builder(
// //               gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
// //                 crossAxisCount: 3, // Number of columns in the grid
// //                 mainAxisSpacing: 10, // Space between rows
// //                 crossAxisSpacing: 10, // Space between columns
// //               ),
// //               itemCount: _data.length,
// //               itemBuilder: (context, index) {
// //                 return _buildItem(_data[index]);
// //               },
// //             ),
// //           ),
// //           // Button Row for Adding and Removing Items
// //           Padding(
// //             padding: const EdgeInsets.all(16.0),
// //             child: Row(
// //               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
// //               children: <Widget>[
// //                 ElevatedButton(
// //                   onPressed: _addItem,
// //                   style: ElevatedButton.styleFrom(
// //                     backgroundColor: Colors.green[400], // Button color
// //                     padding: const EdgeInsets.symmetric(
// //                         horizontal: 20, vertical: 10),
// //                     shape: RoundedRectangleBorder(
// //                         borderRadius: BorderRadius.circular(30)),
// //                   ),
// //                   child: const Text(
// //                     'Add Language',
// //                     style: TextStyle(
// //                         color: Colors.black,
// //                         fontWeight: FontWeight.bold,
// //                         fontSize: 15),
// //                   ),
// //                 ),
// //                 ElevatedButton(
// //                   onPressed: _removeItem,
// //                   style: ElevatedButton.styleFrom(
// //                     backgroundColor: Colors.red[400], // Button color
// //                     padding: const EdgeInsets.symmetric(
// //                         horizontal: 20, vertical: 10),
// //                     shape: RoundedRectangleBorder(
// //                         borderRadius: BorderRadius.circular(30)),
// //                   ),
// //                   child: const Text(
// //                     'Remove Language',
// //                     style: TextStyle(
// //                         color: Colors.black,
// //                         fontWeight: FontWeight.bold,
// //                         fontSize: 15),
// //                   ),
// //                 ),
// //               ],
// //             ),
// //           ),
// //         ],
// //       ),
// //     );
// //   }

// //   // Builds each item in the AnimatedGrid with a fade and scale transition
// //   Widget _buildItem(String item) {
// //     return Card(
// //       margin: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
// //       elevation: 6.0, // Adds shadow for depth
// //       shape: RoundedRectangleBorder(
// //           borderRadius: BorderRadius.circular(15)), // Rounded corners
// //       child: Padding(
// //         padding: const EdgeInsets.all(16.0),
// //         child: Center(
// //           child: Text(
// //             item,
// //             style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
// //           ),
// //         ),
// //       ),
// //     );
// //   }

// //   // Adds a new random programming language to the list and animates its addition
// //   void _addItem() {
// //     if (programmingLanguages.isNotEmpty) {
// //       final randomIndex = Random()
// //           .nextInt(programmingLanguages.length); // Generate a random index
// //       String newLanguage = programmingLanguages[randomIndex];
// //       setState(() {
// //         _data.add(newLanguage);
// //       });

// //       // Remove the added language from the options to prevent duplicates until reset
// //       programmingLanguages.removeAt(randomIndex);
// //     }
// //   }

// //   // Removes the last programming language from the list and animates its removal
// //   void _removeItem() {
// //     if (_data.isNotEmpty) {
// //       setState(() {
// //         final removedItem = _data.removeLast(); // Remove the last item

// //         // Optionally add back removed language to allow re-adding later
// //         programmingLanguages.add(removedItem);
// //       });
// //     }
// //   }
// // }

// // import 'package:flutter/material.dart';
// // import 'dart:math'; // Importing dart:math for random number generation

// // class MyAnimatedGrid extends StatefulWidget {
// //   const MyAnimatedGrid({super.key});

// //   @override
// //   State<MyAnimatedGrid> createState() => _MyAnimatedGridState();
// // }

// // class _MyAnimatedGridState extends State<MyAnimatedGrid> {
// //   final List<String> _data = [
// //     'Dart',
// //     'Python',
// //     'Java',
// //     'C++',
// //     'JavaScript',
// //     'C'
// //   ];

// //   // Expanded list of programming languages for random addition
// //   final List<String> programmingLanguages = [
// //     'Swift',
// //     'Kotlin',
// //     'Ruby',
// //     'Rust',
// //     'PHP',
// //     'Go',
// //     'TypeScript',
// //     'Scala',
// //     'Haskell',
// //     'Perl',
// //     'C#',
// //     'Lua',
// //   ];

// //   // Function to generate a random light color
// //   // Color _getRandomLightColor() {
// //   //   Random random = Random();
// //   //   return Color.fromARGB(
// //   //           255,
// //   //           random.nextInt(250), // Random Red value
// //   //           random.nextInt(250), // Random Green value
// //   //           random.nextInt(250) // Random Blue value
// //   //           )
// //   //       .withOpacity(0.3); // Set opacity for a lighter color
// //   // }

// //   @override
// //   Widget build(BuildContext context) {
// //     return Scaffold(
// //       appBar: AppBar(
// //         title: const Text(
// //           'Animated Grid',
// //           style: TextStyle(fontSize: 26),
// //         ),
// //         centerTitle: true,
// //         backgroundColor: Colors.blue[100], // AppBar color
// //       ),
// //       body: Column(
// //         children: <Widget>[
// //           Expanded(
// //             child: GridView.builder(
// //               gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
// //                 crossAxisCount: 3, // Number of columns in the grid
// //                 mainAxisSpacing: 10, // Space between rows
// //                 crossAxisSpacing: 10, // Space between columns
// //               ),
// //               itemCount: _data.length,
// //               itemBuilder: (context, index) {
// //                 return _buildItem(_data[index]);
// //               },
// //             ),
// //           ),
// //           // Button Row for Adding and Removing Items
// //           Padding(
// //             padding: const EdgeInsets.all(16.0),
// //             child: Row(
// //               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
// //               children: <Widget>[
// //                 ElevatedButton(
// //                   onPressed: _addItem,
// //                   style: ElevatedButton.styleFrom(
// //                     backgroundColor: Colors.green[400], // Button color
// //                     padding: const EdgeInsets.symmetric(
// //                         horizontal: 20, vertical: 10),
// //                     shape: RoundedRectangleBorder(
// //                         borderRadius: BorderRadius.circular(30)),
// //                   ),
// //                   child: const Text(
// //                     'Add Language',
// //                     style: TextStyle(
// //                         color: Colors.black,
// //                         fontWeight: FontWeight.bold,
// //                         fontSize: 15),
// //                   ),
// //                 ),
// //                 ElevatedButton(
// //                   onPressed: _removeItem,
// //                   style: ElevatedButton.styleFrom(
// //                     backgroundColor: Colors.red[400], // Button color
// //                     padding: const EdgeInsets.symmetric(
// //                         horizontal: 20, vertical: 10),
// //                     shape: RoundedRectangleBorder(
// //                         borderRadius: BorderRadius.circular(30)),
// //                   ),
// //                   child: const Text(
// //                     'Remove Language',
// //                     style: TextStyle(
// //                         color: Colors.black,
// //                         fontWeight: FontWeight.bold,
// //                         fontSize: 15),
// //                   ),
// //                 ),
// //               ],
// //             ),
// //           ),
// //         ],
// //       ),
// //     );
// //   }

// //   // Builds each item in the AnimatedGrid with a fade and scale transition
// //   Widget _buildItem(String item) {
// //     return Card(
// //       margin: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
// //       elevation: 6.0, // Adds shadow for depth
// //       shape: RoundedRectangleBorder(
// //           borderRadius: BorderRadius.circular(15)), // Rounded corners
// //       child: Padding(
// //         padding: const EdgeInsets.all(16.0),
// //         child: Center(
// //           child: Text(
// //             item,
// //             style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
// //           ),
// //         ),
// //       ),
// //     );
// //   }

// //   // Adds a new random programming language to the list and animates its addition
// //   void _addItem() {
// //     if (programmingLanguages.isNotEmpty) {
// //       final randomIndex = Random()
// //           .nextInt(programmingLanguages.length); // Generate a random index
// //       String newLanguage = programmingLanguages[randomIndex];
// //       setState(() {
// //         _data.add(newLanguage);
// //       });

// //       // Remove the added language from the options to prevent duplicates until reset
// //       programmingLanguages.removeAt(randomIndex);
// //     }
// //   }

// //   // Removes the last programming language from the list and animates its removal
// //   void _removeItem() {
// //     if (_data.isNotEmpty) {
// //       setState(() {
// //         final removedItem = _data.removeLast(); // Remove the last item

// //         // Optionally add back removed language to allow re-adding later
// //         programmingLanguages.add(removedItem);
// //       });
// //     }
// //   }
// // }

// // import 'package:flutter/material.dart';
// // import 'dart:math'; // Importing dart:math for random number generation

// // class MyAnimatedGrid extends StatefulWidget {
// //   const MyAnimatedGrid({super.key});

// //   @override
// //   State<MyAnimatedGrid> createState() => _MyAnimatedGridState();
// // }

// // class _MyAnimatedGridState extends State<MyAnimatedGrid> {
// //   final List<String> _data = [
// //     'Dart',
// //     'Python',
// //     'Java',
// //     'C++',
// //     'JavaScript',
// //     'C'
// //   ];

// //   // Expanded list of programming languages for random addition
// //   final List<String> programmingLanguages = [
// //     'Swift',
// //     'Kotlin',
// //     'Ruby',
// //     'Rust',
// //     'PHP',
// //     'Go',
// //     'TypeScript',
// //     'Scala',
// //     'Haskell',
// //     'Perl',
// //     'C#',
// //     'Lua',
// //   ];

// //   @override
// //   Widget build(BuildContext context) {
// //     return Scaffold(
// //       appBar: AppBar(
// //         title: const Text(
// //           'Animated Grid',
// //           style: TextStyle(fontSize: 26),
// //         ),
// //         centerTitle: true,
// //         backgroundColor: Colors.blue[100], // AppBar color
// //       ),
// //       body: Column(
// //         children: <Widget>[
// //           Expanded(
// //             child: GridView.builder(
// //               gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
// //                 crossAxisCount: 3, // Number of columns in the grid
// //                 mainAxisSpacing: 10, // Space between rows
// //                 crossAxisSpacing: 10, // Space between columns
// //               ),
// //               itemCount: _data.length,
// //               itemBuilder: (context, index) {
// //                 return _buildItem(_data[index]);
// //               },
// //             ),
// //           ),
// //           // Button Row for Adding and Removing Items
// //           Padding(
// //             padding: const EdgeInsets.all(16.0),
// //             child: Row(
// //               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
// //               children: <Widget>[
// //                 ElevatedButton(
// //                   onPressed: _addItem,
// //                   style: ElevatedButton.styleFrom(
// //                     backgroundColor: Colors.green[400], // Button color
// //                     padding: const EdgeInsets.symmetric(
// //                         horizontal: 20, vertical: 10),
// //                     shape: RoundedRectangleBorder(
// //                         borderRadius: BorderRadius.circular(30)),
// //                   ),
// //                   child: const Text(
// //                     'Add Language',
// //                     style: TextStyle(
// //                         color: Colors.black,
// //                         fontWeight: FontWeight.bold,
// //                         fontSize: 15),
// //                   ),
// //                 ),
// //                 ElevatedButton(
// //                   onPressed: _removeItem,
// //                   style: ElevatedButton.styleFrom(
// //                     backgroundColor: Colors.red[400], // Button color
// //                     padding: const EdgeInsets.symmetric(
// //                         horizontal: 20, vertical: 10),
// //                     shape: RoundedRectangleBorder(
// //                         borderRadius: BorderRadius.circular(30)),
// //                   ),
// //                   child: const Text(
// //                     'Remove Language',
// //                     style: TextStyle(
// //                         color: Colors.black,
// //                         fontWeight: FontWeight.bold,
// //                         fontSize: 15),
// //                   ),
// //                 ),
// //               ],
// //             ),
// //           ),
// //         ],
// //       ),
// //     );
// //   }

// //   // Builds each item in the AnimatedGrid with a fade and scale transition
// //   Widget _buildItem(String item) {
// //     return Card(
// //       margin: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
// //       elevation: 6.0, // Adds shadow for depth
// //       shape: RoundedRectangleBorder(
// //           borderRadius: BorderRadius.circular(15)), // Rounded corners
// //       child: Padding(
// //         padding: const EdgeInsets.all(16.0),
// //         child: Center(
// //           child: Text(
// //             item,
// //             style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
// //           ),
// //         ),
// //       ),
// //     );
// //   }

// //   // Adds a new random programming language to the list and animates its addition
// //   void _addItem() {
// //     if (programmingLanguages.isNotEmpty) {
// //       final randomIndex = Random()
// //           .nextInt(programmingLanguages.length); // Generate a random index
// //       String newLanguage = programmingLanguages[randomIndex];
// //       setState(() {
// //         _data.add(newLanguage);
// //       });

// //       // Remove the added language from the options to prevent duplicates until reset
// //       programmingLanguages.removeAt(randomIndex);
// //     }
// //   }

// //   // Removes the last programming language from the list and animates its removal
// //   void _removeItem() {
// //     if (_data.isNotEmpty) {
// //       setState(() {
// //         final removedItem = _data.removeLast(); // Remove the last item

// //         // Optionally add back removed language to allow re-adding later
// //         programmingLanguages.add(removedItem);
// //       });
// //     }
// //   }
// // }

// // import 'package:flutter/material.dart';

// // class MySmooth extends StatefulWidget {
// //   const MySmooth({super.key});

// //   @override
// //   _MySmoothState createState() => _MySmoothState();
// // }

// // class _MySmoothState extends State<MySmooth> {
// //   String selectedOption = "Select an option";

// //   @override
// //   Widget build(BuildContext context) {
// //     return Scaffold(
// //       appBar: AppBar(
// //         title: const Text(
// //           "PopupMenuButton",
// //           style: TextStyle(fontSize: 26),
// //         ),
// //       ),
// //       body: Center(
// //         child: Column(
// //           mainAxisAlignment: MainAxisAlignment.center,
// //           children: [
// //             // Centered PopupMenuButton
// //             PopupMenuButton<String>(
// //               icon: const Icon(
// //                 Icons.more_vert,
// //                 size: 40,
// //               ),
// //               onSelected: (String value) {
// //                 setState(() {
// //                   selectedOption = value; // Update the selected option
// //                 });
// //                 // Show a Snackbar with the selected option
// //                 ScaffoldMessenger.of(context).showSnackBar(
// //                   SnackBar(
// //                       content: Text(
// //                     "Selected: $value",
// //                     style: const TextStyle(color: Colors.white, fontSize: 18),
// //                   )),
// //                 );
// //               },
// //               itemBuilder: (BuildContext context) {
// //                 return [
// //                   // Define enhanced menu items with custom styling
// //                   PopupMenuItem<String>(
// //                     value: "Profile 🧑🏻‍💻",
// //                     child: _buildMenuItem(Icons.person, "Profile"),
// //                   ),
// //                   PopupMenuItem<String>(
// //                     value: "Settings ⚙️",
// //                     child: _buildMenuItem(Icons.settings, "Settings"),
// //                   ),
// //                   PopupMenuItem<String>(
// //                     value: "Logout [→",
// //                     child: _buildMenuItem(Icons.logout, "Logout"),
// //                   ),
// //                 ];
// //               },
// //             ),
// //             const SizedBox(
// //                 height: 120), // Increased space between button and text
// //             // Display selected option text with improved styling
// //             Container(
// //               padding: const EdgeInsets.symmetric(
// //                   horizontal: 20,
// //                   vertical: 15), // Increased vertical padding for more space
// //               decoration: BoxDecoration(
// //                 color: Colors.green[300], // Light background for contrast
// //                 borderRadius: BorderRadius.circular(10),
// //                 boxShadow: [
// //                   BoxShadow(
// //                     color: Colors.grey.withOpacity(0.3),
// //                     spreadRadius: 2,
// //                     blurRadius: 5,
// //                     offset: const Offset(0, 3), // changes position of shadow
// //                   ),
// //                 ],
// //               ),
// //               child: Text(
// //                 selectedOption,
// //                 style: const TextStyle(
// //                     fontSize: 24,
// //                     fontWeight: FontWeight.bold,
// //                     color: Colors.black),
// //               ),
// //             ),
// //           ],
// //         ),
// //       ),
// //     );
// //   }

// //   // Helper method to build a styled menu item
// //   Widget _buildMenuItem(IconData icon, String title) {
// //     return Container(
// //       decoration: BoxDecoration(
// //         borderRadius: BorderRadius.circular(8),
// //         color: Colors.white,
// //         boxShadow: [
// //           BoxShadow(
// //             color: Colors.grey.shade400,
// //             spreadRadius: 2,
// //             blurRadius: 8,
// //             offset: const Offset(0, 3), // changes position of shadow
// //           ),
// //         ],
// //       ),
// //       padding: const EdgeInsets.all(10),
// //       child: Row(
// //         children: [
// //           Icon(icon, color: Colors.blueGrey),
// //           const SizedBox(width: 10),
// //           Text(title, style: const TextStyle(fontSize: 16)),
// //         ],
// //       ),
// //     );
// //   }
// // }

// // import 'package:flutter/material.dart';

// // class MainScreen extends StatelessWidget {
// //   const MainScreen({super.key});

// //   @override
// //   Widget build(BuildContext context) {
// //     return Scaffold(
// //       appBar: AppBar(
// //         title: const Text("Main Screen"),
// //         backgroundColor: Colors.blue[200],
// //       ),
// //       body: Container(
// //         decoration: BoxDecoration(
// //           gradient: LinearGradient(
// //             // Background gradient
// //             colors: [Colors.blue[200]!, Colors.green[200]!],
// //             begin: Alignment.topLeft,
// //             end: Alignment.bottomRight,
// //           ),
// //         ),
// //         child: Center(
// //           child: GestureDetector(
// //             onTap: () {
// //               // Navigate to DetailScreen on tap
// //               Navigator.push(
// //                 context,
// //                 MaterialPageRoute(builder: (_) => DetailScreen()),
// //               );
// //             },
// //             child: Hero(
// //               tag: 'imageHero', // Unique tag for the hero animation
// //               child: ClipRRect(
// //                 borderRadius: BorderRadius.circular(15.0), // Rounded corners
// //                 child: Image.asset(
// //                   'images/coffee.jpg', // Placeholder image
// //                   width: 280, // Increased width for the main image
// //                   height: 280, // Increased height for the main image
// //                   fit: BoxFit.cover, // Cover the entire area
// //                 ),
// //               ),
// //             ),
// //           ),
// //         ),
// //       ),
// //     );
// //   }
// // }

// // class DetailScreen extends StatelessWidget {
// //   const DetailScreen({super.key});

// //   @override
// //   Widget build(BuildContext context) {
// //     return Scaffold(
// //       appBar: AppBar(
// //         title: const Text("Detail Screen"),
// //         backgroundColor: Colors.blue[200],
// //         centerTitle: true,
// //       ),
// //       body: Container(
// //         decoration: BoxDecoration(
// //           gradient: LinearGradient(
// //             // Background gradient
// //             colors: [Colors.blue[200]!, Colors.green[200]!],
// //             begin: Alignment.topLeft,
// //             end: Alignment.bottomRight,
// //           ),
// //         ),
// //         child: Column(
// //           // Use Column to stack elements vertically
// //           children: [
// //             GestureDetector(
// //               onTap: () {
// //                 // Navigate back to MainScreen on tap
// //                 Navigator.pop(context);
// //               },
// //               child: Center(
// //                 child: Hero(
// //                   tag: 'imageHero', // Same tag as in MainScreen for animation
// //                   child: ClipRRect(
// //                     borderRadius: BorderRadius.circular(
// //                         30.0), // More rounded corners for detail view
// //                     child: Image.asset(
// //                       'images/cofffee.jpg', // Larger placeholder image
// //                       width: 400, // Full width of the screen
// //                       height: 400, // Increased height for the detail view image
// //                       fit: BoxFit.cover, // Cover the entire area
// //                     ),
// //                   ),
// //                 ),
// //               ),
// //             ),
// //           ],
// //         ),
// //       ),
// //     );
// //   }
// // }

// // import 'package:flutter/material.dart';

// // class CrossFadeAnimationDemo extends StatefulWidget {
// //   @override
// //   _CrossFadeAnimationDemoState createState() => _CrossFadeAnimationDemoState();
// // }

// // class _CrossFadeAnimationDemoState extends State<CrossFadeAnimationDemo> {
// //   // Boolean variable to toggle between the two children
// //   bool _showFirstChild = true;

// //   @override
// //   Widget build(BuildContext context) {
// //     return Scaffold(
// //       backgroundColor: Colors.grey[200], // Set a background color
// //       appBar: AppBar(
// //         title: Text('Animated Cross Fade MyBottomNav'),
// //         centerTitle: true,
// //       ),
// //       body: Center(
// //         child: Padding(
// //           padding:
// //               const EdgeInsets.all(20.0), // Add padding around the container
// //           child: AnimatedCrossFade(
// //             // First child widget (visible when _showFirstChild is true)
// //             firstChild: _buildFirstChild(),
// //             // Second child widget (visible when _showFirstChild is false)
// //             secondChild: _buildSecondChild(),
// //             // Control which child is shown based on the boolean variable
// //             crossFadeState: _showFirstChild
// //                 ? CrossFadeState.showFirst
// //                 : CrossFadeState.showSecond,
// //             // Duration for the crossfade animation
// //             duration: Duration(seconds: 1),
// //             // Reverse duration for the animation when switching back
// //             reverseDuration: Duration(seconds: 1),
// //             // Curves for the animations
// //             firstCurve: Curves.easeIn,
// //             secondCurve: Curves.easeOut,
// //             // Layout builder to customize positioning during transition
// //             layoutBuilder: (Widget topChild, Key topChildKey,
// //                 Widget bottomChild, Key bottomChildKey) {
// //               return Stack(
// //                 alignment: Alignment.center,
// //                 children: [
// //                   Positioned(
// //                       key: bottomChildKey, child: bottomChild), // Bottom child
// //                   Positioned(key: topChildKey, child: topChild), // Top child
// //                 ],
// //               );
// //             },
// //           ),
// //         ),
// //       ),
// //       floatingActionButton: FloatingActionButton(
// //         onPressed: () {
// //           setState(() {
// //             _showFirstChild = !_showFirstChild; // Toggle the boolean variable
// //           });
// //         },
// //         tooltip: 'Toggle',
// //         backgroundColor: Colors.blueAccent,
// //         child: Icon(Icons.swap_horiz), // Icon to indicate toggle action
// //       ),
// //     );
// //   }

// //   Widget _buildFirstChild() {
// //     return Container(
// //       width: 400,
// //       height: 400,
// //       decoration: BoxDecoration(
// //         borderRadius: BorderRadius.circular(20),
// //         boxShadow: [
// //           BoxShadow(
// //             color: Colors.black26,
// //             blurRadius: 15.0,
// //             offset: Offset(0, 5),
// //           ),
// //         ],
// //         image: DecorationImage(
// //           image: AssetImage('images/boy.jpeg'), // Replace with your image path
// //           fit: BoxFit.cover,
// //         ),
// //       ),
// //       alignment: Alignment.bottomCenter,
// //       child: Container(
// //         padding: EdgeInsets.all(20),
// //         decoration: BoxDecoration(
// //           color: Colors.black54, // Semi-transparent overlay for text visibility
// //           borderRadius: BorderRadius.vertical(bottom: Radius.circular(20)),
// //         ),
// //         child: Text(
// //           'Exhausted Developer',
// //           style: TextStyle(
// //               color: Colors.white, fontSize: 24, fontWeight: FontWeight.bold),
// //         ),
// //       ),
// //     );
// //   }

// //   Widget _buildSecondChild() {
// //     return Container(
// //       width: 400,
// //       height: 400,
// //       decoration: BoxDecoration(
// //         borderRadius: BorderRadius.circular(20),
// //         boxShadow: [
// //           BoxShadow(
// //             color: Colors.black26,
// //             blurRadius: 15.0,
// //             offset: Offset(0, 5),
// //           ),
// //         ],
// //         image: DecorationImage(
// //           image: AssetImage(
// //               'images/developer.jpg'), // Replace with your image path
// //           fit: BoxFit.cover,
// //         ),
// //       ),
// //       alignment: Alignment.bottomCenter,
// //       child: Container(
// //         padding: EdgeInsets.all(20),
// //         decoration: BoxDecoration(
// //             color: Colors.black54,
// //             borderRadius: BorderRadius.vertical(bottom: Radius.circular(20))),
// //         child: Text('Intent Developer',
// //             style: TextStyle(
// //                 color: Colors.white,
// //                 fontSize: 24,
// //                 fontWeight: FontWeight.bold)),
// //       ),
// //     );
// //   }
// // }

// import 'package:flutter/material.dart';

// class ImagePageView extends StatelessWidget {
//   final List<String> imagePaths = [
//     'images/water.jpg', // Replace with your actual image paths
//     'images/fruit.jpg',
//     'images/mojito.jpg',
//     'images/wine.jpg',
//     'images/mint.jpg',
//     'images/wines.jpg',
//     'images/coffeebeans.jpg',
//     'images/chai.jpg',
//     'images/lemon.jpg',
//   ];

//   ImagePageView({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Image PageView'),
//         backgroundColor: Colors.green[100],
//       ),
//       body: PageView.builder(
//         scrollDirection: Axis.vertical,
//         itemCount: imagePaths.length,
//         itemBuilder: (context, index) {
//           return GestureDetector(
//             onTap: () {
//               // Optional: Add functionality for tap events
//               print("Tapped on image $index");
//             },
//             child: Image.asset(
//               imagePaths[index],
//               fit: BoxFit.cover, // Ensures the image covers the entire space
//             ),
//           );
//         },
//       ),
//     );
//   }
// }

// import 'package:flutter/material.dart';
// import 'package:google_nav_bar/google_nav_bar.dart';

// class MyBottomNav extends StatefulWidget {
//   const MyBottomNav({Key? key}) : super(key: key);

//   @override
//   _MyBottomNavState createState() => _MyBottomNavState();
// }

// class _MyBottomNavState extends State<MyBottomNav> {
//   int _selectedIndex = 0;

//   static const TextStyle optionStyle =
//       TextStyle(fontSize: 30, fontWeight: FontWeight.w600);

//   static const List<Widget> _widgetOptions = <Widget>[
//     Center(child: Text('Home', style: optionStyle)),
//     Center(child: Text('Likes', style: optionStyle)),
//     Center(child: Text('Search', style: optionStyle)),
//     Center(child: Text('Profile', style: optionStyle)),
//   ];

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         elevation: 10,
//         title: const Text('GoogleNavBar'),
//         backgroundColor: Colors.brown[300],
//       ),
//       body: AnimatedSwitcher(
//         duration: const Duration(milliseconds: 300),
//         child: _widgetOptions.elementAt(_selectedIndex),
//       ),
//       bottomNavigationBar: Container(
//         decoration: BoxDecoration(
//           color: Colors.white,
//           boxShadow: [
//             BoxShadow(
//               blurRadius: 20,
//               color: Colors.black.withOpacity(.1),
//             ),
//           ],
//         ),
//         child: SafeArea(
//           child: Padding(
//             padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 8),
//             child: GNav(
//               rippleColor: Colors.grey[300]!,
//               hoverColor: Colors.grey[100]!,
//               gap: 8,
//               activeColor: Colors.white,
//               iconSize: 24,
//               padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
//               duration: const Duration(milliseconds: 400),
//               tabBackgroundColor: Colors.brown[300]!,
//               color: Colors.black,
//               tabs: [
//                 GButton(
//                   icon: Icons.home,
//                   text: 'Home',
//                 ),
//                 GButton(
//                   icon: Icons.favorite,
//                   text: 'Likes',
//                 ),
//                 GButton(
//                   icon: Icons.search,
//                   text: 'Search',
//                 ),
//                 GButton(
//                   icon: Icons.person,
//                   text: 'Profile',
//                 ),
//               ],
//               selectedIndex: _selectedIndex,
//               onTabChange: (index) {
//                 setState(() {
//                   _selectedIndex = index;
//                 });
//               },
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }

// import 'package:flutter/material.dart';
// import 'package:google_nav_bar/google_nav_bar.dart';

// class MyBottomNav extends StatefulWidget {
//   const MyBottomNav({super.key});

//   @override
//   _MyBottomNavState createState() => _MyBottomNavState();
// }

// class _MyBottomNavState extends State<MyBottomNav> {
//   int _selectedIndex = 0;

//   static const TextStyle optionStyle =
//       TextStyle(fontSize: 30, fontWeight: FontWeight.w600);

//   static const List<Widget> _widgetOptions = <Widget>[
//     Center(child: Text('Home', style: optionStyle)),
//     Center(child: Text('Likes', style: optionStyle)),
//     Center(child: Text('Search', style: optionStyle)),
//     Center(child: Text('Profile', style: optionStyle)),
//   ];

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: AnimatedSwitcher(
//           duration: const Duration(milliseconds: 300),
//           child: _widgetOptions.elementAt(_selectedIndex),
//         ),
//       ),
//       body: Padding(
//         padding: const EdgeInsets.all(48.0),
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           mainAxisSize: MainAxisSize.max,
//           children: [
//             Expanded(
//               child: ClipRRect(
//                 borderRadius: BorderRadius.circular(48),
//                 child: Image.asset(
//                   'images/dev.jpeg',
//                   height: double.infinity,
//                   width: double.infinity,
//                   fit: BoxFit.cover,
//                 ),
//               ),
//             ),
//           ],
//         ),
//       ),
//       bottomNavigationBar: Container(
//         decoration: BoxDecoration(
//           color: Colors.white,
//           boxShadow: [
//             BoxShadow(
//               blurRadius: 20,
//               color: Colors.black.withOpacity(.1),
//             ),
//           ],
//         ),
//         child: SafeArea(
//           child: Padding(
//             padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 8),
//             child: GNav(
//               rippleColor: Colors.grey[100]!,
//               hoverColor: Colors.grey[100]!,
//               gap: 8,
//               activeColor: Colors.white,
//               iconSize: 24,
//               padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
//               duration: const Duration(milliseconds: 500), // Custom duration
//               // tabBackgroundColor: Colors.cyan,
//               tabBackgroundColor: Colors.brown.shade400,

//               backgroundColor: Colors.white, // Background color
//               tabBorderRadius: 30.0, // Rounded corners for tabs

//               color: Colors.black, // Inactive tab color
//               tabs: const [
//                 GButton(
//                   icon: Icons.home,
//                   text: 'Home',
//                   textSize: 16, // Custom text size
//                 ),
//                 GButton(
//                   icon: Icons.favorite,
//                   text: 'Likes',
//                   textSize: 16, // Custom text size
//                 ),
//                 GButton(
//                   icon: Icons.search,
//                   text: 'Search',
//                   textSize: 16, // Custom text size
//                 ),
//                 GButton(
//                   icon: Icons.person,
//                   text: 'Profile',
//                   textSize: 16, // Custom text size
//                 ),
//               ],
//               selectedIndex: _selectedIndex,
//               onTabChange: (index) {
//                 setState(() {
//                   _selectedIndex = index;
//                 });
//               },
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
