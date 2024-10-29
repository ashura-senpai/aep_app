import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import '../models/content_model.dart';

class ContentPage extends StatefulWidget {
  const ContentPage({super.key});

  @override
  _ContentPageState createState() => _ContentPageState();
}

class _ContentPageState extends State<ContentPage> {
  List<CyberSecurityArticle> articles = [];

  @override
  void initState() {
    super.initState();
    fetchArticles();
  }

  Future<void> fetchArticles() async {
    final response =
        await http.get(Uri.parse('https://api-cyber-security.com/articles'));

    if (response.statusCode == 200) {
      List<dynamic> data = json.decode(response.body);
      setState(() {
        articles =
            data.map((json) => CyberSecurityArticle.fromJson(json)).toList();
      });
    } else {
      throw Exception('Falha ao carregar artigos.');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Artigos de Segurança Cibernética'),
      ),
      body: articles.isEmpty
          ? const Center(child: CircularProgressIndicator())
          : ListView.builder(
              itemCount: articles.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(articles[index].title),
                  subtitle: Text(articles[index].description),
                  onTap: () {
                    // Navegar para o link do artigo
                  },
                );
              },
            ),
    );
  }
}
