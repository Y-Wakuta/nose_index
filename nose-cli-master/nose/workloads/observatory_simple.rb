# frozen_string_literal: true

NoSE::Workload.new do
  Model 'observatory_simple'

  DefaultMix :basic

  Group 'Group2', basic: 530 do
    Q 'SELECT pdr2_wide_meas.y_ra FROM pdr2_wide_meas WHERE pdr2_wide_meas.object_id = ?' # LIMIT ?'
    # Q 'SELECT pdr2_wide_meas.y_ra FROM pdr2_wide_meas WHERE pdr2_wide_meas.object_id > ? ORDER BY pdr2_wide_meas.object_id LIMIT ? -- 530'
  end

  # Group 'Group1', basic: 1922 do
  #   Q 'SELECT object_id ,ra ,dec ,r_kronflux_mag ,r_kronflux_magsigma ,i_kronflux_mag ,i_kronflux_magsigma ,y_kronflux_mag ,y_kronflux_magsigma ,r_kronflux_mag - i_kronflux_mag AS r_i ,i_kronflux_mag - y_kronflux_mag AS i_y FROM pdr2_wide.forced LEFT JOIN pdr2_wide.forced2 USING (object_id) WHERE boxSearch(coord,  ?, ?, ?, ?) AND i_kronflux_mag < ? AND i_extendedness_value = ? ; -- 1922'
  # end
  # Group 'Group2', basic: 530 do
  #   Q 'SELECT pdr2_wide_meas.y_ra FROM pdr2_wide_meas WHERE pdr2_wide_meas.object_id > ? ORDER BY pdr2_wide_meas.object_id LIMIT ? -- 530'
  # end
  # Group 'Group3', basic: 228 do
  #   Q 'SELECT mosaic.tract, mosaic.patch, mosaic.filter01 FROM pdr2_wide.mosaic JOIN public.skymap USING (skymap_id) WHERE patch_contains(patch_area, wcs, ?, ?) ; -- 228'
  # end
  # Group 'Group4', basic: 195 do
  #   Q 'SELECT  random.object_id, random.ra, random.dec, random.tract, random.patch, random.parent_id,  (random.g_inputcount_value <?OR random.r_inputcount_value <?OR random.i_inputcount_value <?OR random.z_inputcount_value <?OR random.y_inputcount_value <? OR random.g_pixelflags_bright_objectcenter OR random.r_pixelflags_bright_objectcenter OR random.i_pixelflags_bright_objectcenter OR random.z_pixelflags_bright_objectcenter OR random.y_pixelflags_bright_objectcenter  OR random.g_pixelflags_edge OR random.r_pixelflags_edge OR random.i_pixelflags_edge OR random.z_pixelflags_edge OR random.y_pixelflags_edge  OR random.g_pixelflags_saturatedcenter OR random.r_pixelflags_saturatedcenter OR random.i_pixelflags_saturatedcenter OR random.z_pixelflags_saturatedcenter OR random.y_pixelflags_saturatedcenter) as mask  FROM pdr2_wide.random AS random  WHERE conesearch(coord, ?, ?, ?)  AND random.isprimary = True AND random.nchild =? -- 195'
  # end
  # Group 'Group5', basic: 82 do
  #   Q 'SELECT object_id, isprimary, ra, dec FROM pdr2_wide.forced WHERE pdr2_wide.search_w01(object_id) ORDER BY object_id LIMIT ? OFFSET ? -- 82'
  # end
end

# top-20 filtered by len(query) < 1000
# SELECT object_id ,ra ,dec ,r_kronflux_mag ,r_kronflux_magsigma ,i_kronflux_mag ,i_kronflux_magsigma ,y_kronflux_mag ,y_kronflux_magsigma ,r_kronflux_mag - i_kronflux_mag AS r_i ,i_kronflux_mag - y_kronflux_mag AS i_y FROM pdr2_wide.forced LEFT JOIN pdr2_wide.forced2 USING (object_id) WHERE boxSearch(coord,  ?, ?, ?, ?) AND i_kronflux_mag < ? AND i_extendedness_value = ? ; -- 1922
# select * from pdr2_wide.meas where object_id>? order by object_id limit ?; -- 530
# SELECT mosaic.tract, mosaic.patch, mosaic.filter01 FROM pdr2_wide.mosaic JOIN public.skymap USING (skymap_id) WHERE patch_contains(patch_area, wcs, ?, ?) ; -- 228
# SELECT  random.object_id, random.ra, random.dec, random.tract, random.patch, random.parent_id,  (random.g_inputcount_value <?OR random.r_inputcount_value <?OR random.i_inputcount_value <?OR random.z_inputcount_value <?OR random.y_inputcount_value <? OR random.g_pixelflags_bright_objectcenter OR random.r_pixelflags_bright_objectcenter OR random.i_pixelflags_bright_objectcenter OR random.z_pixelflags_bright_objectcenter OR random.y_pixelflags_bright_objectcenter  OR random.g_pixelflags_edge OR random.r_pixelflags_edge OR random.i_pixelflags_edge OR random.z_pixelflags_edge OR random.y_pixelflags_edge  OR random.g_pixelflags_saturatedcenter OR random.r_pixelflags_saturatedcenter OR random.i_pixelflags_saturatedcenter OR random.z_pixelflags_saturatedcenter OR random.y_pixelflags_saturatedcenter) as mask  FROM pdr2_wide.random AS random  WHERE conesearch(coord, ?, ?, ?)  AND random.isprimary = True AND random.nchild =? -- 195
# SELECT object_id, isprimary, ra, dec FROM pdr2_wide.forced WHERE pdr2_wide.search_w01(object_id) ORDER BY object_id LIMIT ? OFFSET ? -- 82