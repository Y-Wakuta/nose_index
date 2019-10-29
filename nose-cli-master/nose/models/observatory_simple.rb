# frozen_string_literal: true
# rubocop:disable all

NoSE::Model.new do
    (Entity 'pdr2_wide_meas' do
    ID  'object_id'
    Float 'g_ra'
    Float 'g_dec'
    Float 'g_coord_lon'
    Float 'g_coord_lat'
    Float 'r_ra'
    Float 'r_dec'
    Float 'r_coord_lon'
    Float 'r_coord_lat'
    Float 'i_ra'
    Float 'i_dec'
    Float 'i_coord_lon'
    Float 'i_coord_lat'
    Float 'z_ra'
    Float 'z_dec'
    Float 'z_coord_lon'
    Float 'z_coord_lat'
    Float 'y_ra'
    Float 'y_dec'
    Float 'y_coord_lon'
    Float 'y_coord_lat'
    Integer 'skymap_id'
    Integer 'tract'
    Integer 'patch'
    String 'patch_s'
    Integer 'parent_id'
    Integer 'nchild'
    Integer 'merge_footprint_i2', count: 2
    Integer 'merge_footprint_i', count: 2
    Integer 'merge_footprint_r2', count: 2
    Integer 'merge_footprint_r', count: 2
    Integer 'merge_footprint_z', count: 2
    Integer 'merge_footprint_y', count: 2
    Integer 'merge_footprint_g', count: 2
    Integer 'merge_footprint_n921', count: 2
    Integer 'merge_footprint_n816', count: 2
    Integer 'merge_footprint_n1010', count: 2
    Integer 'merge_footprint_n387', count: 2
    Integer 'merge_footprint_n515', count: 2
    Integer 'merge_footprint_sky', count: 2
    Integer 'merge_peak_i2', count: 2
    Integer 'merge_peak_i', count: 2
    Integer 'merge_peak_r2', count: 2
    Integer 'merge_peak_r', count: 2
    Integer 'merge_peak_z', count: 2
    Integer 'merge_peak_y', count: 2
    Integer 'merge_peak_g', count: 2
    Integer 'merge_peak_n921', count: 2
    Integer 'merge_peak_n816', count: 2
    Integer 'merge_peak_n1010', count: 2
    Integer 'merge_peak_n387', count: 2
    Integer 'merge_peak_n515', count: 2
    Integer 'merge_peak_sky', count: 2
    Integer 'g_pixelflags', count: 2
    Integer 'g_pixelflags_offimage', count: 2
    Integer 'g_pixelflags_edge', count: 2
    Integer 'g_pixelflags_interpolated', count: 2
    Integer 'g_pixelflags_saturated', count: 2
    Integer 'g_pixelflags_cr', count: 2
    Integer 'g_pixelflags_bad', count: 2
    Integer 'g_pixelflags_suspect', count: 2
    Integer 'g_pixelflags_interpolatedcenter', count: 2
    Integer 'g_pixelflags_saturatedcenter', count: 2
    Integer 'g_pixelflags_crcenter', count: 2
    Integer 'g_pixelflags_suspectcenter', count: 2
    Integer 'g_pixelflags_clippedcenter', count: 2
    Integer 'g_pixelflags_sensor_edgecenter', count: 2
    Integer 'g_pixelflags_inexact_psfcenter', count: 2
    Integer 'g_pixelflags_bright_objectcenter', count: 2
    Integer 'g_pixelflags_clipped', count: 2
    Integer 'g_pixelflags_sensor_edge', count: 2
    Integer 'g_pixelflags_inexact_psf', count: 2
    Integer 'g_pixelflags_bright_object', count: 2
    Integer 'g_calib_psfcandidate', count: 2
    Integer 'g_calib_psfused', count: 2
    Integer 'g_detect_ispatchinner', count: 2
    Integer 'g_detect_istractinner', count: 2
    Integer 'g_detect_isprimary', count: 2
    Float 'g_deblend_psfcenter_ra'
    Float 'g_deblend_psfcenter_dec'
    Float 'g_deblend_psfflux'
    Float 'g_deblend_psfmag'
    Integer 'g_deblend_deblendedaspsf', count: 2
    Integer 'g_deblend_toomanypeaks', count: 2
    Integer 'g_deblend_parenttoobig', count: 2
    Integer 'g_deblend_masked', count: 2
    Integer 'g_deblend_skipped', count: 2
    Integer 'g_deblend_rampedtemplate', count: 2
    Integer 'g_deblend_patchedtemplate', count: 2
    Integer 'g_deblend_hasstrayflux', count: 2
    Float 'g_blendedness_old'
    Float 'g_blendedness_raw_flux'
    Float 'g_blendedness_raw_flux_child'
    Float 'g_blendedness_raw_mag_child'
    Float 'g_blendedness_raw_flux_parent'
    Float 'g_blendedness_raw_mag_parent'
    Float 'g_blendedness_abs_flux'
    Float 'g_blendedness_abs_flux_child'
    Float 'g_blendedness_abs_mag_child'
    Float 'g_blendedness_abs_flux_parent'
    Float 'g_blendedness_abs_mag_parent'
    Float 'g_blendedness_raw_child_shape11'
    Float 'g_blendedness_raw_child_shape22'
    Float 'g_blendedness_raw_child_shape12'
    Float 'g_blendedness_raw_parent_shape11'
    Float 'g_blendedness_raw_parent_shape22'
    Float 'g_blendedness_raw_parent_shape12'
    Float 'g_blendedness_abs_child_shape11'
    Float 'g_blendedness_abs_child_shape22'
    Float 'g_blendedness_abs_child_shape12'
    Float 'g_blendedness_abs_parent_shape11'
    Float 'g_blendedness_abs_parent_shape22'
    Float 'g_blendedness_abs_parent_shape12'
    Integer 'g_blendedness_flag', count: 2
    Integer 'g_blendedness_flag_nocentroid', count: 2
    Integer 'g_blendedness_flag_noshape', count: 2
    Float 'g_extendedness_value'
    Integer 'g_extendedness_flag', count: 2
    Integer 'g_footprintarea_value'
    Integer 'g_inputcount_value'
    Integer 'g_inputcount_flag', count: 2
    Integer 'g_inputcount_flag_noinputs', count: 2
    Integer 'g_inputcount_flag_badcentroid', count: 2
    Float 'g_variance_value'
    Integer 'g_variance_flag', count: 2
    Integer 'g_variance_flag_emptyfootprint', count: 2
    Integer 'g_variance_flag_badcentroid', count: 2
    Float 'g_localbackground_flux'
    Float 'g_localbackground_mag'
    Float 'g_localbackground_fluxsigma'
    Float 'g_localbackground_magsigma'
    Integer 'g_localbackground_flag', count: 2
    Integer 'g_localbackground_flag_nogoodpixels', count: 2
    Integer 'g_localbackground_flag_nopsf', count: 2
    Integer 'g_localbackground_flag_badcentroid', count: 2
    Float 'g_filterfraction_unweighted'
    Float 'g_filterfraction_weighted'
    Float 'g_cmodel_initial_flux'
    Float 'g_cmodel_initial_mag'
    Float 'g_cmodel_initial_fluxsigma'
    Float 'g_cmodel_initial_magsigma'
    Float 'g_cmodel_initial_flux_inner'
    Float 'g_cmodel_initial_mag_inner'
    Float 'g_cmodel_initial_ellipse_11'
    Float 'g_cmodel_initial_ellipse_22'
    Float 'g_cmodel_initial_ellipse_12'
    Float 'g_cmodel_initial_objective'
    Float 'g_cmodel_initial_nonlinear_0'
    Float 'g_cmodel_initial_nonlinear_1'
    Float 'g_cmodel_initial_nonlinear_2'
    Float 'g_cmodel_initial_fixed_0'
    Float 'g_cmodel_initial_fixed_1'
    Integer 'g_cmodel_initial_niter'
    Float 'g_cmodel_initial_time'
    Float 'g_cmodel_exp_flux'
    Float 'g_cmodel_exp_mag'
    Float 'g_cmodel_exp_fluxsigma'
    Float 'g_cmodel_exp_magsigma'
    Float 'g_cmodel_exp_flux_inner'
    Float 'g_cmodel_exp_mag_inner'
    Float 'g_cmodel_exp_ellipse_11'
    Float 'g_cmodel_exp_ellipse_22'
    Float 'g_cmodel_exp_ellipse_12'
    Float 'g_cmodel_exp_objective'
    Float 'g_cmodel_exp_nonlinear_0'
    Float 'g_cmodel_exp_nonlinear_1'
    Float 'g_cmodel_exp_nonlinear_2'
    Float 'g_cmodel_exp_fixed_0'
    Float 'g_cmodel_exp_fixed_1'
    Integer 'g_cmodel_exp_niter'
    Float 'g_cmodel_exp_time'
    Float 'g_cmodel_dev_flux'
    Float 'g_cmodel_dev_mag'
    Float 'g_cmodel_dev_fluxsigma'
    Float 'g_cmodel_dev_magsigma'
    Float 'g_cmodel_dev_flux_inner'
    Float 'g_cmodel_dev_mag_inner'
    Float 'g_cmodel_dev_ellipse_11'
    Float 'g_cmodel_dev_ellipse_22'
    Float 'g_cmodel_dev_ellipse_12'
    Float 'g_cmodel_dev_objective'
    Float 'g_cmodel_dev_nonlinear_0'
    Float 'g_cmodel_dev_nonlinear_1'
    Float 'g_cmodel_dev_nonlinear_2'
    Float 'g_cmodel_dev_fixed_0'
    Float 'g_cmodel_dev_fixed_1'
    Integer 'g_cmodel_dev_niter'
    Float 'g_cmodel_dev_time'
    Float 'g_cmodel_flux'
    Float 'g_cmodel_mag'
    Float 'g_cmodel_fluxsigma'
    Float 'g_cmodel_magsigma'
    Float 'g_cmodel_flux_inner'
    Float 'g_cmodel_mag_inner'
    Float 'g_cmodel_fracdev'
    Float 'g_cmodel_objective'
    Float 'g_cmodel_ellipse_11'
    Float 'g_cmodel_ellipse_22'
    Float 'g_cmodel_ellipse_12'
    Float 'g_cmodel_region_initial_ellipse_11'
    Float 'g_cmodel_region_initial_ellipse_22'
    Float 'g_cmodel_region_initial_ellipse_12'
    Float 'g_cmodel_region_final_ellipse_11'
    Float 'g_cmodel_region_final_ellipse_22'
    Float 'g_cmodel_region_final_ellipse_12'
    Float 'g_cmodel_initial_apcorr'
    Float 'g_cmodel_initial_apcorrsigma'
    Float 'g_cmodel_dev_apcorr'
    Float 'g_cmodel_dev_apcorrsigma'
    Float 'g_cmodel_exp_apcorr'
    Float 'g_cmodel_exp_apcorrsigma'
    Float 'g_cmodel_apcorr'
    Float 'g_cmodel_apcorrsigma'
    Integer 'g_cmodel_initial_flag', count: 2
    Integer 'g_cmodel_initial_flag_trsmall', count: 2
    Integer 'g_cmodel_initial_flag_maxiter', count: 2
    Integer 'g_cmodel_initial_flag_numericerror', count: 2
    Integer 'g_cmodel_exp_flag', count: 2
    Integer 'g_cmodel_exp_flag_trsmall', count: 2
    Integer 'g_cmodel_exp_flag_maxiter', count: 2
    Integer 'g_cmodel_exp_flag_numericerror', count: 2
    Integer 'g_cmodel_dev_flag', count: 2
    Integer 'g_cmodel_dev_flag_trsmall', count: 2
    Integer 'g_cmodel_dev_flag_maxiter', count: 2
    Integer 'g_cmodel_dev_flag_numericerror', count: 2
    Integer 'g_cmodel_flag', count: 2
    Integer 'g_cmodel_flag_region_maxarea', count: 2
    Integer 'g_cmodel_flag_region_maxbadpixelfraction', count: 2
    Integer 'g_cmodel_flags_region_usedfootprintarea', count: 2
    Integer 'g_cmodel_flags_region_usedpsfarea', count: 2
    Integer 'g_cmodel_flags_region_usedinitialellipsemin', count: 2
    Integer 'g_cmodel_flags_region_usedinitialellipsemax', count: 2
    Integer 'g_cmodel_flag_noshape', count: 2
    Integer 'g_cmodel_flags_smallshape', count: 2
    Integer 'g_cmodel_flag_noshapeletpsf', count: 2
    Integer 'g_cmodel_flag_badcentroid', count: 2
    Integer 'g_cmodel_initial_flag_apcorr', count: 2
    Integer 'g_cmodel_dev_flag_apcorr', count: 2
    Integer 'g_cmodel_exp_flag_apcorr', count: 2
    Integer 'g_cmodel_flag_apcorr', count: 2
    Integer 'r_pixelflags', count: 2
    Integer 'r_pixelflags_offimage', count: 2
    Integer 'r_pixelflags_edge', count: 2
    Integer 'r_pixelflags_interpolated', count: 2
    Integer 'r_pixelflags_saturated', count: 2
    Integer 'r_pixelflags_cr', count: 2
    Integer 'r_pixelflags_bad', count: 2
    Integer 'r_pixelflags_suspect', count: 2
    Integer 'r_pixelflags_interpolatedcenter', count: 2
    Integer 'r_pixelflags_saturatedcenter', count: 2
    Integer 'r_pixelflags_crcenter', count: 2
    Integer 'r_pixelflags_suspectcenter', count: 2
    Integer 'r_pixelflags_clippedcenter', count: 2
    Integer 'r_pixelflags_sensor_edgecenter', count: 2
    Integer 'r_pixelflags_inexact_psfcenter', count: 2
    Integer 'r_pixelflags_bright_objectcenter', count: 2
    Integer 'r_pixelflags_clipped', count: 2
    Integer 'r_pixelflags_sensor_edge', count: 2
    Integer 'r_pixelflags_inexact_psf', count: 2
    Integer 'r_pixelflags_bright_object', count: 2
    Integer 'r_calib_psfcandidate', count: 2
    Integer 'r_calib_psfused', count: 2
    Integer 'r_detect_ispatchinner', count: 2
    Integer 'r_detect_istractinner', count: 2
    Integer 'r_detect_isprimary', count: 2
    Float 'r_deblend_psfcenter_ra'
    Float 'r_deblend_psfcenter_dec'
    Float 'r_deblend_psfflux'
    Float 'r_deblend_psfmag'
    Integer 'r_deblend_deblendedaspsf', count: 2
    Integer 'r_deblend_toomanypeaks', count: 2
    Integer 'r_deblend_parenttoobig', count: 2
    Integer 'r_deblend_masked', count: 2
    Integer 'r_deblend_skipped', count: 2
    Integer 'r_deblend_rampedtemplate', count: 2
    Integer 'r_deblend_patchedtemplate', count: 2
    Integer 'r_deblend_hasstrayflux', count: 2
    Float 'r_blendedness_old'
    Float 'r_blendedness_raw_flux'
    Float 'r_blendedness_raw_flux_child'
    Float 'r_blendedness_raw_mag_child'
    Float 'r_blendedness_raw_flux_parent'
    Float 'r_blendedness_raw_mag_parent'
    Float 'r_blendedness_abs_flux'
    Float 'r_blendedness_abs_flux_child'
    Float 'r_blendedness_abs_mag_child'
    Float 'r_blendedness_abs_flux_parent'
    Float 'r_blendedness_abs_mag_parent'
    Float 'r_blendedness_raw_child_shape11'
    Float 'r_blendedness_raw_child_shape22'
    Float 'r_blendedness_raw_child_shape12'
    Float 'r_blendedness_raw_parent_shape11'
    Float 'r_blendedness_raw_parent_shape22'
    Float 'r_blendedness_raw_parent_shape12'
    Float 'r_blendedness_abs_child_shape11'
    Float 'r_blendedness_abs_child_shape22'
    Float 'r_blendedness_abs_child_shape12'
    Float 'r_blendedness_abs_parent_shape11'
    Float 'r_blendedness_abs_parent_shape22'
    Float 'r_blendedness_abs_parent_shape12'
    Integer 'r_blendedness_flag', count: 2
    Integer 'r_blendedness_flag_nocentroid', count: 2
    Integer 'r_blendedness_flag_noshape', count: 2
    Float 'r_extendedness_value'
    Integer 'r_extendedness_flag', count: 2
    Integer 'r_footprintarea_value'
    Integer 'r_inputcount_value'
    Integer 'r_inputcount_flag', count: 2
    Integer 'r_inputcount_flag_noinputs', count: 2
    Integer 'r_inputcount_flag_badcentroid', count: 2
    Float 'r_variance_value'
    Integer 'r_variance_flag', count: 2
    Integer 'r_variance_flag_emptyfootprint', count: 2
    Integer 'r_variance_flag_badcentroid', count: 2
    Float 'r_localbackground_flux'
    Float 'r_localbackground_mag'
    Float 'r_localbackground_fluxsigma'
    Float 'r_localbackground_magsigma'
    Integer 'r_localbackground_flag', count: 2
    Integer 'r_localbackground_flag_nogoodpixels', count: 2
    Integer 'r_localbackground_flag_nopsf', count: 2
    Integer 'r_localbackground_flag_badcentroid', count: 2
    Float 'r_filterfraction_unweighted'
    Float 'r_filterfraction_weighted'
    Float 'r_cmodel_initial_flux'
    Float 'r_cmodel_initial_mag'
    Float 'r_cmodel_initial_fluxsigma'
    Float 'r_cmodel_initial_magsigma'
    Float 'r_cmodel_initial_flux_inner'
    Float 'r_cmodel_initial_mag_inner'
    Float 'r_cmodel_initial_ellipse_11'
    Float 'r_cmodel_initial_ellipse_22'
    Float 'r_cmodel_initial_ellipse_12'
    Float 'r_cmodel_initial_objective'
    Float 'r_cmodel_initial_nonlinear_0'
    Float 'r_cmodel_initial_nonlinear_1'
    Float 'r_cmodel_initial_nonlinear_2'
    Float 'r_cmodel_initial_fixed_0'
    Float 'r_cmodel_initial_fixed_1'
    Integer 'r_cmodel_initial_niter'
    Float 'r_cmodel_initial_time'
    Float 'r_cmodel_exp_flux'
    Float 'r_cmodel_exp_mag'
    Float 'r_cmodel_exp_fluxsigma'
    Float 'r_cmodel_exp_magsigma'
    Float 'r_cmodel_exp_flux_inner'
    Float 'r_cmodel_exp_mag_inner'
    Float 'r_cmodel_exp_ellipse_11'
    Float 'r_cmodel_exp_ellipse_22'
    Float 'r_cmodel_exp_ellipse_12'
    Float 'r_cmodel_exp_objective'
    Float 'r_cmodel_exp_nonlinear_0'
    Float 'r_cmodel_exp_nonlinear_1'
    Float 'r_cmodel_exp_nonlinear_2'
    Float 'r_cmodel_exp_fixed_0'
    Float 'r_cmodel_exp_fixed_1'
    Integer 'r_cmodel_exp_niter'
    Float 'r_cmodel_exp_time'
    Float 'r_cmodel_dev_flux'
    Float 'r_cmodel_dev_mag'
    Float 'r_cmodel_dev_fluxsigma'
    Float 'r_cmodel_dev_magsigma'
    Float 'r_cmodel_dev_flux_inner'
    Float 'r_cmodel_dev_mag_inner'
    Float 'r_cmodel_dev_ellipse_11'
    Float 'r_cmodel_dev_ellipse_22'
    Float 'r_cmodel_dev_ellipse_12'
    Float 'r_cmodel_dev_objective'
    Float 'r_cmodel_dev_nonlinear_0'
    Float 'r_cmodel_dev_nonlinear_1'
    Float 'r_cmodel_dev_nonlinear_2'
    Float 'r_cmodel_dev_fixed_0'
    Float 'r_cmodel_dev_fixed_1'
    Integer 'r_cmodel_dev_niter'
    Float 'r_cmodel_dev_time'
    Float 'r_cmodel_flux'
    Float 'r_cmodel_mag'
    Float 'r_cmodel_fluxsigma'
    Float 'r_cmodel_magsigma'
    Float 'r_cmodel_flux_inner'
    Float 'r_cmodel_mag_inner'
    Float 'r_cmodel_fracdev'
    Float 'r_cmodel_objective'
    Float 'r_cmodel_ellipse_11'
    Float 'r_cmodel_ellipse_22'
    Float 'r_cmodel_ellipse_12'
    Float 'r_cmodel_region_initial_ellipse_11'
    Float 'r_cmodel_region_initial_ellipse_22'
    Float 'r_cmodel_region_initial_ellipse_12'
    Float 'r_cmodel_region_final_ellipse_11'
    Float 'r_cmodel_region_final_ellipse_22'
    Float 'r_cmodel_region_final_ellipse_12'
    Float 'r_cmodel_initial_apcorr'
    Float 'r_cmodel_initial_apcorrsigma'
    Float 'r_cmodel_dev_apcorr'
    Float 'r_cmodel_dev_apcorrsigma'
    Float 'r_cmodel_exp_apcorr'
    Float 'r_cmodel_exp_apcorrsigma'
    Float 'r_cmodel_apcorr'
    Float 'r_cmodel_apcorrsigma'
    Integer 'r_cmodel_initial_flag', count: 2
    Integer 'r_cmodel_initial_flag_trsmall', count: 2
    Integer 'r_cmodel_initial_flag_maxiter', count: 2
    Integer 'r_cmodel_initial_flag_numericerror', count: 2
    Integer 'r_cmodel_exp_flag', count: 2
    Integer 'r_cmodel_exp_flag_trsmall', count: 2
    Integer 'r_cmodel_exp_flag_maxiter', count: 2
    Integer 'r_cmodel_exp_flag_numericerror', count: 2
    Integer 'r_cmodel_dev_flag', count: 2
    Integer 'r_cmodel_dev_flag_trsmall', count: 2
    Integer 'r_cmodel_dev_flag_maxiter', count: 2
    Integer 'r_cmodel_dev_flag_numericerror', count: 2
    Integer 'r_cmodel_flag', count: 2
    Integer 'r_cmodel_flag_region_maxarea', count: 2
    Integer 'r_cmodel_flag_region_maxbadpixelfraction', count: 2
    Integer 'r_cmodel_flags_region_usedfootprintarea', count: 2
    Integer 'r_cmodel_flags_region_usedpsfarea', count: 2
    Integer 'r_cmodel_flags_region_usedinitialellipsemin', count: 2
    Integer 'r_cmodel_flags_region_usedinitialellipsemax', count: 2
    Integer 'r_cmodel_flag_noshape', count: 2
    Integer 'r_cmodel_flags_smallshape', count: 2
    Integer 'r_cmodel_flag_noshapeletpsf', count: 2
    Integer 'r_cmodel_flag_badcentroid', count: 2
    Integer 'r_cmodel_initial_flag_apcorr', count: 2
    Integer 'r_cmodel_dev_flag_apcorr', count: 2
    Integer 'r_cmodel_exp_flag_apcorr', count: 2
    Integer 'r_cmodel_flag_apcorr', count: 2
    Integer 'i_pixelflags', count: 2
    Integer 'i_pixelflags_offimage', count: 2
    Integer 'i_pixelflags_edge', count: 2
    Integer 'i_pixelflags_interpolated', count: 2
    Integer 'i_pixelflags_saturated', count: 2
    Integer 'i_pixelflags_cr', count: 2
    Integer 'i_pixelflags_bad', count: 2
    Integer 'i_pixelflags_suspect', count: 2
    Integer 'i_pixelflags_interpolatedcenter', count: 2
    Integer 'i_pixelflags_saturatedcenter', count: 2
    Integer 'i_pixelflags_crcenter', count: 2
    Integer 'i_pixelflags_suspectcenter', count: 2
    Integer 'i_pixelflags_clippedcenter', count: 2
    Integer 'i_pixelflags_sensor_edgecenter', count: 2
    Integer 'i_pixelflags_inexact_psfcenter', count: 2
    Integer 'i_pixelflags_bright_objectcenter', count: 2
    Integer 'i_pixelflags_clipped', count: 2
    Integer 'i_pixelflags_sensor_edge', count: 2
    Integer 'i_pixelflags_inexact_psf', count: 2
    Integer 'i_pixelflags_bright_object', count: 2
    Integer 'i_calib_psfcandidate', count: 2
    Integer 'i_calib_psfused', count: 2
    Integer 'i_detect_ispatchinner', count: 2
    Integer 'i_detect_istractinner', count: 2
    Integer 'i_detect_isprimary', count: 2
    Float 'i_deblend_psfcenter_ra'
    Float 'i_deblend_psfcenter_dec'
    Float 'i_deblend_psfflux'
    Float 'i_deblend_psfmag'
    Integer 'i_deblend_deblendedaspsf', count: 2
    Integer 'i_deblend_toomanypeaks', count: 2
    Integer 'i_deblend_parenttoobig', count: 2
    Integer 'i_deblend_masked', count: 2
    Integer 'i_deblend_skipped', count: 2
    Integer 'i_deblend_rampedtemplate', count: 2
    Integer 'i_deblend_patchedtemplate', count: 2
    Integer 'i_deblend_hasstrayflux', count: 2
    Float 'i_blendedness_old'
    Float 'i_blendedness_raw_flux'
    Float 'i_blendedness_raw_flux_child'
    Float 'i_blendedness_raw_mag_child'
    Float 'i_blendedness_raw_flux_parent'
    Float 'i_blendedness_raw_mag_parent'
    Float 'i_blendedness_abs_flux'
    Float 'i_blendedness_abs_flux_child'
    Float 'i_blendedness_abs_mag_child'
    Float 'i_blendedness_abs_flux_parent'
    Float 'i_blendedness_abs_mag_parent'
    Float 'i_blendedness_raw_child_shape11'
    Float 'i_blendedness_raw_child_shape22'
    Float 'i_blendedness_raw_child_shape12'
    Float 'i_blendedness_raw_parent_shape11'
    Float 'i_blendedness_raw_parent_shape22'
    Float 'i_blendedness_raw_parent_shape12'
    Float 'i_blendedness_abs_child_shape11'
    Float 'i_blendedness_abs_child_shape22'
    Float 'i_blendedness_abs_child_shape12'
    Float 'i_blendedness_abs_parent_shape11'
    Float 'i_blendedness_abs_parent_shape22'
    Float 'i_blendedness_abs_parent_shape12'
    Integer 'i_blendedness_flag', count: 2
    Integer 'i_blendedness_flag_nocentroid', count: 2
    Integer 'i_blendedness_flag_noshape', count: 2
    Float 'i_extendedness_value'
    Integer 'i_extendedness_flag', count: 2
    Integer 'i_footprintarea_value'
    Integer 'i_inputcount_value'
    Integer 'i_inputcount_flag', count: 2
    Integer 'i_inputcount_flag_noinputs', count: 2
    Integer 'i_inputcount_flag_badcentroid', count: 2
    Float 'i_variance_value'
    Integer 'i_variance_flag', count: 2
    Integer 'i_variance_flag_emptyfootprint', count: 2
    Integer 'i_variance_flag_badcentroid', count: 2
    Float 'i_localbackground_flux'
    Float 'i_localbackground_mag'
    Float 'i_localbackground_fluxsigma'
    Float 'i_localbackground_magsigma'
    Integer 'i_localbackground_flag', count: 2
    Integer 'i_localbackground_flag_nogoodpixels', count: 2
    Integer 'i_localbackground_flag_nopsf', count: 2
    Integer 'i_localbackground_flag_badcentroid', count: 2
    Float 'i_filterfraction_unweighted'
    Float 'i_filterfraction_weighted'
    Float 'i_cmodel_initial_flux'
    Float 'i_cmodel_initial_mag'
    Float 'i_cmodel_initial_fluxsigma'
    Float 'i_cmodel_initial_magsigma'
    Float 'i_cmodel_initial_flux_inner'
    Float 'i_cmodel_initial_mag_inner'
    Float 'i_cmodel_initial_ellipse_11'
    Float 'i_cmodel_initial_ellipse_22'
    Float 'i_cmodel_initial_ellipse_12'
    Float 'i_cmodel_initial_objective'
    Float 'i_cmodel_initial_nonlinear_0'
    Float 'i_cmodel_initial_nonlinear_1'
    Float 'i_cmodel_initial_nonlinear_2'
    Float 'i_cmodel_initial_fixed_0'
    Float 'i_cmodel_initial_fixed_1'
    Integer 'i_cmodel_initial_niter'
    Float 'i_cmodel_initial_time'
    Float 'i_cmodel_exp_flux'
    Float 'i_cmodel_exp_mag'
    Float 'i_cmodel_exp_fluxsigma'
    Float 'i_cmodel_exp_magsigma'
    Float 'i_cmodel_exp_flux_inner'
    Float 'i_cmodel_exp_mag_inner'
    Float 'i_cmodel_exp_ellipse_11'
    Float 'i_cmodel_exp_ellipse_22'
    Float 'i_cmodel_exp_ellipse_12'
    Float 'i_cmodel_exp_objective'
    Float 'i_cmodel_exp_nonlinear_0'
    Float 'i_cmodel_exp_nonlinear_1'
    Float 'i_cmodel_exp_nonlinear_2'
    Float 'i_cmodel_exp_fixed_0'
    Float 'i_cmodel_exp_fixed_1'
    Integer 'i_cmodel_exp_niter'
    Float 'i_cmodel_exp_time'
    Float 'i_cmodel_dev_flux'
    Float 'i_cmodel_dev_mag'
    Float 'i_cmodel_dev_fluxsigma'
    Float 'i_cmodel_dev_magsigma'
    Float 'i_cmodel_dev_flux_inner'
    Float 'i_cmodel_dev_mag_inner'
    Float 'i_cmodel_dev_ellipse_11'
    Float 'i_cmodel_dev_ellipse_22'
    Float 'i_cmodel_dev_ellipse_12'
    Float 'i_cmodel_dev_objective'
    Float 'i_cmodel_dev_nonlinear_0'
    Float 'i_cmodel_dev_nonlinear_1'
    Float 'i_cmodel_dev_nonlinear_2'
    Float 'i_cmodel_dev_fixed_0'
    Float 'i_cmodel_dev_fixed_1'
    Integer 'i_cmodel_dev_niter'
    Float 'i_cmodel_dev_time'
    Float 'i_cmodel_flux'
    Float 'i_cmodel_mag'
    Float 'i_cmodel_fluxsigma'
    Float 'i_cmodel_magsigma'
    Float 'i_cmodel_flux_inner'
    Float 'i_cmodel_mag_inner'
    Float 'i_cmodel_fracdev'
    Float 'i_cmodel_objective'
    Float 'i_cmodel_ellipse_11'
    Float 'i_cmodel_ellipse_22'
    Float 'i_cmodel_ellipse_12'
    Float 'i_cmodel_region_initial_ellipse_11'
    Float 'i_cmodel_region_initial_ellipse_22'
    Float 'i_cmodel_region_initial_ellipse_12'
    Float 'i_cmodel_region_final_ellipse_11'
    Float 'i_cmodel_region_final_ellipse_22'
    Float 'i_cmodel_region_final_ellipse_12'
    Float 'i_cmodel_initial_apcorr'
    Float 'i_cmodel_initial_apcorrsigma'
    Float 'i_cmodel_dev_apcorr'
    Float 'i_cmodel_dev_apcorrsigma'
    Float 'i_cmodel_exp_apcorr'
    Float 'i_cmodel_exp_apcorrsigma'
    Float 'i_cmodel_apcorr'
    Float 'i_cmodel_apcorrsigma'
    Integer 'i_cmodel_initial_flag', count: 2
    Integer 'i_cmodel_initial_flag_trsmall', count: 2
    Integer 'i_cmodel_initial_flag_maxiter', count: 2
    Integer 'i_cmodel_initial_flag_numericerror', count: 2
    Integer 'i_cmodel_exp_flag', count: 2
    Integer 'i_cmodel_exp_flag_trsmall', count: 2
    Integer 'i_cmodel_exp_flag_maxiter', count: 2
    Integer 'i_cmodel_exp_flag_numericerror', count: 2
    Integer 'i_cmodel_dev_flag', count: 2
    Integer 'i_cmodel_dev_flag_trsmall', count: 2
    Integer 'i_cmodel_dev_flag_maxiter', count: 2
    Integer 'i_cmodel_dev_flag_numericerror', count: 2
    Integer 'i_cmodel_flag', count: 2
    Integer 'i_cmodel_flag_region_maxarea', count: 2
    Integer 'i_cmodel_flag_region_maxbadpixelfraction', count: 2
    Integer 'i_cmodel_flags_region_usedfootprintarea', count: 2
    Integer 'i_cmodel_flags_region_usedpsfarea', count: 2
    Integer 'i_cmodel_flags_region_usedinitialellipsemin', count: 2
    Integer 'i_cmodel_flags_region_usedinitialellipsemax', count: 2
    Integer 'i_cmodel_flag_noshape', count: 2
    Integer 'i_cmodel_flags_smallshape', count: 2
    Integer 'i_cmodel_flag_noshapeletpsf', count: 2
    Integer 'i_cmodel_flag_badcentroid', count: 2
    Integer 'i_cmodel_initial_flag_apcorr', count: 2
    Integer 'i_cmodel_dev_flag_apcorr', count: 2
    Integer 'i_cmodel_exp_flag_apcorr', count: 2
    Integer 'i_cmodel_flag_apcorr', count: 2
    Integer 'z_pixelflags', count: 2
    Integer 'z_pixelflags_offimage', count: 2
    Integer 'z_pixelflags_edge', count: 2
    Integer 'z_pixelflags_interpolated', count: 2
    Integer 'z_pixelflags_saturated', count: 2
    Integer 'z_pixelflags_cr', count: 2
    Integer 'z_pixelflags_bad', count: 2
    Integer 'z_pixelflags_suspect', count: 2
    Integer 'z_pixelflags_interpolatedcenter', count: 2
    Integer 'z_pixelflags_saturatedcenter', count: 2
    Integer 'z_pixelflags_crcenter', count: 2
    Integer 'z_pixelflags_suspectcenter', count: 2
    Integer 'z_pixelflags_clippedcenter', count: 2
    Integer 'z_pixelflags_sensor_edgecenter', count: 2
    Integer 'z_pixelflags_inexact_psfcenter', count: 2
    Integer 'z_pixelflags_bright_objectcenter', count: 2
    Integer 'z_pixelflags_clipped', count: 2
    Integer 'z_pixelflags_sensor_edge', count: 2
    Integer 'z_pixelflags_inexact_psf', count: 2
    Integer 'z_pixelflags_bright_object', count: 2
    Integer 'z_calib_psfcandidate', count: 2
    Integer 'z_calib_psfused', count: 2
    Integer 'z_detect_ispatchinner', count: 2
    Integer 'z_detect_istractinner', count: 2
    Integer 'z_detect_isprimary', count: 2
    Float 'z_deblend_psfcenter_ra'
    Float 'z_deblend_psfcenter_dec'
    Float 'z_deblend_psfflux'
    Float 'z_deblend_psfmag'
    Integer 'z_deblend_deblendedaspsf', count: 2
    Integer 'z_deblend_toomanypeaks', count: 2
    Integer 'z_deblend_parenttoobig', count: 2
    Integer 'z_deblend_masked', count: 2
    Integer 'z_deblend_skipped', count: 2
    Integer 'z_deblend_rampedtemplate', count: 2
    Integer 'z_deblend_patchedtemplate', count: 2
    Integer 'z_deblend_hasstrayflux', count: 2
    Float 'z_blendedness_old'
    Float 'z_blendedness_raw_flux'
    Float 'z_blendedness_raw_flux_child'
    Float 'z_blendedness_raw_mag_child'
    Float 'z_blendedness_raw_flux_parent'
    Float 'z_blendedness_raw_mag_parent'
    Float 'z_blendedness_abs_flux'
    Float 'z_blendedness_abs_flux_child'
    Float 'z_blendedness_abs_mag_child'
    Float 'z_blendedness_abs_flux_parent'
    Float 'z_blendedness_abs_mag_parent'
    Float 'z_blendedness_raw_child_shape11'
    Float 'z_blendedness_raw_child_shape22'
    Float 'z_blendedness_raw_child_shape12'
    Float 'z_blendedness_raw_parent_shape11'
    Float 'z_blendedness_raw_parent_shape22'
    Float 'z_blendedness_raw_parent_shape12'
    Float 'z_blendedness_abs_child_shape11'
    Float 'z_blendedness_abs_child_shape22'
    Float 'z_blendedness_abs_child_shape12'
    Float 'z_blendedness_abs_parent_shape11'
    Float 'z_blendedness_abs_parent_shape22'
    Float 'z_blendedness_abs_parent_shape12'
    Integer 'z_blendedness_flag', count: 2
    Integer 'z_blendedness_flag_nocentroid', count: 2
    Integer 'z_blendedness_flag_noshape', count: 2
    Float 'z_extendedness_value'
    Integer 'z_extendedness_flag', count: 2
    Integer 'z_footprintarea_value'
    Integer 'z_inputcount_value'
    Integer 'z_inputcount_flag', count: 2
    Integer 'z_inputcount_flag_noinputs', count: 2
    Integer 'z_inputcount_flag_badcentroid', count: 2
    Float 'z_variance_value'
    Integer 'z_variance_flag', count: 2
    Integer 'z_variance_flag_emptyfootprint', count: 2
    Integer 'z_variance_flag_badcentroid', count: 2
    Float 'z_localbackground_flux'
    Float 'z_localbackground_mag'
    Float 'z_localbackground_fluxsigma'
    Float 'z_localbackground_magsigma'
    Integer 'z_localbackground_flag', count: 2
    Integer 'z_localbackground_flag_nogoodpixels', count: 2
    Integer 'z_localbackground_flag_nopsf', count: 2
    Integer 'z_localbackground_flag_badcentroid', count: 2
    Float 'z_filterfraction_unweighted'
    Float 'z_filterfraction_weighted'
    Float 'z_cmodel_initial_flux'
    Float 'z_cmodel_initial_mag'
    Float 'z_cmodel_initial_fluxsigma'
    Float 'z_cmodel_initial_magsigma'
    Float 'z_cmodel_initial_flux_inner'
    Float 'z_cmodel_initial_mag_inner'
    Float 'z_cmodel_initial_ellipse_11'
    Float 'z_cmodel_initial_ellipse_22'
    Float 'z_cmodel_initial_ellipse_12'
    Float 'z_cmodel_initial_objective'
    Float 'z_cmodel_initial_nonlinear_0'
    Float 'z_cmodel_initial_nonlinear_1'
    Float 'z_cmodel_initial_nonlinear_2'
    Float 'z_cmodel_initial_fixed_0'
    Float 'z_cmodel_initial_fixed_1'
    Integer 'z_cmodel_initial_niter'
    Float 'z_cmodel_initial_time'
    Float 'z_cmodel_exp_flux'
    Float 'z_cmodel_exp_mag'
    Float 'z_cmodel_exp_fluxsigma'
    Float 'z_cmodel_exp_magsigma'
    Float 'z_cmodel_exp_flux_inner'
    Float 'z_cmodel_exp_mag_inner'
    Float 'z_cmodel_exp_ellipse_11'
    Float 'z_cmodel_exp_ellipse_22'
    Float 'z_cmodel_exp_ellipse_12'
    Float 'z_cmodel_exp_objective'
    Float 'z_cmodel_exp_nonlinear_0'
    Float 'z_cmodel_exp_nonlinear_1'
    Float 'z_cmodel_exp_nonlinear_2'
    Float 'z_cmodel_exp_fixed_0'
    Float 'z_cmodel_exp_fixed_1'
    Integer 'z_cmodel_exp_niter'
    Float 'z_cmodel_exp_time'
    Float 'z_cmodel_dev_flux'
    Float 'z_cmodel_dev_mag'
    Float 'z_cmodel_dev_fluxsigma'
    Float 'z_cmodel_dev_magsigma'
    Float 'z_cmodel_dev_flux_inner'
    Float 'z_cmodel_dev_mag_inner'
    Float 'z_cmodel_dev_ellipse_11'
    Float 'z_cmodel_dev_ellipse_22'
    Float 'z_cmodel_dev_ellipse_12'
    Float 'z_cmodel_dev_objective'
    Float 'z_cmodel_dev_nonlinear_0'
    Float 'z_cmodel_dev_nonlinear_1'
    Float 'z_cmodel_dev_nonlinear_2'
    Float 'z_cmodel_dev_fixed_0'
    Float 'z_cmodel_dev_fixed_1'
    Integer 'z_cmodel_dev_niter'
    Float 'z_cmodel_dev_time'
    Float 'z_cmodel_flux'
    Float 'z_cmodel_mag'
    Float 'z_cmodel_fluxsigma'
    Float 'z_cmodel_magsigma'
    Float 'z_cmodel_flux_inner'
    Float 'z_cmodel_mag_inner'
    Float 'z_cmodel_fracdev'
    Float 'z_cmodel_objective'
    Float 'z_cmodel_ellipse_11'
    Float 'z_cmodel_ellipse_22'
    Float 'z_cmodel_ellipse_12'
    Float 'z_cmodel_region_initial_ellipse_11'
    Float 'z_cmodel_region_initial_ellipse_22'
    Float 'z_cmodel_region_initial_ellipse_12'
    Float 'z_cmodel_region_final_ellipse_11'
    Float 'z_cmodel_region_final_ellipse_22'
    Float 'z_cmodel_region_final_ellipse_12'
    Float 'z_cmodel_initial_apcorr'
    Float 'z_cmodel_initial_apcorrsigma'
    Float 'z_cmodel_dev_apcorr'
    Float 'z_cmodel_dev_apcorrsigma'
    Float 'z_cmodel_exp_apcorr'
    Float 'z_cmodel_exp_apcorrsigma'
    Float 'z_cmodel_apcorr'
    Float 'z_cmodel_apcorrsigma'
    Integer 'z_cmodel_initial_flag', count: 2
    Integer 'z_cmodel_initial_flag_trsmall', count: 2
    Integer 'z_cmodel_initial_flag_maxiter', count: 2
    Integer 'z_cmodel_initial_flag_numericerror', count: 2
    Integer 'z_cmodel_exp_flag', count: 2
    Integer 'z_cmodel_exp_flag_trsmall', count: 2
    Integer 'z_cmodel_exp_flag_maxiter', count: 2
    Integer 'z_cmodel_exp_flag_numericerror', count: 2
    Integer 'z_cmodel_dev_flag', count: 2
    Integer 'z_cmodel_dev_flag_trsmall', count: 2
    Integer 'z_cmodel_dev_flag_maxiter', count: 2
    Integer 'z_cmodel_dev_flag_numericerror', count: 2
    Integer 'z_cmodel_flag', count: 2
    Integer 'z_cmodel_flag_region_maxarea', count: 2
    Integer 'z_cmodel_flag_region_maxbadpixelfraction', count: 2
    Integer 'z_cmodel_flags_region_usedfootprintarea', count: 2
    Integer 'z_cmodel_flags_region_usedpsfarea', count: 2
    Integer 'z_cmodel_flags_region_usedinitialellipsemin', count: 2
    Integer 'z_cmodel_flags_region_usedinitialellipsemax', count: 2
    Integer 'z_cmodel_flag_noshape', count: 2
    Integer 'z_cmodel_flags_smallshape', count: 2
    Integer 'z_cmodel_flag_noshapeletpsf', count: 2
    Integer 'z_cmodel_flag_badcentroid', count: 2
    Integer 'z_cmodel_initial_flag_apcorr', count: 2
    Integer 'z_cmodel_dev_flag_apcorr', count: 2
    Integer 'z_cmodel_exp_flag_apcorr', count: 2
    Integer 'z_cmodel_flag_apcorr', count: 2
    Integer 'y_pixelflags', count: 2
    Integer 'y_pixelflags_offimage', count: 2
    Integer 'y_pixelflags_edge', count: 2
    Integer 'y_pixelflags_interpolated', count: 2
    Integer 'y_pixelflags_saturated', count: 2
    Integer 'y_pixelflags_cr', count: 2
    Integer 'y_pixelflags_bad', count: 2
    Integer 'y_pixelflags_suspect', count: 2
    Integer 'y_pixelflags_interpolatedcenter', count: 2
    Integer 'y_pixelflags_saturatedcenter', count: 2
    Integer 'y_pixelflags_crcenter', count: 2
    Integer 'y_pixelflags_suspectcenter', count: 2
    Integer 'y_pixelflags_clippedcenter', count: 2
    Integer 'y_pixelflags_sensor_edgecenter', count: 2
    Integer 'y_pixelflags_inexact_psfcenter', count: 2
    Integer 'y_pixelflags_bright_objectcenter', count: 2
    Integer 'y_pixelflags_clipped', count: 2
    Integer 'y_pixelflags_sensor_edge', count: 2
    Integer 'y_pixelflags_inexact_psf', count: 2
    Integer 'y_pixelflags_bright_object', count: 2
    Integer 'y_calib_psfcandidate', count: 2
    Integer 'y_calib_psfused', count: 2
    Integer 'y_detect_ispatchinner', count: 2
    Integer 'y_detect_istractinner', count: 2
    Integer 'y_detect_isprimary', count: 2
    Float 'y_deblend_psfcenter_ra'
    Float 'y_deblend_psfcenter_dec'
    Float 'y_deblend_psfflux'
    Float 'y_deblend_psfmag'
    Integer 'y_deblend_deblendedaspsf', count: 2
    Integer 'y_deblend_toomanypeaks', count: 2
    Integer 'y_deblend_parenttoobig', count: 2
    Integer 'y_deblend_masked', count: 2
    Integer 'y_deblend_skipped', count: 2
    Integer 'y_deblend_rampedtemplate', count: 2
    Integer 'y_deblend_patchedtemplate', count: 2
    Integer 'y_deblend_hasstrayflux', count: 2
    Float 'y_blendedness_old'
    Float 'y_blendedness_raw_flux'
    Float 'y_blendedness_raw_flux_child'
    Float 'y_blendedness_raw_mag_child'
    Float 'y_blendedness_raw_flux_parent'
    Float 'y_blendedness_raw_mag_parent'
    Float 'y_blendedness_abs_flux'
    Float 'y_blendedness_abs_flux_child'
    Float 'y_blendedness_abs_mag_child'
    Float 'y_blendedness_abs_flux_parent'
    Float 'y_blendedness_abs_mag_parent'
    Float 'y_blendedness_raw_child_shape11'
    Float 'y_blendedness_raw_child_shape22'
    Float 'y_blendedness_raw_child_shape12'
    Float 'y_blendedness_raw_parent_shape11'
    Float 'y_blendedness_raw_parent_shape22'
    Float 'y_blendedness_raw_parent_shape12'
    Float 'y_blendedness_abs_child_shape11'
    Float 'y_blendedness_abs_child_shape22'
    Float 'y_blendedness_abs_child_shape12'
    Float 'y_blendedness_abs_parent_shape11'
    Float 'y_blendedness_abs_parent_shape22'
    Float 'y_blendedness_abs_parent_shape12'
    Integer 'y_blendedness_flag', count: 2
    Integer 'y_blendedness_flag_nocentroid', count: 2
    Integer 'y_blendedness_flag_noshape', count: 2
    Float 'y_extendedness_value'
    Integer 'y_extendedness_flag', count: 2
    Integer 'y_footprintarea_value'
    Integer 'y_inputcount_value'
    Integer 'y_inputcount_flag', count: 2
    Integer 'y_inputcount_flag_noinputs', count: 2
    Integer 'y_inputcount_flag_badcentroid', count: 2
    Float 'y_variance_value'
    Integer 'y_variance_flag', count: 2
    Integer 'y_variance_flag_emptyfootprint', count: 2
    Integer 'y_variance_flag_badcentroid', count: 2
    Float 'y_localbackground_flux'
    Float 'y_localbackground_mag'
    Float 'y_localbackground_fluxsigma'
    Float 'y_localbackground_magsigma'
    Integer 'y_localbackground_flag', count: 2
    Integer 'y_localbackground_flag_nogoodpixels', count: 2
    Integer 'y_localbackground_flag_nopsf', count: 2
    Integer 'y_localbackground_flag_badcentroid', count: 2
    Float 'y_filterfraction_unweighted'
    Float 'y_filterfraction_weighted'
    Float 'y_cmodel_initial_flux'
    Float 'y_cmodel_initial_mag'
    Float 'y_cmodel_initial_fluxsigma'
    Float 'y_cmodel_initial_magsigma'
    Float 'y_cmodel_initial_flux_inner'
    Float 'y_cmodel_initial_mag_inner'
    Float 'y_cmodel_initial_ellipse_11'
    Float 'y_cmodel_initial_ellipse_22'
    Float 'y_cmodel_initial_ellipse_12'
    Float 'y_cmodel_initial_objective'
    Float 'y_cmodel_initial_nonlinear_0'
    Float 'y_cmodel_initial_nonlinear_1'
    Float 'y_cmodel_initial_nonlinear_2'
    Float 'y_cmodel_initial_fixed_0'
    Float 'y_cmodel_initial_fixed_1'
    Integer 'y_cmodel_initial_niter'
    Float 'y_cmodel_initial_time'
    Float 'y_cmodel_exp_flux'
    Float 'y_cmodel_exp_mag'
    Float 'y_cmodel_exp_fluxsigma'
    Float 'y_cmodel_exp_magsigma'
    Float 'y_cmodel_exp_flux_inner'
    Float 'y_cmodel_exp_mag_inner'
    Float 'y_cmodel_exp_ellipse_11'
    Float 'y_cmodel_exp_ellipse_22'
    Float 'y_cmodel_exp_ellipse_12'
    Float 'y_cmodel_exp_objective'
    Float 'y_cmodel_exp_nonlinear_0'
    Float 'y_cmodel_exp_nonlinear_1'
    Float 'y_cmodel_exp_nonlinear_2'
    Float 'y_cmodel_exp_fixed_0'
    Float 'y_cmodel_exp_fixed_1'
    Integer 'y_cmodel_exp_niter'
    Float 'y_cmodel_exp_time'
    Float 'y_cmodel_dev_flux'
    Float 'y_cmodel_dev_mag'
    Float 'y_cmodel_dev_fluxsigma'
    Float 'y_cmodel_dev_magsigma'
    Float 'y_cmodel_dev_flux_inner'
    Float 'y_cmodel_dev_mag_inner'
    Float 'y_cmodel_dev_ellipse_11'
    Float 'y_cmodel_dev_ellipse_22'
    Float 'y_cmodel_dev_ellipse_12'
    Float 'y_cmodel_dev_objective'
    Float 'y_cmodel_dev_nonlinear_0'
    Float 'y_cmodel_dev_nonlinear_1'
    Float 'y_cmodel_dev_nonlinear_2'
    Float 'y_cmodel_dev_fixed_0'
    Float 'y_cmodel_dev_fixed_1'
    Integer 'y_cmodel_dev_niter'
    Float 'y_cmodel_dev_time'
    Float 'y_cmodel_flux'
    Float 'y_cmodel_mag'
    Float 'y_cmodel_fluxsigma'
    Float 'y_cmodel_magsigma'
    Float 'y_cmodel_flux_inner'
    Float 'y_cmodel_mag_inner'
    Float 'y_cmodel_fracdev'
    Float 'y_cmodel_objective'
    Float 'y_cmodel_ellipse_11'
    Float 'y_cmodel_ellipse_22'
    Float 'y_cmodel_ellipse_12'
    Float 'y_cmodel_region_initial_ellipse_11'
    Float 'y_cmodel_region_initial_ellipse_22'
    Float 'y_cmodel_region_initial_ellipse_12'
    Float 'y_cmodel_region_final_ellipse_11'
    Float 'y_cmodel_region_final_ellipse_22'
    Float 'y_cmodel_region_final_ellipse_12'
    Float 'y_cmodel_initial_apcorr'
    Float 'y_cmodel_initial_apcorrsigma'
    Float 'y_cmodel_dev_apcorr'
    Float 'y_cmodel_dev_apcorrsigma'
    Float 'y_cmodel_exp_apcorr'
    Float 'y_cmodel_exp_apcorrsigma'
    Float 'y_cmodel_apcorr'
    Float 'y_cmodel_apcorrsigma'
    Integer 'y_cmodel_initial_flag', count: 2
    Integer 'y_cmodel_initial_flag_trsmall', count: 2
    Integer 'y_cmodel_initial_flag_maxiter', count: 2
    Integer 'y_cmodel_initial_flag_numericerror', count: 2
    Integer 'y_cmodel_exp_flag', count: 2
    Integer 'y_cmodel_exp_flag_trsmall', count: 2
    Integer 'y_cmodel_exp_flag_maxiter', count: 2
    Integer 'y_cmodel_exp_flag_numericerror', count: 2
    Integer 'y_cmodel_dev_flag', count: 2
    Integer 'y_cmodel_dev_flag_trsmall', count: 2
    Integer 'y_cmodel_dev_flag_maxiter', count: 2
    Integer 'y_cmodel_dev_flag_numericerror', count: 2
    Integer 'y_cmodel_flag', count: 2
    Integer 'y_cmodel_flag_region_maxarea', count: 2
    Integer 'y_cmodel_flag_region_maxbadpixelfraction', count: 2
    Integer 'y_cmodel_flags_region_usedfootprintarea', count: 2
    Integer 'y_cmodel_flags_region_usedpsfarea', count: 2
    Integer 'y_cmodel_flags_region_usedinitialellipsemin', count: 2
    Integer 'y_cmodel_flags_region_usedinitialellipsemax', count: 2
    Integer 'y_cmodel_flag_noshape', count: 2
    Integer 'y_cmodel_flags_smallshape', count: 2
    Integer 'y_cmodel_flag_noshapeletpsf', count: 2
    Integer 'y_cmodel_flag_badcentroid', count: 2
    Integer 'y_cmodel_initial_flag_apcorr', count: 2
    Integer 'y_cmodel_dev_flag_apcorr', count: 2
    Integer 'y_cmodel_exp_flag_apcorr', count: 2
    Integer 'y_cmodel_flag_apcorr', count: 2
    end) * 10_000
end

# rubocop:enable all
