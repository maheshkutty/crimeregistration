var categories_my = {"BURGLARY": [ new ol.style.Style({
                            image: new ol.style.Circle({radius: 3, stroke: new ol.style.Stroke({color: 'rgba(0,0,0,255)', lineDash: null, width: 1}), fill: new ol.style.Fill({color: "rgba(235,83,220,1.0)"})})
                        })
                        ]};
                    var styleCache_my={}
                    var style_my = function(feature, resolution){
                        var value = feature.get("OFNS_DESC");
                        var style = categories_my[value];
                        var labelText = "";
                        var key = value + "_" + labelText

                        if (!styleCache_my[key]){
                            var text = new ol.style.Text({
                                  font: '8.25px Calibri,sans-serif',
                                  text: labelText,
                                  fill: new ol.style.Fill({
                                    color: "rgba(0, 0, 0, 255)"
                                  }),
                                });
                            styleCache_my[key] = new ol.style.Style({"text": text});
                        }
                        var allStyles = [styleCache_my[key]];
                        allStyles.push.apply(allStyles, style);
                        return allStyles;
                    };