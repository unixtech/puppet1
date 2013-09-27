define regex1::substr() {
  $typo = "Rohan is nice boy."
  $name1 = regsubst("$typo", boy, "boy or may be...")
  notify { $name1: }

}
