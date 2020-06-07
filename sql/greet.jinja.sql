#standardSQL

create temp function greet(name string)
returns string
language js as
"""
{% include "greet.js" %}
return greet.greet(name);
""";


select greet("World");
