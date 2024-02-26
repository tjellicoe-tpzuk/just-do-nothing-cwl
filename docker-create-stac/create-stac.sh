touch catalog.json

touch item.json

touch item.tif

echo '{"stac_version": "1.0.0", "stac_extensions": ["https://stac-extensions.github.io/eo/v1.0.0/schema.json", "https://stac-extensions.github.io/projection/v1.0.0/schema.json", "https://stac-extensions.github.io/view/v1.0.0/schema.json"], "type": "Feature", "id": "S2A_38VNM_20221124_0_L2A", "geometry": {"type": "Polygon", "coordinates": [[[46.97382270761896, 60.09185593758156], [45.307779767560135, 60.43563521936919], [45.307784090239124, 60.43609242951434], [46.99377449486903, 60.42153083803959], [46.97382270761896, 60.09185593758156]]]}, "properties": {"datetime": "2022-11-24T08:33:06Z", "platform": "sentinel-2a", "constellation": "sentinel-2", "instruments": ["msi"], "gsd": 10, "view:off_nadir": 0, "proj:epsg": 32638, "sentinel:utm_zone": 38, "sentinel:latitude_band": "V", "sentinel:grid_square": "NM", "sentinel:sequence": "0", "sentinel:product_id": "S2A_MSIL2A_20221124T083251_N0400_R021_T38VNM_20221124T092055", "sentinel:data_coverage": 13.77, "eo:cloud_cover": 99.85, "sentinel:valid_cloud_cover": True, "sentinel:processing_baseline": "04.00", "sentinel:boa_offset_applied": True, "created": "2022-11-24T11:02:51.154Z", "updated": "2022-11-24T11:02:51.154Z"}, "bbox": [45.307779767560135, 60.09185593758156, 46.99377449486903, 60.43609242951434], "assets": {"ndvi": {"type": "image/tiff; application=geotiff; profile=cloud-optimized", "roles": ["data"], "href": "item.tif", "s-expression": "(/ (- B05 B03) (+ B05 B03))", "file:size": 80925782}}, "links": [{"type": "application/json", "rel": "parent", "href": "../catalog.json"}, {"type": "application/geo+json", "rel": "self", "href": "item.json"}, {"type": "application/json", "rel": "root", "href": "catalog.json"}]}' > item.json
echo '{"id": "catalog", "stac_version": "1.0.0", "links": [{"type": "application/geo+json", "rel": "item", "href": "item.json"}, {"type": "application/json", "rel": "self", "href": "catalog.json"}], "type": "Catalog", "description": "Root catalog"}' > catalog.json