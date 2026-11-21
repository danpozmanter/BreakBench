# LEVEL: LANGUAGE

{% raise "100 does not fit in a byte" if 100 > 255 %}
{% raise "300 does not fit in a byte" if 300 > 255 %} # REJECT!

puts 100
