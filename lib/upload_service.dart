// Utility service for managing upload status
class UploadService {
  bool isUploading = false;
  double progress = 0.0;

  void updateProgress(double value) {
    progress = value;
    print("Upload progress: ${(progress * 100).toStringAsFixed(2)}%");
  }

  void finalizeUpload() {
    isUploading = false;
    print("Asset successfully synchronized with the repository.");
  }
}
