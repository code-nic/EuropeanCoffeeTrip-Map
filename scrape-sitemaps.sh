#!/bin/bash
output_dir="./.resources/"
mkdir -p "$output_dir"
curl -sSl https://europeancoffeetrip.com/cafe-sitemap.xml  > $output_dir/cafe-sitemap.xml
curl -sSl https://europeancoffeetrip.com/cafe-sitemap2.xml > $output_dir/cafe-sitemap2.xml
curl -sSl https://europeancoffeetrip.com/cafe-sitemap3.xml > $output_dir/cafe-sitemap3.xml
curl -sSl https://europeancoffeetrip.com/cafe-sitemap4.xml > $output_dir/cafe-sitemap4.xml
curl -sSl https://europeancoffeetrip.com/cafe-sitemap5.xml > $output_dir/cafe-sitemap5.xml

