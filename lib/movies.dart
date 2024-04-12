import 'package:flutter/material.dart';

class PaginatedContainerList extends StatefulWidget {
  final int itemCount;
  final int containersPerPage;

  PaginatedContainerList({required this.itemCount, this.containersPerPage = 12});

  @override
  _PaginatedContainerListState createState() => _PaginatedContainerListState();
}

class _PaginatedContainerListState extends State<PaginatedContainerList> {
  late PageController _pageController;
  int _currentPage = 0;

  @override
  void initState() {
    super.initState();
    _pageController = PageController(initialPage: _currentPage);
  }

  @override
  Widget build(BuildContext context) {
    int totalPages = (widget.itemCount / widget.containersPerPage).ceil();

    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: PageView.builder(
              controller: _pageController,
              itemCount: totalPages,
              onPageChanged: (index) {
                setState(() {
                  _currentPage = index;
                });
              },
              itemBuilder: (context, pageIndex) {
                int startIndex = pageIndex * widget.containersPerPage;
                int endIndex = (pageIndex + 1) * widget.containersPerPage;
                endIndex = endIndex > widget.itemCount ? widget.itemCount : endIndex;

                List<Widget> containers = [];

                for (int i = startIndex; i < endIndex; i++) {
                  containers.add(Container(
                    width: 100,
                    height: 100,
                    margin: EdgeInsets.all(8),
                    color: Colors.blue,
                    child: Center(
                      child: Text('Container ${i + 1}'),
                    ),
                  ));
                }

                return ListView(
                  children: containers,
                );
              },
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(
                icon: Icon(Icons.arrow_back),
                onPressed: () {
                  if (_currentPage > 0) {
                    _pageController.previousPage(
                      duration: Duration(milliseconds: 300),
                      curve: Curves.easeInOut,
                    );
                  }
                },
              ),
              Text('Page ${_currentPage + 1} of $totalPages'),
              IconButton(
                icon: Icon(Icons.arrow_forward),
                onPressed: () {
                  if (_currentPage < totalPages - 1) {
                    _pageController.nextPage(
                      duration: Duration(milliseconds: 300),
                      curve: Curves.easeInOut,
                    );
                  }
                },
              ),
            ],
          ),
        ],
      ),
    );
  }
}