import 'dart:io' as io;
import 'package:ebook_fetcher_app/src/features/fetching/data/fetchers/book_fetcher_types.dart';
import 'package:ebook_fetcher_app/src/utils/app_http_client.dart';
import 'package:ebook_fetcher_app/src/utils/bad_cert_io_http_client.dart';
import 'package:http/http.dart' as http;
import 'package:ebook_fetcher_app/src/features/fetching/data/fetchers/xbiqugeshu_book_fetcher.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import 'xbiqugeshu_book_fetcher_test.mocks.dart';

@GenerateMocks([AppHttpClient])
void main() {
  test('able to fetch book metadata from internet', () async {
    final originalHttpClient = createBadCertIOHttpClient();
    final httpClient = AppHttpClient(originalHttpClient);
    final bookFetcher = XbiqugeshuBookFetcher(
        httpClient, Uri.parse('https://www.xbiqugeshu.com/book/21662/'));
    final bookMetadata = await bookFetcher.fetchMetadata();
    expect(bookMetadata.title, '神王婿');
  });
  test('able to parse book metadata', () async {
    final httpClient = MockAppHttpClient();
    final bookUrl = Uri.parse('https://www.xbiqugeshu.com/book/21662/');
    final bookIndexDump =
        await io.File('test/test_dumps/xbiqugeshu_book_index.html')
            .readAsBytes();
    when(httpClient.get(bookUrl))
        .thenAnswer((_) async => http.Response.bytes(bookIndexDump, 200));
    final bookFetcher = XbiqugeshuBookFetcher(httpClient, bookUrl);
    final bookMetadata = await bookFetcher.fetchMetadata();
    expect(
        bookMetadata,
        BookMetadata(
          title: '神王婿',
          lastUpdate: DateTime.utc(2023, 2, 21, 10, 52),
          lastChapter: 4715,
          url: bookUrl,
        ));
  });
  test('able to parse book table of content', () async {
    final httpClient = MockAppHttpClient();
    final bookUrl = Uri.parse('https://www.xbiqugeshu.com/book/21662/');
    final bookIndexDump =
        await io.File('test/test_dumps/xbiqugeshu_book_index.html')
            .readAsBytes();
    when(httpClient.get(bookUrl))
        .thenAnswer((_) async => http.Response.bytes(bookIndexDump, 200));
    final bookFetcher = XbiqugeshuBookFetcher(httpClient, bookUrl);
    final bookTableOfContent = await bookFetcher.fetchTableOfContent();
    expect(
      bookTableOfContent.length,
      4718,
    );
  });
  test('able to parse book table of content and retrieve chapter', () async {
    final httpClient = MockAppHttpClient();
    final bookUrl = Uri.parse('https://www.xbiqugeshu.com/book/21662/');
    final bookIndexDump =
        await io.File('test/test_dumps/xbiqugeshu_book_index.html')
            .readAsBytes();
    when(httpClient.get(bookUrl))
        .thenAnswer((_) async => http.Response.bytes(bookIndexDump, 200));
    final chapterUrl =
        Uri.parse('https://www.xbiqugeshu.com/book/21662/112776808.html');
    final bookChapterDump =
        await io.File('test/test_dumps/xbiqugeshu_book_chapter.html')
            .readAsBytes();
    when(httpClient.get(chapterUrl))
        .thenAnswer((_) async => http.Response.bytes(bookChapterDump, 200));
    final bookFetcher = XbiqugeshuBookFetcher(httpClient, bookUrl);
    final bookTableOfContent = await bookFetcher.fetchTableOfContent();
    final firstChapterMetadata = bookTableOfContent[0];
    final chapter = await bookFetcher.fetchChapter(firstChapterMetadata);
    expect(chapter.htmlContent, isNotEmpty);
  });
  test('able to retrieve chapter from internet', () async {
    final bookUrl = Uri.parse('https://www.xbiqugeshu.com/book/21662/');
    final originalHttpClient = createBadCertIOHttpClient();
    final httpClient = AppHttpClient(originalHttpClient);
    final bookFetcher = XbiqugeshuBookFetcher(httpClient, bookUrl);
    final bookTableOfContent = await bookFetcher.fetchTableOfContent();
    final firstChapterMetadata = bookTableOfContent[0];
    final chapter = await bookFetcher.fetchChapter(firstChapterMetadata);
    expect(chapter.htmlContent, isNotEmpty);
  });
}
