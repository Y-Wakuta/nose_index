# frozen_string_literal: true

NoSE::Workload.new do
  Model 'observatory_simple'

  DefaultMix :basic

  # forced, forced2
  Group 'Read1', basic: 1922 do
    # orig
    # Q 'SELECT object_id ,ra ,dec ,r_kronflux_mag ,r_kronflux_magsigma ,i_kronflux_mag ,i_kronflux_magsigma ,y_kronflux_mag ,y_kronflux_magsigma ,r_kronflux_mag - i_kronflux_mag AS r_i ,i_kronflux_mag - y_kronflux_mag AS i_y FROM pdr2_wide.forced LEFT JOIN pdr2_wide.forced2 USING (object_id) WHERE boxSearch(coord,  ?, ?, ?, ?) AND i_kronflux_mag < ? AND i_extendedness_value = ? ; -- 1922'

    # simplified
    # Q 'SELECT pdr2_wide.forced.object_id, pdr2_wide.forced.ra, pdr2_wide.forced.dec, pdr2_wide.forced2.r_kronflux_mag, pdr2_wide.forced2.r_kronflux_magsigma, pdr2_wide.forced2.i_kronflux_mag, pdr2_wide.forced2.i_kronflux_magsigma, pdr2_wide.forced2.y_kronflux_mag, pdr2_wide.forced2.y_kronflux_magsigma, pdr2_wide.forced2.r_kronflux_mag, pdr2_wide.forced2.i_kronflux_mag, pdr2_wide.forced2.i_kronflux_mag, pdr2_wide.forced2.y_kronflux_mag FROM pdr2_wide.forced LEFT JOIN pdr2_wide.forced2 USING (object_id) WHERE pdr2_wide.forced.ra > ? AND pdr2_wide.forced.ra < ? AND pdr2_wide.forced.dec > ? AND pdr2_wide.forced.dec < ? AND pdr2_wide.forced2.i_kronflux_mag < ? AND pdr2_wide.forced.i_extendedness_value = ? -- 1922'

    # decomposed,
    Q 'SELECT pdr2_wide.forced.object_id, pdr2_wide.forced.ra, pdr2_wide.forced.dec ' \
      'FROM pdr2_wide.forced ' \
      'WHERE ' \
      '  pdr2_wide.forced.ra > ? AND pdr2_wide.forced.ra < ? AND ' \
      '  pdr2_wide.forced.dec > ? AND pdr2_wide.forced.dec < ? AND ' \
      '  pdr2_wide.forced.i_extendedness_value = ? -- 1922'
    Q 'SELECT ' \
      '  pdr2_wide.forced2.r_kronflux_mag, pdr2_wide.forced2.r_kronflux_magsigma, ' \
      '  pdr2_wide.forced2.i_kronflux_mag, pdr2_wide.forced2.i_kronflux_magsigma, ' \
      '  pdr2_wide.forced2.y_kronflux_mag, pdr2_wide.forced2.y_kronflux_magsigma, ' \
      '  pdr2_wide.forced2.r_kronflux_mag, pdr2_wide.forced2.i_kronflux_mag, ' \
      '  pdr2_wide.forced2.i_kronflux_mag, pdr2_wide.forced2.y_kronflux_mag ' \
      'FROM pdr2_wide.forced2 ' \
      'WHERE pdr2_wide.forced2.dummy = 0 AND pdr2_wide.forced2.i_kronflux_mag < ? -- 1922'
  end

  # meas
  Group 'Read2', basic: 530 do
    # orig
    # Q 'SELECT * FROM pdr2_wide.meas WHERE pdr2_wide.meas.object_id > ? ORDER BY pdr2_wide.meas.object_id LIMIT 100000 -- 530'

    # simplified
    ## NOTE: Lacking ORDER BY
    Q 'SELECT pdr2_wide.meas.* ' \
      'FROM pdr2_wide.meas ' \
      'WHERE pdr2_wide.meas.dummy = 0 AND pdr2_wide.meas.object_id > ? ' \
      'LIMIT 100000 -- 530'
  end

  # mosaic, keymap
  Group 'Read3', basic: 228 do
    # orig
    # Q 'SELECT mosaic.tract, mosaic.patch, mosaic.filter01 FROM pdr2_wide.mosaic JOIN public.skymap USING (skymap_id) WHERE patch_contains(patch_area, wcs, ?, ?) -- 228'

    # simplified
    Q 'SELECT pdr2_wide.mosaic.tract, pdr2_wide.mosaic.patch, pdr2_wide.mosaic.filter01 ' \
      'FROM pdr2_wide.mosaic ' \
      'WHERE pdr2_wide.mosaic.dummy = 0'
    Q 'SELECT public.skymap.skymap_id FROM public.skymap ' \
      'WHERE ' \
      '  public.skymap.dummy = 0 AND ' \
      '  public.skymap.patch_area_1 < ? AND ' \
      '  public.skymap.patch_area_2 < ? AND ' \
      '  public.skymap.patch_area_3 < ? AND ' \
      '  public.skymap.patch_area_4 < ? AND ' \
      '  public.skymap.patch_area_5 < ? AND ' \
      '  public.skymap.patch_area_6 < ? AND ' \
      '  public.skymap.naxis1 < 17999 AND ' \
      '  public.skymap.naxis2 < 17999 AND ' \
      '  public.skymap.crpix1 < 17999 AND ' \
      '  public.skymap.crpix2 < 17999 AND ' \
      '  public.skymap.crval1 < 17999 AND ' \
      '  public.skymap.crval2 < 17999 -- 228'
  end

  # random
  Group 'Read4', basic: 195 do
    # orig
    # Q 'SELECT  random.object_id, random.ra, random.dec, random.tract, random.patch, random.parent_id,  (random.g_inputcount_value <?OR random.r_inputcount_value <?OR random.i_inputcount_value <?OR random.z_inputcount_value <?OR random.y_inputcount_value <? OR random.g_pixelflags_bright_objectcenter OR random.r_pixelflags_bright_objectcenter OR random.i_pixelflags_bright_objectcenter OR random.z_pixelflags_bright_objectcenter OR random.y_pixelflags_bright_objectcenter  OR random.g_pixelflags_edge OR random.r_pixelflags_edge OR random.i_pixelflags_edge OR random.z_pixelflags_edge OR random.y_pixelflags_edge  OR random.g_pixelflags_saturatedcenter OR random.r_pixelflags_saturatedcenter OR random.i_pixelflags_saturatedcenter OR random.z_pixelflags_saturatedcenter OR random.y_pixelflags_saturatedcenter) as mask  FROM pdr2_wide.random AS random  WHERE conesearch(coord, ?, ?, ?)  AND random.isprimary = True AND random.nchild =? -- 195'

    # simplified
    Q 'SELECT ' \
      '  pdr2_wide.random.object_id, pdr2_wide.random.ra, ' \
      '  pdr2_wide.random.dec, pdr2_wide.random.tract, ' \
      '  pdr2_wide.random.patch, pdr2_wide.random.parent_id, ' \
      '  pdr2_wide.random.g_inputcount_value, ' \
      '  pdr2_wide.random.r_inputcount_value, ' \
      '  pdr2_wide.random.i_inputcount_value, ' \
      '  pdr2_wide.random.z_inputcount_value, ' \
      '  pdr2_wide.random.y_inputcount_value, ' \
      '  pdr2_wide.random.g_pixelflags_bright_objectcenter, ' \
      '  pdr2_wide.random.r_pixelflags_bright_objectcenter, ' \
      '  pdr2_wide.random.i_pixelflags_bright_objectcenter, ' \
      '  pdr2_wide.random.z_pixelflags_bright_objectcenter, ' \
      '  pdr2_wide.random.y_pixelflags_bright_objectcenter, ' \
      '  pdr2_wide.random.g_pixelflags_edge, ' \
      '  pdr2_wide.random.r_pixelflags_edge, ' \
      '  pdr2_wide.random.i_pixelflags_edge, ' \
      '  pdr2_wide.random.z_pixelflags_edge, ' \
      '  pdr2_wide.random.y_pixelflags_edge, ' \
      '  pdr2_wide.random.g_pixelflags_saturatedcenter, ' \
      '  pdr2_wide.random.r_pixelflags_saturatedcenter, ' \
      '  pdr2_wide.random.i_pixelflags_saturatedcenter, ' \
      '  pdr2_wide.random.z_pixelflags_saturatedcenter, ' \
      '  pdr2_wide.random.y_pixelflags_saturatedcenter ' \
      'FROM pdr2_wide.random ' \
      'WHERE ' \
      '  pdr2_wide.random.ra > ? AND pdr2_wide.random.ra < ? AND ' \
      '  pdr2_wide.random.dec > ? AND pdr2_wide.random.dec < ? AND ' \
      '  pdr2_wide.random.isprimary = 1 AND pdr2_wide.random.nchild = ? -- 195'
  end

  # forced
  Group 'Read5', basic: 82 do
    # orig
    # Q 'SELECT object_id, isprimary, ra, dec FROM pdr2_wide.forced WHERE pdr2_wide.search_w01(object_id) ORDER BY object_id LIMIT ? OFFSET ? -- 82'

    # simplified
    # NOTE: Lacking ORDER BY and OFFSET
    Q 'SELECT pdr2_wide.forced.object_id, pdr2_wide.forced.isprimary, pdr2_wide.forced.ra, pdr2_wide.forced.dec ' \
      'FROM pdr2_wide.forced ' \
      'WHERE pdr2_wide.forced.dummy = 0 ' \
      'LIMIT 30 -- 82'
  end


  # dummy insertion (to all tables)
  Group 'Insert1', basic: 1000000 do
    Q 'INSERT INTO pdr2_wide.forced ' \
      'SET object_id = ?'
    Q 'INSERT INTO pdr2_wide.forced2 ' \
      'SET object_id = ?'
    Q 'INSERT INTO pdr2_wide.meas ' \
      'SET object_id = ?'
    Q 'INSERT INTO pdr2_wide.random ' \
      'SET object_id = ?'
  end
end

# top-20 filtered by len(query) < 1000
# SELECT object_id ,ra ,dec ,r_kronflux_mag ,r_kronflux_magsigma ,i_kronflux_mag ,i_kronflux_magsigma ,y_kronflux_mag ,y_kronflux_magsigma ,r_kronflux_mag - i_kronflux_mag AS r_i ,i_kronflux_mag - y_kronflux_mag AS i_y FROM pdr2_wide.forced LEFT JOIN pdr2_wide.forced2 USING (object_id) WHERE boxSearch(coord,  ?, ?, ?, ?) AND i_kronflux_mag < ? AND i_extendedness_value = ? ; -- 1922
# select * from pdr2_wide.meas where object_id>? order by object_id limit ?; -- 530
# SELECT mosaic.tract, mosaic.patch, mosaic.filter01 FROM pdr2_wide.mosaic JOIN public.skymap USING (skymap_id) WHERE patch_contains(patch_area, wcs, ?, ?) ; -- 228
# SELECT  random.object_id, random.ra, random.dec, random.tract, random.patch, random.parent_id,  (random.g_inputcount_value <?OR random.r_inputcount_value <?OR random.i_inputcount_value <?OR random.z_inputcount_value <?OR random.y_inputcount_value <? OR random.g_pixelflags_bright_objectcenter OR random.r_pixelflags_bright_objectcenter OR random.i_pixelflags_bright_objectcenter OR random.z_pixelflags_bright_objectcenter OR random.y_pixelflags_bright_objectcenter  OR random.g_pixelflags_edge OR random.r_pixelflags_edge OR random.i_pixelflags_edge OR random.z_pixelflags_edge OR random.y_pixelflags_edge  OR random.g_pixelflags_saturatedcenter OR random.r_pixelflags_saturatedcenter OR random.i_pixelflags_saturatedcenter OR random.z_pixelflags_saturatedcenter OR random.y_pixelflags_saturatedcenter) as mask  FROM pdr2_wide.random AS random  WHERE conesearch(coord, ?, ?, ?)  AND random.isprimary = True AND random.nchild =? -- 195
# SELECT object_id, isprimary, ra, dec FROM pdr2_wide.forced WHERE pdr2_wide.search_w01(object_id) ORDER BY object_id LIMIT ? OFFSET ? -- 82