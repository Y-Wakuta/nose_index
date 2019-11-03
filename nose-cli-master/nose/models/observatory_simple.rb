# frozen_string_literal: true
# rubocop:disable all

NoSE::Model.new do
    (Entity 'pdr2_wide_meas' do
    Integer 'dummy', count: 1
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
    end) * 712_126_710

    (Entity 'pdr2_wide_forced' do
    Integer 'dummy', count: 1
    ID  'object_id'
    Float 'ra'
    Float 'dec'
    Float 'coord_lon'
    Float 'coord_lat'
    Integer 'skymap_id'
    Integer 'tract'
    Integer 'patch'
    String 'patch_s'
    Integer 'parent_id'
    Integer 'nchild'
    Integer 'isprimary', count: 2
    Float 'a_g'
    Float 'a_r'
    Float 'a_i'
    Float 'a_z'
    Float 'a_y'
    Integer 'detect_ispatchinner', count: 2
    Integer 'detect_istractinner', count: 2
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
    Integer 'merge_measurement_i2', count: 2
    Integer 'merge_measurement_i', count: 2
    Integer 'merge_measurement_r2', count: 2
    Integer 'merge_measurement_r', count: 2
    Integer 'merge_measurement_z', count: 2
    Integer 'merge_measurement_y', count: 2
    Integer 'merge_measurement_g', count: 2
    Integer 'merge_measurement_n921', count: 2
    Integer 'merge_measurement_n816', count: 2
    Integer 'merge_measurement_n1010', count: 2
    Integer 'merge_measurement_n387', count: 2
    Integer 'merge_measurement_n515', count: 2
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
    Integer 'g_pixelflags_rejectedcenter', count: 2
    Integer 'g_pixelflags_inexact_psfcenter', count: 2
    Integer 'g_pixelflags_bright_objectcenter', count: 2
    Integer 'g_pixelflags_clipped', count: 2
    Integer 'g_pixelflags_sensor_edge', count: 2
    Integer 'g_pixelflags_rejected', count: 2
    Integer 'g_pixelflags_inexact_psf', count: 2
    Integer 'g_pixelflags_bright_object', count: 2
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
    Float 'g_extendedness_value'
    Integer 'g_extendedness_flag', count: 2
    Float 'g_cmodel_initial_flux'
    Float 'g_cmodel_initial_mag'
    Float 'g_cmodel_initial_fluxsigma'
    Float 'g_cmodel_initial_magsigma'
    Float 'g_cmodel_initial_flux_inner'
    Float 'g_cmodel_initial_mag_inner'
    Float 'g_cmodel_exp_flux'
    Float 'g_cmodel_exp_mag'
    Float 'g_cmodel_exp_fluxsigma'
    Float 'g_cmodel_exp_magsigma'
    Float 'g_cmodel_exp_flux_inner'
    Float 'g_cmodel_exp_mag_inner'
    Float 'g_cmodel_dev_flux'
    Float 'g_cmodel_dev_mag'
    Float 'g_cmodel_dev_fluxsigma'
    Float 'g_cmodel_dev_magsigma'
    Float 'g_cmodel_dev_flux_inner'
    Float 'g_cmodel_dev_mag_inner'
    Float 'g_cmodel_flux'
    Float 'g_cmodel_mag'
    Float 'g_cmodel_fluxsigma'
    Float 'g_cmodel_magsigma'
    Float 'g_cmodel_flux_inner'
    Float 'g_cmodel_mag_inner'
    Float 'g_cmodel_fracdev'
    Float 'g_cmodel_objective'
    Float 'g_cmodel_initial_apcorr'
    Float 'g_cmodel_initial_apcorrsigma'
    Float 'g_cmodel_dev_apcorr'
    Float 'g_cmodel_dev_apcorrsigma'
    Float 'g_cmodel_exp_apcorr'
    Float 'g_cmodel_exp_apcorrsigma'
    Float 'g_cmodel_apcorr'
    Float 'g_cmodel_apcorrsigma'
    Integer 'g_cmodel_initial_flag', count: 2
    Integer 'g_cmodel_initial_flag_badreference', count: 2
    Integer 'g_cmodel_initial_flag_numericerror', count: 2
    Integer 'g_cmodel_exp_flag', count: 2
    Integer 'g_cmodel_exp_flag_badreference', count: 2
    Integer 'g_cmodel_exp_flag_numericerror', count: 2
    Integer 'g_cmodel_dev_flag', count: 2
    Integer 'g_cmodel_dev_flag_badreference', count: 2
    Integer 'g_cmodel_dev_flag_numericerror', count: 2
    Integer 'g_cmodel_flag', count: 2
    Integer 'g_cmodel_flag_region_maxarea', count: 2
    Integer 'g_cmodel_flag_region_maxbadpixelfraction', count: 2
    Integer 'g_cmodel_flag_badreference', count: 2
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
    Integer 'r_pixelflags_rejectedcenter', count: 2
    Integer 'r_pixelflags_inexact_psfcenter', count: 2
    Integer 'r_pixelflags_bright_objectcenter', count: 2
    Integer 'r_pixelflags_clipped', count: 2
    Integer 'r_pixelflags_sensor_edge', count: 2
    Integer 'r_pixelflags_rejected', count: 2
    Integer 'r_pixelflags_inexact_psf', count: 2
    Integer 'r_pixelflags_bright_object', count: 2
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
    Float 'r_extendedness_value'
    Integer 'r_extendedness_flag', count: 2
    Float 'r_cmodel_initial_flux'
    Float 'r_cmodel_initial_mag'
    Float 'r_cmodel_initial_fluxsigma'
    Float 'r_cmodel_initial_magsigma'
    Float 'r_cmodel_initial_flux_inner'
    Float 'r_cmodel_initial_mag_inner'
    Float 'r_cmodel_exp_flux'
    Float 'r_cmodel_exp_mag'
    Float 'r_cmodel_exp_fluxsigma'
    Float 'r_cmodel_exp_magsigma'
    Float 'r_cmodel_exp_flux_inner'
    Float 'r_cmodel_exp_mag_inner'
    Float 'r_cmodel_dev_flux'
    Float 'r_cmodel_dev_mag'
    Float 'r_cmodel_dev_fluxsigma'
    Float 'r_cmodel_dev_magsigma'
    Float 'r_cmodel_dev_flux_inner'
    Float 'r_cmodel_dev_mag_inner'
    Float 'r_cmodel_flux'
    Float 'r_cmodel_mag'
    Float 'r_cmodel_fluxsigma'
    Float 'r_cmodel_magsigma'
    Float 'r_cmodel_flux_inner'
    Float 'r_cmodel_mag_inner'
    Float 'r_cmodel_fracdev'
    Float 'r_cmodel_objective'
    Float 'r_cmodel_initial_apcorr'
    Float 'r_cmodel_initial_apcorrsigma'
    Float 'r_cmodel_dev_apcorr'
    Float 'r_cmodel_dev_apcorrsigma'
    Float 'r_cmodel_exp_apcorr'
    Float 'r_cmodel_exp_apcorrsigma'
    Float 'r_cmodel_apcorr'
    Float 'r_cmodel_apcorrsigma'
    Integer 'r_cmodel_initial_flag', count: 2
    Integer 'r_cmodel_initial_flag_badreference', count: 2
    Integer 'r_cmodel_initial_flag_numericerror', count: 2
    Integer 'r_cmodel_exp_flag', count: 2
    Integer 'r_cmodel_exp_flag_badreference', count: 2
    Integer 'r_cmodel_exp_flag_numericerror', count: 2
    Integer 'r_cmodel_dev_flag', count: 2
    Integer 'r_cmodel_dev_flag_badreference', count: 2
    Integer 'r_cmodel_dev_flag_numericerror', count: 2
    Integer 'r_cmodel_flag', count: 2
    Integer 'r_cmodel_flag_region_maxarea', count: 2
    Integer 'r_cmodel_flag_region_maxbadpixelfraction', count: 2
    Integer 'r_cmodel_flag_badreference', count: 2
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
    Integer 'i_pixelflags_rejectedcenter', count: 2
    Integer 'i_pixelflags_inexact_psfcenter', count: 2
    Integer 'i_pixelflags_bright_objectcenter', count: 2
    Integer 'i_pixelflags_clipped', count: 2
    Integer 'i_pixelflags_sensor_edge', count: 2
    Integer 'i_pixelflags_rejected', count: 2
    Integer 'i_pixelflags_inexact_psf', count: 2
    Integer 'i_pixelflags_bright_object', count: 2
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
    Float 'i_extendedness_value'
    Integer 'i_extendedness_flag', count: 2
    Float 'i_cmodel_initial_flux'
    Float 'i_cmodel_initial_mag'
    Float 'i_cmodel_initial_fluxsigma'
    Float 'i_cmodel_initial_magsigma'
    Float 'i_cmodel_initial_flux_inner'
    Float 'i_cmodel_initial_mag_inner'
    Float 'i_cmodel_exp_flux'
    Float 'i_cmodel_exp_mag'
    Float 'i_cmodel_exp_fluxsigma'
    Float 'i_cmodel_exp_magsigma'
    Float 'i_cmodel_exp_flux_inner'
    Float 'i_cmodel_exp_mag_inner'
    Float 'i_cmodel_dev_flux'
    Float 'i_cmodel_dev_mag'
    Float 'i_cmodel_dev_fluxsigma'
    Float 'i_cmodel_dev_magsigma'
    Float 'i_cmodel_dev_flux_inner'
    Float 'i_cmodel_dev_mag_inner'
    Float 'i_cmodel_flux'
    Float 'i_cmodel_mag'
    Float 'i_cmodel_fluxsigma'
    Float 'i_cmodel_magsigma'
    Float 'i_cmodel_flux_inner'
    Float 'i_cmodel_mag_inner'
    Float 'i_cmodel_fracdev'
    Float 'i_cmodel_objective'
    Float 'i_cmodel_initial_apcorr'
    Float 'i_cmodel_initial_apcorrsigma'
    Float 'i_cmodel_dev_apcorr'
    Float 'i_cmodel_dev_apcorrsigma'
    Float 'i_cmodel_exp_apcorr'
    Float 'i_cmodel_exp_apcorrsigma'
    Float 'i_cmodel_apcorr'
    Float 'i_cmodel_apcorrsigma'
    Integer 'i_cmodel_initial_flag', count: 2
    Integer 'i_cmodel_initial_flag_badreference', count: 2
    Integer 'i_cmodel_initial_flag_numericerror', count: 2
    Integer 'i_cmodel_exp_flag', count: 2
    Integer 'i_cmodel_exp_flag_badreference', count: 2
    Integer 'i_cmodel_exp_flag_numericerror', count: 2
    Integer 'i_cmodel_dev_flag', count: 2
    Integer 'i_cmodel_dev_flag_badreference', count: 2
    Integer 'i_cmodel_dev_flag_numericerror', count: 2
    Integer 'i_cmodel_flag', count: 2
    Integer 'i_cmodel_flag_region_maxarea', count: 2
    Integer 'i_cmodel_flag_region_maxbadpixelfraction', count: 2
    Integer 'i_cmodel_flag_badreference', count: 2
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
    Integer 'z_pixelflags_rejectedcenter', count: 2
    Integer 'z_pixelflags_inexact_psfcenter', count: 2
    Integer 'z_pixelflags_bright_objectcenter', count: 2
    Integer 'z_pixelflags_clipped', count: 2
    Integer 'z_pixelflags_sensor_edge', count: 2
    Integer 'z_pixelflags_rejected', count: 2
    Integer 'z_pixelflags_inexact_psf', count: 2
    Integer 'z_pixelflags_bright_object', count: 2
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
    Float 'z_extendedness_value'
    Integer 'z_extendedness_flag', count: 2
    Float 'z_cmodel_initial_flux'
    Float 'z_cmodel_initial_mag'
    Float 'z_cmodel_initial_fluxsigma'
    Float 'z_cmodel_initial_magsigma'
    Float 'z_cmodel_initial_flux_inner'
    Float 'z_cmodel_initial_mag_inner'
    Float 'z_cmodel_exp_flux'
    Float 'z_cmodel_exp_mag'
    Float 'z_cmodel_exp_fluxsigma'
    Float 'z_cmodel_exp_magsigma'
    Float 'z_cmodel_exp_flux_inner'
    Float 'z_cmodel_exp_mag_inner'
    Float 'z_cmodel_dev_flux'
    Float 'z_cmodel_dev_mag'
    Float 'z_cmodel_dev_fluxsigma'
    Float 'z_cmodel_dev_magsigma'
    Float 'z_cmodel_dev_flux_inner'
    Float 'z_cmodel_dev_mag_inner'
    Float 'z_cmodel_flux'
    Float 'z_cmodel_mag'
    Float 'z_cmodel_fluxsigma'
    Float 'z_cmodel_magsigma'
    Float 'z_cmodel_flux_inner'
    Float 'z_cmodel_mag_inner'
    Float 'z_cmodel_fracdev'
    Float 'z_cmodel_objective'
    Float 'z_cmodel_initial_apcorr'
    Float 'z_cmodel_initial_apcorrsigma'
    Float 'z_cmodel_dev_apcorr'
    Float 'z_cmodel_dev_apcorrsigma'
    Float 'z_cmodel_exp_apcorr'
    Float 'z_cmodel_exp_apcorrsigma'
    Float 'z_cmodel_apcorr'
    Float 'z_cmodel_apcorrsigma'
    Integer 'z_cmodel_initial_flag', count: 2
    Integer 'z_cmodel_initial_flag_badreference', count: 2
    Integer 'z_cmodel_initial_flag_numericerror', count: 2
    Integer 'z_cmodel_exp_flag', count: 2
    Integer 'z_cmodel_exp_flag_badreference', count: 2
    Integer 'z_cmodel_exp_flag_numericerror', count: 2
    Integer 'z_cmodel_dev_flag', count: 2
    Integer 'z_cmodel_dev_flag_badreference', count: 2
    Integer 'z_cmodel_dev_flag_numericerror', count: 2
    Integer 'z_cmodel_flag', count: 2
    Integer 'z_cmodel_flag_region_maxarea', count: 2
    Integer 'z_cmodel_flag_region_maxbadpixelfraction', count: 2
    Integer 'z_cmodel_flag_badreference', count: 2
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
    Integer 'y_pixelflags_rejectedcenter', count: 2
    Integer 'y_pixelflags_inexact_psfcenter', count: 2
    Integer 'y_pixelflags_bright_objectcenter', count: 2
    Integer 'y_pixelflags_clipped', count: 2
    Integer 'y_pixelflags_sensor_edge', count: 2
    Integer 'y_pixelflags_rejected', count: 2
    Integer 'y_pixelflags_inexact_psf', count: 2
    Integer 'y_pixelflags_bright_object', count: 2
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
    Float 'y_extendedness_value'
    Integer 'y_extendedness_flag', count: 2
    Float 'y_cmodel_initial_flux'
    Float 'y_cmodel_initial_mag'
    Float 'y_cmodel_initial_fluxsigma'
    Float 'y_cmodel_initial_magsigma'
    Float 'y_cmodel_initial_flux_inner'
    Float 'y_cmodel_initial_mag_inner'
    Float 'y_cmodel_exp_flux'
    Float 'y_cmodel_exp_mag'
    Float 'y_cmodel_exp_fluxsigma'
    Float 'y_cmodel_exp_magsigma'
    Float 'y_cmodel_exp_flux_inner'
    Float 'y_cmodel_exp_mag_inner'
    Float 'y_cmodel_dev_flux'
    Float 'y_cmodel_dev_mag'
    Float 'y_cmodel_dev_fluxsigma'
    Float 'y_cmodel_dev_magsigma'
    Float 'y_cmodel_dev_flux_inner'
    Float 'y_cmodel_dev_mag_inner'
    Float 'y_cmodel_flux'
    Float 'y_cmodel_mag'
    Float 'y_cmodel_fluxsigma'
    Float 'y_cmodel_magsigma'
    Float 'y_cmodel_flux_inner'
    Float 'y_cmodel_mag_inner'
    Float 'y_cmodel_fracdev'
    Float 'y_cmodel_objective'
    Float 'y_cmodel_initial_apcorr'
    Float 'y_cmodel_initial_apcorrsigma'
    Float 'y_cmodel_dev_apcorr'
    Float 'y_cmodel_dev_apcorrsigma'
    Float 'y_cmodel_exp_apcorr'
    Float 'y_cmodel_exp_apcorrsigma'
    Float 'y_cmodel_apcorr'
    Float 'y_cmodel_apcorrsigma'
    Integer 'y_cmodel_initial_flag', count: 2
    Integer 'y_cmodel_initial_flag_badreference', count: 2
    Integer 'y_cmodel_initial_flag_numericerror', count: 2
    Integer 'y_cmodel_exp_flag', count: 2
    Integer 'y_cmodel_exp_flag_badreference', count: 2
    Integer 'y_cmodel_exp_flag_numericerror', count: 2
    Integer 'y_cmodel_dev_flag', count: 2
    Integer 'y_cmodel_dev_flag_badreference', count: 2
    Integer 'y_cmodel_dev_flag_numericerror', count: 2
    Integer 'y_cmodel_flag', count: 2
    Integer 'y_cmodel_flag_region_maxarea', count: 2
    Integer 'y_cmodel_flag_region_maxbadpixelfraction', count: 2
    Integer 'y_cmodel_flag_badreference', count: 2
    Integer 'y_cmodel_flag_noshapeletpsf', count: 2
    Integer 'y_cmodel_flag_badcentroid', count: 2
    Integer 'y_cmodel_initial_flag_apcorr', count: 2
    Integer 'y_cmodel_dev_flag_apcorr', count: 2
    Integer 'y_cmodel_exp_flag_apcorr', count: 2
    Integer 'y_cmodel_flag_apcorr', count: 2
    end) * 712_126_710

    (Entity 'pdr2_wide_forced2' do
    Integer 'dummy', count: 1
    ID  'object_id'
    Float 'g_sdsscentroid_ra'
    Float 'g_sdsscentroid_dec'
    Float 'g_sdsscentroid_rasigma'
    Float 'g_sdsscentroid_decsigma'
    Integer 'g_sdsscentroid_flag', count: 2
    Integer 'g_sdsscentroid_flag_edge', count: 2
    Integer 'g_sdsscentroid_flag_nosecondderivative', count: 2
    Integer 'g_sdsscentroid_flag_almostnosecondderivative', count: 2
    Integer 'g_sdsscentroid_flag_notatmaximum', count: 2
    Integer 'g_sdsscentroid_flag_resettopeak', count: 2
    Integer 'g_sdsscentroid_flag_badinitialcentroid', count: 2
    Float 'g_gaussianflux_flux'
    Float 'g_gaussianflux_mag'
    Float 'g_gaussianflux_fluxsigma'
    Float 'g_gaussianflux_magsigma'
    Float 'g_gaussianflux_apcorr'
    Float 'g_gaussianflux_apcorrsigma'
    Integer 'g_gaussianflux_flag', count: 2
    Integer 'g_gaussianflux_flag_apcorr', count: 2
    Integer 'g_gaussianflux_flag_badcentroid', count: 2
    Integer 'g_gaussianflux_flag_badshape', count: 2
    Float 'g_psfflux_flux'
    Float 'g_psfflux_mag'
    Float 'g_psfflux_fluxsigma'
    Float 'g_psfflux_magsigma'
    Float 'g_psfflux_area'
    Float 'g_psfflux_apcorr'
    Float 'g_psfflux_apcorrsigma'
    Integer 'g_psfflux_flag', count: 2
    Integer 'g_psfflux_flag_nogoodpixels', count: 2
    Integer 'g_psfflux_flag_edge', count: 2
    Integer 'g_psfflux_flag_apcorr', count: 2
    Integer 'g_psfflux_flag_badcentroid', count: 2
    Float 'g_kronflux_flux'
    Float 'g_kronflux_mag'
    Float 'g_kronflux_fluxsigma'
    Float 'g_kronflux_magsigma'
    Float 'g_kronflux_radius'
    Float 'g_kronflux_radius_for_radius'
    Float 'g_kronflux_psf_radius'
    Float 'g_kronflux_apcorr'
    Float 'g_kronflux_apcorrsigma'
    Integer 'g_kronflux_flag', count: 2
    Integer 'g_kronflux_flag_edge', count: 2
    Integer 'g_kronflux_flag_bad_shape_no_psf', count: 2
    Integer 'g_kronflux_flag_no_minimum_radius', count: 2
    Integer 'g_kronflux_flag_no_fallback_radius', count: 2
    Integer 'g_kronflux_flag_bad_radius', count: 2
    Integer 'g_kronflux_flag_used_minimum_radius', count: 2
    Integer 'g_kronflux_flag_used_psf_radius', count: 2
    Integer 'g_kronflux_flag_small_radius', count: 2
    Integer 'g_kronflux_flag_bad_shape', count: 2
    Integer 'g_kronflux_flag_apcorr', count: 2
    Integer 'g_kronflux_flag_badinitialcentroid', count: 2
    Float 'g_sdssshape_shape11'
    Float 'g_sdssshape_shape22'
    Float 'g_sdssshape_shape12'
    Float 'g_sdssshape_shape11sigma'
    Float 'g_sdssshape_shape22sigma'
    Float 'g_sdssshape_shape12sigma'
    Float 'g_sdssshape_ra'
    Float 'g_sdssshape_dec'
    Float 'g_sdssshape_flux'
    Float 'g_sdssshape_mag'
    Float 'g_sdssshape_fluxsigma'
    Float 'g_sdssshape_magsigma'
    Float 'g_sdssshape_psf_shape11'
    Float 'g_sdssshape_psf_shape22'
    Float 'g_sdssshape_psf_shape12'
    Float 'g_sdssshape_flux_shape11_cov'
    Float 'g_sdssshape_flux_shape22_cov'
    Float 'g_sdssshape_flux_shape12_cov'
    Integer 'g_sdssshape_flag', count: 2
    Integer 'g_sdssshape_flag_unweightedbad', count: 2
    Integer 'g_sdssshape_flag_unweighted', count: 2
    Integer 'g_sdssshape_flag_shift', count: 2
    Integer 'g_sdssshape_flag_maxiter', count: 2
    Integer 'g_sdssshape_flag_psf', count: 2
    Integer 'g_sdssshape_flag_badcentroid', count: 2
    Float 'g_doubleshapeletpsfapprox_0_shape11'
    Float 'g_doubleshapeletpsfapprox_0_shape22'
    Float 'g_doubleshapeletpsfapprox_0_shape12'
    Float 'g_doubleshapeletpsfapprox_0_ra'
    Float 'g_doubleshapeletpsfapprox_0_dec'
    Float 'g_doubleshapeletpsfapprox_0_0'
    Float 'g_doubleshapeletpsfapprox_0_1'
    Float 'g_doubleshapeletpsfapprox_0_2'
    Float 'g_doubleshapeletpsfapprox_0_3'
    Float 'g_doubleshapeletpsfapprox_0_4'
    Float 'g_doubleshapeletpsfapprox_0_5'
    Float 'g_doubleshapeletpsfapprox_1_shape11'
    Float 'g_doubleshapeletpsfapprox_1_shape22'
    Float 'g_doubleshapeletpsfapprox_1_shape12'
    Float 'g_doubleshapeletpsfapprox_1_ra'
    Float 'g_doubleshapeletpsfapprox_1_dec'
    Float 'g_doubleshapeletpsfapprox_1_0'
    Float 'g_doubleshapeletpsfapprox_1_1'
    Float 'g_doubleshapeletpsfapprox_1_2'
    Integer 'g_doubleshapeletpsfapprox_flag', count: 2
    Integer 'g_doubleshapeletpsfapprox_flag_invalidpointforpsf', count: 2
    Integer 'g_doubleshapeletpsfapprox_flag_invalidmoments', count: 2
    Integer 'g_doubleshapeletpsfapprox_flag_maxiterations', count: 2
    Integer 'g_doubleshapeletpsfapprox_flag_badcentroid', count: 2
    Float 'g_undeblended_psfflux_flux'
    Float 'g_undeblended_psfflux_mag'
    Float 'g_undeblended_psfflux_fluxsigma'
    Float 'g_undeblended_psfflux_magsigma'
    Float 'g_undeblended_psfflux_area'
    Integer 'g_undeblended_psfflux_flag', count: 2
    Integer 'g_undeblended_psfflux_flag_nogoodpixels', count: 2
    Integer 'g_undeblended_psfflux_flag_edge', count: 2
    Integer 'g_undeblended_psfflux_flag_badcentroid', count: 2
    Float 'g_undeblended_kronflux_flux'
    Float 'g_undeblended_kronflux_mag'
    Float 'g_undeblended_kronflux_fluxsigma'
    Float 'g_undeblended_kronflux_magsigma'
    Float 'g_undeblended_kronflux_radius'
    Float 'g_undeblended_kronflux_radius_for_radius'
    Float 'g_undeblended_kronflux_psf_radius'
    Integer 'g_undeblended_kronflux_flag', count: 2
    Integer 'g_undeblended_kronflux_flag_edge', count: 2
    Integer 'g_undeblended_kronflux_flag_bad_shape_no_psf', count: 2
    Integer 'g_undeblended_kronflux_flag_no_minimum_radius', count: 2
    Integer 'g_undeblended_kronflux_flag_no_fallback_radius', count: 2
    Integer 'g_undeblended_kronflux_flag_bad_radius', count: 2
    Integer 'g_undeblended_kronflux_flag_used_minimum_radius', count: 2
    Integer 'g_undeblended_kronflux_flag_used_psf_radius', count: 2
    Integer 'g_undeblended_kronflux_flag_small_radius', count: 2
    Integer 'g_undeblended_kronflux_flag_bad_shape', count: 2
    Integer 'g_undeblended_kronflux_flag_badinitialcentroid', count: 2
    Float 'r_sdsscentroid_ra'
    Float 'r_sdsscentroid_dec'
    Float 'r_sdsscentroid_rasigma'
    Float 'r_sdsscentroid_decsigma'
    Integer 'r_sdsscentroid_flag', count: 2
    Integer 'r_sdsscentroid_flag_edge', count: 2
    Integer 'r_sdsscentroid_flag_nosecondderivative', count: 2
    Integer 'r_sdsscentroid_flag_almostnosecondderivative', count: 2
    Integer 'r_sdsscentroid_flag_notatmaximum', count: 2
    Integer 'r_sdsscentroid_flag_resettopeak', count: 2
    Integer 'r_sdsscentroid_flag_badinitialcentroid', count: 2
    Float 'r_gaussianflux_flux'
    Float 'r_gaussianflux_mag'
    Float 'r_gaussianflux_fluxsigma'
    Float 'r_gaussianflux_magsigma'
    Float 'r_gaussianflux_apcorr'
    Float 'r_gaussianflux_apcorrsigma'
    Integer 'r_gaussianflux_flag', count: 2
    Integer 'r_gaussianflux_flag_apcorr', count: 2
    Integer 'r_gaussianflux_flag_badcentroid', count: 2
    Integer 'r_gaussianflux_flag_badshape', count: 2
    Float 'r_psfflux_flux'
    Float 'r_psfflux_mag'
    Float 'r_psfflux_fluxsigma'
    Float 'r_psfflux_magsigma'
    Float 'r_psfflux_area'
    Float 'r_psfflux_apcorr'
    Float 'r_psfflux_apcorrsigma'
    Integer 'r_psfflux_flag', count: 2
    Integer 'r_psfflux_flag_nogoodpixels', count: 2
    Integer 'r_psfflux_flag_edge', count: 2
    Integer 'r_psfflux_flag_apcorr', count: 2
    Integer 'r_psfflux_flag_badcentroid', count: 2
    Float 'r_kronflux_flux'
    Float 'r_kronflux_mag'
    Float 'r_kronflux_fluxsigma'
    Float 'r_kronflux_magsigma'
    Float 'r_kronflux_radius'
    Float 'r_kronflux_radius_for_radius'
    Float 'r_kronflux_psf_radius'
    Float 'r_kronflux_apcorr'
    Float 'r_kronflux_apcorrsigma'
    Integer 'r_kronflux_flag', count: 2
    Integer 'r_kronflux_flag_edge', count: 2
    Integer 'r_kronflux_flag_bad_shape_no_psf', count: 2
    Integer 'r_kronflux_flag_no_minimum_radius', count: 2
    Integer 'r_kronflux_flag_no_fallback_radius', count: 2
    Integer 'r_kronflux_flag_bad_radius', count: 2
    Integer 'r_kronflux_flag_used_minimum_radius', count: 2
    Integer 'r_kronflux_flag_used_psf_radius', count: 2
    Integer 'r_kronflux_flag_small_radius', count: 2
    Integer 'r_kronflux_flag_bad_shape', count: 2
    Integer 'r_kronflux_flag_apcorr', count: 2
    Integer 'r_kronflux_flag_badinitialcentroid', count: 2
    Float 'r_sdssshape_shape11'
    Float 'r_sdssshape_shape22'
    Float 'r_sdssshape_shape12'
    Float 'r_sdssshape_shape11sigma'
    Float 'r_sdssshape_shape22sigma'
    Float 'r_sdssshape_shape12sigma'
    Float 'r_sdssshape_ra'
    Float 'r_sdssshape_dec'
    Float 'r_sdssshape_flux'
    Float 'r_sdssshape_mag'
    Float 'r_sdssshape_fluxsigma'
    Float 'r_sdssshape_magsigma'
    Float 'r_sdssshape_psf_shape11'
    Float 'r_sdssshape_psf_shape22'
    Float 'r_sdssshape_psf_shape12'
    Float 'r_sdssshape_flux_shape11_cov'
    Float 'r_sdssshape_flux_shape22_cov'
    Float 'r_sdssshape_flux_shape12_cov'
    Integer 'r_sdssshape_flag', count: 2
    Integer 'r_sdssshape_flag_unweightedbad', count: 2
    Integer 'r_sdssshape_flag_unweighted', count: 2
    Integer 'r_sdssshape_flag_shift', count: 2
    Integer 'r_sdssshape_flag_maxiter', count: 2
    Integer 'r_sdssshape_flag_psf', count: 2
    Integer 'r_sdssshape_flag_badcentroid', count: 2
    Float 'r_doubleshapeletpsfapprox_0_shape11'
    Float 'r_doubleshapeletpsfapprox_0_shape22'
    Float 'r_doubleshapeletpsfapprox_0_shape12'
    Float 'r_doubleshapeletpsfapprox_0_ra'
    Float 'r_doubleshapeletpsfapprox_0_dec'
    Float 'r_doubleshapeletpsfapprox_0_0'
    Float 'r_doubleshapeletpsfapprox_0_1'
    Float 'r_doubleshapeletpsfapprox_0_2'
    Float 'r_doubleshapeletpsfapprox_0_3'
    Float 'r_doubleshapeletpsfapprox_0_4'
    Float 'r_doubleshapeletpsfapprox_0_5'
    Float 'r_doubleshapeletpsfapprox_1_shape11'
    Float 'r_doubleshapeletpsfapprox_1_shape22'
    Float 'r_doubleshapeletpsfapprox_1_shape12'
    Float 'r_doubleshapeletpsfapprox_1_ra'
    Float 'r_doubleshapeletpsfapprox_1_dec'
    Float 'r_doubleshapeletpsfapprox_1_0'
    Float 'r_doubleshapeletpsfapprox_1_1'
    Float 'r_doubleshapeletpsfapprox_1_2'
    Integer 'r_doubleshapeletpsfapprox_flag', count: 2
    Integer 'r_doubleshapeletpsfapprox_flag_invalidpointforpsf', count: 2
    Integer 'r_doubleshapeletpsfapprox_flag_invalidmoments', count: 2
    Integer 'r_doubleshapeletpsfapprox_flag_maxiterations', count: 2
    Integer 'r_doubleshapeletpsfapprox_flag_badcentroid', count: 2
    Float 'r_undeblended_psfflux_flux'
    Float 'r_undeblended_psfflux_mag'
    Float 'r_undeblended_psfflux_fluxsigma'
    Float 'r_undeblended_psfflux_magsigma'
    Float 'r_undeblended_psfflux_area'
    Integer 'r_undeblended_psfflux_flag', count: 2
    Integer 'r_undeblended_psfflux_flag_nogoodpixels', count: 2
    Integer 'r_undeblended_psfflux_flag_edge', count: 2
    Integer 'r_undeblended_psfflux_flag_badcentroid', count: 2
    Float 'r_undeblended_kronflux_flux'
    Float 'r_undeblended_kronflux_mag'
    Float 'r_undeblended_kronflux_fluxsigma'
    Float 'r_undeblended_kronflux_magsigma'
    Float 'r_undeblended_kronflux_radius'
    Float 'r_undeblended_kronflux_radius_for_radius'
    Float 'r_undeblended_kronflux_psf_radius'
    Integer 'r_undeblended_kronflux_flag', count: 2
    Integer 'r_undeblended_kronflux_flag_edge', count: 2
    Integer 'r_undeblended_kronflux_flag_bad_shape_no_psf', count: 2
    Integer 'r_undeblended_kronflux_flag_no_minimum_radius', count: 2
    Integer 'r_undeblended_kronflux_flag_no_fallback_radius', count: 2
    Integer 'r_undeblended_kronflux_flag_bad_radius', count: 2
    Integer 'r_undeblended_kronflux_flag_used_minimum_radius', count: 2
    Integer 'r_undeblended_kronflux_flag_used_psf_radius', count: 2
    Integer 'r_undeblended_kronflux_flag_small_radius', count: 2
    Integer 'r_undeblended_kronflux_flag_bad_shape', count: 2
    Integer 'r_undeblended_kronflux_flag_badinitialcentroid', count: 2
    Float 'i_sdsscentroid_ra'
    Float 'i_sdsscentroid_dec'
    Float 'i_sdsscentroid_rasigma'
    Float 'i_sdsscentroid_decsigma'
    Integer 'i_sdsscentroid_flag', count: 2
    Integer 'i_sdsscentroid_flag_edge', count: 2
    Integer 'i_sdsscentroid_flag_nosecondderivative', count: 2
    Integer 'i_sdsscentroid_flag_almostnosecondderivative', count: 2
    Integer 'i_sdsscentroid_flag_notatmaximum', count: 2
    Integer 'i_sdsscentroid_flag_resettopeak', count: 2
    Integer 'i_sdsscentroid_flag_badinitialcentroid', count: 2
    Float 'i_gaussianflux_flux'
    Float 'i_gaussianflux_mag'
    Float 'i_gaussianflux_fluxsigma'
    Float 'i_gaussianflux_magsigma'
    Float 'i_gaussianflux_apcorr'
    Float 'i_gaussianflux_apcorrsigma'
    Integer 'i_gaussianflux_flag', count: 2
    Integer 'i_gaussianflux_flag_apcorr', count: 2
    Integer 'i_gaussianflux_flag_badcentroid', count: 2
    Integer 'i_gaussianflux_flag_badshape', count: 2
    Float 'i_psfflux_flux'
    Float 'i_psfflux_mag'
    Float 'i_psfflux_fluxsigma'
    Float 'i_psfflux_magsigma'
    Float 'i_psfflux_area'
    Float 'i_psfflux_apcorr'
    Float 'i_psfflux_apcorrsigma'
    Integer 'i_psfflux_flag', count: 2
    Integer 'i_psfflux_flag_nogoodpixels', count: 2
    Integer 'i_psfflux_flag_edge', count: 2
    Integer 'i_psfflux_flag_apcorr', count: 2
    Integer 'i_psfflux_flag_badcentroid', count: 2
    Float 'i_kronflux_flux'
    Float 'i_kronflux_mag'
    Float 'i_kronflux_fluxsigma'
    Float 'i_kronflux_magsigma'
    Float 'i_kronflux_radius'
    Float 'i_kronflux_radius_for_radius'
    Float 'i_kronflux_psf_radius'
    Float 'i_kronflux_apcorr'
    Float 'i_kronflux_apcorrsigma'
    Integer 'i_kronflux_flag', count: 2
    Integer 'i_kronflux_flag_edge', count: 2
    Integer 'i_kronflux_flag_bad_shape_no_psf', count: 2
    Integer 'i_kronflux_flag_no_minimum_radius', count: 2
    Integer 'i_kronflux_flag_no_fallback_radius', count: 2
    Integer 'i_kronflux_flag_bad_radius', count: 2
    Integer 'i_kronflux_flag_used_minimum_radius', count: 2
    Integer 'i_kronflux_flag_used_psf_radius', count: 2
    Integer 'i_kronflux_flag_small_radius', count: 2
    Integer 'i_kronflux_flag_bad_shape', count: 2
    Integer 'i_kronflux_flag_apcorr', count: 2
    Integer 'i_kronflux_flag_badinitialcentroid', count: 2
    Float 'i_sdssshape_shape11'
    Float 'i_sdssshape_shape22'
    Float 'i_sdssshape_shape12'
    Float 'i_sdssshape_shape11sigma'
    Float 'i_sdssshape_shape22sigma'
    Float 'i_sdssshape_shape12sigma'
    Float 'i_sdssshape_ra'
    Float 'i_sdssshape_dec'
    Float 'i_sdssshape_flux'
    Float 'i_sdssshape_mag'
    Float 'i_sdssshape_fluxsigma'
    Float 'i_sdssshape_magsigma'
    Float 'i_sdssshape_psf_shape11'
    Float 'i_sdssshape_psf_shape22'
    Float 'i_sdssshape_psf_shape12'
    Float 'i_sdssshape_flux_shape11_cov'
    Float 'i_sdssshape_flux_shape22_cov'
    Float 'i_sdssshape_flux_shape12_cov'
    Integer 'i_sdssshape_flag', count: 2
    Integer 'i_sdssshape_flag_unweightedbad', count: 2
    Integer 'i_sdssshape_flag_unweighted', count: 2
    Integer 'i_sdssshape_flag_shift', count: 2
    Integer 'i_sdssshape_flag_maxiter', count: 2
    Integer 'i_sdssshape_flag_psf', count: 2
    Integer 'i_sdssshape_flag_badcentroid', count: 2
    Float 'i_doubleshapeletpsfapprox_0_shape11'
    Float 'i_doubleshapeletpsfapprox_0_shape22'
    Float 'i_doubleshapeletpsfapprox_0_shape12'
    Float 'i_doubleshapeletpsfapprox_0_ra'
    Float 'i_doubleshapeletpsfapprox_0_dec'
    Float 'i_doubleshapeletpsfapprox_0_0'
    Float 'i_doubleshapeletpsfapprox_0_1'
    Float 'i_doubleshapeletpsfapprox_0_2'
    Float 'i_doubleshapeletpsfapprox_0_3'
    Float 'i_doubleshapeletpsfapprox_0_4'
    Float 'i_doubleshapeletpsfapprox_0_5'
    Float 'i_doubleshapeletpsfapprox_1_shape11'
    Float 'i_doubleshapeletpsfapprox_1_shape22'
    Float 'i_doubleshapeletpsfapprox_1_shape12'
    Float 'i_doubleshapeletpsfapprox_1_ra'
    Float 'i_doubleshapeletpsfapprox_1_dec'
    Float 'i_doubleshapeletpsfapprox_1_0'
    Float 'i_doubleshapeletpsfapprox_1_1'
    Float 'i_doubleshapeletpsfapprox_1_2'
    Integer 'i_doubleshapeletpsfapprox_flag', count: 2
    Integer 'i_doubleshapeletpsfapprox_flag_invalidpointforpsf', count: 2
    Integer 'i_doubleshapeletpsfapprox_flag_invalidmoments', count: 2
    Integer 'i_doubleshapeletpsfapprox_flag_maxiterations', count: 2
    Integer 'i_doubleshapeletpsfapprox_flag_badcentroid', count: 2
    Float 'i_undeblended_psfflux_flux'
    Float 'i_undeblended_psfflux_mag'
    Float 'i_undeblended_psfflux_fluxsigma'
    Float 'i_undeblended_psfflux_magsigma'
    Float 'i_undeblended_psfflux_area'
    Integer 'i_undeblended_psfflux_flag', count: 2
    Integer 'i_undeblended_psfflux_flag_nogoodpixels', count: 2
    Integer 'i_undeblended_psfflux_flag_edge', count: 2
    Integer 'i_undeblended_psfflux_flag_badcentroid', count: 2
    Float 'i_undeblended_kronflux_flux'
    Float 'i_undeblended_kronflux_mag'
    Float 'i_undeblended_kronflux_fluxsigma'
    Float 'i_undeblended_kronflux_magsigma'
    Float 'i_undeblended_kronflux_radius'
    Float 'i_undeblended_kronflux_radius_for_radius'
    Float 'i_undeblended_kronflux_psf_radius'
    Integer 'i_undeblended_kronflux_flag', count: 2
    Integer 'i_undeblended_kronflux_flag_edge', count: 2
    Integer 'i_undeblended_kronflux_flag_bad_shape_no_psf', count: 2
    Integer 'i_undeblended_kronflux_flag_no_minimum_radius', count: 2
    Integer 'i_undeblended_kronflux_flag_no_fallback_radius', count: 2
    Integer 'i_undeblended_kronflux_flag_bad_radius', count: 2
    Integer 'i_undeblended_kronflux_flag_used_minimum_radius', count: 2
    Integer 'i_undeblended_kronflux_flag_used_psf_radius', count: 2
    Integer 'i_undeblended_kronflux_flag_small_radius', count: 2
    Integer 'i_undeblended_kronflux_flag_bad_shape', count: 2
    Integer 'i_undeblended_kronflux_flag_badinitialcentroid', count: 2
    Float 'z_sdsscentroid_ra'
    Float 'z_sdsscentroid_dec'
    Float 'z_sdsscentroid_rasigma'
    Float 'z_sdsscentroid_decsigma'
    Integer 'z_sdsscentroid_flag', count: 2
    Integer 'z_sdsscentroid_flag_edge', count: 2
    Integer 'z_sdsscentroid_flag_nosecondderivative', count: 2
    Integer 'z_sdsscentroid_flag_almostnosecondderivative', count: 2
    Integer 'z_sdsscentroid_flag_notatmaximum', count: 2
    Integer 'z_sdsscentroid_flag_resettopeak', count: 2
    Integer 'z_sdsscentroid_flag_badinitialcentroid', count: 2
    Float 'z_gaussianflux_flux'
    Float 'z_gaussianflux_mag'
    Float 'z_gaussianflux_fluxsigma'
    Float 'z_gaussianflux_magsigma'
    Float 'z_gaussianflux_apcorr'
    Float 'z_gaussianflux_apcorrsigma'
    Integer 'z_gaussianflux_flag', count: 2
    Integer 'z_gaussianflux_flag_apcorr', count: 2
    Integer 'z_gaussianflux_flag_badcentroid', count: 2
    Integer 'z_gaussianflux_flag_badshape', count: 2
    Float 'z_psfflux_flux'
    Float 'z_psfflux_mag'
    Float 'z_psfflux_fluxsigma'
    Float 'z_psfflux_magsigma'
    Float 'z_psfflux_area'
    Float 'z_psfflux_apcorr'
    Float 'z_psfflux_apcorrsigma'
    Integer 'z_psfflux_flag', count: 2
    Integer 'z_psfflux_flag_nogoodpixels', count: 2
    Integer 'z_psfflux_flag_edge', count: 2
    Integer 'z_psfflux_flag_apcorr', count: 2
    Integer 'z_psfflux_flag_badcentroid', count: 2
    Float 'z_kronflux_flux'
    Float 'z_kronflux_mag'
    Float 'z_kronflux_fluxsigma'
    Float 'z_kronflux_magsigma'
    Float 'z_kronflux_radius'
    Float 'z_kronflux_radius_for_radius'
    Float 'z_kronflux_psf_radius'
    Float 'z_kronflux_apcorr'
    Float 'z_kronflux_apcorrsigma'
    Integer 'z_kronflux_flag', count: 2
    Integer 'z_kronflux_flag_edge', count: 2
    Integer 'z_kronflux_flag_bad_shape_no_psf', count: 2
    Integer 'z_kronflux_flag_no_minimum_radius', count: 2
    Integer 'z_kronflux_flag_no_fallback_radius', count: 2
    Integer 'z_kronflux_flag_bad_radius', count: 2
    Integer 'z_kronflux_flag_used_minimum_radius', count: 2
    Integer 'z_kronflux_flag_used_psf_radius', count: 2
    Integer 'z_kronflux_flag_small_radius', count: 2
    Integer 'z_kronflux_flag_bad_shape', count: 2
    Integer 'z_kronflux_flag_apcorr', count: 2
    Integer 'z_kronflux_flag_badinitialcentroid', count: 2
    Float 'z_sdssshape_shape11'
    Float 'z_sdssshape_shape22'
    Float 'z_sdssshape_shape12'
    Float 'z_sdssshape_shape11sigma'
    Float 'z_sdssshape_shape22sigma'
    Float 'z_sdssshape_shape12sigma'
    Float 'z_sdssshape_ra'
    Float 'z_sdssshape_dec'
    Float 'z_sdssshape_flux'
    Float 'z_sdssshape_mag'
    Float 'z_sdssshape_fluxsigma'
    Float 'z_sdssshape_magsigma'
    Float 'z_sdssshape_psf_shape11'
    Float 'z_sdssshape_psf_shape22'
    Float 'z_sdssshape_psf_shape12'
    Float 'z_sdssshape_flux_shape11_cov'
    Float 'z_sdssshape_flux_shape22_cov'
    Float 'z_sdssshape_flux_shape12_cov'
    Integer 'z_sdssshape_flag', count: 2
    Integer 'z_sdssshape_flag_unweightedbad', count: 2
    Integer 'z_sdssshape_flag_unweighted', count: 2
    Integer 'z_sdssshape_flag_shift', count: 2
    Integer 'z_sdssshape_flag_maxiter', count: 2
    Integer 'z_sdssshape_flag_psf', count: 2
    Integer 'z_sdssshape_flag_badcentroid', count: 2
    Float 'z_doubleshapeletpsfapprox_0_shape11'
    Float 'z_doubleshapeletpsfapprox_0_shape22'
    Float 'z_doubleshapeletpsfapprox_0_shape12'
    Float 'z_doubleshapeletpsfapprox_0_ra'
    Float 'z_doubleshapeletpsfapprox_0_dec'
    Float 'z_doubleshapeletpsfapprox_0_0'
    Float 'z_doubleshapeletpsfapprox_0_1'
    Float 'z_doubleshapeletpsfapprox_0_2'
    Float 'z_doubleshapeletpsfapprox_0_3'
    Float 'z_doubleshapeletpsfapprox_0_4'
    Float 'z_doubleshapeletpsfapprox_0_5'
    Float 'z_doubleshapeletpsfapprox_1_shape11'
    Float 'z_doubleshapeletpsfapprox_1_shape22'
    Float 'z_doubleshapeletpsfapprox_1_shape12'
    Float 'z_doubleshapeletpsfapprox_1_ra'
    Float 'z_doubleshapeletpsfapprox_1_dec'
    Float 'z_doubleshapeletpsfapprox_1_0'
    Float 'z_doubleshapeletpsfapprox_1_1'
    Float 'z_doubleshapeletpsfapprox_1_2'
    Integer 'z_doubleshapeletpsfapprox_flag', count: 2
    Integer 'z_doubleshapeletpsfapprox_flag_invalidpointforpsf', count: 2
    Integer 'z_doubleshapeletpsfapprox_flag_invalidmoments', count: 2
    Integer 'z_doubleshapeletpsfapprox_flag_maxiterations', count: 2
    Integer 'z_doubleshapeletpsfapprox_flag_badcentroid', count: 2
    Float 'z_undeblended_psfflux_flux'
    Float 'z_undeblended_psfflux_mag'
    Float 'z_undeblended_psfflux_fluxsigma'
    Float 'z_undeblended_psfflux_magsigma'
    Float 'z_undeblended_psfflux_area'
    Integer 'z_undeblended_psfflux_flag', count: 2
    Integer 'z_undeblended_psfflux_flag_nogoodpixels', count: 2
    Integer 'z_undeblended_psfflux_flag_edge', count: 2
    Integer 'z_undeblended_psfflux_flag_badcentroid', count: 2
    Float 'z_undeblended_kronflux_flux'
    Float 'z_undeblended_kronflux_mag'
    Float 'z_undeblended_kronflux_fluxsigma'
    Float 'z_undeblended_kronflux_magsigma'
    Float 'z_undeblended_kronflux_radius'
    Float 'z_undeblended_kronflux_radius_for_radius'
    Float 'z_undeblended_kronflux_psf_radius'
    Integer 'z_undeblended_kronflux_flag', count: 2
    Integer 'z_undeblended_kronflux_flag_edge', count: 2
    Integer 'z_undeblended_kronflux_flag_bad_shape_no_psf', count: 2
    Integer 'z_undeblended_kronflux_flag_no_minimum_radius', count: 2
    Integer 'z_undeblended_kronflux_flag_no_fallback_radius', count: 2
    Integer 'z_undeblended_kronflux_flag_bad_radius', count: 2
    Integer 'z_undeblended_kronflux_flag_used_minimum_radius', count: 2
    Integer 'z_undeblended_kronflux_flag_used_psf_radius', count: 2
    Integer 'z_undeblended_kronflux_flag_small_radius', count: 2
    Integer 'z_undeblended_kronflux_flag_bad_shape', count: 2
    Integer 'z_undeblended_kronflux_flag_badinitialcentroid', count: 2
    Float 'y_sdsscentroid_ra'
    Float 'y_sdsscentroid_dec'
    Float 'y_sdsscentroid_rasigma'
    Float 'y_sdsscentroid_decsigma'
    Integer 'y_sdsscentroid_flag', count: 2
    Integer 'y_sdsscentroid_flag_edge', count: 2
    Integer 'y_sdsscentroid_flag_nosecondderivative', count: 2
    Integer 'y_sdsscentroid_flag_almostnosecondderivative', count: 2
    Integer 'y_sdsscentroid_flag_notatmaximum', count: 2
    Integer 'y_sdsscentroid_flag_resettopeak', count: 2
    Integer 'y_sdsscentroid_flag_badinitialcentroid', count: 2
    Float 'y_gaussianflux_flux'
    Float 'y_gaussianflux_mag'
    Float 'y_gaussianflux_fluxsigma'
    Float 'y_gaussianflux_magsigma'
    Float 'y_gaussianflux_apcorr'
    Float 'y_gaussianflux_apcorrsigma'
    Integer 'y_gaussianflux_flag', count: 2
    Integer 'y_gaussianflux_flag_apcorr', count: 2
    Integer 'y_gaussianflux_flag_badcentroid', count: 2
    Integer 'y_gaussianflux_flag_badshape', count: 2
    Float 'y_psfflux_flux'
    Float 'y_psfflux_mag'
    Float 'y_psfflux_fluxsigma'
    Float 'y_psfflux_magsigma'
    Float 'y_psfflux_area'
    Float 'y_psfflux_apcorr'
    Float 'y_psfflux_apcorrsigma'
    Integer 'y_psfflux_flag', count: 2
    Integer 'y_psfflux_flag_nogoodpixels', count: 2
    Integer 'y_psfflux_flag_edge', count: 2
    Integer 'y_psfflux_flag_apcorr', count: 2
    Integer 'y_psfflux_flag_badcentroid', count: 2
    Float 'y_kronflux_flux'
    Float 'y_kronflux_mag'
    Float 'y_kronflux_fluxsigma'
    Float 'y_kronflux_magsigma'
    Float 'y_kronflux_radius'
    Float 'y_kronflux_radius_for_radius'
    Float 'y_kronflux_psf_radius'
    Float 'y_kronflux_apcorr'
    Float 'y_kronflux_apcorrsigma'
    Integer 'y_kronflux_flag', count: 2
    Integer 'y_kronflux_flag_edge', count: 2
    Integer 'y_kronflux_flag_bad_shape_no_psf', count: 2
    Integer 'y_kronflux_flag_no_minimum_radius', count: 2
    Integer 'y_kronflux_flag_no_fallback_radius', count: 2
    Integer 'y_kronflux_flag_bad_radius', count: 2
    Integer 'y_kronflux_flag_used_minimum_radius', count: 2
    Integer 'y_kronflux_flag_used_psf_radius', count: 2
    Integer 'y_kronflux_flag_small_radius', count: 2
    Integer 'y_kronflux_flag_bad_shape', count: 2
    Integer 'y_kronflux_flag_apcorr', count: 2
    Integer 'y_kronflux_flag_badinitialcentroid', count: 2
    Float 'y_sdssshape_shape11'
    Float 'y_sdssshape_shape22'
    Float 'y_sdssshape_shape12'
    Float 'y_sdssshape_shape11sigma'
    Float 'y_sdssshape_shape22sigma'
    Float 'y_sdssshape_shape12sigma'
    Float 'y_sdssshape_ra'
    Float 'y_sdssshape_dec'
    Float 'y_sdssshape_flux'
    Float 'y_sdssshape_mag'
    Float 'y_sdssshape_fluxsigma'
    Float 'y_sdssshape_magsigma'
    Float 'y_sdssshape_psf_shape11'
    Float 'y_sdssshape_psf_shape22'
    Float 'y_sdssshape_psf_shape12'
    Float 'y_sdssshape_flux_shape11_cov'
    Float 'y_sdssshape_flux_shape22_cov'
    Float 'y_sdssshape_flux_shape12_cov'
    Integer 'y_sdssshape_flag', count: 2
    Integer 'y_sdssshape_flag_unweightedbad', count: 2
    Integer 'y_sdssshape_flag_unweighted', count: 2
    Integer 'y_sdssshape_flag_shift', count: 2
    Integer 'y_sdssshape_flag_maxiter', count: 2
    Integer 'y_sdssshape_flag_psf', count: 2
    Integer 'y_sdssshape_flag_badcentroid', count: 2
    Float 'y_doubleshapeletpsfapprox_0_shape11'
    Float 'y_doubleshapeletpsfapprox_0_shape22'
    Float 'y_doubleshapeletpsfapprox_0_shape12'
    Float 'y_doubleshapeletpsfapprox_0_ra'
    Float 'y_doubleshapeletpsfapprox_0_dec'
    Float 'y_doubleshapeletpsfapprox_0_0'
    Float 'y_doubleshapeletpsfapprox_0_1'
    Float 'y_doubleshapeletpsfapprox_0_2'
    Float 'y_doubleshapeletpsfapprox_0_3'
    Float 'y_doubleshapeletpsfapprox_0_4'
    Float 'y_doubleshapeletpsfapprox_0_5'
    Float 'y_doubleshapeletpsfapprox_1_shape11'
    Float 'y_doubleshapeletpsfapprox_1_shape22'
    Float 'y_doubleshapeletpsfapprox_1_shape12'
    Float 'y_doubleshapeletpsfapprox_1_ra'
    Float 'y_doubleshapeletpsfapprox_1_dec'
    Float 'y_doubleshapeletpsfapprox_1_0'
    Float 'y_doubleshapeletpsfapprox_1_1'
    Float 'y_doubleshapeletpsfapprox_1_2'
    Integer 'y_doubleshapeletpsfapprox_flag', count: 2
    Integer 'y_doubleshapeletpsfapprox_flag_invalidpointforpsf', count: 2
    Integer 'y_doubleshapeletpsfapprox_flag_invalidmoments', count: 2
    Integer 'y_doubleshapeletpsfapprox_flag_maxiterations', count: 2
    Integer 'y_doubleshapeletpsfapprox_flag_badcentroid', count: 2
    Float 'y_undeblended_psfflux_flux'
    Float 'y_undeblended_psfflux_mag'
    Float 'y_undeblended_psfflux_fluxsigma'
    Float 'y_undeblended_psfflux_magsigma'
    Float 'y_undeblended_psfflux_area'
    Integer 'y_undeblended_psfflux_flag', count: 2
    Integer 'y_undeblended_psfflux_flag_nogoodpixels', count: 2
    Integer 'y_undeblended_psfflux_flag_edge', count: 2
    Integer 'y_undeblended_psfflux_flag_badcentroid', count: 2
    Float 'y_undeblended_kronflux_flux'
    Float 'y_undeblended_kronflux_mag'
    Float 'y_undeblended_kronflux_fluxsigma'
    Float 'y_undeblended_kronflux_magsigma'
    Float 'y_undeblended_kronflux_radius'
    Float 'y_undeblended_kronflux_radius_for_radius'
    Float 'y_undeblended_kronflux_psf_radius'
    Integer 'y_undeblended_kronflux_flag', count: 2
    Integer 'y_undeblended_kronflux_flag_edge', count: 2
    Integer 'y_undeblended_kronflux_flag_bad_shape_no_psf', count: 2
    Integer 'y_undeblended_kronflux_flag_no_minimum_radius', count: 2
    Integer 'y_undeblended_kronflux_flag_no_fallback_radius', count: 2
    Integer 'y_undeblended_kronflux_flag_bad_radius', count: 2
    Integer 'y_undeblended_kronflux_flag_used_minimum_radius', count: 2
    Integer 'y_undeblended_kronflux_flag_used_psf_radius', count: 2
    Integer 'y_undeblended_kronflux_flag_small_radius', count: 2
    Integer 'y_undeblended_kronflux_flag_bad_shape', count: 2
    Integer 'y_undeblended_kronflux_flag_badinitialcentroid', count: 2
    end) * 712_126_710

    (Entity 'pdr2_wide_random' do
    Integer 'dummy', count: 1
    ID 'object_id'
    Float 'ra'
    Float 'dec'
    Float 'coord_lon'
    Float 'coord_lat'
    Integer 'skymap_id'
    Integer 'tract'
    Integer 'patch'
    String 'patch_s'
    Integer 'parent_id'
    Integer 'nchild'
    Integer 'isprimary', count: 2
    Float 'adjust_density'
    Integer 'detect_ispatchinner', count: 2
    Integer 'detect_istractinner', count: 2
    Float 'g_pix_variance'
    Float 'g_sky_mean'
    Float 'g_sky_std'
    Integer 'g_inputcount_value'
    Integer 'g_inputcount_flag', count: 2
    Integer 'g_inputcount_flag_noinputs', count: 2
    Integer 'g_inputcount_flag_badcentroid', count: 2
    Integer 'g_pixelflags', count: 2
    Integer 'g_pixelflags_offimage', count: 2
    Integer 'g_pixelflags_edge', count: 2
    Integer 'g_pixelflags_bad', count: 2
    Integer 'g_pixelflags_interpolatedcenter', count: 2
    Integer 'g_pixelflags_saturatedcenter', count: 2
    Integer 'g_pixelflags_crcenter', count: 2
    Integer 'g_pixelflags_suspectcenter', count: 2
    Integer 'g_pixelflags_bright_objectcenter', count: 2
    Float 'g_sdssshape_psf_shape11'
    Float 'g_sdssshape_psf_shape22'
    Float 'g_sdssshape_psf_shape12'
    Float 'r_pix_variance'
    Float 'r_sky_mean'
    Float 'r_sky_std'
    Integer 'r_inputcount_value'
    Integer 'r_inputcount_flag', count: 2
    Integer 'r_inputcount_flag_noinputs', count: 2
    Integer 'r_inputcount_flag_badcentroid', count: 2
    Integer 'r_pixelflags', count: 2
    Integer 'r_pixelflags_offimage', count: 2
    Integer 'r_pixelflags_edge', count: 2
    Integer 'r_pixelflags_bad', count: 2
    Integer 'r_pixelflags_interpolatedcenter', count: 2
    Integer 'r_pixelflags_saturatedcenter', count: 2
    Integer 'r_pixelflags_crcenter', count: 2
    Integer 'r_pixelflags_suspectcenter', count: 2
    Integer 'r_pixelflags_bright_objectcenter', count: 2
    Float 'r_sdssshape_psf_shape11'
    Float 'r_sdssshape_psf_shape22'
    Float 'r_sdssshape_psf_shape12'
    Float 'i_pix_variance'
    Float 'i_sky_mean'
    Float 'i_sky_std'
    Integer 'i_inputcount_value'
    Integer 'i_inputcount_flag', count: 2
    Integer 'i_inputcount_flag_noinputs', count: 2
    Integer 'i_inputcount_flag_badcentroid', count: 2
    Integer 'i_pixelflags', count: 2
    Integer 'i_pixelflags_offimage', count: 2
    Integer 'i_pixelflags_edge', count: 2
    Integer 'i_pixelflags_bad', count: 2
    Integer 'i_pixelflags_interpolatedcenter', count: 2
    Integer 'i_pixelflags_saturatedcenter', count: 2
    Integer 'i_pixelflags_crcenter', count: 2
    Integer 'i_pixelflags_suspectcenter', count: 2
    Integer 'i_pixelflags_bright_objectcenter', count: 2
    Float 'i_sdssshape_psf_shape11'
    Float 'i_sdssshape_psf_shape22'
    Float 'i_sdssshape_psf_shape12'
    Float 'z_pix_variance'
    Float 'z_sky_mean'
    Float 'z_sky_std'
    Integer 'z_inputcount_value'
    Integer 'z_inputcount_flag', count: 2
    Integer 'z_inputcount_flag_noinputs', count: 2
    Integer 'z_inputcount_flag_badcentroid', count: 2
    Integer 'z_pixelflags', count: 2
    Integer 'z_pixelflags_offimage', count: 2
    Integer 'z_pixelflags_edge', count: 2
    Integer 'z_pixelflags_bad', count: 2
    Integer 'z_pixelflags_interpolatedcenter', count: 2
    Integer 'z_pixelflags_saturatedcenter', count: 2
    Integer 'z_pixelflags_crcenter', count: 2
    Integer 'z_pixelflags_suspectcenter', count: 2
    Integer 'z_pixelflags_bright_objectcenter', count: 2
    Float 'z_sdssshape_psf_shape11'
    Float 'z_sdssshape_psf_shape22'
    Float 'z_sdssshape_psf_shape12'
    Float 'y_pix_variance'
    Float 'y_sky_mean'
    Float 'y_sky_std'
    Integer 'y_inputcount_value'
    Integer 'y_inputcount_flag', count: 2
    Integer 'y_inputcount_flag_noinputs', count: 2
    Integer 'y_inputcount_flag_badcentroid', count: 2
    Integer 'y_pixelflags', count: 2
    Integer 'y_pixelflags_offimage', count: 2
    Integer 'y_pixelflags_edge', count: 2
    Integer 'y_pixelflags_bad', count: 2
    Integer 'y_pixelflags_interpolatedcenter', count: 2
    Integer 'y_pixelflags_saturatedcenter', count: 2
    Integer 'y_pixelflags_crcenter', count: 2
    Integer 'y_pixelflags_suspectcenter', count: 2
    Integer 'y_pixelflags_bright_objectcenter', count: 2
    Float 'y_sdssshape_psf_shape11'
    Float 'y_sdssshape_psf_shape22'
    Float 'y_sdssshape_psf_shape12'
    end) * 596_048_526

    (Entity 'pdr2_wide_mosaic' do
    Integer 'dummy', count: 1
    ID 'skymap_id'
    ID 'filter01'
    Integer 'tract'
    String 'patch'
    Integer 'pointing'
    String 'object'
    Integer 'naxis1'
    Integer 'naxis2'
    String 'ra'
    String 'dec'
    Float 'equinox'
    Float 'ra2000'
    Float 'dec2000'
    String 'radecsys'
    String 'ctype1'
    String 'ctype2'
    String 'cunit1'
    String 'cunit2'
    Float 'crpix1'
    Float 'crpix2'
    Float 'crval1'
    Float 'crval2'
    Float 'cd1_1'
    Float 'cd1_2'
    Float 'cd2_1'
    Float 'cd2_2'
    Float 'ltv1'
    Float 'ltv2'
    Float 'llcra'
    Float 'llcdec'
    Float 'ulcra'
    Float 'ulcdec'
    Float 'urcra'
    Float 'urcdec'
    Float 'lrcra'
    Float 'lrcdec'
    Float 'mjd'
    Float 'mjd_str'
    Float 'mjd_end'
    # Time 'taiobs'
    String 'filter'
    Float 'exptime'
    String 'data_typ'
    Float 'seeing'
    Float 'ellipt'
    Float 'ell_pa'
    Integer 'wcs_nobj'
    Float 'wcs_rms'
    Float 'fluxmag0'
    Float 'fluxmag0err'
    Float 'zeropt'
    Float 'zeropt_err'
    Float 'magzero'
    Float 'magzero_rms'
    Integer 'magzero_nobj'
    Float 'transp'
    Float 'maglimit'
    Float 'colorterm1'
    Float 'colorterm2'
    Float 'colorterm3'
    String 'color'
    Integer 'nobj_bright'
    Integer 'nobj_matched'
    Integer 'flag_auto'
    Integer 'regist_id'
    String 'refcat'
    end) * 181_109

    (Entity 'public_skymap' do
    Integer 'dummy', count: 1
    ID 'skymap_id'
    Float 'patch_area_1'
    Float 'patch_area_2'
    Float 'patch_area_3'
    Float 'patch_area_4'
    Float 'patch_area_5'
    Float 'patch_area_6'
    Float 'wcs_1'
    Float 'wcs_2'
    Float 'wcs_3'
    Float 'wcs_4'
    Float 'wcs_5'
    Float 'wcs_6'
    Integer 'naxis'
    Integer 'naxis1'
    Integer 'naxis2'
    Integer 'pcount'
    Integer 'gcount'
    Float 'equinox'
    String 'radesys'
    Integer 'crpix1'
    Integer 'crpix2'
    Float 'cd1_1'
    Float 'cd1_2'
    Float 'cd2_1'
    Float 'cd2_2'
    Float 'crval1'
    Float 'crval2'
    String 'cunit1'
    String 'cunit2'
    String 'ctype1'
    String 'ctype2'
    Integer 'ltv1'
    Integer 'ltv2'
    Integer 'crval1a'
    Integer 'crval2a'
    Integer 'crpix1a'
    Integer 'crpix2a'
    String 'ctype1a'
    String 'ctype2a'
    String 'cunit1a'
    String 'cunit2a'
    end) * 1_533_978
end

# rubocop:enable all
