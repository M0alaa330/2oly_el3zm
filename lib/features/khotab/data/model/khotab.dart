class Khotab {
  final String? title;
  final String? desc;
  final String? author;
  final String? downloadurl;
  Khotab({
    required this.title,
    required this.desc,
    required this.author,
    required this.downloadurl,
  });
  factory Khotab.fromJSON(Map<String, dynamic> json) {
    var preparedByList = json['prepared_by'] as List<dynamic>? ?? [];
    String authorName = preparedByList.isNotEmpty
        ? preparedByList[0]['title'] ?? 'Unknown'
        : 'Unknown';
    var attachmentsList = json['attachments'] as List<dynamic>? ?? [];
    String fileUrl = attachmentsList.isNotEmpty
        ? attachmentsList[0]['url'] ?? 'No URL'
        : 'No URL';
    return Khotab(
        title: json['title'] ?? 'No Title',
        desc: json['description'] ?? 'No Description',
        author: authorName,
        downloadurl: fileUrl);
  }
}
