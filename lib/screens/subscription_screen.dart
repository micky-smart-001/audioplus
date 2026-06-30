class SubscriptionScreen
    extends StatelessWidget {
  const SubscriptionScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:
          AppBar(
        title:
            const Text(
          "Go Premium",
        ),
      ),
      body: Padding(
        padding:
            const EdgeInsets.all(20),
        child: Column(
          children: [

            Card(
              child: ListTile(
                title:
                    const Text(
                  "Monthly Plan",
                ),
                subtitle:
                    const Text(
                  "₦`1,000/month",
                ),
                trailing:
                    ElevatedButton(
                  onPressed: () {},
                  child:
                      const Text(
                    "Subscribe",
                  ),
                ),
              ),
            ),

            Card(
              child: ListTile(
                title:
                    const Text(
                  "Yearly Plan",
                ),
                subtitle:
                    const Text(
                  "₦25,000/year",
                ),
                trailing:
                    ElevatedButton(
                  onPressed: () {},
                  child:
                      const Text(
                    "Subscribe",
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}