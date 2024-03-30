variable "buckat_name" {
    type = list(string)
    default = ["egodeath", "reverie"]
    description = "List of bucket names, the index amount of names will determine how many buckets to be created by terraform apply -target=ur_bucket"

}