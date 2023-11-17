fetch:
	git clone https://github.com/globalmaps/gmlk20.git

convert:
	cd gmlk20; \
	ogr2ogr airp_lka.fgb -s_srs EPSG:4326 -t_srs EPSG:4326 airp_lka.shp; \
	ogr2ogr builtupp_lka.fgb -s_srs EPSG:4326 -t_srs EPSG:4326 builtupp_lka.shp; \
	ogr2ogr coastl_lka.fgb -s_srs EPSG:4326 -t_srs EPSG:4326 coastl_lka.shp; \
	ogr2ogr inwatera_lka.fgb -s_srs EPSG:4326 -t_srs EPSG:4326 inwatera_lka.shp; \
	ogr2ogr polbnda_lka.fgb -s_srs EPSG:4326 -t_srs EPSG:4326 polbnda_lka.shp; \
	ogr2ogr polbndl_lka.fgb -s_srs EPSG:4326 -t_srs EPSG:4326 polbndl_lka.shp; \
	ogr2ogr raill_lka.fgb -s_srs EPSG:4326 -t_srs EPSG:4326 raill_lka.shp; \
	ogr2ogr riverl_lka.fgb -s_srs EPSG:4326 -t_srs EPSG:4326 riverl_lka.shp; \
	ogr2ogr roadl_lka.fgb -s_srs EPSG:4326 -t_srs EPSG:4326 roadl_lka.shp

generate:
	tippecanoe -o lka.pmtiles \
	  -L airp:gmlk20/airp_lka.fgb \
	  -L builtupp:gmlk20/builtupp_lka.fgb \
	  -L coastl:gmlk20/coastl_lka.fgb \
	  -L inwatera:gmlk20/inwatera_lka.fgb \
	  -L polbnda:gmlk20/polbnda_lka.fgb \
	  -L polbndl:gmlk20/polbndl_lka.fgb \
	  -L raill:gmlk20/raill_lka.fgb \
	  -L riverl:gmlk20/riverl_lka.fgb \
	  -L roadl:gmlk20/roadl_lka.fgb
	tippecanoe -o lka.mbtiles \
	  -L airp:gmlk20/airp_lka.fgb \
	  -L builtupp:gmlk20/builtupp_lka.fgb \
	  -L coastl:gmlk20/coastl_lka.fgb \
	  -L inwatera:gmlk20/inwatera_lka.fgb \
	  -L polbnda:gmlk20/polbnda_lka.fgb \
	  -L polbndl:gmlk20/polbndl_lka.fgb \
	  -L raill:gmlk20/raill_lka.fgb \
	  -L riverl:gmlk20/riverl_lka.fgb \
	  -L roadl:gmlk20/roadl_lka.fgb

tileserver-gl:
	docker run --rm -it -v $(PWD):/data -p 8081:80 \
	  maptiler/tileserver-gl-light \
	  -p 80 --file /data/lka.mbtiles

serve:
	docker run -p 8081:80 -v $(PWD):/usr/share/nginx/html:ro nginx