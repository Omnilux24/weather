class FlicsController {
  bool isLiked = false;
  int likeCount = 0;

  void toggleLike() {
    isLiked = !isLiked;
    if (isLiked) {
      likeCount++;
    } else {
      likeCount--;
    }
  }
}
