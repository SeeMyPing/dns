locals {
  seemyping-xyz = yamldecode(file("${path.module}/../records/seemyping-xyz.yaml"))
  kezal-fr = yamldecode(file("${path.module}/../records/kezal-fr.yaml"))

}
