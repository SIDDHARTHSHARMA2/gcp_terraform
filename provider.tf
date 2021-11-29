provider "google" {
  credentials = file("/Users/siddharthsharma2/.config/gcloud/application_default_credentials.json")
  project     = "us-gcp-ame-con-116-npd-1"
  region      = "us-central1"
}