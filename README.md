# EuropeanCoffeeTrip-Map

## Overview
This project aims to create a comprehensive map of cafes listed on [European Coffee Trip](https://europeancoffeetrip.com/). By scraping information such as names, addresses, and coordinates, we generate a GeoJSON dataset that can be visualized using uMap and OpenStreetMap.

## Features
- Scrapes cafe data (name, address, coordinates) from all subpages of European Coffee Trip.
- Converts scraped data into a dictionary and then into a GeoJSON file.
- Supports map visualization using tools like uMap.

## Approaches
### 1. Proxy-Based Scraping
- Utilizes proxies to ensure seamless and efficient scraping by mimicking multiple sources.

### 2. Direct Scraping
- Connects directly to the target website without proxies for a straightforward implementation.

## Dependencies
This project relies on the following Python libraries:
- `requests`
- `BeautifulSoup` (from `bs4`)
- `geojson`
- Additional libraries for handling proxies, if needed.

