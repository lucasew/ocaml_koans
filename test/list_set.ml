let __ = true

let basic_equality_test () =
  Alcotest.(check bool) "Checking for equal empty list" __ ([] = [])

let identity_test () =
  Alcotest.(check bool) "Lists have the same identity" __ ([] == [])

let comparing_lists () =
  Alcotest.(check bool) "Equal" true ([__] = [ 2; 3; ]);
  Alcotest.(check bool) "Identical" true ([__] == [ 2; 3; ]);
  Alcotest.(check bool) "Not Equal" true ([ 2; ] <> [__]);
  Alcotest.(check bool) "Not Identical" true ([__] != [ 0; ])

let appending_to_list () =
  Alcotest.(check bool) "Object Added to List" true ([__]@[___] =[ "foo"; "boo"; "loo"; ])

let length_of_list () =
  Alcotest.(check int) "Length Should Be 0" 0 (___)

let list_set = [
  "Check Basic List", `Quick, basic_equality_test;
  "Check identity", `Quick, identity_test;
  "Compare Lists", `Quick, comparing_lists;
  "Append To A List", `Quick, appending_to_list;
  "Check Length of List", `Quick, length_of_list;
  ]