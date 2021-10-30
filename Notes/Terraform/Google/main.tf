provider "google"{
    credentials = file("nifty-harmony-329714-7a06488368db.json")
    project = "nifty-harmony-329714"
    region = "us-central1"
    zone = "us-central1-c" 

}
resource "google_compute_network" "vpc_network" {
  name = "terraform_network"
}