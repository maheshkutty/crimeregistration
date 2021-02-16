var baseLayer = new ol.layer.Group({'title': 'Base maps',layers: [new ol.layer.Tile({title: 'OSM', source: new ol.source.OSM()})]});
var lyr_my = new ol.layer.Vector({
                source: new ol.source.GeoJSON({object: geojson_my}), 
                style: style_my,
                title: "my"
            });

lyr_my.setVisible(true);
var layersList = [baseLayer,lyr_my];
