class Books {
  final int? id;
  final String? title;
  final String? desc;
  final String? auther;
  final String? downloadurl;
  Books(
      {required this.id,
      required this.title,
      required this.desc,
      required this.auther,
      required this.downloadurl});
  factory Books.fromJSON(Map<String, dynamic> json) {
    var preparedByList = json['prepared_by'] as List<dynamic>? ?? [];
    String authorName = preparedByList.isNotEmpty
        ? preparedByList[0]['title'] ?? 'Unknown'
        : 'Unknown';
    var attachmentsList = json['attachments'] as List<dynamic>? ?? [];
    String fileUrl = attachmentsList.isNotEmpty
        ? attachmentsList[0]['url'] ?? 'No URL'
        : 'No URL';
    return Books(
        id: json['id'],
        title: json['title'] ?? 'No Title',
        desc: json['description'] ?? 'No Description',
        auther: authorName,
        downloadurl: fileUrl);
  }
}
