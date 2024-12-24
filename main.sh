#!/bin/bash
# Download all sitemaps
./scrape-sitemaps.sh

# parse sitemap xml and create url list
./parse_sitemap.py

# scrape all cafe htmls
./download_cafe_pages.sh