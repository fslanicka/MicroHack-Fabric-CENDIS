## Table descriptions
The dimLocations table contains location data for New York only, with the following columns:
- Borough – contains districts in New York
- Zone – contains parts of districts in New York
- service_zone – indicates the taxi zone in New York

The reviewLocations table contains location reviews, classifications, sentiments, and key topics:
- AIclassify column contains segmentation with values such as: bars, historic building, restaurants, accommodation, or null = is not specified

## When asked about
- If user ask for best or worst or level of service use AIsentiment column from reviewLocations table.