let basic_equality_test () =
        Alcotest.(check bool) "Checking for " true ([] = [])


let list_set = [
  "Check Basic List", `Quick, basic_equality_test;
  ]

let () = 
  Alcotest.run "List" ["list_set", list_set]
