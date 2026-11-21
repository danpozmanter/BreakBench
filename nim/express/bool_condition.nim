# LEVEL: LANGUAGE

if cmp("x", "x") == 0: echo "same"
if cmp("x", "x"): echo "different" # REJECT!
