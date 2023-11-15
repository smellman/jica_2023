fetch:
	wget https://gic-plateau.s3.ap-northeast-1.amazonaws.com/2020/ortho/13213_higashimurayama-shi_2020_ortho_3_op.7z
	7z x 13213_higashimurayama-shi_2020_ortho_3_op.7z

buildvrt:
	gdalbuildvrt temp.vrt 13213_higashimurayama-shi_ortho/*.tif

generate_tile:
	gdal2tiles.py --xyz -z 12-18 temp.vrt

serve:
	docker run -p 8080:80 -v $(PWD)/temp:/usr/share/nginx/html:ro nginx
