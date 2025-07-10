import 'package:banking_app_interface/Components/CustomDrawer.dart';
import 'package:flutter/material.dart';

class TransactionList extends StatefulWidget {
  const TransactionList({super.key});

  @override
  State<TransactionList> createState() => _TransactionListState();
}

class _TransactionListState extends State<TransactionList> {
  int currentPageComplete = 0;
  int currentPageInProgress = 0;

  final int itemsPerPage = 10;

  final List<Map<String, dynamic>> completeTransactions = List.generate(
    12,
    (index) => {
      "title": "Complete Transaction ${index + 1}",
      "subtitle": "Date: 2025-07-${index + 1}",
      "amount": 1000 + index * 50,
    },
  );

  final List<Map<String, dynamic>> inProgressTransactions = List.generate(
    8,
    (index) => {
      "title": "In Progress Transaction ${index + 1}",
      "subtitle": "Date: 2025-07-${index + 10}",
      "amount": 500 + index * 70,
    },
  );

  List<Map<String, dynamic>> getPaginatedList(List<Map<String, dynamic>> all, int currentPage) {
    final start = currentPage * itemsPerPage;
    final end = (start + itemsPerPage) > all.length ? all.length : start + itemsPerPage;
    return all.sublist(start, end);
  }

  Widget buildTransactionList(List<Map<String, dynamic>> list) {
    return ListView.separated(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      itemCount: list.length,
      separatorBuilder: (_, __) => const SizedBox(height: 12),
      itemBuilder: (context, index) {
        final tx = list[index];
        return Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(12),
            boxShadow: const [
              BoxShadow(
                color: Colors.black12,
                blurRadius: 6,
                offset: Offset(0, 3),
              ),
            ],
          ),
          child: ListTile(
            contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
            title: Text(
              tx['title'],
              style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
            ),
            subtitle: Text(
              tx['subtitle'],
              style: const TextStyle(color: Colors.grey),
            ),
            trailing: Text(
              "${tx['amount']} ৳",
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.green,
                fontSize: 16,
              ),
            ),
          ),
        );
      },
    );
  }

  Widget buildPagination({
    required int currentPage,
    required int totalItems,
    required VoidCallback onNext,
    required VoidCallback onPrevious,
  }) {
    final totalPages = (totalItems / itemsPerPage).ceil();

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 12),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ElevatedButton(
            onPressed: currentPage > 0 ? onPrevious : null,
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.blue,
              foregroundColor: Colors.white,
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
              elevation: 4,
            ),
            child: const Icon(Icons.arrow_back),
          ),
          const SizedBox(width: 16),
          Text(
            "Page ${currentPage + 1} of $totalPages",
            style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
          ),
          const SizedBox(width: 16),
          ElevatedButton(
            onPressed: (currentPage + 1) < totalPages ? onNext : null,
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.blue,
              foregroundColor: Colors.white,
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
              elevation: 4,
            ),
            child: const Icon(Icons.arrow_forward),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final completePageItems = getPaginatedList(completeTransactions, currentPageComplete);
    final inProgressPageItems = getPaginatedList(inProgressTransactions, currentPageInProgress);

    return DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: const Color(0xFFF4F6F8),
        appBar: AppBar(
          title: const Text("Transaction List"),
          backgroundColor: Colors.blue[800],
          bottom: const TabBar(
            indicatorSize: TabBarIndicatorSize.tab,
            labelColor: Colors.white,
            unselectedLabelColor: Color.fromARGB(154, 255, 255, 255),
            tabs: [
              Tab(text: "COMPLETE"),
              Tab(text: "IN PROGRESS"),
            ],
          ),
        ),
        drawer: CustomDrawer(),
        body: TabBarView(
          children: [
            Column(
              children: [
                Expanded(child: buildTransactionList(completePageItems)),
                buildPagination(
                  currentPage: currentPageComplete,
                  totalItems: completeTransactions.length,
                  onNext: () => setState(() => currentPageComplete++),
                  onPrevious: () => setState(() => currentPageComplete--),
                ),
              ],
            ),
            Column(
              children: [
                Expanded(child: buildTransactionList(inProgressPageItems)),
                buildPagination(
                  currentPage: currentPageInProgress,
                  totalItems: inProgressTransactions.length,
                  onNext: () => setState(() => currentPageInProgress++),
                  onPrevious: () => setState(() => currentPageInProgress--),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
