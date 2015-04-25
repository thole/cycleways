default: hamburg.topojson berlin.topojson bremen.topojson muenster.topojson amsterdam.topojson kopenhagen.topojson

hamburg.json: hamburg/roads.shp
	ogr2ogr -f GeoJSON -where "type IN ('cycleway')" hamburg.json hamburg/roads.shp

berlin.json: berlin/roads.shp
	ogr2ogr -f GeoJSON -where "type IN ('cycleway')" berlin.json berlin/roads.shp

bremen.json: bremen/roads.shp
	ogr2ogr -f GeoJSON -where "type IN ('cycleway')" bremen.json bremen/roads.shp

kopenhagen.json: kopenhagen/roads.shp
	ogr2ogr -f GeoJSON -where "type IN ('cycleway')" kopenhagen.json kopenhagen/roads.shp

amsterdam.json: amsterdam/roads.shp
	ogr2ogr -f GeoJSON -where "type IN ('cycleway')" amsterdam.json amsterdam/roads.shp

muenster.json: muenster/roads.shp
	ogr2ogr -f GeoJSON -where "type IN ('cycleway')" muenster.json muenster/roads.shp


hamburg.topojson: hamburg.json
	topojson -o hamburg.topojson hamburg.json
	rm -f hamburg.json

berlin.topojson: berlin.json
	topojson -o berlin.topojson berlin.json
	rm -f berlin.json

bremen.topojson: bremen.json
	topojson -o bremen.topojson bremen.json
	rm -f bremen.json

muenster.topojson: muenster.json
	topojson -o muenster.topojson muenster.json
	rm -f muenster.json

amsterdam.topojson: amsterdam.json
	topojson -o amsterdam.topojson amsterdam.json
	rm -f amsterdam.json

kopenhagen.topojson: kopenhagen.json
	topojson -o kopenhagen.topojson kopenhagen.json
	rm -f kopenhagen.json

clean:
	rm -f hamburg.topojson
	rm -f berlin.topojson
	rm -f bremen.topojson 
	rm -f kopenhagen.topojson
	rm -f muenster.topojson
	rm -f amsterdam.topojson
