import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'counter_provider.dart';


class ProviderApp extends StatelessWidget {
  const ProviderApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Provider Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const ProviderHomePage(),
    );
  }
}

class ProviderHomePage extends StatelessWidget {
  const ProviderHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    // Using watch() to listen for changes in the counter value
    final counterProvider = context.watch<CounterProvider>();

    return Scaffold(
      appBar: AppBar(
        title: const Text('Provider Demo'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '${counterProvider.counter}', // This will rebuild when counter changes
              style: Theme.of(context).textTheme.titleMedium,
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                FloatingActionButton(
                  onPressed: () {
                    context.read<CounterProvider>().increment(); // Using read() to call increment
                  },
                  tooltip: 'Increment',
                  child: const Icon(Icons.add),
                ),
                const SizedBox(width: 20),
                FloatingActionButton(
                  onPressed: () {
                    context.read<CounterProvider>().decrement(); // Using read() to call decrement
                  },
                  tooltip: 'Decrement',
                  child: const Icon(Icons.remove),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}