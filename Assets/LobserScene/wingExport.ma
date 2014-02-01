//Maya ASCII 2014 scene
//Name: wingExport.ma
//Last modified: Fri, Jan 31, 2014 12:59:17 PM
//Codeset: UTF-8
requires maya "2014";
requires -nodeType "mentalrayFramebuffer" -nodeType "mentalrayOutputPass" -nodeType "mentalrayRenderPass"
		 -nodeType "mentalrayUserBuffer" -nodeType "mentalraySubdivApprox" -nodeType "mentalrayCurveApprox"
		 -nodeType "mentalraySurfaceApprox" -nodeType "mentalrayDisplaceApprox" -nodeType "mentalrayOptions"
		 -nodeType "mentalrayGlobals" -nodeType "mentalrayItemsList" -nodeType "mentalrayShader"
		 -nodeType "mentalrayUserData" -nodeType "mentalrayText" -nodeType "mentalrayTessellation"
		 -nodeType "mentalrayPhenomenon" -nodeType "mentalrayLightProfile" -nodeType "mentalrayVertexColors"
		 -nodeType "mentalrayIblShape" -nodeType "mapVizShape" -nodeType "mentalrayCCMeshProxy"
		 -nodeType "cylindricalLightLocator" -nodeType "discLightLocator" -nodeType "rectangularLightLocator"
		 -nodeType "sphericalLightLocator" -nodeType "abcimport" -nodeType "mia_physicalsun"
		 -nodeType "mia_physicalsky" -nodeType "mia_material" -nodeType "mia_material_x" -nodeType "mia_roundcorners"
		 -nodeType "mia_exposure_simple" -nodeType "mia_portal_light" -nodeType "mia_light_surface"
		 -nodeType "mia_exposure_photographic" -nodeType "mia_exposure_photographic_rev" -nodeType "mia_lens_bokeh"
		 -nodeType "mia_envblur" -nodeType "mia_ciesky" -nodeType "mia_photometric_light"
		 -nodeType "mib_texture_vector" -nodeType "mib_texture_remap" -nodeType "mib_texture_rotate"
		 -nodeType "mib_bump_basis" -nodeType "mib_bump_map" -nodeType "mib_passthrough_bump_map"
		 -nodeType "mib_bump_map2" -nodeType "mib_lookup_spherical" -nodeType "mib_lookup_cube1"
		 -nodeType "mib_lookup_cube6" -nodeType "mib_lookup_background" -nodeType "mib_lookup_cylindrical"
		 -nodeType "mib_texture_lookup" -nodeType "mib_texture_lookup2" -nodeType "mib_texture_filter_lookup"
		 -nodeType "mib_texture_checkerboard" -nodeType "mib_texture_polkadot" -nodeType "mib_texture_polkasphere"
		 -nodeType "mib_texture_turbulence" -nodeType "mib_texture_wave" -nodeType "mib_reflect"
		 -nodeType "mib_refract" -nodeType "mib_transparency" -nodeType "mib_continue" -nodeType "mib_opacity"
		 -nodeType "mib_twosided" -nodeType "mib_refraction_index" -nodeType "mib_dielectric"
		 -nodeType "mib_ray_marcher" -nodeType "mib_illum_lambert" -nodeType "mib_illum_phong"
		 -nodeType "mib_illum_ward" -nodeType "mib_illum_ward_deriv" -nodeType "mib_illum_blinn"
		 -nodeType "mib_illum_cooktorr" -nodeType "mib_illum_hair" -nodeType "mib_volume"
		 -nodeType "mib_color_alpha" -nodeType "mib_color_average" -nodeType "mib_color_intensity"
		 -nodeType "mib_color_interpolate" -nodeType "mib_color_mix" -nodeType "mib_color_spread"
		 -nodeType "mib_geo_cube" -nodeType "mib_geo_torus" -nodeType "mib_geo_sphere" -nodeType "mib_geo_cone"
		 -nodeType "mib_geo_cylinder" -nodeType "mib_geo_square" -nodeType "mib_geo_instance"
		 -nodeType "mib_geo_instance_mlist" -nodeType "mib_geo_add_uv_texsurf" -nodeType "mib_photon_basic"
		 -nodeType "mib_light_infinite" -nodeType "mib_light_point" -nodeType "mib_light_spot"
		 -nodeType "mib_light_photometric" -nodeType "mib_cie_d" -nodeType "mib_blackbody"
		 -nodeType "mib_shadow_transparency" -nodeType "mib_lens_stencil" -nodeType "mib_lens_clamp"
		 -nodeType "mib_lightmap_write" -nodeType "mib_lightmap_sample" -nodeType "mib_amb_occlusion"
		 -nodeType "mib_fast_occlusion" -nodeType "mib_map_get_scalar" -nodeType "mib_map_get_integer"
		 -nodeType "mib_map_get_vector" -nodeType "mib_map_get_color" -nodeType "mib_map_get_transform"
		 -nodeType "mib_map_get_scalar_array" -nodeType "mib_map_get_integer_array" -nodeType "mib_fg_occlusion"
		 -nodeType "mib_bent_normal_env" -nodeType "mib_glossy_reflection" -nodeType "mib_glossy_refraction"
		 -nodeType "builtin_bsdf_architectural" -nodeType "builtin_bsdf_architectural_comp"
		 -nodeType "builtin_bsdf_carpaint" -nodeType "builtin_bsdf_ashikhmin" -nodeType "builtin_bsdf_lambert"
		 -nodeType "builtin_bsdf_mirror" -nodeType "builtin_bsdf_phong" -nodeType "contour_store_function"
		 -nodeType "contour_store_function_simple" -nodeType "contour_contrast_function_levels"
		 -nodeType "contour_contrast_function_simple" -nodeType "contour_shader_simple" -nodeType "contour_shader_silhouette"
		 -nodeType "contour_shader_maxcolor" -nodeType "contour_shader_curvature" -nodeType "contour_shader_factorcolor"
		 -nodeType "contour_shader_depthfade" -nodeType "contour_shader_framefade" -nodeType "contour_shader_layerthinner"
		 -nodeType "contour_shader_widthfromcolor" -nodeType "contour_shader_widthfromlightdir"
		 -nodeType "contour_shader_widthfromlight" -nodeType "contour_shader_combi" -nodeType "contour_only"
		 -nodeType "contour_composite" -nodeType "contour_ps" -nodeType "mi_metallic_paint"
		 -nodeType "mi_metallic_paint_x" -nodeType "mi_bump_flakes" -nodeType "mi_car_paint_phen"
		 -nodeType "mi_metallic_paint_output_mixer" -nodeType "mi_car_paint_phen_x" -nodeType "physical_lens_dof"
		 -nodeType "physical_light" -nodeType "dgs_material" -nodeType "dgs_material_photon"
		 -nodeType "dielectric_material" -nodeType "dielectric_material_photon" -nodeType "oversampling_lens"
		 -nodeType "path_material" -nodeType "parti_volume" -nodeType "parti_volume_photon"
		 -nodeType "transmat" -nodeType "transmat_photon" -nodeType "mip_rayswitch" -nodeType "mip_rayswitch_advanced"
		 -nodeType "mip_rayswitch_environment" -nodeType "mip_card_opacity" -nodeType "mip_motionblur"
		 -nodeType "mip_motion_vector" -nodeType "mip_matteshadow" -nodeType "mip_cameramap"
		 -nodeType "mip_mirrorball" -nodeType "mip_grayball" -nodeType "mip_gamma_gain" -nodeType "mip_render_subset"
		 -nodeType "mip_matteshadow_mtl" -nodeType "mip_binaryproxy" -nodeType "mip_rayswitch_stage"
		 -nodeType "mip_fgshooter" -nodeType "mib_ptex_lookup" -nodeType "misss_physical"
		 -nodeType "misss_physical_phen" -nodeType "misss_fast_shader" -nodeType "misss_fast_shader_x"
		 -nodeType "misss_fast_shader2" -nodeType "misss_fast_shader2_x" -nodeType "misss_skin_specular"
		 -nodeType "misss_lightmap_write" -nodeType "misss_lambert_gamma" -nodeType "misss_call_shader"
		 -nodeType "misss_set_normal" -nodeType "misss_fast_lmap_maya" -nodeType "misss_fast_simple_maya"
		 -nodeType "misss_fast_skin_maya" -nodeType "misss_fast_skin_phen" -nodeType "misss_fast_skin_phen_d"
		 -nodeType "misss_mia_skin2_phen" -nodeType "misss_mia_skin2_phen_d" -nodeType "misss_lightmap_phen"
		 -nodeType "misss_mia_skin2_surface_phen" -nodeType "surfaceSampler" -nodeType "mib_data_bool"
		 -nodeType "mib_data_int" -nodeType "mib_data_scalar" -nodeType "mib_data_vector"
		 -nodeType "mib_data_color" -nodeType "mib_data_string" -nodeType "mib_data_texture"
		 -nodeType "mib_data_shader" -nodeType "mib_data_bool_array" -nodeType "mib_data_int_array"
		 -nodeType "mib_data_scalar_array" -nodeType "mib_data_vector_array" -nodeType "mib_data_color_array"
		 -nodeType "mib_data_string_array" -nodeType "mib_data_texture_array" -nodeType "mib_data_shader_array"
		 -nodeType "mib_data_get_bool" -nodeType "mib_data_get_int" -nodeType "mib_data_get_scalar"
		 -nodeType "mib_data_get_vector" -nodeType "mib_data_get_color" -nodeType "mib_data_get_string"
		 -nodeType "mib_data_get_texture" -nodeType "mib_data_get_shader" -nodeType "mib_data_get_shader_bool"
		 -nodeType "mib_data_get_shader_int" -nodeType "mib_data_get_shader_scalar" -nodeType "mib_data_get_shader_vector"
		 -nodeType "mib_data_get_shader_color" -nodeType "user_ibl_env" -nodeType "user_ibl_rect"
		 -nodeType "mia_material_x_passes" -nodeType "mi_metallic_paint_x_passes" -nodeType "mi_car_paint_phen_x_passes"
		 -nodeType "misss_fast_shader_x_passes" -dataType "byteArray" "Mayatomr" "2014.0 - 3.11.1.13 ";
currentUnit -l centimeter -a degree -t film;
fileInfo "application" "maya";
fileInfo "product" "Maya 2014";
fileInfo "version" "2014";
fileInfo "cutIdentifier" "201310090405-890429";
fileInfo "osv" "Mac OS X 10.9";
createNode transform -s -n "persp";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -3.5438298538983624 4.2457904747042443 4.1504226875762367 ;
	setAttr ".r" -type "double3" -38.738352729640155 -32.999999999995858 -1.8961883265172245e-15 ;
createNode camera -s -n "perspShape" -p "persp";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999986;
	setAttr ".coi" 6.4635511256101061;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".tp" -type "double3" -1.498517851306566 0.013789484277367592 -0.022206193147484621 ;
	setAttr ".hc" -type "string" "viewSet -p %camera";
createNode transform -s -n "top";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -1.1605218011788829 100.10000000000002 0.1060402575988395 ;
	setAttr ".r" -type "double3" -89.999999999999986 0 0 ;
createNode camera -s -n "topShape" -p "top";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 100.1;
	setAttr ".ow" 12.99523102597488;
	setAttr ".imn" -type "string" "top";
	setAttr ".den" -type "string" "top_depth";
	setAttr ".man" -type "string" "top_mask";
	setAttr ".hc" -type "string" "viewSet -t %camera";
	setAttr ".o" yes;
createNode transform -s -n "front";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 0 100.1 ;
createNode camera -s -n "frontShape" -p "front";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 100.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "front";
	setAttr ".den" -type "string" "front_depth";
	setAttr ".man" -type "string" "front_mask";
	setAttr ".hc" -type "string" "viewSet -f %camera";
	setAttr ".o" yes;
createNode transform -s -n "side";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 100.1 0 0 ;
	setAttr ".r" -type "double3" 0 89.999999999999986 0 ;
createNode camera -s -n "sideShape" -p "side";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 100.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "side";
	setAttr ".den" -type "string" "side_depth";
	setAttr ".man" -type "string" "side_mask";
	setAttr ".hc" -type "string" "viewSet -s %camera";
	setAttr ".o" yes;
createNode transform -n "left";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -100.1 0 0 ;
	setAttr ".r" -type "double3" 0 -89.999999999999986 0 ;
createNode camera -n "leftShape" -p "left";
	setAttr -k off ".v";
	setAttr ".rnd" no;
	setAttr ".coi" 100.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "left1";
	setAttr ".den" -type "string" "left1_depth";
	setAttr ".man" -type "string" "left1_mask";
	setAttr ".hc" -type "string" "viewSet -ls %camera";
	setAttr ".o" yes;
createNode transform -n "wings";
createNode joint -n "root" -p "wings";
	setAttr ".t" -type "double3" 0 8.8817849910946404e-17 0 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".radi" 0.5;
createNode joint -n "leftWing" -p "root";
	setAttr ".t" -type "double3" -0.39620071912579358 -8.8817849910946404e-17 0 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".radi" 0.5;
createNode joint -n "LUWing" -p "leftWing";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" yes;
	setAttr ".t" -type "double3" -0.089426747842728749 0 -0.03781140044464977 ;
	setAttr ".r" -type "double3" 1.5423512774247343 -7.4043334708422863 1.6548087527027664 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 169.0221063173133 0 ;
	setAttr ".bps" -type "matrix" -0.94856787241525908 0.028637045756577072 -0.3152759284054592 0
		 0.036825753102921542 0.99912063431988452 -0.020045497864465713 0 0.31442464173469481 -0.030624788759554669 -0.94878831515962569 0
		 -0.48562746696852233 0 -0.03781140044464977 1;
	setAttr ".radi" 0.5;
createNode joint -n "joint2" -p "LUWing";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" yes;
	setAttr ".oc" 1;
	setAttr ".t" -type "double3" 0.89517207618414341 0.0039450344978657478 0.15307908307629298 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 0.023831039288017344 0 ;
	setAttr ".bps" -type "matrix" -0.94869856903398919 0.02864978105057972 -0.31488127152724527 0
		 0.036825753102921542 0.99912063431988452 -0.020045497864465713 0 0.31403007661888627 -0.030612875101588843 -0.94891936583502745 0
		 -1.2864818240003255 0.024888634492899072 -0.46535633334498661 1;
	setAttr ".radi" 0.5;
createNode joint -n "joint3" -p "joint2";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" yes;
	setAttr ".oc" 2;
	setAttr ".t" -type "double3" 0.51641577263524208 6.3768406059100789e-05 0.0026019886411649731 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -1.6300001888771913 4.9148792313993628 -0.26049906500905468 ;
	setAttr ".bps" -type "matrix" -0.97227206093374319 0.026641071413305246 -0.23233013760939925 0
		 0.025911566364843229 0.9996450636670754 0.0061917214544224483 0 0.23241262929576684 -1.1102230246251565e-16 -0.97261727814378662 0
		 -1.7755852775140377 0.039667891286988319 -0.63043634414982819 1;
	setAttr ".radi" 0.5;
createNode joint -n "joint4" -p "joint3";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" yes;
	setAttr ".oc" 3;
	setAttr ".t" -type "double3" 0.41363419153227232 -1.951563910473908e-17 3.0531133177191805e-16 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0.66817926109542591 42.851495172084931 -0.54418193075375354 ;
	setAttr ".bps" -type "matrix" -0.87100324685571562 0.012569776275541525 0.49111642681871681 0
		 0.010949180963751415 0.99992099724147354 -0.0061737113505727142 0 -0.49115522943670697 1.0292259371253778e-14 -0.87107206395164305 0
		 -2.1777502453877826 0.050687549322584347 -0.7265360327884739 1;
	setAttr ".radi" 0.5;
createNode joint -n "joint5" -p "joint4";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" yes;
	setAttr ".oc" 4;
	setAttr ".t" -type "double3" 0.34577590761764415 -2.0816681711721685e-17 -5.5511151231257827e-17 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0.044798142627941739 143.20197811746559 1.70935467081258 ;
	setAttr ".bps" -type "matrix" 0.99108573323954829 -0.033944894651548992 0.1288286206404522 0
		 0.036825753102921494 0.99912063431988463 -0.020045497864465592 0 -0.12803489085959735 0.024611017925450913 0.99146425276922789 0
		 -2.4789221836072328 0.055033875122810424 -0.5567198045592977 1;
	setAttr ".radi" 0.5;
createNode joint -n "joint11" -p "joint4";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" yes;
	setAttr ".oc" 4;
	setAttr ".t" -type "double3" 0.070405067477728761 -0.05157659996311531 -0.096637963815275868 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 7.9677100707098048e-17 51.411731200636169 -0.72021409641143697 ;
	setAttr ".bps" -type "matrix" -0.15939409398600768 3.719523538272372e-16 0.98721503371979669 0
		 1.6815983366865742e-14 1 2.3298454553955382e-15 0 -0.98721503371979702 1.6970071758114053e-14 -0.15939409398600746 0
		 -2.1921737679924833 0 -0.60746189798160832 1;
	setAttr ".radi" 0.5;
createNode joint -n "joint12" -p "joint11";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" yes;
	setAttr ".oc" 5;
	setAttr ".t" -type "double3" 0.63073384377744424 4.0324665849735369e-19 -2.2551405187698492e-17 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 99.171729030165849 0 ;
	setAttr ".bps" -type "matrix" 1.0000000000000002 -1.6812396971358197e-14 4.9960036108132044e-16 0
		 1.6815983366865742e-14 1 2.3298454553955382e-15 0 -6.6613381477509392e-16 -2.3377322572364008e-15 0.99999999999999978 0
		 -2.292709017567701 2.3500618449001823e-16 0.015208034871358245 1;
	setAttr ".radi" 0.5;
createNode joint -n "joint13" -p "joint3";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" yes;
	setAttr ".oc" 3;
	setAttr ".t" -type "double3" -0.015983516468746919 -0.03925600666636013 -0.096743834394450598 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 179.99999999999986 80.137179326714246 178.47339842658207 ;
	setAttr ".bps" -type "matrix" -0.062378286155182788 8.0758531398295581e-17 0.99805257848288831 0
		 2.5360264756188083e-15 1 6.826621120934168e-17 0 -0.99805257848288809 2.523957690075418e-15 -0.062378286155182844 0
		 -1.7835466245577234 0 -0.5328712289419294 1;
	setAttr ".radi" 0.5;
createNode joint -n "joint14" -p "joint13";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" yes;
	setAttr ".oc" 4;
	setAttr ".t" -type "double3" 0.67587530804181206 3.2887241879685569e-18 -4.7097742372770313e-16 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 93.576334374997344 0 ;
	setAttr ".bps" -type "matrix" 0.99999999999999967 -2.5240800593425213e-15 2.3731017151362721e-15 0
		 2.5360264756188083e-15 1 6.826621120934168e-17 0 -2.3314683517128287e-15 -7.6838894538532539e-17 0.99999999999999989 0
		 -1.8257065679279774 5.7871421473794743e-17 0.1416878649821175 1;
	setAttr ".radi" 0.5;
createNode joint -n "joint15" -p "joint2";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" yes;
	setAttr ".oc" 2;
	setAttr ".t" -type "double3" -0.022482314720909669 -0.027598799582577584 -0.10877805615208837 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 5.567823032777679 108.39212883652687 3.6425623504225033 ;
	setAttr ".bps" -type "matrix" -8.8817841970012523e-16 2.2551405187698492e-16 0.99999999999999989 0
		 1.0344156087249701e-14 1 -2.3245294578089215e-16 0 -0.99999999999999989 1.0345890810725678e-14 -7.2164496600635175e-16 0
		 -1.3003288120832857 6.9388939039072284e-18 -0.35450223776008982 1;
	setAttr ".radi" 0.5;
createNode joint -n "joint16" -p "joint15";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" yes;
	setAttr ".oc" 3;
	setAttr ".t" -type "double3" 0.53186390097857572 -4.982238693281189e-17 -3.5399516183127878e-16 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 89.999999999999986 0 ;
	setAttr ".bps" -type "matrix" 1 -1.0345890810725679e-14 9.4368957093138326e-16 0
		 1.0344156087249701e-14 1 -2.3245294578089215e-16 0 -1.1102230246251567e-15 2.2551405187698729e-16 1 0
		 -1.3003288120832859 7.7059290327869777e-17 0.17736166321848579 1;
	setAttr ".radi" 0.5;
createNode joint -n "LLWing" -p "leftWing";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" yes;
	setAttr ".t" -type "double3" -0.095809229466544799 0 0.051849050384568052 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 176.36007011592852 0 ;
	setAttr ".bps" -type "matrix" -0.99798272685861455 0 -0.063486036983288793 0 0 1 0 0
		 0.063486036983288793 0 -0.99798272685861455 0 -0.49200994859233838 0 0.051849050384568052 1;
	setAttr ".radi" 0.5;
createNode joint -n "joint7" -p "LLWing";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" yes;
	setAttr ".oc" 1;
	setAttr ".t" -type "double3" 0.45208988440675574 0 3.0531133177191805e-16 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 2.2129276428264384 0 ;
	setAttr ".bps" -type "matrix" -0.99968986441485197 0 -0.02490331275582397 0 0 1 0 0
		 0.02490331275582397 0 -0.99968986441485197 0 -0.94318784421778834 0 0.023147655263349696 1;
	setAttr ".radi" 0.5;
createNode joint -n "joint8" -p "joint7";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" yes;
	setAttr ".oc" 2;
	setAttr ".t" -type "double3" 0.46215734672288117 0 -2.5673907444456745e-16 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 5.4338462631366653 0 ;
	setAttr ".bps" -type "matrix" -0.99755571068224524 0 0.069875632986329095 0 0 1 0 0
		 -0.069875632986329095 0 -0.99755571068224524 0 -1.4052018595015132 0 0.011638406315508264 1;
	setAttr ".radi" 0.5;
createNode joint -n "joint9" -p "joint8";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" yes;
	setAttr ".oc" 3;
	setAttr ".t" -type "double3" 0.41026181642412413 0 -2.5673907444456745e-16 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 24.808025461901121 0 ;
	setAttr ".bps" -type "matrix" -0.8761816251228649 0 0.48198107825624747 0 0 1 0 0
		 -0.48198107825624747 0 -0.8761816251228649 0 -1.8144608773502693 0 0.040305710428265341 1;
	setAttr ".radi" 0.5;
createNode joint -n "joint10" -p "joint9";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" yes;
	setAttr ".oc" 4;
	setAttr ".t" -type "double3" 0.18979076813740683 0 -1.3877787807814457e-17 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 151.18513051620721 0 ;
	setAttr ".bps" -type "matrix" 0.99999999999999978 0 9.4368957093138306e-16 0 0 1 0 0
		 -9.4368957093138306e-16 0 0.99999999999999978 0 -1.9807520610102192 0 0.13178126949821417 1;
	setAttr ".radi" 0.5;
createNode joint -n "joint21" -p "joint9";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" yes;
	setAttr ".oc" 4;
	setAttr ".t" -type "double3" 0.031987947802515321 0 -0.095327075495047736 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 66.303094625171468 0 ;
	setAttr ".bps" -type "matrix" 0.089206584084616902 0 0.99601314517226824 0 0 1 0 0
		 -0.99601314517226824 0 0.089206584084616902 0 -1.7965422828061046 0 0.1392471279267872 1;
	setAttr ".radi" 0.5;
createNode joint -n "joint22" -p "joint21";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" yes;
	setAttr ".oc" 5;
	setAttr ".t" -type "double3" 0.48369997763657374 0 1.0625181290357943e-16 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 84.88203589103577 0 ;
	setAttr ".bps" -type "matrix" 1 0 5.2735593669694936e-16 0 0 1 0 0 -5.2735593669694936e-16 0 1 0
		 -1.7533930600793404 0 0.62101866397234684 1;
	setAttr ".radi" 0.5;
createNode joint -n "joint19" -p "joint8";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" yes;
	setAttr ".oc" 3;
	setAttr ".t" -type "double3" 0.0020343124966183193 0 -0.10921764024287316 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 99.850750208220958 0 ;
	setAttr ".bps" -type "matrix" 0.23950952976727935 0 0.97089401334577019 0 0 1 0 0
		 -0.97089401334577019 0 0.23950952976727935 0 -1.3995995478045831 0 0.12073123592041858 1;
	setAttr ".radi" 0.5;
createNode joint -n "joint20" -p "joint19";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" yes;
	setAttr ".oc" 4;
	setAttr ".t" -type "double3" 0.76547582938829684 0 -4.163336342344337e-17 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 76.14240576988739 0 ;
	setAttr ".bps" -type "matrix" 0.99999999999999989 0 7.7715611723760958e-16 0 0 1 0 0
		 -7.7715611723760958e-16 0 0.99999999999999989 0 -1.216260791859574 0 0.86392713603440419 1;
	setAttr ".radi" 0.5;
createNode joint -n "joint17" -p "joint7";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" yes;
	setAttr ".oc" 2;
	setAttr ".t" -type "double3" -0.025348377081342598 0 -0.071375215992841967 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 123.12047423860982 0 ;
	setAttr ".bps" -type "matrix" 0.52537471037935202 0 0.85087097358754182 0 0 1 0 0
		 -0.85087097358754182 0 0.52537471037935202 0 -0.91962480789708867 0 0.095131993824123892 1;
	setAttr ".radi" 0.5;
createNode joint -n "joint18" -p "joint17";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" yes;
	setAttr ".oc" 3;
	setAttr ".t" -type "double3" 0.65073670001831052 0 -1.214306433183765e-17 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 58.30652800263524 0 ;
	setAttr ".bps" -type "matrix" 0.99999999999999978 0 1.6653345369377348e-16 0 0 1 0 0
		 -1.6653345369377348e-16 0 0.99999999999999978 0 -0.57774420259175352 0 0.64882496331784789 1;
	setAttr ".radi" 0.5;
createNode joint -n "rightWing" -p "root";
	setAttr ".t" -type "double3" 0.396201 -8.8817849910946404e-17 0 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -180 0 0 ;
	setAttr ".radi" 0.5;
createNode joint -n "RUWing" -p "rightWing";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" yes;
	setAttr ".t" -type "double3" 0.08942599999999995 4.6305609981280235e-18 0.037811400000000002 ;
	setAttr ".r" -type "double3" 1.5423512774247343 -7.4043334708422863 1.6548087527027664 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 169.0221063173133 0 ;
	setAttr ".bps" -type "matrix" -0.94856787241525908 -0.028637045756577193 0.3152759284054592 0
		 0.036825753102921674 -0.9991206343198844 0.020045497864465713 0 0.31442464173469481 0.030624788759554711 0.94878831515962581 0
		 0.48562699999999998 0 -0.037811400000000002 1;
	setAttr ".radi" 0.5;
createNode joint -n "joint28" -p "RUWing";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" yes;
	setAttr ".oc" 1;
	setAttr ".t" -type "double3" -0.89517068300413571 -0.0039450433358636395 -0.15307919496491948 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 0.023831039288017351 0 ;
	setAttr ".bps" -type "matrix" -0.94869856903398919 -0.028649781050579842 0.31488127152724527 0
		 0.036825753102921674 -0.9991206343198844 0.020045497864465713 0 0.31403007661888627 0.030612875101588881 0.94891936583502756 0
		 1.2864800000000003 0.024888600000000056 -0.46535599999999999 1;
	setAttr ".radi" 0.5;
createNode joint -n "joint29" -p "joint28";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" yes;
	setAttr ".oc" 2;
	setAttr ".t" -type "double3" -0.51642198111301263 -6.357027809991353e-05 -0.0025999212719940296 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 1.6300042564182273 -4.9146777012179648 179.73951625776493 ;
	setAttr ".bps" -type "matrix" 0.97227123770805113 0.026641237644339982 -0.23233356361583216 0
		 -0.025911706219314684 0.99964505923691616 0.0061918514215157372 0 0.23241605754865141 -1.5577816814271728e-15 0.97261645893617388 0
		 1.7755899999999998 0.039667900000000103 -0.63043599999999989 1;
	setAttr ".radi" 0.5;
createNode joint -n "joint30" -p "joint29";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" yes;
	setAttr ".oc" 3;
	setAttr ".t" -type "double3" 0.41362943220249726 -1.0581813203458523e-16 -6.8001160258290838e-16 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -0.66820178629772586 -42.851821702611687 -0.54416437757976144 ;
	setAttr ".bps" -type "matrix" 0.871002173956965 0.012570056276808952 0.49111832245136056 0
		 -0.010949411416107608 0.99992099372160281 -0.0061738727264948161 0 -0.4911571269480689 2.0568745769274994e-15 0.87107099403442345 0
		 2.1777500000000001 0.050687500000000142 -0.72653599999999996 1;
	setAttr ".radi" 0.5;
createNode joint -n "joint31" -p "joint30";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" yes;
	setAttr ".oc" 4;
	setAttr ".t" -type "double3" 0.34577410826862093 1.214306433183765e-17 -1.5265566588595902e-16 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -179.95519524994606 36.798146581436256 1.7093425844813297 ;
	setAttr ".bps" -type "matrix" 0.99108573323954863 0.033944894651548901 -0.12882862064045247 0
		 0.036825753102921403 -0.99912063431988452 0.020045497864465679 0 -0.12803489085959735 -0.024611017925450996 -0.99146425276922834 0
		 2.47892 0.055033900000000149 -0.55671999999999988 1;
	setAttr ".radi" 0.5;
createNode joint -n "joint32" -p "joint30";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" yes;
	setAttr ".oc" 4;
	setAttr ".t" -type "double3" 0.070402129748501713 -0.051576533602918667 0.09663942177306406 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 -51.411181351446551 -0.72023014057079171 ;
	setAttr ".bps" -type "matrix" 0.1594014174528971 9.8530562840980337e-17 0.98721385125716676 0
		 3.1155633628543455e-15 1 -6.0281640790194047e-16 0 -0.98721385125716665 3.1703074951242678e-15 0.15940141745289721 0
		 2.1921699999999995 1.3877787807814457e-16 -0.60746199999999972 1;
	setAttr ".radi" 0.5;
createNode joint -n "joint33" -p "joint32";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" yes;
	setAttr ".oc" 5;
	setAttr ".t" -type "double3" 0.63073466727301453 6.403829528419439e-18 -3.2092384305570931e-16 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 180 80.827845931740981 0 ;
	setAttr ".bps" -type "matrix" 0.99999999999999989 -3.1140655605518052e-15 -1.3877787807814457e-16 0
		 -3.1155633628543455e-15 -1 7.2528108781667571e-16 0 -5.5511151231257827e-17 -7.2508692480786748e-16 -1 0
		 2.2927099999999996 2.0732834937629157e-16 0.015208000000000554 1;
	setAttr ".radi" 0.5;
createNode joint -n "joint34" -p "joint29";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" yes;
	setAttr ".oc" 3;
	setAttr ".t" -type "double3" -0.015985147032774157 -0.039255969442869638 0.096743356634195019 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -179.9999999999992 -80.136982660121092 178.47338889886296 ;
	setAttr ".bps" -type "matrix" 0.06237837826805534 2.9884489658715999e-16 0.9980525727258297 0
		 -3.0611666238300493e-15 1 -1.09213272455983e-16 0 -0.99805257272582959 -3.0534233133230474e-15 0.062378378268055229 0
		 1.78355 1.1102230246251565e-16 -0.53287100000000009 1;
	setAttr ".radi" 0.5;
createNode joint -n "joint35" -p "joint34";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" yes;
	setAttr ".oc" 4;
	setAttr ".t" -type "double3" 0.6758752178331443 6.6750092122411243e-18 1.8561541192951836e-16 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -180 86.423660337025979 0 ;
	setAttr ".bps" -type "matrix" 1 3.0661184534858857e-15 -3.8649639044763262e-15 0
		 3.0611666238300485e-15 -1 -1.3251407458752325e-17 0 -3.9829251008427491e-15 1.46693564808875e-17 -1.0000000000000002 0
		 1.8257099999999999 3.1967917125392641e-16 0.14168800000000015 1;
	setAttr ".radi" 0.5;
createNode joint -n "joint36" -p "joint28";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" yes;
	setAttr ".oc" 2;
	setAttr ".t" -type "double3" 0.022479426233416477 0.027598874120076784 0.10877891233819433 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 174.43217696722172 -71.607871163473078 3.6425623504224762 ;
	setAttr ".bps" -type "matrix" 5.5511151231257827e-17 2.8796409701214998e-16 0.99999999999999989 0
		 3.0010716134398763e-16 0.99999999999999978 -2.8796409701214998e-16 0 -0.99999999999999989 3.1225022567582528e-16 1.1102230246251565e-16 0
		 1.3003299999999998 8.3266726846886741e-17 -0.35450199999999982 1;
	setAttr ".radi" 0.5;
createNode joint -n "joint37" -p "joint36";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" yes;
	setAttr ".oc" 3;
	setAttr ".t" -type "double3" 0.53186399999999989 -1.4029366231994817e-18 -1.7592283185763272e-16 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 180 89.999999999999929 0 ;
	setAttr ".bps" -type "matrix" 0.99999999999999989 -3.1225022567582488e-16 1.3322676295501877e-15 0
		 -3.0010716134398778e-16 -0.99999999999999978 4.1042877692688527e-16 0 1.2767564783189298e-15 -4.1042877692688567e-16 -0.99999999999999989 0
		 1.30033 2.3502152671695728e-16 0.17736199999999996 1;
	setAttr ".radi" 0.5;
createNode joint -n "RLWing" -p "rightWing";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" yes;
	setAttr ".t" -type "double3" 0.095808999999999978 -6.3496834353671036e-18 -0.051849100000000002 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 180 -3.6399296613485257 4.463634757478627e-16 ;
	setAttr ".bps" -type "matrix" 0.99798272710540081 0 -0.063486033103881373 0 0 1 0 0
		 0.063486033103881373 0 0.99798272710540081 0 0.49201 0 0.051849100000000002 1;
	setAttr ".radi" 0.5;
createNode joint -n "joint39" -p "RLWing";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" yes;
	setAttr ".oc" 1;
	setAttr ".t" -type "double3" 0.4520899888804884 -3.5149077641047807e-18 2.7755575615628914e-17 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 -2.2129148708960673 0 ;
	setAttr ".bps" -type "matrix" 0.99968985896038043 0 -0.024903531712883661 0 0 1 0 0
		 0.024903531712883661 0 0.99968985896038043 0 0.94318800000000014 -3.5149077641047807e-18 0.023147699999999983 1;
	setAttr ".radi" 0.5;
createNode joint -n "joint40" -p "joint39";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" yes;
	setAttr ".oc" 2;
	setAttr ".t" -type "double3" 0.46215533333554631 -5.7964979298844601e-17 5.5511151231257827e-17 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 -5.4338486549823912 0 ;
	setAttr ".bps" -type "matrix" 0.99755572306974039 0 0.06987545614024554 0 0 1 0 0
		 -0.06987545614024554 0 0.99755572306974039 0 1.4052 -6.1479887062949375e-17 0.011638399999999941 1;
	setAttr ".radi" 0.5;
createNode joint -n "joint41" -p "joint40";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" yes;
	setAttr ".oc" 3;
	setAttr ".t" -type "double3" 0.41026279588733144 -4.6506189328386843e-17 2.1510571102112408e-16 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 -24.808139321660114 0 ;
	setAttr ".bps" -type "matrix" 0.87618075276060858 0 0.48198266409887947 0 0 1 0 0
		 -0.48198266409887947 0 0.87618075276060858 0 1.8144600000000002 -1.0798607639133621e-16 0.040305699999999889 1;
	setAttr ".radi" 0.5;
createNode joint -n "joint42" -p "joint41";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" yes;
	setAttr ".oc" 4;
	setAttr ".t" -type "double3" 0.18978960616980572 -9.8951607719255397e-18 -1.1102230246251565e-16 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -180 28.814973186190095 4.0301330830590697e-31 ;
	setAttr ".bps" -type "matrix" 1 6.1629758220391547e-33 -7.2164496600635175e-16 0
		 -9.2444637330587321e-32 -1 -1.2246467991473535e-16 0 -7.2164496600635175e-16 1.2246467991473532e-16 -1 0
		 1.98075 -1.1788123716326176e-16 0.13178099999999987 1;
	setAttr ".radi" 0.5;
createNode joint -n "joint43" -p "joint41";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" yes;
	setAttr ".oc" 4;
	setAttr ".t" -type "double3" 0.031986832273936221 1.3459349619696472e-17 0.095327592053765203 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 -66.303077723546409 0 ;
	setAttr ".bps" -type "matrix" -0.089208093003861011 0 0.996013010026784 0 0 1 0 0
		 -0.996013010026784 0 -0.089208093003861011 0 1.79654 -9.4526726771639736e-17 0.1392469999999999 1;
	setAttr ".radi" 0.5;
createNode joint -n "joint44" -p "joint43";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" yes;
	setAttr ".oc" 5;
	setAttr ".t" -type "double3" 0.48370050907974044 3.5193097255922247e-17 -4.2479041117982064e-16 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 84.881949090263461 180 ;
	setAttr ".bps" -type "matrix" 1 1.0924840555521955e-17 -1.5543122344752192e-15 0
		 1.0924840555521781e-17 -1 -1.219764144638422e-16 0 -1.457167719820518e-15 1.2197641446384215e-16 -1 0
		 1.75339 -5.9333629515717484e-17 0.62101899999999999 1;
	setAttr ".radi" 0.5;
createNode joint -n "joint45" -p "joint40";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" yes;
	setAttr ".oc" 3;
	setAttr ".t" -type "double3" 0.0020365831373348586 1.4378290795296807e-17 0.10921725002894335 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 260.14915101804314 0 ;
	setAttr ".bps" -type "matrix" -0.23951103139779303 0 0.97089364290779312 0 0 1 0 0
		 -0.97089364290779312 0 -0.23951103139779303 0 1.3996 -4.7101596267652568e-17 0.12073099999999995 1;
	setAttr ".radi" 0.5;
createNode joint -n "joint46" -p "joint45";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" yes;
	setAttr ".oc" 4;
	setAttr ".t" -type "double3" 0.76547622433097173 7.8408512552696917e-17 2.6367796834847468e-16 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 76.142317153513119 -180 ;
	setAttr ".bps" -type "matrix" 0.99999999999999989 -2.9331641796178979e-17 -1.1934897514720433e-15 0
		 -2.9331641796178837e-17 -1 1.1890017920995419e-16 0 -1.3045120539345589e-15 -1.1890017920995419e-16 -0.99999999999999989 0
		 1.2162600000000003 3.1306916285044349e-17 0.863927 1;
	setAttr ".radi" 0.5;
createNode joint -n "joint47" -p "joint39";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" yes;
	setAttr ".oc" 2;
	setAttr ".t" -type "double3" -0.025348355444563372 1.2255011697194286e-17 0.071375172796611014 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 236.87948505396582 0 ;
	setAttr ".bps" -type "matrix" -0.52537512854289026 0 0.85087071539014802 0 0 1 0 0
		 -0.85087071539014802 0 -0.52537512854289026 0 0.91962499999999991 8.740103933089505e-18 0.095131999999999967 1;
	setAttr ".radi" 0.5;
createNode joint -n "joint48" -p "joint47";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" yes;
	setAttr ".oc" 3;
	setAttr ".t" -type "double3" 0.65073693333788873 6.8024190751853262e-17 8.0230960763927328e-17 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 58.306499844418205 180 ;
	setAttr ".bps" -type "matrix" 1.0000000000000004 6.4339896952168058e-17 -1.0547118733938987e-15 0
		 6.4339896952167971e-17 -1 -1.0420160980907631e-16 0 -1.0547118733938987e-15 1.0420160980907621e-16 -1.0000000000000004 0
		 0.57774400000000037 7.6764294684942764e-17 0.64882500000000043 1;
	setAttr ".radi" 0.5;
createNode transform -n "wingGeo" -p "wings";
createNode transform -n "down" -p "wingGeo";
createNode transform -n "loftedSurface1" -p "down";
	setAttr -l on ".tx";
	setAttr -l on ".ty";
	setAttr -l on ".tz";
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
	setAttr ".rp" -type "double3" -1.2789530211365732 -0.33807029552251078 0.38073390174032296 ;
	setAttr ".sp" -type "double3" -1.2789530211365732 -0.33807029552251078 0.38073390174032296 ;
createNode mesh -n "loftedSurfaceShape1" -p "loftedSurface1";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".ds" no;
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".dn" yes;
	setAttr ".dr" 1;
	setAttr ".vcs" 2;
createNode mesh -n "loftedSurfaceShape1Orig" -p "loftedSurface1";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 24 ".uvst[0].uvsp[0:23]" -type "float2" 0.98014128 0.32331586
		 0.99682522 0.26472425 0.87840414 0.32172525 0.90232754 0.44778538 0.99762154 0.20858419
		 0.88354456 0.16806656 0.98285162 0.1489448 0.88868499 0.014407873 0.58359003 0.4760046
		 0.58485532 0.70876312 0.58232474 0.24324602 0.58105946 0.010487497 0.3506304 0.59866226
		 0.35624939 0.87975299 0.34501135 0.31757152 0.33939236 0.036480606 0.12457979 0.70230317
		 0.15283686 0.98564196 0.096322715 0.41896427 0.068065643 0.13562536 0.015049756 0.75701499
		 0.05951345 0.86708462 0.0023541451 0.62397051 0.012234271 0.45584536;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".ds" no;
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 24 ".pt[0:23]" -type "float3"  -0.015072341 0 0.055392049 
		-0.0084348908 0 0.052011032 -0.0022620405 0 0.052171547 0.0041034739 0 0.055837467 
		-0.029693939 0 0.072058812 -0.016149355 0 0.078174442 0.00078254839 0 0.077950932 
		0.017714454 0 0.07772743 -0.062249847 0 0.14154698 -0.036713146 0 0.14323461 -0.01117646 
		0 0.14492223 0.01436023 0 0.14660986 -0.083833583 0 0.19168632 -0.053044531 0 0.1946401 
		-0.022255495 0 0.19759388 0.0085335625 0 0.20054767 -0.097960584 0 0.23657918 -0.067203268 
		0 0.24461381 -0.036445931 0 0.25264844 -0.0056885914 0 0.26068306 -0.086093478 0 
		0.25818402 -0.074557044 0 0.26880085 -0.060107585 0 0.27244535 -0.041529238 0 0.27124825;
	setAttr -s 24 ".vt[0:23]"  -0.49637765 0.011471296 -0.16481248 -0.46893853 0.011471296 -0.1027396
		 -0.47348517 0.011471296 -0.046664059 -0.51001763 0.017174177 0.009411484 -0.64068812 -0.00010614906 -0.30616179
		 -0.70309567 0.037618916 -0.18600151 -0.70952827 0.044019435 -0.031856447 -0.71596098 0.040780444 0.12228862
		 -1.25655949 -0.00010614906 -0.63707423 -1.2846806 0.059416626 -0.40560499 -1.3128016 0.059504479 -0.17413586
		 -1.34092271 0.026085215 0.057333291 -1.70189643 -0.00010614906 -0.85849595 -1.74416208 0.050353721 -0.57987797
		 -1.78642786 0.03977723 -0.30126014 -1.82869363 0.014195544 -0.022642106 -2.10323334 -0.00010614906 -1.0094588995
		 -2.19170475 0.037477341 -0.73367 -2.2801764 0.031996854 -0.457881 -2.36864781 -0.0034666639 -0.18209192
		 -2.30571079 -0.00010614906 -0.91230357 -2.4080627 -0.00010614906 -0.81266248 -2.44844246 -0.00010614906 -0.68303478
		 -2.44684124 -0.00010614906 -0.51342487;
	setAttr -s 38 ".ed[0:37]"  0 1 1 1 5 1 5 4 1 4 0 1 1 2 1 2 6 1 6 5 1
		 2 3 1 3 7 1 7 6 1 5 9 1 9 8 1 8 4 1 6 10 1 10 9 1 7 11 1 11 10 1 9 13 1 13 12 1 12 8 1
		 10 14 1 14 13 1 11 15 1 15 14 1 13 17 1 17 16 1 16 12 1 14 18 1 18 17 1 15 19 1 19 18 1
		 17 21 1 21 20 1 20 16 1 18 22 1 22 21 1 19 23 1 23 22 1;
	setAttr -s 15 -ch 60 ".fc[0:14]" -type "polyFaces" 
		f 4 0 1 2 3
		mu 0 4 0 1 2 3
		f 4 4 5 6 -2
		mu 0 4 1 4 5 2
		f 4 7 8 9 -6
		mu 0 4 4 6 7 5
		f 4 -3 10 11 12
		mu 0 4 3 2 8 9
		f 4 -7 13 14 -11
		mu 0 4 2 5 10 8
		f 4 -10 15 16 -14
		mu 0 4 5 7 11 10
		f 4 -12 17 18 19
		mu 0 4 9 8 12 13
		f 4 -15 20 21 -18
		mu 0 4 8 10 14 12
		f 4 -17 22 23 -21
		mu 0 4 10 11 15 14
		f 4 -19 24 25 26
		mu 0 4 13 12 16 17
		f 4 -22 27 28 -25
		mu 0 4 12 14 18 16
		f 4 -24 29 30 -28
		mu 0 4 14 15 19 18
		f 4 -26 31 32 33
		mu 0 4 17 16 20 21
		f 4 -29 34 35 -32
		mu 0 4 16 18 22 20
		f 4 -31 36 37 -35
		mu 0 4 18 19 23 22;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".dn" yes;
	setAttr ".vcs" 2;
createNode transform -n "loftedSurface2" -p "down";
	setAttr -l on ".tx";
	setAttr -l on ".ty";
	setAttr -l on ".tz";
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
	setAttr ".rp" -type "double3" -1.2968548574423397 -0.82427822969294928 -0.02490189357877215 ;
	setAttr ".sp" -type "double3" -1.2968548574423397 -0.82427822969294928 -0.02490189357877215 ;
createNode mesh -n "loftedSurfaceShape2" -p "loftedSurface2";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".ds" no;
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".dn" yes;
	setAttr ".dr" 1;
	setAttr ".vcs" 2;
createNode mesh -n "loftedSurfaceShape2Orig" -p "loftedSurface2";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 40 ".uvst[0].uvsp[0:39]" -type "float2" 0.92810941 0.96570265
		 0.95315003 0.93879724 0.91207421 0.88020027 0.88819623 0.97875881 0.96575117 0.88924742
		 0.9437269 0.76142347 0.97265077 0.82918406 0.97693455 0.64992523 0.82204199 0.78239226
		 0.74763107 0.99302554 0.8964529 0.5717591 0.95889354 0.3777281 0.67866933 0.71688581
		 0.57346988 0.98801875 0.78386891 0.44575292 0.88906848 0.17462003 0.57477272 0.68574798
		 0.45802063 0.98768008 0.69152474 0.38381594 0.80827689 0.081883848 0.45911872 0.6705004
		 0.34478217 0.99193895 0.57345533 0.34906185 0.68779182 0.027623296 0.3388142 0.67123699
		 0.24840397 0.99128199 0.42922449 0.35119176 0.51963484 0.031146705 0.16948217 0.69231749
		 0.11793184 0.97103834 0.22103256 0.41359675 0.27258289 0.13487595 0.078876853 0.70589256
		 0.049153686 0.92446578 0.12285495 0.50147355 0.1551699 0.29503256 0.0077289343 0.72196507
		 0.0065231323 0.79717839 0.01930213 0.6507957 0.04772222 0.55334008;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".ds" no;
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 40 ".vt[0:39]"  -0.55506915 0.011024995 -0.019362327 -0.51627445 0.010065263 0.0074450299
		 -0.49672616 0.0097264443 0.056510877 -0.48599023 0.0096056443 0.11592555 -0.61690122 0.012639262 -0.032624606
		 -0.57980388 0.012133588 0.064930648 -0.53065175 0.010995589 0.18261398 -0.47914022 0.0093637332 0.29321265
		 -0.83473969 0.017012401 -0.047851376 -0.71918446 0.026012696 0.16078256 -0.60354048 0.022810336 0.36977148
		 -0.5066123 0.0086664129 0.56245911 -1.10457146 0.017086351 -0.04361707 -0.94108057 0.033898741 0.22460891
		 -0.77716106 0.02492049 0.49353829 -0.61403006 0.0087624686 0.76312321 -1.28325355 0.012937893 -0.043153066
		 -1.10165071 0.032073949 0.25512099 -0.91948819 0.024819624 0.55430925 -0.73839903 0.0092208767 0.85446572
		 -1.4583112 0.0057904092 -0.046747178 -1.28025866 0.026687767 0.27038494 -1.10143447 0.022161009 0.58839029
		 -0.92382956 0.0090261614 0.90757394 -1.60708618 -0.0022788616 -0.04524444 -1.46590757 0.01773249 0.27040115
		 -1.32368672 0.014791538 0.58653438 -1.18255758 0.0051890346 0.90366459 -1.80807805 -0.01532772 -0.023714462
		 -1.7266618 -0.0046793418 0.25130278 -1.64401889 -0.013177531 0.52626979 -1.56285846 -0.010252116 0.80185717
		 -1.91360211 -0.023357827 0.023243945 -1.86561561 -0.024658959 0.23894325 -1.7958703 -0.022728559 0.4405233
		 -1.74441624 -0.020859499 0.64442325 -1.97797346 -0.030551026 0.14970788 -1.97532892 -0.031915296 0.22407064
		 -1.95676446 -0.031925511 0.29428601 -1.9120183 -0.030252546 0.39026281;
	setAttr -s 66 ".ed[0:65]"  0 1 0 1 5 1 5 4 1 4 0 0 1 2 0 2 6 1 6 5 1
		 2 3 0 3 7 0 7 6 1 5 9 1 9 8 1 8 4 0 6 10 1 10 9 1 7 11 0 11 10 1 9 13 1 13 12 1 12 8 0
		 10 14 1 14 13 1 11 15 0 15 14 1 13 17 1 17 16 1 16 12 0 14 18 1 18 17 1 15 19 0 19 18 1
		 17 21 1 21 20 1 20 16 0 18 22 1 22 21 1 19 23 0 23 22 1 21 25 1 25 24 1 24 20 0 22 26 1
		 26 25 1 23 27 0 27 26 1 25 29 1 29 28 1 28 24 0 26 30 1 30 29 1 27 31 0 31 30 1 29 33 1
		 33 32 1 32 28 0 30 34 1 34 33 1 31 35 0 35 34 1 33 37 1 37 36 0 36 32 0 34 38 1 38 37 0
		 35 39 0 39 38 0;
	setAttr -s 27 -ch 108 ".fc[0:26]" -type "polyFaces" 
		f 4 0 1 2 3
		mu 0 4 0 1 2 3
		f 4 4 5 6 -2
		mu 0 4 1 4 5 2
		f 4 7 8 9 -6
		mu 0 4 4 6 7 5
		f 4 -3 10 11 12
		mu 0 4 3 2 8 9
		f 4 -7 13 14 -11
		mu 0 4 2 5 10 8
		f 4 -10 15 16 -14
		mu 0 4 5 7 11 10
		f 4 -12 17 18 19
		mu 0 4 9 8 12 13
		f 4 -15 20 21 -18
		mu 0 4 8 10 14 12
		f 4 -17 22 23 -21
		mu 0 4 10 11 15 14
		f 4 -19 24 25 26
		mu 0 4 13 12 16 17
		f 4 -22 27 28 -25
		mu 0 4 12 14 18 16
		f 4 -24 29 30 -28
		mu 0 4 14 15 19 18
		f 4 -26 31 32 33
		mu 0 4 17 16 20 21
		f 4 -29 34 35 -32
		mu 0 4 16 18 22 20
		f 4 -31 36 37 -35
		mu 0 4 18 19 23 22
		f 4 -33 38 39 40
		mu 0 4 21 20 24 25
		f 4 -36 41 42 -39
		mu 0 4 20 22 26 24
		f 4 -38 43 44 -42
		mu 0 4 22 23 27 26
		f 4 -40 45 46 47
		mu 0 4 25 24 28 29
		f 4 -43 48 49 -46
		mu 0 4 24 26 30 28
		f 4 -45 50 51 -49
		mu 0 4 26 27 31 30
		f 4 -47 52 53 54
		mu 0 4 29 28 32 33
		f 4 -50 55 56 -53
		mu 0 4 28 30 34 32
		f 4 -52 57 58 -56
		mu 0 4 30 31 35 34
		f 4 -54 59 60 61
		mu 0 4 33 32 36 37
		f 4 -57 62 63 -60
		mu 0 4 32 34 38 36
		f 4 -59 64 65 -63
		mu 0 4 34 35 39 38;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".dn" yes;
	setAttr ".vcs" 2;
createNode transform -n "loftedSurface4" -p "down";
	setAttr -l on ".tx";
	setAttr -l on ".ty";
	setAttr -l on ".tz";
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
	setAttr ".rp" -type "double3" 1.2789530211365732 -0.17982505982830888 0.38073390174032307 ;
	setAttr ".sp" -type "double3" 1.2789530211365732 -0.17982505982830888 0.38073390174032307 ;
createNode mesh -n "loftedSurfaceShape4" -p "loftedSurface4";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".ds" no;
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".dn" yes;
	setAttr ".dr" 1;
	setAttr ".vcs" 2;
createNode mesh -n "loftedSurfaceShape1Orig4" -p "loftedSurface4";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 24 ".uvst[0].uvsp[0:23]" -type "float2" 0.98014128 0.32331586
		 0.99682522 0.26472425 0.87840414 0.32172525 0.90232754 0.44778538 0.99762154 0.20858419
		 0.88354456 0.16806656 0.98285162 0.1489448 0.88868499 0.014407873 0.58359003 0.4760046
		 0.58485532 0.70876312 0.58232474 0.24324602 0.58105946 0.010487497 0.3506304 0.59866226
		 0.35624939 0.87975299 0.34501135 0.31757152 0.33939236 0.036480606 0.12457979 0.70230317
		 0.15283686 0.98564196 0.096322715 0.41896427 0.068065643 0.13562536 0.015049756 0.75701499
		 0.05951345 0.86708462 0.0023541451 0.62397051 0.012234271 0.45584536;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 24 ".vt[0:23]"  0.81659728 0 -0.40308928 0.8440364 0 -0.34101641
		 0.83948976 0 -0.28494087 0.8029573 0 -0.22886533 0.67228681 0 -0.5444386 0.60987926 0 -0.42427832
		 0.60344666 0 -0.27013326 0.59701395 0 -0.11598819 0.056415465 0 -0.87535101 0.028294384 0 -0.6438818
		 0.00017331168 0 -0.41241267 -0.027947756 0 -0.18094352 -0.38892144 0 -1.09677279
		 -0.43118712 0 -0.81815481 -0.4734529 0 -0.53953695 -0.51571864 0 -0.26091892 -0.79025841 0 -1.24773574
		 -0.87872994 0 -0.97194678 -0.96720147 0 -0.69615781 -1.055672884 0 -0.42036873 -0.99273574 0 -1.15058041
		 -1.095087767 0 -1.050939322 -1.13546765 0 -0.92131162 -1.13386619 0 -0.75170171;
	setAttr -s 38 ".ed[0:37]"  0 1 1 1 5 1 5 4 1 4 0 1 1 2 1 2 6 1 6 5 1
		 2 3 1 3 7 1 7 6 1 5 9 1 9 8 1 8 4 1 6 10 1 10 9 1 7 11 1 11 10 1 9 13 1 13 12 1 12 8 1
		 10 14 1 14 13 1 11 15 1 15 14 1 13 17 1 17 16 1 16 12 1 14 18 1 18 17 1 15 19 1 19 18 1
		 17 21 1 21 20 1 20 16 1 18 22 1 22 21 1 19 23 1 23 22 1;
	setAttr -s 15 -ch 60 ".fc[0:14]" -type "polyFaces" 
		f 4 0 1 2 3
		mu 0 4 0 1 2 3
		f 4 4 5 6 -2
		mu 0 4 1 4 5 2
		f 4 7 8 9 -6
		mu 0 4 4 6 7 5
		f 4 -3 10 11 12
		mu 0 4 3 2 8 9
		f 4 -7 13 14 -11
		mu 0 4 2 5 10 8
		f 4 -10 15 16 -14
		mu 0 4 5 7 11 10
		f 4 -12 17 18 19
		mu 0 4 9 8 12 13
		f 4 -15 20 21 -18
		mu 0 4 8 10 14 12
		f 4 -17 22 23 -21
		mu 0 4 10 11 15 14
		f 4 -19 24 25 26
		mu 0 4 13 12 16 17
		f 4 -22 27 28 -25
		mu 0 4 12 14 18 16
		f 4 -24 29 30 -28
		mu 0 4 14 15 19 18
		f 4 -26 31 32 33
		mu 0 4 17 16 20 21
		f 4 -29 34 35 -32
		mu 0 4 16 18 22 20
		f 4 -31 36 37 -35
		mu 0 4 18 19 23 22;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".dn" yes;
createNode mesh -n "loftedSurfaceShape4Orig" -p "loftedSurface4";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 24 ".uvst[0].uvsp[0:23]" -type "float2" 0.98014128 0.32331586
		 0.99682522 0.26472425 0.87840414 0.32172525 0.90232754 0.44778538 0.99762154 0.20858419
		 0.88354456 0.16806656 0.98285162 0.1489448 0.88868499 0.014407873 0.58359003 0.4760046
		 0.58485532 0.70876312 0.58232474 0.24324602 0.58105946 0.010487497 0.3506304 0.59866226
		 0.35624939 0.87975299 0.34501135 0.31757152 0.33939236 0.036480606 0.12457979 0.70230317
		 0.15283686 0.98564196 0.096322715 0.41896427 0.068065643 0.13562536 0.015049756 0.75701499
		 0.05951345 0.86708462 0.0023541451 0.62397051 0.012234271 0.45584536;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".ds" no;
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 24 ".pt[0:23]" -type "float3"  1.0229 0 1.3877788e-17 0.95474684 
		0 0 0.9514944 0 2.6020852e-18 1.0118283 0 0 1.3407642 0 2.7755576e-17 1.43849 0 2.7755576e-17 
		1.4174914 0 3.469447e-17 1.3964931 0 2.7755576e-17 2.6376188 0 1.110223e-16 2.6427875 
		0 1.110223e-16 2.6479561 0 1.0755286e-16 2.653125 0 1.110223e-16 3.57146 0 2.220446e-16 
		3.5944133 0 1.6653345e-16 3.6173668 0 1.6653345e-16 3.6403201 0 1.6653345e-16 4.4023876 
		0 2.220446e-16 4.5178161 0 2.220446e-16 4.6332445 0 2.220446e-16 4.748673 0 0 4.7836084 
		0 2.220446e-16 4.9652395 0 2.220446e-16 5.0170999 0 2.7755576e-16 4.9767408 0 2.4980018e-16;
	setAttr -s 24 ".vt[0:23]"  -0.51144999 0.011471296 -0.10942043 -0.47737342 0.011471296 -0.050728571
		 -0.4757472 0.011471296 0.0055074878 -0.50591415 0.017174177 0.065248951 -0.67038208 -0.00010614906 -0.23410298
		 -0.71924502 0.037618916 -0.10782707 -0.70874572 0.044019435 0.046094485 -0.69824654 0.040780444 0.20001605
		 -1.31880939 -0.00010614906 -0.49552727 -1.32139373 0.059416626 -0.26237038 -1.32397807 0.059504479 -0.029213637
		 -1.32656252 0.026085215 0.20394315 -1.78573 -0.00010614906 -0.66680962 -1.79720664 0.050353721 -0.38523787
		 -1.8086834 0.03977723 -0.10366626 -1.82016003 0.014195544 0.17790556 -2.20119381 -0.00010614906 -0.77287972
		 -2.25890803 0.037477341 -0.48905617 -2.31662226 0.031996854 -0.20523256 -2.37433648 -0.0034666639 0.078591168
		 -2.39180422 -0.00010614906 -0.65411955 -2.48261976 -0.00010614906 -0.54386163 -2.50854993 -0.00010614906 -0.41058943
		 -2.48837042 -0.00010614906 -0.24217662;
	setAttr -s 38 ".ed[0:37]"  0 1 1 1 5 1 5 4 1 4 0 1 1 2 1 2 6 1 6 5 1
		 2 3 1 3 7 1 7 6 1 5 9 1 9 8 1 8 4 1 6 10 1 10 9 1 7 11 1 11 10 1 9 13 1 13 12 1 12 8 1
		 10 14 1 14 13 1 11 15 1 15 14 1 13 17 1 17 16 1 16 12 1 14 18 1 18 17 1 15 19 1 19 18 1
		 17 21 1 21 20 1 20 16 1 18 22 1 22 21 1 19 23 1 23 22 1;
	setAttr -s 15 -ch 60 ".fc[0:14]" -type "polyFaces" 
		f 4 -4 -3 -2 -1
		mu 0 4 0 3 2 1
		f 4 1 -7 -6 -5
		mu 0 4 1 2 5 4
		f 4 5 -10 -9 -8
		mu 0 4 4 5 7 6
		f 4 -13 -12 -11 2
		mu 0 4 3 9 8 2
		f 4 10 -15 -14 6
		mu 0 4 2 8 10 5
		f 4 13 -17 -16 9
		mu 0 4 5 10 11 7
		f 4 -20 -19 -18 11
		mu 0 4 9 13 12 8
		f 4 17 -22 -21 14
		mu 0 4 8 12 14 10
		f 4 20 -24 -23 16
		mu 0 4 10 14 15 11
		f 4 -27 -26 -25 18
		mu 0 4 13 17 16 12
		f 4 24 -29 -28 21
		mu 0 4 12 16 18 14
		f 4 27 -31 -30 23
		mu 0 4 14 18 19 15
		f 4 -34 -33 -32 25
		mu 0 4 17 21 20 16
		f 4 31 -36 -35 28
		mu 0 4 16 20 22 18
		f 4 34 -38 -37 30
		mu 0 4 18 22 23 19;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".dn" yes;
	setAttr ".vcs" 2;
createNode transform -n "loftedSurface3" -p "down";
	setAttr -l on ".tx";
	setAttr -l on ".ty";
	setAttr -l on ".tz";
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
	setAttr ".rp" -type "double3" 1.2968548574423397 -0.3638596375966201 -0.02490189357877199 ;
	setAttr ".sp" -type "double3" 1.2968548574423397 -0.3638596375966201 -0.02490189357877199 ;
createNode mesh -n "loftedSurfaceShape3" -p "loftedSurface3";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".ds" no;
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".dn" yes;
	setAttr ".dr" 1;
	setAttr ".vcs" 2;
createNode mesh -n "loftedSurfaceShape2Orig3" -p "loftedSurface3";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 40 ".uvst[0].uvsp[0:39]" -type "float2" 0.92810941 0.96570265
		 0.95315003 0.93879724 0.91207421 0.88020027 0.88819623 0.97875881 0.96575117 0.88924742
		 0.9437269 0.76142347 0.97265077 0.82918406 0.97693455 0.64992523 0.82204199 0.78239226
		 0.74763107 0.99302554 0.8964529 0.5717591 0.95889354 0.3777281 0.67866933 0.71688581
		 0.57346988 0.98801875 0.78386891 0.44575292 0.88906848 0.17462003 0.57477272 0.68574798
		 0.45802063 0.98768008 0.69152474 0.38381594 0.80827689 0.081883848 0.45911872 0.6705004
		 0.34478217 0.99193895 0.57345533 0.34906185 0.68779182 0.027623296 0.3388142 0.67123699
		 0.24840397 0.99128199 0.42922449 0.35119176 0.51963484 0.031146705 0.16948217 0.69231749
		 0.11793184 0.97103834 0.22103256 0.41359675 0.27258289 0.13487595 0.078876853 0.70589256
		 0.049153686 0.92446578 0.12285495 0.50147355 0.1551699 0.29503256 0.0077289343 0.72196507
		 0.0065231323 0.79717839 0.01930213 0.6507957 0.04772222 0.55334008;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 40 ".vt[0:39]"  0.74272698 0 0.007697023 0.78137416 0 0.034310527
		 0.8008225 0 0.083322853 0.81147122 0 0.14273465 0.6811257 0 -0.0052174982 0.7179786 0 0.092271857
		 0.7668308 0 0.20976016 0.81808287 0 0.32004887 0.46418008 0 -0.019329472 0.57902449 0 0.18901882
		 0.69386894 0 0.39736712 0.79023856 0 0.58929336 0.19538271 0 -0.014376986 0.3577458 0 0.25381473
		 0.52010888 0 0.52200645 0.68247193 0 0.79019815 0.017200524 0 -0.014042072 0.19739354 0 0.28461474
		 0.37758654 0 0.58327156 0.55777955 0 0.88192838 -0.15756963 0 -0.018254755 0.018895334 0 0.29969695
		 0.1953603 0 0.61764866 0.37182528 0 0.93560034 -0.30631804 0 -0.017604936 -0.16678047 0 0.29896843
		 -0.02724288 0 0.61554182 0.11229471 0 0.93211514 -0.50768632 0 0.0024192184 -0.42812446 0 0.27811652
		 -0.34856257 0 0.55381382 -0.26900068 0 0.82951111 -0.61383724 0 0.048486575 -0.56796312 0 0.26468873
		 -0.50008804 0 0.46689025 -0.45021379 0 0.67109185 -0.67963248 0 0.17439318 -0.67777145 0 0.24879062
		 -0.65990967 0 0.31918791 -0.61604661 0 0.41558638;
	setAttr -s 66 ".ed[0:65]"  0 1 1 1 5 1 5 4 1 4 0 1 1 2 1 2 6 1 6 5 1
		 2 3 1 3 7 1 7 6 1 5 9 1 9 8 1 8 4 1 6 10 1 10 9 1 7 11 1 11 10 1 9 13 1 13 12 1 12 8 1
		 10 14 1 14 13 1 11 15 1 15 14 1 13 17 1 17 16 1 16 12 1 14 18 1 18 17 1 15 19 1 19 18 1
		 17 21 1 21 20 1 20 16 1 18 22 1 22 21 1 19 23 1 23 22 1 21 25 1 25 24 1 24 20 1 22 26 1
		 26 25 1 23 27 1 27 26 1 25 29 1 29 28 1 28 24 1 26 30 1 30 29 1 27 31 1 31 30 1 29 33 1
		 33 32 1 32 28 1 30 34 1 34 33 1 31 35 1 35 34 1 33 37 1 37 36 1 36 32 1 34 38 1 38 37 1
		 35 39 1 39 38 1;
	setAttr -s 27 -ch 108 ".fc[0:26]" -type "polyFaces" 
		f 4 0 1 2 3
		mu 0 4 0 1 2 3
		f 4 4 5 6 -2
		mu 0 4 1 4 5 2
		f 4 7 8 9 -6
		mu 0 4 4 6 7 5
		f 4 -3 10 11 12
		mu 0 4 3 2 8 9
		f 4 -7 13 14 -11
		mu 0 4 2 5 10 8
		f 4 -10 15 16 -14
		mu 0 4 5 7 11 10
		f 4 -12 17 18 19
		mu 0 4 9 8 12 13
		f 4 -15 20 21 -18
		mu 0 4 8 10 14 12
		f 4 -17 22 23 -21
		mu 0 4 10 11 15 14
		f 4 -19 24 25 26
		mu 0 4 13 12 16 17
		f 4 -22 27 28 -25
		mu 0 4 12 14 18 16
		f 4 -24 29 30 -28
		mu 0 4 14 15 19 18
		f 4 -26 31 32 33
		mu 0 4 17 16 20 21
		f 4 -29 34 35 -32
		mu 0 4 16 18 22 20
		f 4 -31 36 37 -35
		mu 0 4 18 19 23 22
		f 4 -33 38 39 40
		mu 0 4 21 20 24 25
		f 4 -36 41 42 -39
		mu 0 4 20 22 26 24
		f 4 -38 43 44 -42
		mu 0 4 22 23 27 26
		f 4 -40 45 46 47
		mu 0 4 25 24 28 29
		f 4 -43 48 49 -46
		mu 0 4 24 26 30 28
		f 4 -45 50 51 -49
		mu 0 4 26 27 31 30
		f 4 -47 52 53 54
		mu 0 4 29 28 32 33
		f 4 -50 55 56 -53
		mu 0 4 28 30 34 32
		f 4 -52 57 58 -56
		mu 0 4 30 31 35 34
		f 4 -54 59 60 61
		mu 0 4 33 32 36 37
		f 4 -57 62 63 -60
		mu 0 4 32 34 38 36
		f 4 -59 64 65 -63
		mu 0 4 34 35 39 38;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".dn" yes;
createNode mesh -n "loftedSurfaceShape3Orig" -p "loftedSurface3";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 40 ".uvst[0].uvsp[0:39]" -type "float2" 0.92810941 0.96570265
		 0.95315003 0.93879724 0.91207421 0.88020027 0.88819623 0.97875881 0.96575117 0.88924742
		 0.9437269 0.76142347 0.97265077 0.82918406 0.97693455 0.64992523 0.82204199 0.78239226
		 0.74763107 0.99302554 0.8964529 0.5717591 0.95889354 0.3777281 0.67866933 0.71688581
		 0.57346988 0.98801875 0.78386891 0.44575292 0.88906848 0.17462003 0.57477272 0.68574798
		 0.45802063 0.98768008 0.69152474 0.38381594 0.80827689 0.081883848 0.45911872 0.6705004
		 0.34478217 0.99193895 0.57345533 0.34906185 0.68779182 0.027623296 0.3388142 0.67123699
		 0.24840397 0.99128199 0.42922449 0.35119176 0.51963484 0.031146705 0.16948217 0.69231749
		 0.11793184 0.97103834 0.22103256 0.41359675 0.27258289 0.13487595 0.078876853 0.70589256
		 0.049153686 0.92446578 0.12285495 0.50147355 0.1551699 0.29503256 0.0077289343 0.72196507
		 0.0065231323 0.79717839 0.01930213 0.6507957 0.04772222 0.55334008;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".ds" no;
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 40 ".pt[0:39]" -type "float3"  1.1101383 0 6.9388939e-17 
		1.0325489 0 6.3317407e-17 0.99345231 0 6.2450045e-17 0.97198045 0 5.5511151e-17 1.2338024 
		0 7.6327833e-17 1.1596078 0 6.9388939e-17 1.0613035 0 5.5511151e-17 0.95828044 0 
		5.5511151e-17 1.6694794 0 1.0408341e-16 1.4383689 0 8.3266727e-17 1.207081 0 5.5511151e-17 
		1.0132246 0 1.110223e-16 2.2091429 0 1.3183898e-16 1.8821611 0 1.110223e-16 1.5543221 
		0 1.110223e-16 1.2280601 0 1.110223e-16 2.5665071 0 1.5959456e-16 2.2033014 0 1.110223e-16 
		1.8389764 0 1.110223e-16 1.4767981 0 1.110223e-16 2.9166224 0 1.8041124e-16 2.5605173 
		0 1.6653345e-16 2.2028689 0 1.110223e-16 1.8476591 0 1.110223e-16 3.2141724 0 1.9428903e-16 
		2.9318151 0 1.6653345e-16 2.6473734 0 1.110223e-16 2.3651152 0 1.110223e-16 3.6161561 
		0 2.220446e-16 3.4533236 0 2.220446e-16 3.2880378 0 2.220446e-16 3.1257169 0 2.220446e-16 
		3.8272042 0 2.3592239e-16 3.7312312 0 2.220446e-16 3.5917406 0 2.220446e-16 3.4888325 
		0 2.220446e-16 3.9559469 0 2.4980018e-16 3.9506578 0 2.4980018e-16 3.9135289 0 2.220446e-16 
		3.8240366 0 2.220446e-16;
	setAttr -s 40 ".vt[0:39]"  -0.55506915 0.011024995 -0.019362327 -0.51627445 0.010065263 0.0074450299
		 -0.49672616 0.0097264443 0.056510877 -0.48599023 0.0096056443 0.11592555 -0.61690122 0.012639262 -0.032624606
		 -0.57980388 0.012133588 0.064930648 -0.53065175 0.010995589 0.18261398 -0.47914022 0.0093637332 0.29321265
		 -0.83473969 0.017012401 -0.047851376 -0.71918446 0.026012696 0.16078256 -0.60354048 0.022810336 0.36977148
		 -0.5066123 0.0086664129 0.56245911 -1.10457146 0.017086351 -0.04361707 -0.94108057 0.033898741 0.22460891
		 -0.77716106 0.02492049 0.49353829 -0.61403006 0.0087624686 0.76312321 -1.28325355 0.012937893 -0.043153066
		 -1.10165071 0.032073949 0.25512099 -0.91948819 0.024819624 0.55430925 -0.73839903 0.0092208767 0.85446572
		 -1.4583112 0.0057904092 -0.046747178 -1.28025866 0.026687767 0.27038494 -1.10143447 0.022161009 0.58839029
		 -0.92382956 0.0090261614 0.90757394 -1.60708618 -0.0022788616 -0.04524444 -1.46590757 0.01773249 0.27040115
		 -1.32368672 0.014791538 0.58653438 -1.18255758 0.0051890346 0.90366459 -1.80807805 -0.01532772 -0.023714462
		 -1.7266618 -0.0046793418 0.25130278 -1.64401889 -0.013177531 0.52626979 -1.56285846 -0.010252116 0.80185717
		 -1.91360211 -0.023357827 0.023243945 -1.86561561 -0.024658959 0.23894325 -1.7958703 -0.022728559 0.4405233
		 -1.74441624 -0.020859499 0.64442325 -1.97797346 -0.030551026 0.14970788 -1.97532892 -0.031915296 0.22407064
		 -1.95676446 -0.031925511 0.29428601 -1.9120183 -0.030252546 0.39026281;
	setAttr -s 66 ".ed[0:65]"  0 1 0 1 5 1 5 4 1 4 0 0 1 2 0 2 6 1 6 5 1
		 2 3 0 3 7 0 7 6 1 5 9 1 9 8 1 8 4 0 6 10 1 10 9 1 7 11 0 11 10 1 9 13 1 13 12 1 12 8 0
		 10 14 1 14 13 1 11 15 0 15 14 1 13 17 1 17 16 1 16 12 0 14 18 1 18 17 1 15 19 0 19 18 1
		 17 21 1 21 20 1 20 16 0 18 22 1 22 21 1 19 23 0 23 22 1 21 25 1 25 24 1 24 20 0 22 26 1
		 26 25 1 23 27 0 27 26 1 25 29 1 29 28 1 28 24 0 26 30 1 30 29 1 27 31 0 31 30 1 29 33 1
		 33 32 1 32 28 0 30 34 1 34 33 1 31 35 0 35 34 1 33 37 1 37 36 0 36 32 0 34 38 1 38 37 0
		 35 39 0 39 38 0;
	setAttr -s 27 -ch 108 ".fc[0:26]" -type "polyFaces" 
		f 4 -4 -3 -2 -1
		mu 0 4 0 3 2 1
		f 4 1 -7 -6 -5
		mu 0 4 1 2 5 4
		f 4 5 -10 -9 -8
		mu 0 4 4 5 7 6
		f 4 -13 -12 -11 2
		mu 0 4 3 9 8 2
		f 4 10 -15 -14 6
		mu 0 4 2 8 10 5
		f 4 13 -17 -16 9
		mu 0 4 5 10 11 7
		f 4 -20 -19 -18 11
		mu 0 4 9 13 12 8
		f 4 17 -22 -21 14
		mu 0 4 8 12 14 10
		f 4 20 -24 -23 16
		mu 0 4 10 14 15 11
		f 4 -27 -26 -25 18
		mu 0 4 13 17 16 12
		f 4 24 -29 -28 21
		mu 0 4 12 16 18 14
		f 4 27 -31 -30 23
		mu 0 4 14 18 19 15
		f 4 -34 -33 -32 25
		mu 0 4 17 21 20 16
		f 4 31 -36 -35 28
		mu 0 4 16 20 22 18
		f 4 34 -38 -37 30
		mu 0 4 18 22 23 19
		f 4 -41 -40 -39 32
		mu 0 4 21 25 24 20
		f 4 38 -43 -42 35
		mu 0 4 20 24 26 22
		f 4 41 -45 -44 37
		mu 0 4 22 26 27 23
		f 4 -48 -47 -46 39
		mu 0 4 25 29 28 24
		f 4 45 -50 -49 42
		mu 0 4 24 28 30 26
		f 4 48 -52 -51 44
		mu 0 4 26 30 31 27
		f 4 -55 -54 -53 46
		mu 0 4 29 33 32 28
		f 4 52 -57 -56 49
		mu 0 4 28 32 34 30
		f 4 55 -59 -58 51
		mu 0 4 30 34 35 31
		f 4 -62 -61 -60 53
		mu 0 4 33 37 36 32
		f 4 59 -64 -63 56
		mu 0 4 32 36 38 34
		f 4 62 -66 -65 58
		mu 0 4 34 38 39 35;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".dn" yes;
	setAttr ".vcs" 2;
createNode transform -n "up" -p "wingGeo";
createNode transform -n "loftedSurface5" -p "up";
	setAttr -l on ".tx";
	setAttr -l on ".ty";
	setAttr -l on ".tz";
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
	setAttr ".rp" -type "double3" -1.2789530211365732 0.83599554207677007 0.38073390174032296 ;
	setAttr ".sp" -type "double3" -1.2789530211365732 0.83599554207677007 0.38073390174032296 ;
createNode mesh -n "loftedSurfaceShape5" -p "loftedSurface5";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".ds" no;
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".dn" yes;
	setAttr ".dr" 1;
	setAttr ".vcs" 2;
createNode mesh -n "loftedSurfaceShape5Orig" -p "loftedSurface5";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 24 ".uvst[0].uvsp[0:23]" -type "float2" 0.98014128 0.32331586
		 0.99682522 0.26472425 0.87840414 0.32172525 0.90232754 0.44778538 0.99762154 0.20858419
		 0.88354456 0.16806656 0.98285162 0.1489448 0.88868499 0.014407873 0.58359003 0.4760046
		 0.58485532 0.70876312 0.58232474 0.24324602 0.58105946 0.010487497 0.3506304 0.59866226
		 0.35624939 0.87975299 0.34501135 0.31757152 0.33939236 0.036480606 0.12457979 0.70230317
		 0.15283686 0.98564196 0.096322715 0.41896427 0.068065643 0.13562536 0.015049756 0.75701499
		 0.05951345 0.86708462 0.0023541451 0.62397051 0.012234271 0.45584536;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".ds" no;
	setAttr ".op" yes;
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 24 ".pt[0:23]" -type "float3"  -0.015072341 0 0.055392049 
		-0.0084348908 0 0.052011032 -0.0022620405 0 0.052171547 0.0041034739 0 0.055837467 
		-0.029693939 0 0.072058812 -0.016149355 0 0.078174442 0.00078254839 0 0.077950932 
		0.017714454 0 0.07772743 -0.062249847 0 0.14154698 -0.036713146 0 0.14323461 -0.01117646 
		0 0.14492223 0.01436023 0 0.14660986 -0.083833583 0 0.19168632 -0.053044531 0 0.1946401 
		-0.022255495 0 0.19759388 0.0085335625 0 0.20054767 -0.097960584 0 0.23657918 -0.067203268 
		0 0.24461381 -0.036445931 0 0.25264844 -0.0056885914 0 0.26068306 -0.086093478 0 
		0.25818402 -0.074557044 0 0.26880085 -0.060107585 0 0.27244535 -0.041529238 0 0.27124825;
	setAttr -s 24 ".vt[0:23]"  -0.49637765 0.011471296 -0.16481248 -0.46893853 0.011471296 -0.1027396
		 -0.47348517 0.011471296 -0.046664059 -0.51001763 0.017174177 0.009411484 -0.64068812 -0.00010614906 -0.30616179
		 -0.70309567 0.037618916 -0.18600151 -0.70952827 0.044019435 -0.031856447 -0.71596098 0.040780444 0.12228862
		 -1.25655949 -0.00010614906 -0.63707423 -1.2846806 0.059416626 -0.40560499 -1.3128016 0.059504479 -0.17413586
		 -1.34092271 0.026085215 0.057333291 -1.70189643 -0.00010614906 -0.85849595 -1.74416208 0.050353721 -0.57987797
		 -1.78642786 0.03977723 -0.30126014 -1.82869363 0.014195544 -0.022642106 -2.10323334 -0.00010614906 -1.0094588995
		 -2.19170475 0.037477341 -0.73367 -2.2801764 0.031996854 -0.457881 -2.36864781 -0.0034666639 -0.18209192
		 -2.30571079 -0.00010614906 -0.91230357 -2.4080627 -0.00010614906 -0.81266248 -2.44844246 -0.00010614906 -0.68303478
		 -2.44684124 -0.00010614906 -0.51342487;
	setAttr -s 38 ".ed[0:37]"  0 1 1 1 5 1 5 4 1 4 0 1 1 2 1 2 6 1 6 5 1
		 2 3 1 3 7 1 7 6 1 5 9 1 9 8 1 8 4 1 6 10 1 10 9 1 7 11 1 11 10 1 9 13 1 13 12 1 12 8 1
		 10 14 1 14 13 1 11 15 1 15 14 1 13 17 1 17 16 1 16 12 1 14 18 1 18 17 1 15 19 1 19 18 1
		 17 21 1 21 20 1 20 16 1 18 22 1 22 21 1 19 23 1 23 22 1;
	setAttr -s 15 -ch 60 ".fc[0:14]" -type "polyFaces" 
		f 4 0 1 2 3
		mu 0 4 0 1 2 3
		f 4 4 5 6 -2
		mu 0 4 1 4 5 2
		f 4 7 8 9 -6
		mu 0 4 4 6 7 5
		f 4 -3 10 11 12
		mu 0 4 3 2 8 9
		f 4 -7 13 14 -11
		mu 0 4 2 5 10 8
		f 4 -10 15 16 -14
		mu 0 4 5 7 11 10
		f 4 -12 17 18 19
		mu 0 4 9 8 12 13
		f 4 -15 20 21 -18
		mu 0 4 8 10 14 12
		f 4 -17 22 23 -21
		mu 0 4 10 11 15 14
		f 4 -19 24 25 26
		mu 0 4 13 12 16 17
		f 4 -22 27 28 -25
		mu 0 4 12 14 18 16
		f 4 -24 29 30 -28
		mu 0 4 14 15 19 18
		f 4 -26 31 32 33
		mu 0 4 17 16 20 21
		f 4 -29 34 35 -32
		mu 0 4 16 18 22 20
		f 4 -31 36 37 -35
		mu 0 4 18 19 23 22;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".dn" yes;
	setAttr ".vcs" 2;
createNode transform -n "loftedSurface6" -p "up";
	setAttr -l on ".tx";
	setAttr -l on ".ty";
	setAttr -l on ".tz";
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
	setAttr ".rp" -type "double3" -1.2968548574423397 0.36297342691553802 -0.02490189357877215 ;
	setAttr ".sp" -type "double3" -1.2968548574423397 0.36297342691553802 -0.02490189357877215 ;
createNode mesh -n "loftedSurfaceShape6" -p "loftedSurface6";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".ds" no;
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".dn" yes;
	setAttr ".dr" 1;
	setAttr ".vcs" 2;
createNode mesh -n "loftedSurfaceShape6Orig" -p "loftedSurface6";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 40 ".uvst[0].uvsp[0:39]" -type "float2" 0.92810941 0.96570265
		 0.95315003 0.93879724 0.91207421 0.88020027 0.88819623 0.97875881 0.96575117 0.88924742
		 0.9437269 0.76142347 0.97265077 0.82918406 0.97693455 0.64992523 0.82204199 0.78239226
		 0.74763107 0.99302554 0.8964529 0.5717591 0.95889354 0.3777281 0.67866933 0.71688581
		 0.57346988 0.98801875 0.78386891 0.44575292 0.88906848 0.17462003 0.57477272 0.68574798
		 0.45802063 0.98768008 0.69152474 0.38381594 0.80827689 0.081883848 0.45911872 0.6705004
		 0.34478217 0.99193895 0.57345533 0.34906185 0.68779182 0.027623296 0.3388142 0.67123699
		 0.24840397 0.99128199 0.42922449 0.35119176 0.51963484 0.031146705 0.16948217 0.69231749
		 0.11793184 0.97103834 0.22103256 0.41359675 0.27258289 0.13487595 0.078876853 0.70589256
		 0.049153686 0.92446578 0.12285495 0.50147355 0.1551699 0.29503256 0.0077289343 0.72196507
		 0.0065231323 0.79717839 0.01930213 0.6507957 0.04772222 0.55334008;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".ds" no;
	setAttr ".op" yes;
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 40 ".vt[0:39]"  -0.55506915 0.011024995 -0.019362327 -0.51627445 0.010065263 0.0074450299
		 -0.49672616 0.0097264443 0.056510877 -0.48599023 0.0096056443 0.11592555 -0.61690122 0.012639262 -0.032624606
		 -0.57980388 0.012133588 0.064930648 -0.53065175 0.010995589 0.18261398 -0.47914022 0.0093637332 0.29321265
		 -0.83473969 0.017012401 -0.047851376 -0.71918446 0.026012696 0.16078256 -0.60354048 0.022810336 0.36977148
		 -0.5066123 0.0086664129 0.56245911 -1.10457146 0.017086351 -0.04361707 -0.94108057 0.033898741 0.22460891
		 -0.77716106 0.02492049 0.49353829 -0.61403006 0.0087624686 0.76312321 -1.28325355 0.012937893 -0.043153066
		 -1.10165071 0.032073949 0.25512099 -0.91948819 0.024819624 0.55430925 -0.73839903 0.0092208767 0.85446572
		 -1.4583112 0.0057904092 -0.046747178 -1.28025866 0.026687767 0.27038494 -1.10143447 0.022161009 0.58839029
		 -0.92382956 0.0090261614 0.90757394 -1.60708618 -0.0022788616 -0.04524444 -1.46590757 0.01773249 0.27040115
		 -1.32368672 0.014791538 0.58653438 -1.18255758 0.0051890346 0.90366459 -1.80807805 -0.01532772 -0.023714462
		 -1.7266618 -0.0046793418 0.25130278 -1.64401889 -0.013177531 0.52626979 -1.56285846 -0.010252116 0.80185717
		 -1.91360211 -0.023357827 0.023243945 -1.86561561 -0.024658959 0.23894325 -1.7958703 -0.022728559 0.4405233
		 -1.74441624 -0.020859499 0.64442325 -1.97797346 -0.030551026 0.14970788 -1.97532892 -0.031915296 0.22407064
		 -1.95676446 -0.031925511 0.29428601 -1.9120183 -0.030252546 0.39026281;
	setAttr -s 66 ".ed[0:65]"  0 1 0 1 5 1 5 4 1 4 0 0 1 2 0 2 6 1 6 5 1
		 2 3 0 3 7 0 7 6 1 5 9 1 9 8 1 8 4 0 6 10 1 10 9 1 7 11 0 11 10 1 9 13 1 13 12 1 12 8 0
		 10 14 1 14 13 1 11 15 0 15 14 1 13 17 1 17 16 1 16 12 0 14 18 1 18 17 1 15 19 0 19 18 1
		 17 21 1 21 20 1 20 16 0 18 22 1 22 21 1 19 23 0 23 22 1 21 25 1 25 24 1 24 20 0 22 26 1
		 26 25 1 23 27 0 27 26 1 25 29 1 29 28 1 28 24 0 26 30 1 30 29 1 27 31 0 31 30 1 29 33 1
		 33 32 1 32 28 0 30 34 1 34 33 1 31 35 0 35 34 1 33 37 1 37 36 0 36 32 0 34 38 1 38 37 0
		 35 39 0 39 38 0;
	setAttr -s 27 -ch 108 ".fc[0:26]" -type "polyFaces" 
		f 4 0 1 2 3
		mu 0 4 0 1 2 3
		f 4 4 5 6 -2
		mu 0 4 1 4 5 2
		f 4 7 8 9 -6
		mu 0 4 4 6 7 5
		f 4 -3 10 11 12
		mu 0 4 3 2 8 9
		f 4 -7 13 14 -11
		mu 0 4 2 5 10 8
		f 4 -10 15 16 -14
		mu 0 4 5 7 11 10
		f 4 -12 17 18 19
		mu 0 4 9 8 12 13
		f 4 -15 20 21 -18
		mu 0 4 8 10 14 12
		f 4 -17 22 23 -21
		mu 0 4 10 11 15 14
		f 4 -19 24 25 26
		mu 0 4 13 12 16 17
		f 4 -22 27 28 -25
		mu 0 4 12 14 18 16
		f 4 -24 29 30 -28
		mu 0 4 14 15 19 18
		f 4 -26 31 32 33
		mu 0 4 17 16 20 21
		f 4 -29 34 35 -32
		mu 0 4 16 18 22 20
		f 4 -31 36 37 -35
		mu 0 4 18 19 23 22
		f 4 -33 38 39 40
		mu 0 4 21 20 24 25
		f 4 -36 41 42 -39
		mu 0 4 20 22 26 24
		f 4 -38 43 44 -42
		mu 0 4 22 23 27 26
		f 4 -40 45 46 47
		mu 0 4 25 24 28 29
		f 4 -43 48 49 -46
		mu 0 4 24 26 30 28
		f 4 -45 50 51 -49
		mu 0 4 26 27 31 30
		f 4 -47 52 53 54
		mu 0 4 29 28 32 33
		f 4 -50 55 56 -53
		mu 0 4 28 30 34 32
		f 4 -52 57 58 -56
		mu 0 4 30 31 35 34
		f 4 -54 59 60 61
		mu 0 4 33 32 36 37
		f 4 -57 62 63 -60
		mu 0 4 32 34 38 36
		f 4 -59 64 65 -63
		mu 0 4 34 35 39 38;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".dn" yes;
	setAttr ".vcs" 2;
createNode transform -n "loftedSurface7" -p "up";
	setAttr -l on ".tx";
	setAttr -l on ".ty";
	setAttr -l on ".tz";
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
	setAttr ".rp" -type "double3" 1.2789530211365732 0.6716349510330637 0.38073390174032307 ;
	setAttr ".sp" -type "double3" 1.2789530211365732 0.6716349510330637 0.38073390174032307 ;
createNode mesh -n "loftedSurfaceShape7" -p "loftedSurface7";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".ds" no;
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".dn" yes;
	setAttr ".dr" 1;
	setAttr ".vcs" 2;
createNode mesh -n "loftedSurfaceShape1Orig7" -p "loftedSurface7";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 24 ".uvst[0].uvsp[0:23]" -type "float2" 0.98014128 0.32331586
		 0.99682522 0.26472425 0.87840414 0.32172525 0.90232754 0.44778538 0.99762154 0.20858419
		 0.88354456 0.16806656 0.98285162 0.1489448 0.88868499 0.014407873 0.58359003 0.4760046
		 0.58485532 0.70876312 0.58232474 0.24324602 0.58105946 0.010487497 0.3506304 0.59866226
		 0.35624939 0.87975299 0.34501135 0.31757152 0.33939236 0.036480606 0.12457979 0.70230317
		 0.15283686 0.98564196 0.096322715 0.41896427 0.068065643 0.13562536 0.015049756 0.75701499
		 0.05951345 0.86708462 0.0023541451 0.62397051 0.012234271 0.45584536;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 24 ".vt[0:23]"  0.81659728 0 -0.40308928 0.8440364 0 -0.34101641
		 0.83948976 0 -0.28494087 0.8029573 0 -0.22886533 0.67228681 0 -0.5444386 0.60987926 0 -0.42427832
		 0.60344666 0 -0.27013326 0.59701395 0 -0.11598819 0.056415465 0 -0.87535101 0.028294384 0 -0.6438818
		 0.00017331168 0 -0.41241267 -0.027947756 0 -0.18094352 -0.38892144 0 -1.09677279
		 -0.43118712 0 -0.81815481 -0.4734529 0 -0.53953695 -0.51571864 0 -0.26091892 -0.79025841 0 -1.24773574
		 -0.87872994 0 -0.97194678 -0.96720147 0 -0.69615781 -1.055672884 0 -0.42036873 -0.99273574 0 -1.15058041
		 -1.095087767 0 -1.050939322 -1.13546765 0 -0.92131162 -1.13386619 0 -0.75170171;
	setAttr -s 38 ".ed[0:37]"  0 1 1 1 5 1 5 4 1 4 0 1 1 2 1 2 6 1 6 5 1
		 2 3 1 3 7 1 7 6 1 5 9 1 9 8 1 8 4 1 6 10 1 10 9 1 7 11 1 11 10 1 9 13 1 13 12 1 12 8 1
		 10 14 1 14 13 1 11 15 1 15 14 1 13 17 1 17 16 1 16 12 1 14 18 1 18 17 1 15 19 1 19 18 1
		 17 21 1 21 20 1 20 16 1 18 22 1 22 21 1 19 23 1 23 22 1;
	setAttr -s 15 -ch 60 ".fc[0:14]" -type "polyFaces" 
		f 4 0 1 2 3
		mu 0 4 0 1 2 3
		f 4 4 5 6 -2
		mu 0 4 1 4 5 2
		f 4 7 8 9 -6
		mu 0 4 4 6 7 5
		f 4 -3 10 11 12
		mu 0 4 3 2 8 9
		f 4 -7 13 14 -11
		mu 0 4 2 5 10 8
		f 4 -10 15 16 -14
		mu 0 4 5 7 11 10
		f 4 -12 17 18 19
		mu 0 4 9 8 12 13
		f 4 -15 20 21 -18
		mu 0 4 8 10 14 12
		f 4 -17 22 23 -21
		mu 0 4 10 11 15 14
		f 4 -19 24 25 26
		mu 0 4 13 12 16 17
		f 4 -22 27 28 -25
		mu 0 4 12 14 18 16
		f 4 -24 29 30 -28
		mu 0 4 14 15 19 18
		f 4 -26 31 32 33
		mu 0 4 17 16 20 21
		f 4 -29 34 35 -32
		mu 0 4 16 18 22 20
		f 4 -31 36 37 -35
		mu 0 4 18 19 23 22;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".dn" yes;
createNode mesh -n "loftedSurfaceShape7Orig" -p "loftedSurface7";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 24 ".uvst[0].uvsp[0:23]" -type "float2" 0.98014128 0.32331586
		 0.99682522 0.26472425 0.87840414 0.32172525 0.90232754 0.44778538 0.99762154 0.20858419
		 0.88354456 0.16806656 0.98285162 0.1489448 0.88868499 0.014407873 0.58359003 0.4760046
		 0.58485532 0.70876312 0.58232474 0.24324602 0.58105946 0.010487497 0.3506304 0.59866226
		 0.35624939 0.87975299 0.34501135 0.31757152 0.33939236 0.036480606 0.12457979 0.70230317
		 0.15283686 0.98564196 0.096322715 0.41896427 0.068065643 0.13562536 0.015049756 0.75701499
		 0.05951345 0.86708462 0.0023541451 0.62397051 0.012234271 0.45584536;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".ds" no;
	setAttr ".op" yes;
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 24 ".pt[0:23]" -type "float3"  1.0229 0 1.3877788e-17 0.95474684 
		0 0 0.9514944 0 2.6020852e-18 1.0118283 0 0 1.3407642 0 2.7755576e-17 1.43849 0 2.7755576e-17 
		1.4174914 0 3.469447e-17 1.3964931 0 2.7755576e-17 2.6376188 0 1.110223e-16 2.6427875 
		0 1.110223e-16 2.6479561 0 1.0755286e-16 2.653125 0 1.110223e-16 3.57146 0 2.220446e-16 
		3.5944133 0 1.6653345e-16 3.6173668 0 1.6653345e-16 3.6403201 0 1.6653345e-16 4.4023876 
		0 2.220446e-16 4.5178161 0 2.220446e-16 4.6332445 0 2.220446e-16 4.748673 0 0 4.7836084 
		0 2.220446e-16 4.9652395 0 2.220446e-16 5.0170999 0 2.7755576e-16 4.9767408 0 2.4980018e-16;
	setAttr -s 24 ".vt[0:23]"  -0.51144999 0.011471296 -0.10942043 -0.47737342 0.011471296 -0.050728571
		 -0.4757472 0.011471296 0.0055074878 -0.50591415 0.017174177 0.065248951 -0.67038208 -0.00010614906 -0.23410298
		 -0.71924502 0.037618916 -0.10782707 -0.70874572 0.044019435 0.046094485 -0.69824654 0.040780444 0.20001605
		 -1.31880939 -0.00010614906 -0.49552727 -1.32139373 0.059416626 -0.26237038 -1.32397807 0.059504479 -0.029213637
		 -1.32656252 0.026085215 0.20394315 -1.78573 -0.00010614906 -0.66680962 -1.79720664 0.050353721 -0.38523787
		 -1.8086834 0.03977723 -0.10366626 -1.82016003 0.014195544 0.17790556 -2.20119381 -0.00010614906 -0.77287972
		 -2.25890803 0.037477341 -0.48905617 -2.31662226 0.031996854 -0.20523256 -2.37433648 -0.0034666639 0.078591168
		 -2.39180422 -0.00010614906 -0.65411955 -2.48261976 -0.00010614906 -0.54386163 -2.50854993 -0.00010614906 -0.41058943
		 -2.48837042 -0.00010614906 -0.24217662;
	setAttr -s 38 ".ed[0:37]"  0 1 1 1 5 1 5 4 1 4 0 1 1 2 1 2 6 1 6 5 1
		 2 3 1 3 7 1 7 6 1 5 9 1 9 8 1 8 4 1 6 10 1 10 9 1 7 11 1 11 10 1 9 13 1 13 12 1 12 8 1
		 10 14 1 14 13 1 11 15 1 15 14 1 13 17 1 17 16 1 16 12 1 14 18 1 18 17 1 15 19 1 19 18 1
		 17 21 1 21 20 1 20 16 1 18 22 1 22 21 1 19 23 1 23 22 1;
	setAttr -s 15 -ch 60 ".fc[0:14]" -type "polyFaces" 
		f 4 -4 -3 -2 -1
		mu 0 4 0 3 2 1
		f 4 1 -7 -6 -5
		mu 0 4 1 2 5 4
		f 4 5 -10 -9 -8
		mu 0 4 4 5 7 6
		f 4 -13 -12 -11 2
		mu 0 4 3 9 8 2
		f 4 10 -15 -14 6
		mu 0 4 2 8 10 5
		f 4 13 -17 -16 9
		mu 0 4 5 10 11 7
		f 4 -20 -19 -18 11
		mu 0 4 9 13 12 8
		f 4 17 -22 -21 14
		mu 0 4 8 12 14 10
		f 4 20 -24 -23 16
		mu 0 4 10 14 15 11
		f 4 -27 -26 -25 18
		mu 0 4 13 17 16 12
		f 4 24 -29 -28 21
		mu 0 4 12 16 18 14
		f 4 27 -31 -30 23
		mu 0 4 14 18 19 15
		f 4 -34 -33 -32 25
		mu 0 4 17 21 20 16
		f 4 31 -36 -35 28
		mu 0 4 16 20 22 18
		f 4 34 -38 -37 30
		mu 0 4 18 22 23 19;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".dn" yes;
	setAttr ".vcs" 2;
createNode transform -n "loftedSurface8" -p "up";
	setAttr -l on ".tx";
	setAttr -l on ".ty";
	setAttr -l on ".tz";
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
	setAttr ".rp" -type "double3" 1.2968548574423397 0.21921072812566023 -0.02490189357877199 ;
	setAttr ".sp" -type "double3" 1.2968548574423397 0.21921072812566023 -0.02490189357877199 ;
createNode mesh -n "loftedSurfaceShape8" -p "loftedSurface8";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".ds" no;
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".dn" yes;
	setAttr ".dr" 1;
	setAttr ".vcs" 2;
createNode mesh -n "loftedSurfaceShape2Orig8" -p "loftedSurface8";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 40 ".uvst[0].uvsp[0:39]" -type "float2" 0.92810941 0.96570265
		 0.95315003 0.93879724 0.91207421 0.88020027 0.88819623 0.97875881 0.96575117 0.88924742
		 0.9437269 0.76142347 0.97265077 0.82918406 0.97693455 0.64992523 0.82204199 0.78239226
		 0.74763107 0.99302554 0.8964529 0.5717591 0.95889354 0.3777281 0.67866933 0.71688581
		 0.57346988 0.98801875 0.78386891 0.44575292 0.88906848 0.17462003 0.57477272 0.68574798
		 0.45802063 0.98768008 0.69152474 0.38381594 0.80827689 0.081883848 0.45911872 0.6705004
		 0.34478217 0.99193895 0.57345533 0.34906185 0.68779182 0.027623296 0.3388142 0.67123699
		 0.24840397 0.99128199 0.42922449 0.35119176 0.51963484 0.031146705 0.16948217 0.69231749
		 0.11793184 0.97103834 0.22103256 0.41359675 0.27258289 0.13487595 0.078876853 0.70589256
		 0.049153686 0.92446578 0.12285495 0.50147355 0.1551699 0.29503256 0.0077289343 0.72196507
		 0.0065231323 0.79717839 0.01930213 0.6507957 0.04772222 0.55334008;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 40 ".vt[0:39]"  0.74272698 0 0.007697023 0.78137416 0 0.034310527
		 0.8008225 0 0.083322853 0.81147122 0 0.14273465 0.6811257 0 -0.0052174982 0.7179786 0 0.092271857
		 0.7668308 0 0.20976016 0.81808287 0 0.32004887 0.46418008 0 -0.019329472 0.57902449 0 0.18901882
		 0.69386894 0 0.39736712 0.79023856 0 0.58929336 0.19538271 0 -0.014376986 0.3577458 0 0.25381473
		 0.52010888 0 0.52200645 0.68247193 0 0.79019815 0.017200524 0 -0.014042072 0.19739354 0 0.28461474
		 0.37758654 0 0.58327156 0.55777955 0 0.88192838 -0.15756963 0 -0.018254755 0.018895334 0 0.29969695
		 0.1953603 0 0.61764866 0.37182528 0 0.93560034 -0.30631804 0 -0.017604936 -0.16678047 0 0.29896843
		 -0.02724288 0 0.61554182 0.11229471 0 0.93211514 -0.50768632 0 0.0024192184 -0.42812446 0 0.27811652
		 -0.34856257 0 0.55381382 -0.26900068 0 0.82951111 -0.61383724 0 0.048486575 -0.56796312 0 0.26468873
		 -0.50008804 0 0.46689025 -0.45021379 0 0.67109185 -0.67963248 0 0.17439318 -0.67777145 0 0.24879062
		 -0.65990967 0 0.31918791 -0.61604661 0 0.41558638;
	setAttr -s 66 ".ed[0:65]"  0 1 1 1 5 1 5 4 1 4 0 1 1 2 1 2 6 1 6 5 1
		 2 3 1 3 7 1 7 6 1 5 9 1 9 8 1 8 4 1 6 10 1 10 9 1 7 11 1 11 10 1 9 13 1 13 12 1 12 8 1
		 10 14 1 14 13 1 11 15 1 15 14 1 13 17 1 17 16 1 16 12 1 14 18 1 18 17 1 15 19 1 19 18 1
		 17 21 1 21 20 1 20 16 1 18 22 1 22 21 1 19 23 1 23 22 1 21 25 1 25 24 1 24 20 1 22 26 1
		 26 25 1 23 27 1 27 26 1 25 29 1 29 28 1 28 24 1 26 30 1 30 29 1 27 31 1 31 30 1 29 33 1
		 33 32 1 32 28 1 30 34 1 34 33 1 31 35 1 35 34 1 33 37 1 37 36 1 36 32 1 34 38 1 38 37 1
		 35 39 1 39 38 1;
	setAttr -s 27 -ch 108 ".fc[0:26]" -type "polyFaces" 
		f 4 0 1 2 3
		mu 0 4 0 1 2 3
		f 4 4 5 6 -2
		mu 0 4 1 4 5 2
		f 4 7 8 9 -6
		mu 0 4 4 6 7 5
		f 4 -3 10 11 12
		mu 0 4 3 2 8 9
		f 4 -7 13 14 -11
		mu 0 4 2 5 10 8
		f 4 -10 15 16 -14
		mu 0 4 5 7 11 10
		f 4 -12 17 18 19
		mu 0 4 9 8 12 13
		f 4 -15 20 21 -18
		mu 0 4 8 10 14 12
		f 4 -17 22 23 -21
		mu 0 4 10 11 15 14
		f 4 -19 24 25 26
		mu 0 4 13 12 16 17
		f 4 -22 27 28 -25
		mu 0 4 12 14 18 16
		f 4 -24 29 30 -28
		mu 0 4 14 15 19 18
		f 4 -26 31 32 33
		mu 0 4 17 16 20 21
		f 4 -29 34 35 -32
		mu 0 4 16 18 22 20
		f 4 -31 36 37 -35
		mu 0 4 18 19 23 22
		f 4 -33 38 39 40
		mu 0 4 21 20 24 25
		f 4 -36 41 42 -39
		mu 0 4 20 22 26 24
		f 4 -38 43 44 -42
		mu 0 4 22 23 27 26
		f 4 -40 45 46 47
		mu 0 4 25 24 28 29
		f 4 -43 48 49 -46
		mu 0 4 24 26 30 28
		f 4 -45 50 51 -49
		mu 0 4 26 27 31 30
		f 4 -47 52 53 54
		mu 0 4 29 28 32 33
		f 4 -50 55 56 -53
		mu 0 4 28 30 34 32
		f 4 -52 57 58 -56
		mu 0 4 30 31 35 34
		f 4 -54 59 60 61
		mu 0 4 33 32 36 37
		f 4 -57 62 63 -60
		mu 0 4 32 34 38 36
		f 4 -59 64 65 -63
		mu 0 4 34 35 39 38;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".dn" yes;
createNode mesh -n "loftedSurfaceShape8Orig" -p "loftedSurface8";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 40 ".uvst[0].uvsp[0:39]" -type "float2" 0.92810941 0.96570265
		 0.95315003 0.93879724 0.91207421 0.88020027 0.88819623 0.97875881 0.96575117 0.88924742
		 0.9437269 0.76142347 0.97265077 0.82918406 0.97693455 0.64992523 0.82204199 0.78239226
		 0.74763107 0.99302554 0.8964529 0.5717591 0.95889354 0.3777281 0.67866933 0.71688581
		 0.57346988 0.98801875 0.78386891 0.44575292 0.88906848 0.17462003 0.57477272 0.68574798
		 0.45802063 0.98768008 0.69152474 0.38381594 0.80827689 0.081883848 0.45911872 0.6705004
		 0.34478217 0.99193895 0.57345533 0.34906185 0.68779182 0.027623296 0.3388142 0.67123699
		 0.24840397 0.99128199 0.42922449 0.35119176 0.51963484 0.031146705 0.16948217 0.69231749
		 0.11793184 0.97103834 0.22103256 0.41359675 0.27258289 0.13487595 0.078876853 0.70589256
		 0.049153686 0.92446578 0.12285495 0.50147355 0.1551699 0.29503256 0.0077289343 0.72196507
		 0.0065231323 0.79717839 0.01930213 0.6507957 0.04772222 0.55334008;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".ds" no;
	setAttr ".op" yes;
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 40 ".pt[0:39]" -type "float3"  1.1101383 0 6.9388939e-17 
		1.0325489 0 6.3317407e-17 0.99345231 0 6.2450045e-17 0.97198045 0 5.5511151e-17 1.2338024 
		0 7.6327833e-17 1.1596078 0 6.9388939e-17 1.0613035 0 5.5511151e-17 0.95828044 0 
		5.5511151e-17 1.6694794 0 1.0408341e-16 1.4383689 0 8.3266727e-17 1.207081 0 5.5511151e-17 
		1.0132246 0 1.110223e-16 2.2091429 0 1.3183898e-16 1.8821611 0 1.110223e-16 1.5543221 
		0 1.110223e-16 1.2280601 0 1.110223e-16 2.5665071 0 1.5959456e-16 2.2033014 0 1.110223e-16 
		1.8389764 0 1.110223e-16 1.4767981 0 1.110223e-16 2.9166224 0 1.8041124e-16 2.5605173 
		0 1.6653345e-16 2.2028689 0 1.110223e-16 1.8476591 0 1.110223e-16 3.2141724 0 1.9428903e-16 
		2.9318151 0 1.6653345e-16 2.6473734 0 1.110223e-16 2.3651152 0 1.110223e-16 3.6161561 
		0 2.220446e-16 3.4533236 0 2.220446e-16 3.2880378 0 2.220446e-16 3.1257169 0 2.220446e-16 
		3.8272042 0 2.3592239e-16 3.7312312 0 2.220446e-16 3.5917406 0 2.220446e-16 3.4888325 
		0 2.220446e-16 3.9559469 0 2.4980018e-16 3.9506578 0 2.4980018e-16 3.9135289 0 2.220446e-16 
		3.8240366 0 2.220446e-16;
	setAttr -s 40 ".vt[0:39]"  -0.55506915 0.011024995 -0.019362327 -0.51627445 0.010065263 0.0074450299
		 -0.49672616 0.0097264443 0.056510877 -0.48599023 0.0096056443 0.11592555 -0.61690122 0.012639262 -0.032624606
		 -0.57980388 0.012133588 0.064930648 -0.53065175 0.010995589 0.18261398 -0.47914022 0.0093637332 0.29321265
		 -0.83473969 0.017012401 -0.047851376 -0.71918446 0.026012696 0.16078256 -0.60354048 0.022810336 0.36977148
		 -0.5066123 0.0086664129 0.56245911 -1.10457146 0.017086351 -0.04361707 -0.94108057 0.033898741 0.22460891
		 -0.77716106 0.02492049 0.49353829 -0.61403006 0.0087624686 0.76312321 -1.28325355 0.012937893 -0.043153066
		 -1.10165071 0.032073949 0.25512099 -0.91948819 0.024819624 0.55430925 -0.73839903 0.0092208767 0.85446572
		 -1.4583112 0.0057904092 -0.046747178 -1.28025866 0.026687767 0.27038494 -1.10143447 0.022161009 0.58839029
		 -0.92382956 0.0090261614 0.90757394 -1.60708618 -0.0022788616 -0.04524444 -1.46590757 0.01773249 0.27040115
		 -1.32368672 0.014791538 0.58653438 -1.18255758 0.0051890346 0.90366459 -1.80807805 -0.01532772 -0.023714462
		 -1.7266618 -0.0046793418 0.25130278 -1.64401889 -0.013177531 0.52626979 -1.56285846 -0.010252116 0.80185717
		 -1.91360211 -0.023357827 0.023243945 -1.86561561 -0.024658959 0.23894325 -1.7958703 -0.022728559 0.4405233
		 -1.74441624 -0.020859499 0.64442325 -1.97797346 -0.030551026 0.14970788 -1.97532892 -0.031915296 0.22407064
		 -1.95676446 -0.031925511 0.29428601 -1.9120183 -0.030252546 0.39026281;
	setAttr -s 66 ".ed[0:65]"  0 1 0 1 5 1 5 4 1 4 0 0 1 2 0 2 6 1 6 5 1
		 2 3 0 3 7 0 7 6 1 5 9 1 9 8 1 8 4 0 6 10 1 10 9 1 7 11 0 11 10 1 9 13 1 13 12 1 12 8 0
		 10 14 1 14 13 1 11 15 0 15 14 1 13 17 1 17 16 1 16 12 0 14 18 1 18 17 1 15 19 0 19 18 1
		 17 21 1 21 20 1 20 16 0 18 22 1 22 21 1 19 23 0 23 22 1 21 25 1 25 24 1 24 20 0 22 26 1
		 26 25 1 23 27 0 27 26 1 25 29 1 29 28 1 28 24 0 26 30 1 30 29 1 27 31 0 31 30 1 29 33 1
		 33 32 1 32 28 0 30 34 1 34 33 1 31 35 0 35 34 1 33 37 1 37 36 0 36 32 0 34 38 1 38 37 0
		 35 39 0 39 38 0;
	setAttr -s 27 -ch 108 ".fc[0:26]" -type "polyFaces" 
		f 4 -4 -3 -2 -1
		mu 0 4 0 3 2 1
		f 4 1 -7 -6 -5
		mu 0 4 1 2 5 4
		f 4 5 -10 -9 -8
		mu 0 4 4 5 7 6
		f 4 -13 -12 -11 2
		mu 0 4 3 9 8 2
		f 4 10 -15 -14 6
		mu 0 4 2 8 10 5
		f 4 13 -17 -16 9
		mu 0 4 5 10 11 7
		f 4 -20 -19 -18 11
		mu 0 4 9 13 12 8
		f 4 17 -22 -21 14
		mu 0 4 8 12 14 10
		f 4 20 -24 -23 16
		mu 0 4 10 14 15 11
		f 4 -27 -26 -25 18
		mu 0 4 13 17 16 12
		f 4 24 -29 -28 21
		mu 0 4 12 16 18 14
		f 4 27 -31 -30 23
		mu 0 4 14 18 19 15
		f 4 -34 -33 -32 25
		mu 0 4 17 21 20 16
		f 4 31 -36 -35 28
		mu 0 4 16 20 22 18
		f 4 34 -38 -37 30
		mu 0 4 18 22 23 19
		f 4 -41 -40 -39 32
		mu 0 4 21 25 24 20
		f 4 38 -43 -42 35
		mu 0 4 20 24 26 22
		f 4 41 -45 -44 37
		mu 0 4 22 26 27 23
		f 4 -48 -47 -46 39
		mu 0 4 25 29 28 24
		f 4 45 -50 -49 42
		mu 0 4 24 28 30 26
		f 4 48 -52 -51 44
		mu 0 4 26 30 31 27
		f 4 -55 -54 -53 46
		mu 0 4 29 33 32 28
		f 4 52 -57 -56 49
		mu 0 4 28 32 34 30
		f 4 55 -59 -58 51
		mu 0 4 30 34 35 31
		f 4 -62 -61 -60 53
		mu 0 4 33 37 36 32
		f 4 59 -64 -63 56
		mu 0 4 32 36 38 34
		f 4 62 -66 -65 58
		mu 0 4 34 38 39 35;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".dn" yes;
	setAttr ".vcs" 2;
createNode lightLinker -s -n "lightLinker1";
	setAttr -s 4 ".lnk";
	setAttr -s 4 ".slnk";
createNode displayLayerManager -n "layerManager";
	setAttr ".cdl" 1;
	setAttr -s 3 ".dli[1:2]"  1 2;
createNode displayLayer -n "defaultLayer";
createNode renderLayerManager -n "renderLayerManager";
createNode renderLayer -n "defaultRenderLayer";
	setAttr ".g" yes;
createNode mentalrayItemsList -s -n "mentalrayItemsList";
createNode mentalrayGlobals -s -n "mentalrayGlobals";
createNode mentalrayOptions -s -n "miDefaultOptions";
	addAttr -ci true -m -sn "stringOptions" -ln "stringOptions" -at "compound" -nc 
		3;
	addAttr -ci true -sn "name" -ln "name" -dt "string" -p "stringOptions";
	addAttr -ci true -sn "value" -ln "value" -dt "string" -p "stringOptions";
	addAttr -ci true -sn "type" -ln "type" -dt "string" -p "stringOptions";
	setAttr -s 45 ".stringOptions";
	setAttr ".stringOptions[0].name" -type "string" "rast motion factor";
	setAttr ".stringOptions[0].value" -type "string" "1.0";
	setAttr ".stringOptions[0].type" -type "string" "scalar";
	setAttr ".stringOptions[1].name" -type "string" "rast transparency depth";
	setAttr ".stringOptions[1].value" -type "string" "8";
	setAttr ".stringOptions[1].type" -type "string" "integer";
	setAttr ".stringOptions[2].name" -type "string" "rast useopacity";
	setAttr ".stringOptions[2].value" -type "string" "true";
	setAttr ".stringOptions[2].type" -type "string" "boolean";
	setAttr ".stringOptions[3].name" -type "string" "importon";
	setAttr ".stringOptions[3].value" -type "string" "false";
	setAttr ".stringOptions[3].type" -type "string" "boolean";
	setAttr ".stringOptions[4].name" -type "string" "importon density";
	setAttr ".stringOptions[4].value" -type "string" "1.0";
	setAttr ".stringOptions[4].type" -type "string" "scalar";
	setAttr ".stringOptions[5].name" -type "string" "importon merge";
	setAttr ".stringOptions[5].value" -type "string" "0.0";
	setAttr ".stringOptions[5].type" -type "string" "scalar";
	setAttr ".stringOptions[6].name" -type "string" "importon trace depth";
	setAttr ".stringOptions[6].value" -type "string" "0";
	setAttr ".stringOptions[6].type" -type "string" "integer";
	setAttr ".stringOptions[7].name" -type "string" "importon traverse";
	setAttr ".stringOptions[7].value" -type "string" "true";
	setAttr ".stringOptions[7].type" -type "string" "boolean";
	setAttr ".stringOptions[8].name" -type "string" "shadowmap pixel samples";
	setAttr ".stringOptions[8].value" -type "string" "3";
	setAttr ".stringOptions[8].type" -type "string" "integer";
	setAttr ".stringOptions[9].name" -type "string" "ambient occlusion";
	setAttr ".stringOptions[9].value" -type "string" "false";
	setAttr ".stringOptions[9].type" -type "string" "boolean";
	setAttr ".stringOptions[10].name" -type "string" "ambient occlusion rays";
	setAttr ".stringOptions[10].value" -type "string" "256";
	setAttr ".stringOptions[10].type" -type "string" "integer";
	setAttr ".stringOptions[11].name" -type "string" "ambient occlusion cache";
	setAttr ".stringOptions[11].value" -type "string" "false";
	setAttr ".stringOptions[11].type" -type "string" "boolean";
	setAttr ".stringOptions[12].name" -type "string" "ambient occlusion cache density";
	setAttr ".stringOptions[12].value" -type "string" "1.0";
	setAttr ".stringOptions[12].type" -type "string" "scalar";
	setAttr ".stringOptions[13].name" -type "string" "ambient occlusion cache points";
	setAttr ".stringOptions[13].value" -type "string" "64";
	setAttr ".stringOptions[13].type" -type "string" "integer";
	setAttr ".stringOptions[14].name" -type "string" "irradiance particles";
	setAttr ".stringOptions[14].value" -type "string" "false";
	setAttr ".stringOptions[14].type" -type "string" "boolean";
	setAttr ".stringOptions[15].name" -type "string" "irradiance particles rays";
	setAttr ".stringOptions[15].value" -type "string" "256";
	setAttr ".stringOptions[15].type" -type "string" "integer";
	setAttr ".stringOptions[16].name" -type "string" "irradiance particles interpolate";
	setAttr ".stringOptions[16].value" -type "string" "1";
	setAttr ".stringOptions[16].type" -type "string" "integer";
	setAttr ".stringOptions[17].name" -type "string" "irradiance particles interppoints";
	setAttr ".stringOptions[17].value" -type "string" "64";
	setAttr ".stringOptions[17].type" -type "string" "integer";
	setAttr ".stringOptions[18].name" -type "string" "irradiance particles indirect passes";
	setAttr ".stringOptions[18].value" -type "string" "0";
	setAttr ".stringOptions[18].type" -type "string" "integer";
	setAttr ".stringOptions[19].name" -type "string" "irradiance particles scale";
	setAttr ".stringOptions[19].value" -type "string" "1.0";
	setAttr ".stringOptions[19].type" -type "string" "scalar";
	setAttr ".stringOptions[20].name" -type "string" "irradiance particles env";
	setAttr ".stringOptions[20].value" -type "string" "true";
	setAttr ".stringOptions[20].type" -type "string" "boolean";
	setAttr ".stringOptions[21].name" -type "string" "irradiance particles env rays";
	setAttr ".stringOptions[21].value" -type "string" "256";
	setAttr ".stringOptions[21].type" -type "string" "integer";
	setAttr ".stringOptions[22].name" -type "string" "irradiance particles env scale";
	setAttr ".stringOptions[22].value" -type "string" "1";
	setAttr ".stringOptions[22].type" -type "string" "integer";
	setAttr ".stringOptions[23].name" -type "string" "irradiance particles rebuild";
	setAttr ".stringOptions[23].value" -type "string" "true";
	setAttr ".stringOptions[23].type" -type "string" "boolean";
	setAttr ".stringOptions[24].name" -type "string" "irradiance particles file";
	setAttr ".stringOptions[24].value" -type "string" "";
	setAttr ".stringOptions[24].type" -type "string" "string";
	setAttr ".stringOptions[25].name" -type "string" "geom displace motion factor";
	setAttr ".stringOptions[25].value" -type "string" "1.0";
	setAttr ".stringOptions[25].type" -type "string" "scalar";
	setAttr ".stringOptions[26].name" -type "string" "contrast all buffers";
	setAttr ".stringOptions[26].value" -type "string" "true";
	setAttr ".stringOptions[26].type" -type "string" "boolean";
	setAttr ".stringOptions[27].name" -type "string" "finalgather normal tolerance";
	setAttr ".stringOptions[27].value" -type "string" "25.842";
	setAttr ".stringOptions[27].type" -type "string" "scalar";
	setAttr ".stringOptions[28].name" -type "string" "trace camera clip";
	setAttr ".stringOptions[28].value" -type "string" "false";
	setAttr ".stringOptions[28].type" -type "string" "boolean";
	setAttr ".stringOptions[29].name" -type "string" "unified sampling";
	setAttr ".stringOptions[29].value" -type "string" "true";
	setAttr ".stringOptions[29].type" -type "string" "boolean";
	setAttr ".stringOptions[30].name" -type "string" "samples quality";
	setAttr ".stringOptions[30].value" -type "string" "0.25 0.25 0.25 0.25";
	setAttr ".stringOptions[30].type" -type "string" "color";
	setAttr ".stringOptions[31].name" -type "string" "samples min";
	setAttr ".stringOptions[31].value" -type "string" "1.0";
	setAttr ".stringOptions[31].type" -type "string" "scalar";
	setAttr ".stringOptions[32].name" -type "string" "samples max";
	setAttr ".stringOptions[32].value" -type "string" "100.0";
	setAttr ".stringOptions[32].type" -type "string" "scalar";
	setAttr ".stringOptions[33].name" -type "string" "samples error cutoff";
	setAttr ".stringOptions[33].value" -type "string" "0.0 0.0 0.0 0.0";
	setAttr ".stringOptions[33].type" -type "string" "color";
	setAttr ".stringOptions[34].name" -type "string" "samples per object";
	setAttr ".stringOptions[34].value" -type "string" "false";
	setAttr ".stringOptions[34].type" -type "string" "boolean";
	setAttr ".stringOptions[35].name" -type "string" "progressive";
	setAttr ".stringOptions[35].value" -type "string" "false";
	setAttr ".stringOptions[35].type" -type "string" "boolean";
	setAttr ".stringOptions[36].name" -type "string" "progressive max time";
	setAttr ".stringOptions[36].value" -type "string" "0";
	setAttr ".stringOptions[36].type" -type "string" "integer";
	setAttr ".stringOptions[37].name" -type "string" "progressive subsampling size";
	setAttr ".stringOptions[37].value" -type "string" "1";
	setAttr ".stringOptions[37].type" -type "string" "integer";
	setAttr ".stringOptions[38].name" -type "string" "iray";
	setAttr ".stringOptions[38].value" -type "string" "false";
	setAttr ".stringOptions[38].type" -type "string" "boolean";
	setAttr ".stringOptions[39].name" -type "string" "light relative scale";
	setAttr ".stringOptions[39].value" -type "string" "0.31831";
	setAttr ".stringOptions[39].type" -type "string" "scalar";
	setAttr ".stringOptions[40].name" -type "string" "trace camera motion vectors";
	setAttr ".stringOptions[40].value" -type "string" "false";
	setAttr ".stringOptions[40].type" -type "string" "boolean";
	setAttr ".stringOptions[41].name" -type "string" "ray differentials";
	setAttr ".stringOptions[41].value" -type "string" "true";
	setAttr ".stringOptions[41].type" -type "string" "boolean";
	setAttr ".stringOptions[42].name" -type "string" "environment lighting mode";
	setAttr ".stringOptions[42].value" -type "string" "off";
	setAttr ".stringOptions[42].type" -type "string" "string";
	setAttr ".stringOptions[43].name" -type "string" "environment lighting quality";
	setAttr ".stringOptions[43].value" -type "string" "0.167";
	setAttr ".stringOptions[43].type" -type "string" "scalar";
	setAttr ".stringOptions[44].name" -type "string" "environment lighting shadow";
	setAttr ".stringOptions[44].value" -type "string" "transparent";
	setAttr ".stringOptions[44].type" -type "string" "string";
createNode mentalrayFramebuffer -s -n "miDefaultFramebuffer";
createNode lambert -n "lambert2";
createNode shadingEngine -n "lambert2SG";
	setAttr ".ihi" 0;
	setAttr -s 4 ".dsm";
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo1";
createNode file -n "file1";
	setAttr ".ftn" -type "string" "/Users/david/Documents/ITP/thesis/textures/wing_01.tga";
createNode place2dTexture -n "place2dTexture1";
createNode lambert -n "lambert3";
createNode shadingEngine -n "lambert3SG";
	setAttr ".ihi" 0;
	setAttr -s 4 ".dsm";
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo2";
createNode file -n "file2";
	setAttr ".ftn" -type "string" "/Users/david/Documents/ITP/thesis/textures/wing_02_tex.tga";
createNode script -n "uiConfigurationScriptNode";
	setAttr ".b" -type "string" (
		"// Maya Mel UI Configuration File.\n//\n//  This script is machine generated.  Edit at your own risk.\n//\n//\n\nglobal string $gMainPane;\nif (`paneLayout -exists $gMainPane`) {\n\n\tglobal int $gUseScenePanelConfig;\n\tint    $useSceneConfig = $gUseScenePanelConfig;\n\tint    $menusOkayInPanels = `optionVar -q allowMenusInPanels`;\tint    $nVisPanes = `paneLayout -q -nvp $gMainPane`;\n\tint    $nPanes = 0;\n\tstring $editorName;\n\tstring $panelName;\n\tstring $itemFilterName;\n\tstring $panelConfig;\n\n\t//\n\t//  get current state of the UI\n\t//\n\tsceneUIReplacement -update $gMainPane;\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Top View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"top\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"wireframe\" \n"
		+ "                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 1\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -maxConstantTransparency 1\n                -rendererName \"base_OpenGL_Renderer\" \n"
		+ "                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n"
		+ "                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n            modelEditor -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"top\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"wireframe\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 1\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -maxConstantTransparency 1\n"
		+ "            -rendererName \"base_OpenGL_Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n"
		+ "            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Side View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels `;\n"
		+ "\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"side\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"wireframe\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 1\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n"
		+ "                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -maxConstantTransparency 1\n                -rendererName \"base_OpenGL_Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n"
		+ "                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n            modelEditor -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n"
		+ "                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"side\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"wireframe\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 1\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n"
		+ "            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -maxConstantTransparency 1\n            -rendererName \"base_OpenGL_Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n"
		+ "            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Front View\")) `;\n"
		+ "\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"front\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"wireframe\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 1\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n"
		+ "                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -maxConstantTransparency 1\n                -rendererName \"base_OpenGL_Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n"
		+ "                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n"
		+ "                -shadows 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n            modelEditor -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"front\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"wireframe\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 1\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n"
		+ "            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -maxConstantTransparency 1\n            -rendererName \"base_OpenGL_Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n"
		+ "            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n"
		+ "        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Persp View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"persp\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 1\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n"
		+ "                -displayTextures 1\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -maxConstantTransparency 1\n                -rendererName \"base_OpenGL_Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n"
		+ "                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 0\n                -nurbsSurfaces 0\n                -polymeshes 1\n                -subdivSurfaces 0\n                -planes 0\n                -lights 0\n                -cameras 0\n                -controlVertices 0\n                -hulls 0\n                -grid 1\n                -imagePlane 0\n                -joints 1\n                -ikHandles 0\n                -deformers 0\n                -dynamics 0\n                -fluids 0\n                -hairSystems 0\n                -follicles 0\n                -nCloths 0\n                -nParticles 0\n                -nRigids 0\n                -dynamicConstraints 0\n                -locators 0\n                -manipulators 1\n                -pluginShapes 0\n"
		+ "                -dimensions 0\n                -handles 0\n                -pivots 0\n                -textures 0\n                -strokes 0\n                -motionTrails 0\n                -clipGhosts 0\n                -greasePencils 0\n                -shadows 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n            modelEditor -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 0 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"persp\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n"
		+ "            -twoSidedLighting 1\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 1\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -maxConstantTransparency 1\n            -rendererName \"base_OpenGL_Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n"
		+ "            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 0\n            -nurbsSurfaces 0\n            -polymeshes 1\n            -subdivSurfaces 0\n            -planes 0\n            -lights 0\n            -cameras 0\n            -controlVertices 0\n            -hulls 0\n            -grid 1\n            -imagePlane 0\n            -joints 1\n            -ikHandles 0\n            -deformers 0\n            -dynamics 0\n            -fluids 0\n            -hairSystems 0\n            -follicles 0\n            -nCloths 0\n            -nParticles 0\n            -nRigids 0\n            -dynamicConstraints 0\n            -locators 0\n            -manipulators 1\n            -pluginShapes 0\n            -dimensions 0\n            -handles 0\n            -pivots 0\n            -textures 0\n"
		+ "            -strokes 0\n            -motionTrails 0\n            -clipGhosts 0\n            -greasePencils 0\n            -shadows 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 0 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"Outliner\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `outlinerPanel -unParent -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            outlinerEditor -e \n                -showShapes 0\n                -showReferenceNodes 1\n                -showReferenceMembers 1\n                -showAttributes 0\n                -showConnected 0\n                -showAnimCurvesOnly 0\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n"
		+ "                -autoExpand 0\n                -showDagOnly 1\n                -showAssets 1\n                -showContainedOnly 1\n                -showPublishedAsConnected 0\n                -showContainerContents 1\n                -ignoreDagHierarchy 0\n                -expandConnections 0\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 0\n                -highlightActive 1\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"defaultSetFilter\" \n                -showSetMembers 1\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n"
		+ "                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 0\n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -showShapes 0\n            -showReferenceNodes 1\n            -showReferenceMembers 1\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n"
		+ "            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n"
		+ "            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\tif ($useSceneConfig) {\n\t\toutlinerPanel -e -to $panelName;\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"graphEditor\" (localizedPanelLabel(\"Graph Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"graphEditor\" -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n"
		+ "                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n"
		+ "                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 1\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showResults \"off\" \n                -showBufferCurves \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n"
		+ "                -stackedCurves 1\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -displayNormalized 1\n                -preSelectionHighlight 0\n                -constrainDrag 0\n                -classicMode 1\n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n"
		+ "                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n"
		+ "                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 1\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showResults \"off\" \n                -showBufferCurves \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -stackedCurves 1\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n"
		+ "                -displayNormalized 1\n                -preSelectionHighlight 0\n                -constrainDrag 0\n                -classicMode 1\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dopeSheetPanel\" (localizedPanelLabel(\"Dope Sheet\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"dopeSheetPanel\" -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 0\n                -showAssets 1\n"
		+ "                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n"
		+ "                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n"
		+ "                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n"
		+ "                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"clipEditorPanel\" (localizedPanelLabel(\"Trax Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"clipEditorPanel\" -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n"
		+ "                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 0 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"sequenceEditorPanel\" (localizedPanelLabel(\"Camera Sequencer\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"sequenceEditorPanel\" -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels `;\n"
		+ "\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 1 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n"
		+ "\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperGraphPanel\" (localizedPanelLabel(\"Hypergraph Hierarchy\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"hyperGraphPanel\" -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 0\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showConnectionFromSelected 0\n                -showConnectionToSelected 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n"
		+ "                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 0\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n"
		+ "                -showConnectionFromSelected 0\n                -showConnectionToSelected 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperShadePanel\" (localizedPanelLabel(\"Hypershade\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"hyperShadePanel\" -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels `;\n"
		+ "\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"visorPanel\" (localizedPanelLabel(\"Visor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"visorPanel\" -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"nodeEditorPanel\" (localizedPanelLabel(\"Node Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"nodeEditorPanel\" -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n"
		+ "            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -defaultPinnedState 0\n                -ignoreAssets 1\n                -additiveGraphingMode 0\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -keyReleaseCommand \"nodeEdKeyReleaseCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -island 0\n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -syncedSelection 1\n                -extendToShapes 1\n                $editorName;;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -defaultPinnedState 0\n                -ignoreAssets 1\n                -additiveGraphingMode 0\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -keyReleaseCommand \"nodeEdKeyReleaseCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -island 0\n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -syncedSelection 1\n                -extendToShapes 1\n                $editorName;;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n"
		+ "\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"createNodePanel\" (localizedPanelLabel(\"Create Node\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"createNodePanel\" -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"polyTexturePlacementPanel\" (localizedPanelLabel(\"UV Texture Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"polyTexturePlacementPanel\" -l (localizedPanelLabel(\"UV Texture Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"UV Texture Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n"
		+ "\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"renderWindowPanel\" (localizedPanelLabel(\"Render View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"renderWindowPanel\" -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"blendShapePanel\" (localizedPanelLabel(\"Blend Shape\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\tblendShapePanel -unParent -l (localizedPanelLabel(\"Blend Shape\")) -mbv $menusOkayInPanels ;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tblendShapePanel -edit -l (localizedPanelLabel(\"Blend Shape\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n"
		+ "\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynRelEdPanel\" (localizedPanelLabel(\"Dynamic Relationships\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"dynRelEdPanel\" -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"relationshipPanel\" (localizedPanelLabel(\"Relationship Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"relationshipPanel\" -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"referenceEditorPanel\" (localizedPanelLabel(\"Reference Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"referenceEditorPanel\" -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"componentEditorPanel\" (localizedPanelLabel(\"Component Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"componentEditorPanel\" -l (localizedPanelLabel(\"Component Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Component Editor\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynPaintScriptedPanelType\" (localizedPanelLabel(\"Paint Effects\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"dynPaintScriptedPanelType\" -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"scriptEditorPanel\" (localizedPanelLabel(\"Script Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"scriptEditorPanel\" -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\tif ($useSceneConfig) {\n        string $configName = `getPanel -cwl (localizedPanelLabel(\"Current Layout\"))`;\n        if (\"\" != $configName) {\n\t\t\tpanelConfiguration -edit -label (localizedPanelLabel(\"Current Layout\")) \n\t\t\t\t-defaultImage \"\"\n\t\t\t\t-image \"\"\n\t\t\t\t-sc false\n\t\t\t\t-configString \"global string $gMainPane; paneLayout -e -cn \\\"single\\\" -ps 1 100 100 $gMainPane;\"\n\t\t\t\t-removeAllPanels\n\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Persp View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 1\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 1\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -maxConstantTransparency 1\\n    -rendererName \\\"base_OpenGL_Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 0\\n    -nurbsSurfaces 0\\n    -polymeshes 1\\n    -subdivSurfaces 0\\n    -planes 0\\n    -lights 0\\n    -cameras 0\\n    -controlVertices 0\\n    -hulls 0\\n    -grid 1\\n    -imagePlane 0\\n    -joints 1\\n    -ikHandles 0\\n    -deformers 0\\n    -dynamics 0\\n    -fluids 0\\n    -hairSystems 0\\n    -follicles 0\\n    -nCloths 0\\n    -nParticles 0\\n    -nRigids 0\\n    -dynamicConstraints 0\\n    -locators 0\\n    -manipulators 1\\n    -pluginShapes 0\\n    -dimensions 0\\n    -handles 0\\n    -pivots 0\\n    -textures 0\\n    -strokes 0\\n    -motionTrails 0\\n    -clipGhosts 0\\n    -greasePencils 0\\n    -shadows 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 0 \\n    $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 1\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 1\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -maxConstantTransparency 1\\n    -rendererName \\\"base_OpenGL_Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 0\\n    -nurbsSurfaces 0\\n    -polymeshes 1\\n    -subdivSurfaces 0\\n    -planes 0\\n    -lights 0\\n    -cameras 0\\n    -controlVertices 0\\n    -hulls 0\\n    -grid 1\\n    -imagePlane 0\\n    -joints 1\\n    -ikHandles 0\\n    -deformers 0\\n    -dynamics 0\\n    -fluids 0\\n    -hairSystems 0\\n    -follicles 0\\n    -nCloths 0\\n    -nParticles 0\\n    -nRigids 0\\n    -dynamicConstraints 0\\n    -locators 0\\n    -manipulators 1\\n    -pluginShapes 0\\n    -dimensions 0\\n    -handles 0\\n    -pivots 0\\n    -textures 0\\n    -strokes 0\\n    -motionTrails 0\\n    -clipGhosts 0\\n    -greasePencils 0\\n    -shadows 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 0 \\n    $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        setFocus `paneLayout -q -p1 $gMainPane`;\n        sceneUIReplacement -deleteRemaining;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 5 -size 12 -divisions 5 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "sceneConfigurationScriptNode";
	setAttr ".b" -type "string" "playbackOptions -min 1 -max 24 -ast 1 -aet 48 ";
	setAttr ".st" 6;
createNode skinCluster -n "skinCluster1";
	setAttr -s 24 ".wl";
	setAttr -s 5 ".wl[0].w";
	setAttr ".wl[0].w[0]" 0.9999482626587991;
	setAttr ".wl[0].w[1]" 1.5652210360218152e-05;
	setAttr ".wl[0].w[7]" 2.5839361879312912e-06;
	setAttr ".wl[0].w[9]" 1.8818710308038657e-05;
	setAttr ".wl[0].w[10]" 1.4682484344740409e-05;
	setAttr -s 5 ".wl[1].w";
	setAttr ".wl[1].w[0]" 0.99999918528049758;
	setAttr ".wl[1].w[1]" 2.2683855357844354e-07;
	setAttr ".wl[1].w[7]" 4.2463712648151772e-08;
	setAttr ".wl[1].w[9]" 2.9285126307681356e-07;
	setAttr ".wl[1].w[10]" 2.52565973106068e-07;
	setAttr -s 5 ".wl[2].w";
	setAttr ".wl[2].w[0]" 0.99997346354801198;
	setAttr ".wl[2].w[1]" 6.7635813186298598e-06;
	setAttr ".wl[2].w[7]" 1.3798235476004874e-06;
	setAttr ".wl[2].w[9]" 9.5872448650369839e-06;
	setAttr ".wl[2].w[10]" 8.8058022567243988e-06;
	setAttr -s 5 ".wl[3].w";
	setAttr ".wl[3].w[0]" 0.99912943258731435;
	setAttr ".wl[3].w[1]" 0.00019658557900472729;
	setAttr ".wl[3].w[7]" 4.3195477074656861e-05;
	setAttr ".wl[3].w[9]" 0.00032160932077406919;
	setAttr ".wl[3].w[10]" 0.00030917703583218151;
	setAttr -s 5 ".wl[4].w";
	setAttr ".wl[4].w[0]" 0.99910771217473904;
	setAttr ".wl[4].w[1]" 0.0003297225536165369;
	setAttr ".wl[4].w[7]" 3.4259179243366181e-05;
	setAttr ".wl[4].w[9]" 0.0003542515202881848;
	setAttr ".wl[4].w[10]" 0.00017405457211276784;
	setAttr -s 5 ".wl[5].w";
	setAttr ".wl[5].w[0]" 0.99976887050711127;
	setAttr ".wl[5].w[1]" 6.7787900852673999e-05;
	setAttr ".wl[5].w[7]" 7.6977915220753908e-06;
	setAttr ".wl[5].w[9]" 9.4300795937790356e-05;
	setAttr ".wl[5].w[10]" 6.1343004576085928e-05;
	setAttr -s 5 ".wl[6].w";
	setAttr ".wl[6].w[0]" 0.97798167477868503;
	setAttr ".wl[6].w[1]" 0.004218207465770017;
	setAttr ".wl[6].w[7]" 0.00073030817545718604;
	setAttr ".wl[6].w[9]" 0.0089425938819450435;
	setAttr ".wl[6].w[10]" 0.008127215698142589;
	setAttr -s 5 ".wl[7].w";
	setAttr ".wl[7].w[0]" 0.85465027124780235;
	setAttr ".wl[7].w[1]" 0.018030572088926659;
	setAttr ".wl[7].w[7]" 0.0049951117916001197;
	setAttr ".wl[7].w[9]" 0.061162022435835448;
	setAttr ".wl[7].w[10]" 0.061162022435835448;
	setAttr -s 5 ".wl[8].w";
	setAttr ".wl[8].w[0]" 0.13398810501475683;
	setAttr ".wl[8].w[1]" 0.86379459811940307;
	setAttr ".wl[8].w[2]" 1.8876377109047375e-05;
	setAttr ".wl[8].w[7]" 1.8888252084831914e-05;
	setAttr ".wl[8].w[9]" 0.00217953223664624;
	setAttr -s 5 ".wl[9].w";
	setAttr ".wl[9].w[0]" 0.0090801772096168239;
	setAttr ".wl[9].w[1]" 0.091406078779802516;
	setAttr ".wl[9].w[7]" 0.00026344694956512133;
	setAttr ".wl[9].w[9]" 0.89888575155084238;
	setAttr ".wl[9].w[10]" 0.00036454551017317907;
	setAttr -s 5 ".wl[10].w";
	setAttr ".wl[10].w[0]" 0.00062280410608329625;
	setAttr ".wl[10].w[1]" 0.0013777503056679949;
	setAttr ".wl[10].w[7]" 0.00028018775700617421;
	setAttr ".wl[10].w[9]" 0.99011129693077959;
	setAttr ".wl[10].w[10]" 0.0076079609004627976;
	setAttr -s 5 ".wl[11].w";
	setAttr ".wl[11].w[1]" 2.1944913966814173e-05;
	setAttr ".wl[11].w[7]" 3.3451543059872816e-05;
	setAttr ".wl[11].w[8]" 3.3451543059872816e-05;
	setAttr ".wl[11].w[9]" 0.49995557599995677;
	setAttr ".wl[11].w[10]" 0.49995557599995677;
	setAttr -s 5 ".wl[12].w";
	setAttr ".wl[12].w[1]" 0.4423718017164277;
	setAttr ".wl[12].w[2]" 0.54489922348990172;
	setAttr ".wl[12].w[3]" 0.00015857743394765745;
	setAttr ".wl[12].w[5]" 0.00014060125685238839;
	setAttr ".wl[12].w[7]" 0.012429796102870511;
	setAttr -s 5 ".wl[13].w";
	setAttr ".wl[13].w[1]" 0.0019565725124396456;
	setAttr ".wl[13].w[2]" 0.010719060137273358;
	setAttr ".wl[13].w[3]" 0.00014904994772163685;
	setAttr ".wl[13].w[5]" 0.00019146434239023703;
	setAttr ".wl[13].w[7]" 0.98698385306017511;
	setAttr -s 5 ".wl[14].w";
	setAttr ".wl[14].w[2]" 7.2227653042965012e-05;
	setAttr ".wl[14].w[5]" 5.5770596318184173e-05;
	setAttr ".wl[14].w[6]" 4.0167989497732994e-05;
	setAttr ".wl[14].w[7]" 0.99918025497136187;
	setAttr ".wl[14].w[8]" 0.00065157878977932667;
	setAttr -s 5 ".wl[15].w[5:9]"  1.9074307644855155e-05 1.9074307644855155e-05 
		0.49997277653918942 0.49997277653918942 1.6298306331458052e-05;
	setAttr -s 5 ".wl[16].w[1:5]"  0.00033134187524631138 0.49034478218765604 
		0.49034478218765604 0.00084804288994095103 0.018131050859500609;
	setAttr -s 5 ".wl[17].w";
	setAttr ".wl[17].w[2]" 0.0031452920865230154;
	setAttr ".wl[17].w[3]" 0.031752097187439265;
	setAttr ".wl[17].w[4]" 0.0044175067156079668;
	setAttr ".wl[17].w[5]" 0.96043485290288533;
	setAttr ".wl[17].w[7]" 0.00025025110754443804;
	setAttr -s 5 ".wl[18].w[3:7]"  0.00087623467015022084 0.00087623467015022084 
		0.9900903869331168 0.0078700053717790947 0.000287138354803699;
	setAttr -s 5 ".wl[19].w";
	setAttr ".wl[19].w[3]" 0.00032669158416613847;
	setAttr ".wl[19].w[5]" 0.49922138561197094;
	setAttr ".wl[19].w[6]" 0.49922138561197116;
	setAttr ".wl[19].w[7]" 0.000616938470450025;
	setAttr ".wl[19].w[8]" 0.00061359872144158174;
	setAttr -s 5 ".wl[20].w[1:5]"  0.00013756040712384072 0.006970939366813849 
		0.9319668096752225 0.049568886590896422 0.011355803959943457;
	setAttr -s 5 ".wl[21].w[2:6]"  0.00031154044168656153 0.49938077528784086 
		0.49938077528784075 0.00088432248020697249 4.2586502424856881e-05;
	setAttr -s 5 ".wl[22].w[2:6]"  0.0066854095698173988 0.46969484531246408 
		0.46969484531246397 0.048148566690571049 0.0057763331146835576;
	setAttr -s 5 ".wl[23].w[2:6]"  0.014371996524157481 0.15359498943269675 
		0.15359498943269675 0.53199637663868671 0.14644164797176226;
	setAttr -s 11 ".pm";
	setAttr ".pm[0]" -type "matrix" -0.94856787241525931 0.036825753102921542 0.31442464173469492 -0
		 0.028637045756577075 0.99912063431988452 -0.03062478875955468 0 -0.31527592840545926 -0.02004549786446571 -0.94878831515962592 0
		 -0.47257163750824038 0.017125648851714307 0.11681822739639983 1;
	setAttr ".pm[1]" -type "matrix" -0.94869856903398964 0.036825753102921549 0.31403007661888649 -0
		 0.028649781050579731 0.99912063431988463 -0.030612875101588853 0 -0.31488127152724543 -0.020045497864465717 -0.94891936583502789 0
		 -1.3677285134031414 0.01318061435384856 -0.036829738306231333 1;
	setAttr ".pm[2]" -type "matrix" -0.97227206093374363 0.025911566364843226 0.23241262929576698 -0
		 0.026641071413305253 0.9996450636670754 -1.2056328158038814e-16 0 -0.23233013760939936 0.0061917214544224587 -0.97261727814378718 0
		 -1.8738781148470744 0.010257870281343661 -0.20050483820403434 1;
	setAttr ".pm[3]" -type "matrix" -0.87100324685571562 0.01094918096375141 -0.49115522943670709 -0
		 0.012569776275541532 0.99992099724147354 1.0290379659494421e-14 -0 0.49111642681871698 -0.0061737113505727116 -0.87107206395164349 -0
		 -1.5406508853504088 -0.031324387087986315 -1.702478663045577 1;
	setAttr ".pm[4]" -type "matrix" 0.99108573323954885 0.03682575310292148 -0.12803489085959732 -0
		 -0.033944894651549005 0.99912063431988429 0.02461101792545092 0 0.12882862064045239 -0.020045497864465588 0.99146425276922856 -0
		 2.5304139735820645 0.025142970419692188 0.23322481411447388 1;
	setAttr ".pm[5]" -type "matrix" -0.15939409398600748 1.6812396971358193e-14 -0.98721503371979691 -0
		 3.803099734351143e-16 1 1.6972355192042095e-14 -0 0.98721503371979724 2.3377322572364126e-15 -0.15939409398600771 -0
		 0.25027596649035144 3.827577889164137e-14 -2.2609727391481527 1;
	setAttr ".pm[6]" -type "matrix" 0.99999999999999978 1.6812396971358193e-14 -4.9960036108135959e-16 -0
		 -1.6815983366865739e-14 1 -2.3298454553955303e-15 0 6.6613381477505458e-16 2.3377322572364122e-15 1.0000000000000002 -0
		 2.2927090175677005 3.8275375644982864e-14 -0.015208034871359393 1;
	setAttr ".pm[7]" -type "matrix" -0.062378286155182872 2.5240800593425221e-15 -0.99805257848288875 -0
		 9.0059717072528988e-17 1 2.5353460923497709e-15 -0 0.99805257848288853 7.6838894538538443e-17 -0.062378286155182816 -0
		 0.42057892232706601 4.5427597061171033e-15 -1.8133129014870923 1;
	setAttr ".pm[8]" -type "matrix" 1.0000000000000002 2.5240800593425221e-15 -2.3731017151362733e-15 -0
		 -2.5360264756188091e-15 1 -6.8266211209335665e-17 0 2.3314683517128299e-15 7.683889453853843e-17 1 -0
		 1.8257065679279778 4.5394709819291351e-15 -0.14168786498212183 1;
	setAttr ".pm[9]" -type "matrix" -7.2164496600634958e-16 1.0345890810725678e-14 -1 -0
		 2.324529457808996e-16 1 1.0344156087249701e-14 -0 1 -2.2551405187697575e-16 -8.881784197001278e-16 -0
		 0.35450223776008888 1.3366175777913663e-14 -1.3003288120832859 1;
	setAttr ".pm[10]" -type "matrix" 1 1.0345890810725679e-14 -9.4368957093138089e-16 -0
		 -1.0344156087249701e-14 1 2.3245294578090191e-16 0 1.1102230246251591e-15 -2.255140518769758e-16 1 -0
		 1.3003288120832857 1.3415998164846476e-14 -0.17736166321848701 1;
	setAttr ".gm" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr -s 11 ".ma";
	setAttr -s 11 ".dpf[0:10]"  4 4 4 4 4 4 4 4 4 4 4;
	setAttr -s 11 ".lw";
	setAttr -s 11 ".lw";
	setAttr ".mmi" yes;
	setAttr ".mi" 5;
	setAttr ".bm" 0;
	setAttr ".ucm" yes;
	setAttr -s 11 ".ifcl";
	setAttr -s 11 ".ifcl";
createNode tweak -n "tweak1";
createNode objectSet -n "skinCluster1Set";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "skinCluster1GroupId";
	setAttr ".ihi" 0;
createNode groupParts -n "skinCluster1GroupParts";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode objectSet -n "tweakSet1";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId2";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts2";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode dagPose -n "bindPose9";
	setAttr -s 11 ".wm";
	setAttr -s 11 ".xm";
	setAttr ".xm[0]" -type "matrix" "xform" 1 1 1 0.026919108013402103 -0.12922999798181745
		 0.028881861225483887 0 -0.48562746696852233 0 -0.03781140044464977 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0.99541466983340854 0 0.095653724864462497 1 1 1 yes;
	setAttr ".xm[1]" -type "matrix" "xform" 1 1 1 0 0 0 0 0.89517207618414352 0.00394503449786574
		 0.15307908307629298 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0.00020796504837495121 0 0.99999997837526911 1
		 1 1 yes;
	setAttr ".xm[2]" -type "matrix" "xform" 1 1 1 0 0 0 0 0.51641577263524185 6.376840605909484e-05
		 0.0026019886411650511 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.014113375337449271 0.042905120392729361 -0.0016610781301907821 0.99897807988970155 1
		 1 1 yes;
	setAttr ".xm[3]" -type "matrix" "xform" 1 1 1 0 0 0 0 0.4136341915322721 -1.0408340855860843e-17
		 3.3306690738754696e-16 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.0071626123572348186 0.36525903981041513 -0.006550591224520971 0.93085531667150234 1
		 1 1 yes;
	setAttr ".xm[4]" -type "matrix" "xform" 1 1 1 0 0 0 0 0.34577590761764476 -3.4694469519536142e-17
		 -2.2204460492503131e-16 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.014030496758231729 0.94877766023430132 0.0043371842950220589 0.31560305041845371 1
		 1 1 yes;
	setAttr ".xm[5]" -type "matrix" "xform" 1 1 1 0 0 0 0 0.070405067477728761 -0.05157659996311531
		 -0.096637963815275868 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.0027261324272076625 0.43374276223579311 -0.0056630010818025959 0.90101482497725927 1
		 1 1 yes;
	setAttr ".xm[6]" -type "matrix" "xform" 1 1 1 0 0 0 0 0.63073384377744413 4.0324665850035274e-19
		 -4.4408920985006262e-16 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0.76137838621345399 0 0.64830776102634813 1
		 1 1 yes;
	setAttr ".xm[7]" -type "matrix" "xform" 1 1 1 0 0 0 0 -0.015983516468746919
		 -0.03925600666636013 -0.096743834394450598 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 
		0.010194769679759475 0.76520649447957934 -0.0085752456314054891 0.64364707149167644 1
		 1 1 yes;
	setAttr ".xm[8]" -type "matrix" "xform" 1 1 1 0 0 0 0 0.67587530804181184 3.2887241879690006e-18
		 -6.6613381477509392e-16 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0.72882723815564843 0 0.68469763905128944 1
		 1 1 yes;
	setAttr ".xm[9]" -type "matrix" "xform" 1 1 1 0 0 0 0 -0.022482314720909669
		 -0.027598799582577584 -0.10877805615208837 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 
		0.0026538072535718382 0.81056029733543189 -0.020800003536500824 0.58527969514022837 1
		 1 1 yes;
	setAttr ".xm[10]" -type "matrix" "xform" 1 1 1 0 0 0 0 0.53186390097857561 -4.98223869328134e-17
		 -4.4408920985006262e-16 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0.70710678118654746 0 0.70710678118654768 1
		 1 1 yes;
	setAttr -s 11 ".m";
	setAttr -s 11 ".p";
	setAttr ".bp" yes;
createNode skinCluster -n "skinCluster2";
	setAttr -s 24 ".wl";
	setAttr -s 5 ".wl[0].w";
	setAttr ".wl[0].w[0]" 0.9999482626587991;
	setAttr ".wl[0].w[1]" 1.5652210360218152e-05;
	setAttr ".wl[0].w[7]" 2.5839361879312912e-06;
	setAttr ".wl[0].w[9]" 1.8818710308038657e-05;
	setAttr ".wl[0].w[10]" 1.4682484344740409e-05;
	setAttr -s 5 ".wl[1].w";
	setAttr ".wl[1].w[0]" 0.99999918528049758;
	setAttr ".wl[1].w[1]" 2.2683855357844354e-07;
	setAttr ".wl[1].w[7]" 4.2463712648151772e-08;
	setAttr ".wl[1].w[9]" 2.9285126307681356e-07;
	setAttr ".wl[1].w[10]" 2.52565973106068e-07;
	setAttr -s 5 ".wl[2].w";
	setAttr ".wl[2].w[0]" 0.99997346354801198;
	setAttr ".wl[2].w[1]" 6.7635813186298598e-06;
	setAttr ".wl[2].w[7]" 1.3798235476004874e-06;
	setAttr ".wl[2].w[9]" 9.5872448650369839e-06;
	setAttr ".wl[2].w[10]" 8.8058022567243988e-06;
	setAttr -s 5 ".wl[3].w";
	setAttr ".wl[3].w[0]" 0.99912943258731435;
	setAttr ".wl[3].w[1]" 0.00019658557900472729;
	setAttr ".wl[3].w[7]" 4.3195477074656861e-05;
	setAttr ".wl[3].w[9]" 0.00032160932077406919;
	setAttr ".wl[3].w[10]" 0.00030917703583218151;
	setAttr -s 5 ".wl[4].w";
	setAttr ".wl[4].w[0]" 0.99910771217473904;
	setAttr ".wl[4].w[1]" 0.0003297225536165369;
	setAttr ".wl[4].w[7]" 3.4259179243366181e-05;
	setAttr ".wl[4].w[9]" 0.0003542515202881848;
	setAttr ".wl[4].w[10]" 0.00017405457211276784;
	setAttr -s 5 ".wl[5].w";
	setAttr ".wl[5].w[0]" 0.99976887050711127;
	setAttr ".wl[5].w[1]" 6.7787900852673999e-05;
	setAttr ".wl[5].w[7]" 7.6977915220753908e-06;
	setAttr ".wl[5].w[9]" 9.4300795937790356e-05;
	setAttr ".wl[5].w[10]" 6.1343004576085928e-05;
	setAttr -s 5 ".wl[6].w";
	setAttr ".wl[6].w[0]" 0.97798167477868503;
	setAttr ".wl[6].w[1]" 0.004218207465770017;
	setAttr ".wl[6].w[7]" 0.00073030817545718604;
	setAttr ".wl[6].w[9]" 0.0089425938819450435;
	setAttr ".wl[6].w[10]" 0.008127215698142589;
	setAttr -s 5 ".wl[7].w";
	setAttr ".wl[7].w[0]" 0.85465027124780235;
	setAttr ".wl[7].w[1]" 0.018030572088926659;
	setAttr ".wl[7].w[7]" 0.0049951117916001197;
	setAttr ".wl[7].w[9]" 0.061162022435835448;
	setAttr ".wl[7].w[10]" 0.061162022435835448;
	setAttr -s 5 ".wl[8].w";
	setAttr ".wl[8].w[0]" 0.13398810501475683;
	setAttr ".wl[8].w[1]" 0.86379459811940307;
	setAttr ".wl[8].w[2]" 1.8876377109047375e-05;
	setAttr ".wl[8].w[7]" 1.8888252084831914e-05;
	setAttr ".wl[8].w[9]" 0.00217953223664624;
	setAttr -s 5 ".wl[9].w";
	setAttr ".wl[9].w[0]" 0.0090801772096168239;
	setAttr ".wl[9].w[1]" 0.091406078779802516;
	setAttr ".wl[9].w[7]" 0.00026344694956512133;
	setAttr ".wl[9].w[9]" 0.89888575155084238;
	setAttr ".wl[9].w[10]" 0.00036454551017317907;
	setAttr -s 5 ".wl[10].w";
	setAttr ".wl[10].w[0]" 0.00062280410608329625;
	setAttr ".wl[10].w[1]" 0.0013777503056679949;
	setAttr ".wl[10].w[7]" 0.00028018775700617421;
	setAttr ".wl[10].w[9]" 0.99011129693077959;
	setAttr ".wl[10].w[10]" 0.0076079609004627976;
	setAttr -s 5 ".wl[11].w";
	setAttr ".wl[11].w[1]" 2.1944913966814173e-05;
	setAttr ".wl[11].w[7]" 3.3451543059872816e-05;
	setAttr ".wl[11].w[8]" 3.3451543059872816e-05;
	setAttr ".wl[11].w[9]" 0.49995557599995677;
	setAttr ".wl[11].w[10]" 0.49995557599995677;
	setAttr -s 5 ".wl[12].w";
	setAttr ".wl[12].w[1]" 0.4423718017164277;
	setAttr ".wl[12].w[2]" 0.54489922348990172;
	setAttr ".wl[12].w[3]" 0.00015857743394765745;
	setAttr ".wl[12].w[5]" 0.00014060125685238839;
	setAttr ".wl[12].w[7]" 0.012429796102870511;
	setAttr -s 5 ".wl[13].w";
	setAttr ".wl[13].w[1]" 0.0019565725124396456;
	setAttr ".wl[13].w[2]" 0.010719060137273358;
	setAttr ".wl[13].w[3]" 0.00014904994772163685;
	setAttr ".wl[13].w[5]" 0.00019146434239023703;
	setAttr ".wl[13].w[7]" 0.98698385306017511;
	setAttr -s 5 ".wl[14].w";
	setAttr ".wl[14].w[2]" 7.2227653042965012e-05;
	setAttr ".wl[14].w[5]" 5.5770596318184173e-05;
	setAttr ".wl[14].w[6]" 4.0167989497732994e-05;
	setAttr ".wl[14].w[7]" 0.99918025497136187;
	setAttr ".wl[14].w[8]" 0.00065157878977932667;
	setAttr -s 5 ".wl[15].w[5:9]"  1.9074307644855155e-05 1.9074307644855155e-05 
		0.49997277653918942 0.49997277653918942 1.6298306331458052e-05;
	setAttr -s 5 ".wl[16].w[1:5]"  0.00033134187524631138 0.49034478218765604 
		0.49034478218765604 0.00084804288994095103 0.018131050859500609;
	setAttr -s 5 ".wl[17].w";
	setAttr ".wl[17].w[2]" 0.0031452920865230154;
	setAttr ".wl[17].w[3]" 0.031752097187439265;
	setAttr ".wl[17].w[4]" 0.0044175067156079668;
	setAttr ".wl[17].w[5]" 0.96043485290288533;
	setAttr ".wl[17].w[7]" 0.00025025110754443804;
	setAttr -s 5 ".wl[18].w[3:7]"  0.00087623467015022084 0.00087623467015022084 
		0.9900903869331168 0.0078700053717790947 0.000287138354803699;
	setAttr -s 5 ".wl[19].w";
	setAttr ".wl[19].w[3]" 0.00032669158416613847;
	setAttr ".wl[19].w[5]" 0.49922138561197094;
	setAttr ".wl[19].w[6]" 0.49922138561197116;
	setAttr ".wl[19].w[7]" 0.000616938470450025;
	setAttr ".wl[19].w[8]" 0.00061359872144158174;
	setAttr -s 5 ".wl[20].w[1:5]"  0.00013756040712384072 0.006970939366813849 
		0.9319668096752225 0.049568886590896422 0.011355803959943457;
	setAttr -s 5 ".wl[21].w[2:6]"  0.00031154044168656153 0.49938077528784086 
		0.49938077528784075 0.00088432248020697249 4.2586502424856881e-05;
	setAttr -s 5 ".wl[22].w[2:6]"  0.0066854095698173988 0.46969484531246408 
		0.46969484531246397 0.048148566690571049 0.0057763331146835576;
	setAttr -s 5 ".wl[23].w[2:6]"  0.014371996524157481 0.15359498943269675 
		0.15359498943269675 0.53199637663868671 0.14644164797176226;
	setAttr -s 11 ".pm";
	setAttr ".pm[0]" -type "matrix" -0.94856787241525931 0.036825753102921542 0.31442464173469492 -0
		 0.028637045756577075 0.99912063431988452 -0.03062478875955468 0 -0.31527592840545926 -0.02004549786446571 -0.94878831515962592 0
		 -0.47257163750824038 0.017125648851714307 0.11681822739639983 1;
	setAttr ".pm[1]" -type "matrix" -0.94869856903398964 0.036825753102921549 0.31403007661888649 -0
		 0.028649781050579731 0.99912063431988463 -0.030612875101588853 0 -0.31488127152724543 -0.020045497864465717 -0.94891936583502789 0
		 -1.3677285134031414 0.01318061435384856 -0.036829738306231333 1;
	setAttr ".pm[2]" -type "matrix" -0.97227206093374363 0.025911566364843226 0.23241262929576698 -0
		 0.026641071413305253 0.9996450636670754 -1.2056328158038814e-16 0 -0.23233013760939936 0.0061917214544224587 -0.97261727814378718 0
		 -1.8738781148470744 0.010257870281343661 -0.20050483820403434 1;
	setAttr ".pm[3]" -type "matrix" -0.87100324685571562 0.01094918096375141 -0.49115522943670709 -0
		 0.012569776275541532 0.99992099724147354 1.0290379659494421e-14 -0 0.49111642681871698 -0.0061737113505727116 -0.87107206395164349 -0
		 -1.5406508853504088 -0.031324387087986315 -1.702478663045577 1;
	setAttr ".pm[4]" -type "matrix" 0.99108573323954885 0.03682575310292148 -0.12803489085959732 -0
		 -0.033944894651549005 0.99912063431988429 0.02461101792545092 0 0.12882862064045239 -0.020045497864465588 0.99146425276922856 -0
		 2.5304139735820645 0.025142970419692188 0.23322481411447388 1;
	setAttr ".pm[5]" -type "matrix" -0.15939409398600748 1.6812396971358193e-14 -0.98721503371979691 -0
		 3.803099734351143e-16 1 1.6972355192042095e-14 -0 0.98721503371979724 2.3377322572364126e-15 -0.15939409398600771 -0
		 0.25027596649035144 3.827577889164137e-14 -2.2609727391481527 1;
	setAttr ".pm[6]" -type "matrix" 0.99999999999999978 1.6812396971358193e-14 -4.9960036108135959e-16 -0
		 -1.6815983366865739e-14 1 -2.3298454553955303e-15 0 6.6613381477505458e-16 2.3377322572364122e-15 1.0000000000000002 -0
		 2.2927090175677005 3.8275375644982864e-14 -0.015208034871359393 1;
	setAttr ".pm[7]" -type "matrix" -0.062378286155182872 2.5240800593425221e-15 -0.99805257848288875 -0
		 9.0059717072528988e-17 1 2.5353460923497709e-15 -0 0.99805257848288853 7.6838894538538443e-17 -0.062378286155182816 -0
		 0.42057892232706601 4.5427597061171033e-15 -1.8133129014870923 1;
	setAttr ".pm[8]" -type "matrix" 1.0000000000000002 2.5240800593425221e-15 -2.3731017151362733e-15 -0
		 -2.5360264756188091e-15 1 -6.8266211209335665e-17 0 2.3314683517128299e-15 7.683889453853843e-17 1 -0
		 1.8257065679279778 4.5394709819291351e-15 -0.14168786498212183 1;
	setAttr ".pm[9]" -type "matrix" -7.2164496600634958e-16 1.0345890810725678e-14 -1 -0
		 2.324529457808996e-16 1 1.0344156087249701e-14 -0 1 -2.2551405187697575e-16 -8.881784197001278e-16 -0
		 0.35450223776008888 1.3366175777913663e-14 -1.3003288120832859 1;
	setAttr ".pm[10]" -type "matrix" 1 1.0345890810725679e-14 -9.4368957093138089e-16 -0
		 -1.0344156087249701e-14 1 2.3245294578090191e-16 0 1.1102230246251591e-15 -2.255140518769758e-16 1 -0
		 1.3003288120832857 1.3415998164846476e-14 -0.17736166321848701 1;
	setAttr ".gm" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr -s 11 ".ma";
	setAttr -s 11 ".dpf[0:10]"  4 4 4 4 4 4 4 4 4 4 4;
	setAttr -s 11 ".lw";
	setAttr -s 11 ".lw";
	setAttr ".mmi" yes;
	setAttr ".mi" 5;
	setAttr ".bm" 0;
	setAttr ".ucm" yes;
	setAttr -s 11 ".ifcl";
	setAttr -s 11 ".ifcl";
createNode tweak -n "tweak2";
createNode objectSet -n "skinCluster2Set";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "skinCluster2GroupId";
	setAttr ".ihi" 0;
createNode groupParts -n "skinCluster2GroupParts";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode objectSet -n "tweakSet2";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId4";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts4";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode skinCluster -n "skinCluster3";
	setAttr -s 40 ".wl";
	setAttr -s 5 ".wl[0].w";
	setAttr ".wl[0].w[0]" 0.99772626454759139;
	setAttr ".wl[0].w[1]" 0.00099690537883111749;
	setAttr ".wl[0].w[2]" 4.0652319494812384e-05;
	setAttr ".wl[0].w[9]" 0.0011296869980046776;
	setAttr ".wl[0].w[10]" 0.00010649075607807219;
	setAttr -s 5 ".wl[1].w";
	setAttr ".wl[1].w[0]" 0.99968194571901292;
	setAttr ".wl[1].w[1]" 0.00012824364925684886;
	setAttr ".wl[1].w[7]" 6.0813629087875734e-06;
	setAttr ".wl[1].w[9]" 0.00016211319546604648;
	setAttr ".wl[1].w[10]" 2.1616073355389909e-05;
	setAttr -s 5 ".wl[2].w";
	setAttr ".wl[2].w[0]" 0.99999875186078635;
	setAttr ".wl[2].w[1]" 4.3589906875305982e-07;
	setAttr ".wl[2].w[7]" 2.2412245989337064e-08;
	setAttr ".wl[2].w[9]" 6.7879232995916675e-07;
	setAttr ".wl[2].w[10]" 1.1103556892524676e-07;
	setAttr -s 5 ".wl[3].w";
	setAttr ".wl[3].w[0]" 0.99817128841236202;
	setAttr ".wl[3].w[1]" 0.00050333058851111643;
	setAttr ".wl[3].w[7]" 2.8753141822952349e-05;
	setAttr ".wl[3].w[9]" 0.0010874390176925498;
	setAttr ".wl[3].w[10]" 0.00020918883961125332;
	setAttr -s 5 ".wl[4].w";
	setAttr ".wl[4].w[0]" 0.99344963514773099;
	setAttr ".wl[4].w[1]" 0.0030942183200031292;
	setAttr ".wl[4].w[2]" 9.1765851658696663e-05;
	setAttr ".wl[4].w[9]" 0.0032001291131082531;
	setAttr ".wl[4].w[10]" 0.00016425156749877803;
	setAttr -s 5 ".wl[5].w";
	setAttr ".wl[5].w[0]" 0.99995120860214759;
	setAttr ".wl[5].w[1]" 1.798693431576721e-05;
	setAttr ".wl[5].w[7]" 5.6918975604651015e-07;
	setAttr ".wl[5].w[9]" 2.8135528866813679e-05;
	setAttr ".wl[5].w[10]" 2.0997449138062286e-06;
	setAttr -s 5 ".wl[6].w";
	setAttr ".wl[6].w[0]" 0.93666450727574024;
	setAttr ".wl[6].w[1]" 0.01172509440619994;
	setAttr ".wl[6].w[7]" 0.0006284784819444439;
	setAttr ".wl[6].w[9]" 0.044834549915850612;
	setAttr ".wl[6].w[10]" 0.0061473699202647921;
	setAttr -s 5 ".wl[7].w";
	setAttr ".wl[7].w[0]" 0.52925581365203267;
	setAttr ".wl[7].w[1]" 0.033273970615091283;
	setAttr ".wl[7].w[7]" 0.0034318584406206653;
	setAttr ".wl[7].w[9]" 0.33646811368156138;
	setAttr ".wl[7].w[10]" 0.097570243610694038;
	setAttr -s 5 ".wl[8].w";
	setAttr ".wl[8].w[0]" 0.84077150638626086;
	setAttr ".wl[8].w[1]" 0.11543931183923148;
	setAttr ".wl[8].w[2]" 0.00031105492543765344;
	setAttr ".wl[8].w[7]" 0.00027880696112305954;
	setAttr ".wl[8].w[9]" 0.043199319887946931;
	setAttr -s 5 ".wl[9].w";
	setAttr ".wl[9].w[0]" 0.55263448465350584;
	setAttr ".wl[9].w[1]" 0.067973214872900339;
	setAttr ".wl[9].w[7]" 0.00076938704689999415;
	setAttr ".wl[9].w[9]" 0.37655397052996842;
	setAttr ".wl[9].w[10]" 0.0020689428967254051;
	setAttr -s 5 ".wl[10].w";
	setAttr ".wl[10].w[0]" 0.02148896547144459;
	setAttr ".wl[10].w[1]" 0.0077678747676235759;
	setAttr ".wl[10].w[7]" 0.00092637022753860009;
	setAttr ".wl[10].w[9]" 0.93138040334986194;
	setAttr ".wl[10].w[10]" 0.038436386183531311;
	setAttr -s 5 ".wl[11].w";
	setAttr ".wl[11].w[0]" 0.0010355171001121669;
	setAttr ".wl[11].w[1]" 0.00046608596656119152;
	setAttr ".wl[11].w[7]" 0.00021007375772418057;
	setAttr ".wl[11].w[9]" 0.55350006951015074;
	setAttr ".wl[11].w[10]" 0.44478825366545166;
	setAttr -s 5 ".wl[12].w";
	setAttr ".wl[12].w[0]" 0.018315940691831005;
	setAttr ".wl[12].w[1]" 0.97236616625277761;
	setAttr ".wl[12].w[2]" 0.0019772710638463363;
	setAttr ".wl[12].w[7]" 0.0013284329642154005;
	setAttr ".wl[12].w[9]" 0.0060121890273297065;
	setAttr -s 5 ".wl[13].w";
	setAttr ".wl[13].w[0]" 0.033854201837326403;
	setAttr ".wl[13].w[1]" 0.17286154036692633;
	setAttr ".wl[13].w[2]" 0.0011821877683957079;
	setAttr ".wl[13].w[7]" 0.0018460800377820821;
	setAttr ".wl[13].w[9]" 0.79025598998956947;
	setAttr -s 5 ".wl[14].w";
	setAttr ".wl[14].w[0]" 0.0015414488316614189;
	setAttr ".wl[14].w[1]" 0.0021307679556807142;
	setAttr ".wl[14].w[7]" 0.00097274632491556323;
	setAttr ".wl[14].w[9]" 0.97882716661844604;
	setAttr ".wl[14].w[10]" 0.01652787026929621;
	setAttr -s 5 ".wl[15].w";
	setAttr ".wl[15].w[0]" 0.00039328764559952889;
	setAttr ".wl[15].w[7]" 0.00075007364701103077;
	setAttr ".wl[15].w[8]" 0.00075007364701103077;
	setAttr ".wl[15].w[9]" 0.49905328253018905;
	setAttr ".wl[15].w[10]" 0.49905328253018927;
	setAttr -s 5 ".wl[16].w";
	setAttr ".wl[16].w[0]" 0.00081434139294998093;
	setAttr ".wl[16].w[1]" 0.95536691361706938;
	setAttr ".wl[16].w[2]" 0.036154018858797279;
	setAttr ".wl[16].w[7]" 0.0071521537629346665;
	setAttr ".wl[16].w[9]" 0.00051257236824857181;
	setAttr -s 5 ".wl[17].w";
	setAttr ".wl[17].w[0]" 0.14593949178323098;
	setAttr ".wl[17].w[1]" 0.29065344009273825;
	setAttr ".wl[17].w[2]" 0.080181686967451149;
	setAttr ".wl[17].w[7]" 0.20704710643021518;
	setAttr ".wl[17].w[9]" 0.27617827472636453;
	setAttr -s 5 ".wl[18].w";
	setAttr ".wl[18].w[1]" 0.04845491023639447;
	setAttr ".wl[18].w[7]" 0.12459349216232544;
	setAttr ".wl[18].w[8]" 0.063613615513243418;
	setAttr ".wl[18].w[9]" 0.62759290946067925;
	setAttr ".wl[18].w[10]" 0.13574507262735755;
	setAttr -s 5 ".wl[19].w";
	setAttr ".wl[19].w[1]" 0.0057125609311362516;
	setAttr ".wl[19].w[7]" 0.040637557516621937;
	setAttr ".wl[19].w[8]" 0.040637557516621937;
	setAttr ".wl[19].w[9]" 0.45650616201780991;
	setAttr ".wl[19].w[10]" 0.45650616201780991;
	setAttr -s 5 ".wl[20].w";
	setAttr ".wl[20].w[1]" 0.27322507647700267;
	setAttr ".wl[20].w[2]" 0.71491876478972261;
	setAttr ".wl[20].w[3]" 0.0005928390906091292;
	setAttr ".wl[20].w[5]" 0.0004825613558624813;
	setAttr ".wl[20].w[7]" 0.010780758286803166;
	setAttr -s 5 ".wl[21].w";
	setAttr ".wl[21].w[0]" 0.0015643568556360646;
	setAttr ".wl[21].w[1]" 0.011048698090402913;
	setAttr ".wl[21].w[2]" 0.034519990515084947;
	setAttr ".wl[21].w[7]" 0.95102016653822952;
	setAttr ".wl[21].w[9]" 0.0018467880006464747;
	setAttr -s 5 ".wl[22].w";
	setAttr ".wl[22].w[1]" 0.011231754876038497;
	setAttr ".wl[22].w[7]" 0.8412406167621137;
	setAttr ".wl[22].w[8]" 0.1072385565133363;
	setAttr ".wl[22].w[9]" 0.029181663753443381;
	setAttr ".wl[22].w[10]" 0.011107408095068128;
	setAttr -s 5 ".wl[23].w";
	setAttr ".wl[23].w[1]" 0.0071522905981603428;
	setAttr ".wl[23].w[7]" 0.40710235656094307;
	setAttr ".wl[23].w[8]" 0.40710235656094307;
	setAttr ".wl[23].w[9]" 0.089321498139976752;
	setAttr ".wl[23].w[10]" 0.089321498139976752;
	setAttr -s 5 ".wl[24].w";
	setAttr ".wl[24].w[1]" 0.012624155930049454;
	setAttr ".wl[24].w[2]" 0.9678286291606516;
	setAttr ".wl[24].w[3]" 0.0096482051114296745;
	setAttr ".wl[24].w[5]" 0.0049965460667436724;
	setAttr ".wl[24].w[7]" 0.0049024637311253817;
	setAttr -s 5 ".wl[25].w";
	setAttr ".wl[25].w[1]" 0.017995401121240769;
	setAttr ".wl[25].w[2]" 0.12326209967548325;
	setAttr ".wl[25].w[3]" 0.0056322573053685099;
	setAttr ".wl[25].w[5]" 0.0088479987061340897;
	setAttr ".wl[25].w[7]" 0.84426224319177334;
	setAttr -s 5 ".wl[26].w";
	setAttr ".wl[26].w[2]" 5.4887589044162972e-05;
	setAttr ".wl[26].w[5]" 7.8817044474053564e-05;
	setAttr ".wl[26].w[6]" 7.8817044474053564e-05;
	setAttr ".wl[26].w[7]" 0.99944074105151692;
	setAttr ".wl[26].w[8]" 0.00034673727049085043;
	setAttr -s 5 ".wl[27].w[5:9]"  2.2828959439408596e-05 2.2828959439408596e-05 
		0.4999665466027598 0.49996654660275958 2.1248875601751986e-05;
	setAttr -s 5 ".wl[28].w[1:5]"  0.00034131243767102499 0.50535135169898782 
		0.47856226967695048 0.0031136229400359223 0.01263144324635479;
	setAttr -s 5 ".wl[29].w";
	setAttr ".wl[29].w[2]" 0.0055191451405031582;
	setAttr ".wl[29].w[3]" 0.039890690199849456;
	setAttr ".wl[29].w[4]" 0.0019553641883610657;
	setAttr ".wl[29].w[5]" 0.95181350297980372;
	setAttr ".wl[29].w[7]" 0.00082129749148255433;
	setAttr -s 5 ".wl[30].w";
	setAttr ".wl[30].w[2]" 0.0026442798831970938;
	setAttr ".wl[30].w[3]" 0.0044365579112403885;
	setAttr ".wl[30].w[5]" 0.68368195308327717;
	setAttr ".wl[30].w[6]" 0.29862849963373705;
	setAttr ".wl[30].w[7]" 0.0106087094885483;
	setAttr -s 5 ".wl[31].w";
	setAttr ".wl[31].w[2]" 0.0071474942726775063;
	setAttr ".wl[31].w[5]" 0.36030852576184264;
	setAttr ".wl[31].w[6]" 0.36030852576184286;
	setAttr ".wl[31].w[7]" 0.1604687286327918;
	setAttr ".wl[31].w[8]" 0.11176672557084506;
	setAttr -s 5 ".wl[32].w[1:5]"  0.00023471848558112359 0.13857234383087749 
		0.78503727388306843 0.055619150082894864 0.020536513717578052;
	setAttr -s 5 ".wl[33].w[2:6]"  0.018889577763731222 0.14664719892175959 
		0.053556691578526258 0.77954849988484043 0.0013580318511425334;
	setAttr -s 5 ".wl[34].w[2:6]"  5.5756717694680391e-05 0.00017352098488341512 
		8.5531859945444503e-05 0.99849803689373884 0.0011871535437376786;
	setAttr -s 5 ".wl[35].w[3:7]"  8.4718840942929347e-06 5.5537163330977668e-06 
		0.49998670981712184 0.49998670981712184 1.2554765328955352e-05;
	setAttr -s 5 ".wl[36].w[2:6]"  0.000506567539654607 0.49939632696113551 
		0.49939632696113573 0.00069013840129978526 1.064013677427351e-05;
	setAttr -s 5 ".wl[37].w[2:6]"  0.011839978497896152 0.47626836907082626 
		0.47626836907082648 0.034614529677072882 0.0010087536833780699;
	setAttr -s 5 ".wl[38].w[2:6]"  0.036091296641308161 0.33863967167463749 
		0.33863967167463738 0.27469003857349228 0.0119393214359247;
	setAttr -s 5 ".wl[39].w[2:6]"  0.017982835105326618 0.060509222255191036 
		0.060509222255191036 0.81052093019953864 0.050477790184752624;
	setAttr -s 11 ".pm";
	setAttr ".pm[0]" -type "matrix" -0.997982726858615 -0 0.063486036983288821 -0 0 1 -0 0
		 -0.063486036983288821 -0 -0.997982726858615 0 -0.48772573940748576 0 0.082980218480300169 1;
	setAttr ".pm[1]" -type "matrix" -0.99968986441485264 -0 0.024903312755823987 -0 0 1 -0 0
		 -0.024903312755823987 -0 -0.99968986441485264 0 -0.9423188748052308 0 0.046628978223786782 1;
	setAttr ".pm[2]" -type "matrix" -0.99755571068224569 -0 -0.069875632986329123 -0
		 -0 1 -0 0 0.069875632986329123 -0 -0.99755571068224569 -0 -1.4025803806152934 0 -0.086579410722959382 1;
	setAttr ".pm[3]" -type "matrix" -0.87618162512286546 -0 -0.48198107825624781 -0 -0 1 -0 0
		 0.48198107825624781 -0 -0.87618162512286546 -0 -1.6092238700107186 0 -0.839220687254291 1;
	setAttr ".pm[4]" -type "matrix" 1.0000000000000002 -0 -9.4368957093138345e-16 -0
		 -0 1 -0 0 9.4368957093138345e-16 -0 1.0000000000000002 -0 1.9807520610102194 0 -0.13178126949821606 1;
	setAttr ".pm[5]" -type "matrix" 0.089206584084616916 -0 -0.99601314517226847 -0 -0 1 -0 0
		 0.99601314517226847 -0 0.089206584084616916 -0 0.021571430370147863 0 -1.8018014901586175 1;
	setAttr ".pm[6]" -type "matrix" 1 -0 -5.2735593669694936e-16 -0 -0 1 -0 0 5.2735593669694936e-16 -0 1 -0
		 1.7533930600793401 0 -0.62101866397234773 1;
	setAttr ".pm[7]" -type "matrix" 0.23950952976727941 -0 -0.97089401334577041 -0 -0 1 -0 0
		 0.97089401334577041 -0 0.23950952976727941 -0 0.21800019537820234 0 -1.387779103588439 1;
	setAttr ".pm[8]" -type "matrix" 1 -0 -7.7715611723760978e-16 -0 -0 1 -0 0 7.7715611723760978e-16 -0 1 -0
		 1.2162607918595734 0 -0.8639271360344053 1;
	setAttr ".pm[9]" -type "matrix" 0.52537471037935235 -0 -0.85087097358754238 -0 -0 1 -0 0
		 0.85087097358754238 -0 0.52537471037935235 -0 0.40220256490214418 0 -0.83246199933381193 1;
	setAttr ".pm[10]" -type "matrix" 1.0000000000000002 -0 -1.6653345369377356e-16 -0
		 -0 1 -0 0 1.6653345369377356e-16 -0 1.0000000000000002 -0 0.57774420259175352 0 -0.64882496331784822 1;
	setAttr ".gm" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr -s 11 ".ma";
	setAttr -s 11 ".dpf[0:10]"  4 4 4 4 4 4 4 4 4 4 4;
	setAttr -s 11 ".lw";
	setAttr -s 11 ".lw";
	setAttr ".mmi" yes;
	setAttr ".mi" 5;
	setAttr ".bm" 0;
	setAttr ".ucm" yes;
	setAttr -s 11 ".ifcl";
	setAttr -s 11 ".ifcl";
createNode tweak -n "tweak3";
createNode objectSet -n "skinCluster3Set";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "skinCluster3GroupId";
	setAttr ".ihi" 0;
createNode groupParts -n "skinCluster3GroupParts";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode objectSet -n "tweakSet3";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId6";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts6";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode dagPose -n "bindPose10";
	setAttr -s 11 ".wm";
	setAttr -s 11 ".xm";
	setAttr ".xm[0]" -type "matrix" "xform" 1 1 1 0 0 0 0 -0.49200994859233838 0
		 0.051849050384568052 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0.99949555448201344 0 0.0317590391966227 1
		 1 1 yes;
	setAttr ".xm[1]" -type "matrix" "xform" 1 1 1 0 0 0 0 0.45208988440675585 0
		 3.0531133177191805e-16 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0.019310236452776273 0 0.99981354000040323 1
		 1 1 yes;
	setAttr ".xm[2]" -type "matrix" "xform" 1 1 1 0 0 0 0 0.46215734672288122 0
		 -2.4980018054066022e-16 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0.047401485124804889 0 0.99887591782361185 1
		 1 1 yes;
	setAttr ".xm[3]" -type "matrix" "xform" 1 1 1 0 0 0 0 0.41026181642412385 0
		 -2.6367796834847468e-16 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0.21480372824190783 0 0.97665723687145056 1
		 1 1 yes;
	setAttr ".xm[4]" -type "matrix" "xform" 1 1 1 0 0 0 0 0.1897907681374067 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0.9685508827942042 0 0.24881556912413594 1
		 1 1 yes;
	setAttr ".xm[5]" -type "matrix" "xform" 1 1 1 0 0 0 0 0.031987947802515321 0
		 -0.095327075495047736 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0.54685541057366926 0 0.8372270659303267 1
		 1 1 yes;
	setAttr ".xm[6]" -type "matrix" "xform" 1 1 1 0 0 0 0 0.4836999776365738 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0.67483087359551897 0 0.73797241956749904 1
		 1 1 yes;
	setAttr ".xm[7]" -type "matrix" "xform" 1 1 1 0 0 0 0 0.0020343124966183193
		 0 -0.10921764024287316 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0.76520659479548248 0 0.64378479888973938 1
		 1 1 yes;
	setAttr ".xm[8]" -type "matrix" "xform" 1 1 1 0 0 0 0 0.76547582938829695 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0.61664028016045136 0 0.78724504754468927 1
		 1 1 yes;
	setAttr ".xm[9]" -type "matrix" "xform" 1 1 1 0 0 0 0 -0.025348377081342598
		 0 -0.071375215992841967 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0.8793182811008281 0 0.47623456460223995 1
		 1 1 yes;
	setAttr ".xm[10]" -type "matrix" "xform" 1 1 1 0 0 0 0 0.65073670001831063 0
		 -1.1102230246251565e-16 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0.48714745694740502 0 0.8733197325090486 1
		 1 1 yes;
	setAttr -s 11 ".m";
	setAttr -s 11 ".p";
	setAttr ".bp" yes;
createNode skinCluster -n "skinCluster4";
	setAttr -s 40 ".wl";
	setAttr -s 5 ".wl[0].w";
	setAttr ".wl[0].w[0]" 0.99772626454759139;
	setAttr ".wl[0].w[1]" 0.00099690537883111749;
	setAttr ".wl[0].w[2]" 4.0652319494812384e-05;
	setAttr ".wl[0].w[9]" 0.0011296869980046776;
	setAttr ".wl[0].w[10]" 0.00010649075607807219;
	setAttr -s 5 ".wl[1].w";
	setAttr ".wl[1].w[0]" 0.99968194571901292;
	setAttr ".wl[1].w[1]" 0.00012824364925684886;
	setAttr ".wl[1].w[7]" 6.0813629087875734e-06;
	setAttr ".wl[1].w[9]" 0.00016211319546604648;
	setAttr ".wl[1].w[10]" 2.1616073355389909e-05;
	setAttr -s 5 ".wl[2].w";
	setAttr ".wl[2].w[0]" 0.99999875186078635;
	setAttr ".wl[2].w[1]" 4.3589906875305982e-07;
	setAttr ".wl[2].w[7]" 2.2412245989337064e-08;
	setAttr ".wl[2].w[9]" 6.7879232995916675e-07;
	setAttr ".wl[2].w[10]" 1.1103556892524676e-07;
	setAttr -s 5 ".wl[3].w";
	setAttr ".wl[3].w[0]" 0.99817128841236202;
	setAttr ".wl[3].w[1]" 0.00050333058851111643;
	setAttr ".wl[3].w[7]" 2.8753141822952349e-05;
	setAttr ".wl[3].w[9]" 0.0010874390176925498;
	setAttr ".wl[3].w[10]" 0.00020918883961125332;
	setAttr -s 5 ".wl[4].w";
	setAttr ".wl[4].w[0]" 0.99344963514773099;
	setAttr ".wl[4].w[1]" 0.0030942183200031292;
	setAttr ".wl[4].w[2]" 9.1765851658696663e-05;
	setAttr ".wl[4].w[9]" 0.0032001291131082531;
	setAttr ".wl[4].w[10]" 0.00016425156749877803;
	setAttr -s 5 ".wl[5].w";
	setAttr ".wl[5].w[0]" 0.99995120860214759;
	setAttr ".wl[5].w[1]" 1.798693431576721e-05;
	setAttr ".wl[5].w[7]" 5.6918975604651015e-07;
	setAttr ".wl[5].w[9]" 2.8135528866813679e-05;
	setAttr ".wl[5].w[10]" 2.0997449138062286e-06;
	setAttr -s 5 ".wl[6].w";
	setAttr ".wl[6].w[0]" 0.93666450727574024;
	setAttr ".wl[6].w[1]" 0.01172509440619994;
	setAttr ".wl[6].w[7]" 0.0006284784819444439;
	setAttr ".wl[6].w[9]" 0.044834549915850612;
	setAttr ".wl[6].w[10]" 0.0061473699202647921;
	setAttr -s 5 ".wl[7].w";
	setAttr ".wl[7].w[0]" 0.52925581365203267;
	setAttr ".wl[7].w[1]" 0.033273970615091283;
	setAttr ".wl[7].w[7]" 0.0034318584406206653;
	setAttr ".wl[7].w[9]" 0.33646811368156138;
	setAttr ".wl[7].w[10]" 0.097570243610694038;
	setAttr -s 5 ".wl[8].w";
	setAttr ".wl[8].w[0]" 0.84077150638626086;
	setAttr ".wl[8].w[1]" 0.11543931183923148;
	setAttr ".wl[8].w[2]" 0.00031105492543765344;
	setAttr ".wl[8].w[7]" 0.00027880696112305954;
	setAttr ".wl[8].w[9]" 0.043199319887946931;
	setAttr -s 5 ".wl[9].w";
	setAttr ".wl[9].w[0]" 0.55263448465350584;
	setAttr ".wl[9].w[1]" 0.067973214872900339;
	setAttr ".wl[9].w[7]" 0.00076938704689999415;
	setAttr ".wl[9].w[9]" 0.37655397052996842;
	setAttr ".wl[9].w[10]" 0.0020689428967254051;
	setAttr -s 5 ".wl[10].w";
	setAttr ".wl[10].w[0]" 0.02148896547144459;
	setAttr ".wl[10].w[1]" 0.0077678747676235759;
	setAttr ".wl[10].w[7]" 0.00092637022753860009;
	setAttr ".wl[10].w[9]" 0.93138040334986194;
	setAttr ".wl[10].w[10]" 0.038436386183531311;
	setAttr -s 5 ".wl[11].w";
	setAttr ".wl[11].w[0]" 0.0010355171001121669;
	setAttr ".wl[11].w[1]" 0.00046608596656119152;
	setAttr ".wl[11].w[7]" 0.00021007375772418057;
	setAttr ".wl[11].w[9]" 0.55350006951015074;
	setAttr ".wl[11].w[10]" 0.44478825366545166;
	setAttr -s 5 ".wl[12].w";
	setAttr ".wl[12].w[0]" 0.018315940691831005;
	setAttr ".wl[12].w[1]" 0.97236616625277761;
	setAttr ".wl[12].w[2]" 0.0019772710638463363;
	setAttr ".wl[12].w[7]" 0.0013284329642154005;
	setAttr ".wl[12].w[9]" 0.0060121890273297065;
	setAttr -s 5 ".wl[13].w";
	setAttr ".wl[13].w[0]" 0.033854201837326403;
	setAttr ".wl[13].w[1]" 0.17286154036692633;
	setAttr ".wl[13].w[2]" 0.0011821877683957079;
	setAttr ".wl[13].w[7]" 0.0018460800377820821;
	setAttr ".wl[13].w[9]" 0.79025598998956947;
	setAttr -s 5 ".wl[14].w";
	setAttr ".wl[14].w[0]" 0.0015414488316614189;
	setAttr ".wl[14].w[1]" 0.0021307679556807142;
	setAttr ".wl[14].w[7]" 0.00097274632491556323;
	setAttr ".wl[14].w[9]" 0.97882716661844604;
	setAttr ".wl[14].w[10]" 0.01652787026929621;
	setAttr -s 5 ".wl[15].w";
	setAttr ".wl[15].w[0]" 0.00039328764559952889;
	setAttr ".wl[15].w[7]" 0.00075007364701103077;
	setAttr ".wl[15].w[8]" 0.00075007364701103077;
	setAttr ".wl[15].w[9]" 0.49905328253018905;
	setAttr ".wl[15].w[10]" 0.49905328253018927;
	setAttr -s 5 ".wl[16].w";
	setAttr ".wl[16].w[0]" 0.00081434139294998093;
	setAttr ".wl[16].w[1]" 0.95536691361706938;
	setAttr ".wl[16].w[2]" 0.036154018858797279;
	setAttr ".wl[16].w[7]" 0.0071521537629346665;
	setAttr ".wl[16].w[9]" 0.00051257236824857181;
	setAttr -s 5 ".wl[17].w";
	setAttr ".wl[17].w[0]" 0.14593949178323098;
	setAttr ".wl[17].w[1]" 0.29065344009273825;
	setAttr ".wl[17].w[2]" 0.080181686967451149;
	setAttr ".wl[17].w[7]" 0.20704710643021518;
	setAttr ".wl[17].w[9]" 0.27617827472636453;
	setAttr -s 5 ".wl[18].w";
	setAttr ".wl[18].w[1]" 0.04845491023639447;
	setAttr ".wl[18].w[7]" 0.12459349216232544;
	setAttr ".wl[18].w[8]" 0.063613615513243418;
	setAttr ".wl[18].w[9]" 0.62759290946067925;
	setAttr ".wl[18].w[10]" 0.13574507262735755;
	setAttr -s 5 ".wl[19].w";
	setAttr ".wl[19].w[1]" 0.0057125609311362516;
	setAttr ".wl[19].w[7]" 0.040637557516621937;
	setAttr ".wl[19].w[8]" 0.040637557516621937;
	setAttr ".wl[19].w[9]" 0.45650616201780991;
	setAttr ".wl[19].w[10]" 0.45650616201780991;
	setAttr -s 5 ".wl[20].w";
	setAttr ".wl[20].w[1]" 0.27322507647700267;
	setAttr ".wl[20].w[2]" 0.71491876478972261;
	setAttr ".wl[20].w[3]" 0.0005928390906091292;
	setAttr ".wl[20].w[5]" 0.0004825613558624813;
	setAttr ".wl[20].w[7]" 0.010780758286803166;
	setAttr -s 5 ".wl[21].w";
	setAttr ".wl[21].w[0]" 0.0015643568556360646;
	setAttr ".wl[21].w[1]" 0.011048698090402913;
	setAttr ".wl[21].w[2]" 0.034519990515084947;
	setAttr ".wl[21].w[7]" 0.95102016653822952;
	setAttr ".wl[21].w[9]" 0.0018467880006464747;
	setAttr -s 5 ".wl[22].w";
	setAttr ".wl[22].w[1]" 0.011231754876038497;
	setAttr ".wl[22].w[7]" 0.8412406167621137;
	setAttr ".wl[22].w[8]" 0.1072385565133363;
	setAttr ".wl[22].w[9]" 0.029181663753443381;
	setAttr ".wl[22].w[10]" 0.011107408095068128;
	setAttr -s 5 ".wl[23].w";
	setAttr ".wl[23].w[1]" 0.0071522905981603428;
	setAttr ".wl[23].w[7]" 0.40710235656094307;
	setAttr ".wl[23].w[8]" 0.40710235656094307;
	setAttr ".wl[23].w[9]" 0.089321498139976752;
	setAttr ".wl[23].w[10]" 0.089321498139976752;
	setAttr -s 5 ".wl[24].w";
	setAttr ".wl[24].w[1]" 0.012624155930049454;
	setAttr ".wl[24].w[2]" 0.9678286291606516;
	setAttr ".wl[24].w[3]" 0.0096482051114296745;
	setAttr ".wl[24].w[5]" 0.0049965460667436724;
	setAttr ".wl[24].w[7]" 0.0049024637311253817;
	setAttr -s 5 ".wl[25].w";
	setAttr ".wl[25].w[1]" 0.017995401121240769;
	setAttr ".wl[25].w[2]" 0.12326209967548325;
	setAttr ".wl[25].w[3]" 0.0056322573053685099;
	setAttr ".wl[25].w[5]" 0.0088479987061340897;
	setAttr ".wl[25].w[7]" 0.84426224319177334;
	setAttr -s 5 ".wl[26].w";
	setAttr ".wl[26].w[2]" 5.4887589044162972e-05;
	setAttr ".wl[26].w[5]" 7.8817044474053564e-05;
	setAttr ".wl[26].w[6]" 7.8817044474053564e-05;
	setAttr ".wl[26].w[7]" 0.99944074105151692;
	setAttr ".wl[26].w[8]" 0.00034673727049085043;
	setAttr -s 5 ".wl[27].w[5:9]"  2.2828959439408596e-05 2.2828959439408596e-05 
		0.4999665466027598 0.49996654660275958 2.1248875601751986e-05;
	setAttr -s 5 ".wl[28].w[1:5]"  0.00034131243767102499 0.50535135169898782 
		0.47856226967695048 0.0031136229400359223 0.01263144324635479;
	setAttr -s 5 ".wl[29].w";
	setAttr ".wl[29].w[2]" 0.0055191451405031582;
	setAttr ".wl[29].w[3]" 0.039890690199849456;
	setAttr ".wl[29].w[4]" 0.0019553641883610657;
	setAttr ".wl[29].w[5]" 0.95181350297980372;
	setAttr ".wl[29].w[7]" 0.00082129749148255433;
	setAttr -s 5 ".wl[30].w";
	setAttr ".wl[30].w[2]" 0.0026442798831970938;
	setAttr ".wl[30].w[3]" 0.0044365579112403885;
	setAttr ".wl[30].w[5]" 0.68368195308327717;
	setAttr ".wl[30].w[6]" 0.29862849963373705;
	setAttr ".wl[30].w[7]" 0.0106087094885483;
	setAttr -s 5 ".wl[31].w";
	setAttr ".wl[31].w[2]" 0.0071474942726775063;
	setAttr ".wl[31].w[5]" 0.36030852576184264;
	setAttr ".wl[31].w[6]" 0.36030852576184286;
	setAttr ".wl[31].w[7]" 0.1604687286327918;
	setAttr ".wl[31].w[8]" 0.11176672557084506;
	setAttr -s 5 ".wl[32].w[1:5]"  0.00023471848558112359 0.13857234383087749 
		0.78503727388306843 0.055619150082894864 0.020536513717578052;
	setAttr -s 5 ".wl[33].w[2:6]"  0.018889577763731222 0.14664719892175959 
		0.053556691578526258 0.77954849988484043 0.0013580318511425334;
	setAttr -s 5 ".wl[34].w[2:6]"  5.5756717694680391e-05 0.00017352098488341512 
		8.5531859945444503e-05 0.99849803689373884 0.0011871535437376786;
	setAttr -s 5 ".wl[35].w[3:7]"  8.4718840942929347e-06 5.5537163330977668e-06 
		0.49998670981712184 0.49998670981712184 1.2554765328955352e-05;
	setAttr -s 5 ".wl[36].w[2:6]"  0.000506567539654607 0.49939632696113551 
		0.49939632696113573 0.00069013840129978526 1.064013677427351e-05;
	setAttr -s 5 ".wl[37].w[2:6]"  0.011839978497896152 0.47626836907082626 
		0.47626836907082648 0.034614529677072882 0.0010087536833780699;
	setAttr -s 5 ".wl[38].w[2:6]"  0.036091296641308161 0.33863967167463749 
		0.33863967167463738 0.27469003857349228 0.0119393214359247;
	setAttr -s 5 ".wl[39].w[2:6]"  0.017982835105326618 0.060509222255191036 
		0.060509222255191036 0.81052093019953864 0.050477790184752624;
	setAttr -s 11 ".pm";
	setAttr ".pm[0]" -type "matrix" -0.997982726858615 -0 0.063486036983288821 -0 0 1 -0 0
		 -0.063486036983288821 -0 -0.997982726858615 0 -0.48772573940748576 0 0.082980218480300169 1;
	setAttr ".pm[1]" -type "matrix" -0.99968986441485264 -0 0.024903312755823987 -0 0 1 -0 0
		 -0.024903312755823987 -0 -0.99968986441485264 0 -0.9423188748052308 0 0.046628978223786782 1;
	setAttr ".pm[2]" -type "matrix" -0.99755571068224569 -0 -0.069875632986329123 -0
		 -0 1 -0 0 0.069875632986329123 -0 -0.99755571068224569 -0 -1.4025803806152934 0 -0.086579410722959382 1;
	setAttr ".pm[3]" -type "matrix" -0.87618162512286546 -0 -0.48198107825624781 -0 -0 1 -0 0
		 0.48198107825624781 -0 -0.87618162512286546 -0 -1.6092238700107186 0 -0.839220687254291 1;
	setAttr ".pm[4]" -type "matrix" 1.0000000000000002 -0 -9.4368957093138345e-16 -0
		 -0 1 -0 0 9.4368957093138345e-16 -0 1.0000000000000002 -0 1.9807520610102194 0 -0.13178126949821606 1;
	setAttr ".pm[5]" -type "matrix" 0.089206584084616916 -0 -0.99601314517226847 -0 -0 1 -0 0
		 0.99601314517226847 -0 0.089206584084616916 -0 0.021571430370147863 0 -1.8018014901586175 1;
	setAttr ".pm[6]" -type "matrix" 1 -0 -5.2735593669694936e-16 -0 -0 1 -0 0 5.2735593669694936e-16 -0 1 -0
		 1.7533930600793401 0 -0.62101866397234773 1;
	setAttr ".pm[7]" -type "matrix" 0.23950952976727941 -0 -0.97089401334577041 -0 -0 1 -0 0
		 0.97089401334577041 -0 0.23950952976727941 -0 0.21800019537820234 0 -1.387779103588439 1;
	setAttr ".pm[8]" -type "matrix" 1 -0 -7.7715611723760978e-16 -0 -0 1 -0 0 7.7715611723760978e-16 -0 1 -0
		 1.2162607918595734 0 -0.8639271360344053 1;
	setAttr ".pm[9]" -type "matrix" 0.52537471037935235 -0 -0.85087097358754238 -0 -0 1 -0 0
		 0.85087097358754238 -0 0.52537471037935235 -0 0.40220256490214418 0 -0.83246199933381193 1;
	setAttr ".pm[10]" -type "matrix" 1.0000000000000002 -0 -1.6653345369377356e-16 -0
		 -0 1 -0 0 1.6653345369377356e-16 -0 1.0000000000000002 -0 0.57774420259175352 0 -0.64882496331784822 1;
	setAttr ".gm" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr -s 11 ".ma";
	setAttr -s 11 ".dpf[0:10]"  4 4 4 4 4 4 4 4 4 4 4;
	setAttr -s 11 ".lw";
	setAttr -s 11 ".lw";
	setAttr ".mmi" yes;
	setAttr ".mi" 5;
	setAttr ".bm" 0;
	setAttr ".ucm" yes;
	setAttr -s 11 ".ifcl";
	setAttr -s 11 ".ifcl";
createNode tweak -n "tweak4";
createNode objectSet -n "skinCluster4Set";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "skinCluster4GroupId";
	setAttr ".ihi" 0;
createNode groupParts -n "skinCluster4GroupParts";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode objectSet -n "tweakSet4";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId8";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts8";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode skinCluster -n "skinCluster5";
	setAttr -s 24 ".wl";
	setAttr -s 5 ".wl[0].w";
	setAttr ".wl[0].w[0]" 0.99994826391717029;
	setAttr ".wl[0].w[1]" 1.5651841950794365e-05;
	setAttr ".wl[0].w[7]" 2.5838616753629082e-06;
	setAttr ".wl[0].w[9]" 1.881825096863322e-05;
	setAttr ".wl[0].w[10]" 1.4682128234851258e-05;
	setAttr -s 5 ".wl[1].w";
	setAttr ".wl[1].w[0]" 0.99999918531936105;
	setAttr ".wl[1].w[1]" 2.268279603885511e-07;
	setAttr ".wl[1].w[7]" 4.2461497549046348e-08;
	setAttr ".wl[1].w[9]" 2.9283727454491808e-07;
	setAttr ".wl[1].w[10]" 2.5255390646698859e-07;
	setAttr -s 5 ".wl[2].w";
	setAttr ".wl[2].w[0]" 0.99997346393213837;
	setAttr ".wl[2].w[1]" 6.7634919282911134e-06;
	setAttr ".wl[2].w[7]" 1.379797403595906e-06;
	setAttr ".wl[2].w[9]" 9.587105260253811e-06;
	setAttr ".wl[2].w[10]" 8.8056732695806891e-06;
	setAttr -s 5 ".wl[3].w";
	setAttr ".wl[3].w[0]" 0.99912943476449811;
	setAttr ".wl[3].w[1]" 0.0001965854121508416;
	setAttr ".wl[3].w[7]" 4.3195173133034719e-05;
	setAttr ".wl[3].w[9]" 0.00032160846933980609;
	setAttr ".wl[3].w[10]" 0.00030917618087812323;
	setAttr -s 5 ".wl[4].w";
	setAttr ".wl[4].w[0]" 0.99910773162587407;
	setAttr ".wl[4].w[1]" 0.00032971545278822641;
	setAttr ".wl[4].w[7]" 3.4258271713174797e-05;
	setAttr ".wl[4].w[9]" 0.00035424369842919633;
	setAttr ".wl[4].w[10]" 0.00017405095119515975;
	setAttr -s 5 ".wl[5].w";
	setAttr ".wl[5].w[0]" 0.99976886815205201;
	setAttr ".wl[5].w[1]" 6.7788676804605749e-05;
	setAttr ".wl[5].w[7]" 7.6978325753888918e-06;
	setAttr ".wl[5].w[9]" 9.4301703220201502e-05;
	setAttr ".wl[5].w[10]" 6.1343635347774892e-05;
	setAttr -s 5 ".wl[6].w";
	setAttr ".wl[6].w[0]" 0.97798171021688429;
	setAttr ".wl[6].w[1]" 0.0042182125054100635;
	setAttr ".wl[6].w[7]" 0.00073030356366422561;
	setAttr ".wl[6].w[9]" 0.0089425755443727183;
	setAttr ".wl[6].w[10]" 0.0081271981696687482;
	setAttr -s 5 ".wl[7].w";
	setAttr ".wl[7].w[0]" 0.85465079748388817;
	setAttr ".wl[7].w[1]" 0.018030577198231697;
	setAttr ".wl[7].w[7]" 0.0049950701834681269;
	setAttr ".wl[7].w[9]" 0.06116177756720606;
	setAttr ".wl[7].w[10]" 0.06116177756720606;
	setAttr -s 5 ".wl[8].w";
	setAttr ".wl[8].w[0]" 0.13397505285892805;
	setAttr ".wl[8].w[1]" 0.86380763804996996;
	setAttr ".wl[8].w[2]" 1.8875990073754953e-05;
	setAttr ".wl[8].w[7]" 1.8887864174332592e-05;
	setAttr ".wl[8].w[9]" 0.0021795452368537811;
	setAttr -s 5 ".wl[9].w";
	setAttr ".wl[9].w[0]" 0.0090798634548121815;
	setAttr ".wl[9].w[1]" 0.091405269931210939;
	setAttr ".wl[9].w[7]" 0.00026343332120918684;
	setAttr ".wl[9].w[9]" 0.89888689740864769;
	setAttr ".wl[9].w[10]" 0.00036453588411997231;
	setAttr -s 5 ".wl[10].w";
	setAttr ".wl[10].w[0]" 0.00062278416928006482;
	setAttr ".wl[10].w[1]" 0.0013777182502626125;
	setAttr ".wl[10].w[7]" 0.00028017250481912295;
	setAttr ".wl[10].w[9]" 0.99011159736238619;
	setAttr ".wl[10].w[10]" 0.0076077277132519843;
	setAttr -s 5 ".wl[11].w";
	setAttr ".wl[11].w[1]" 2.194326331191664e-05;
	setAttr ".wl[11].w[7]" 3.3448057872418814e-05;
	setAttr ".wl[11].w[8]" 3.3448057872418814e-05;
	setAttr ".wl[11].w[9]" 0.49995558031047166;
	setAttr ".wl[11].w[10]" 0.49995558031047166;
	setAttr -s 5 ".wl[12].w";
	setAttr ".wl[12].w[1]" 0.44239787537937453;
	setAttr ".wl[12].w[2]" 0.54487305033037514;
	setAttr ".wl[12].w[3]" 0.00015858110875883229;
	setAttr ".wl[12].w[5]" 0.00014060811877187384;
	setAttr ".wl[12].w[7]" 0.012429885062719538;
	setAttr -s 5 ".wl[13].w";
	setAttr ".wl[13].w[1]" 0.0019565791713274548;
	setAttr ".wl[13].w[2]" 0.010718950996804746;
	setAttr ".wl[13].w[3]" 0.00014905068957460341;
	setAttr ".wl[13].w[5]" 0.00019146441284738805;
	setAttr ".wl[13].w[7]" 0.98698395472944578;
	setAttr -s 5 ".wl[14].w";
	setAttr ".wl[14].w[2]" 7.2228979885963739e-05;
	setAttr ".wl[14].w[5]" 5.5771627303804203e-05;
	setAttr ".wl[14].w[6]" 4.0168266628705597e-05;
	setAttr ".wl[14].w[7]" 0.99918024677107797;
	setAttr ".wl[14].w[8]" 0.00065158435510365034;
	setAttr -s 5 ".wl[15].w[5:9]"  1.9074863506632599e-05 1.9074863506632599e-05 
		0.499972775610107 0.49997277561010689 1.629905277292493e-05;
	setAttr -s 5 ".wl[16].w[1:5]"  0.00033135585409344004 0.49034475539581918 
		0.4903447553958194 0.00084806321190462181 0.018131070142363308;
	setAttr -s 5 ".wl[17].w";
	setAttr ".wl[17].w[2]" 0.0031457279844533271;
	setAttr ".wl[17].w[3]" 0.031754836671660035;
	setAttr ".wl[17].w[4]" 0.0044182769251149417;
	setAttr ".wl[17].w[5]" 0.96043086535810196;
	setAttr ".wl[17].w[7]" 0.0002502930606697475;
	setAttr -s 5 ".wl[18].w[3:7]"  0.00087626910039379185 0.00087626910039379185 
		0.99009003227036996 0.0078702744921882103 0.00028715503665418726;
	setAttr -s 5 ".wl[19].w";
	setAttr ".wl[19].w[3]" 0.0003266825510464066;
	setAttr ".wl[19].w[5]" 0.49922139244205016;
	setAttr ".wl[19].w[6]" 0.49922139244205005;
	setAttr ".wl[19].w[7]" 0.00061693620242265828;
	setAttr ".wl[19].w[8]" 0.00061359636243077354;
	setAttr -s 5 ".wl[20].w[1:5]"  0.00013756744443706721 0.0069710593387339696 
		0.93196417630026096 0.049571964959024301 0.011355231957543687;
	setAttr -s 5 ".wl[21].w[2:6]"  0.00031154443640391758 0.49938078485088411 
		0.499380784850884 0.00088429862500343241 4.2587236824621156e-05;
	setAttr -s 5 ".wl[22].w[2:6]"  0.0066855035635126061 0.46969501995729451 
		0.46969501995729429 0.048148011738796286 0.0057764447831024019;
	setAttr -s 5 ".wl[23].w[2:6]"  0.014372073505831303 0.15359541613793101 
		0.15359541613793101 0.53199343282651135 0.14644366139179532;
	setAttr -s 11 ".pm";
	setAttr ".pm[0]" -type "matrix" -0.94856787241525931 0.036825753102921681 0.31442464173469487 -0
		 -0.0286370457565772 -0.99912063431988452 0.030624788759554721 0 0.31527592840545926 0.02004549786446571 0.94878831515962581 -0
		 0.4725711944167153 -0.017125631664160087 -0.11681808099186797 1;
	setAttr ".pm[1]" -type "matrix" -0.94869856903398952 0.036825753102921674 0.31403007661888632 -0
		 -0.028649781050579849 -0.99912063431988452 0.030612875101588888 0 0.31488127152724527 0.020045497864465706 0.94891936583502756 -0
		 1.367726677024335 -0.013180588328296458 0.036829995835606762 1;
	setAttr ".pm[2]" -type "matrix" 0.97227123770805135 -0.025911706219314695 0.23241605754865147 -0
		 0.026641237644339989 0.99964505923691638 -1.5603837666411384e-15 0 -0.23233356361583218 0.0061918514215157355 0.97261645893617388 -0
		 -1.8738833314245011 0.010258312243423476 0.20049680228307576 1;
	setAttr ".pm[3]" -type "matrix" 0.87100217395696533 -0.010949411416107609 -0.49115712694806901 -0
		 0.012570056276808957 0.99992099372160315 2.0556473190325168e-15 -0 0.49111832245136061 -0.0061738727264948187 0.87107099403442345 -0
		 -1.5406469875417901 -0.031323955453052187 1.7024818689329511 1;
	setAttr ".pm[4]" -type "matrix" 0.99108573323954852 0.036825753102921403 -0.12803489085959749 -0
		 0.033944894651548894 -0.99912063431988452 -0.024611017925450993 0 -0.12882862064045228 0.020045497864465679 -0.99146425276922812 -0
		 -2.5304118354628979 -0.02514286123369136 -0.23322528685260363 1;
	setAttr ".pm[5]" -type "matrix" 0.15940141745289721 3.1140655605518056e-15 -0.98721385125716676 -0
		 9.8483491442588002e-17 1 3.1718170961626012e-15 -0 0.98721385125716665 -6.0262224489313243e-16 0.1594014174528971 -0
		 0.25025989521466313 -7.3314090920802664e-15 2.2609708921591944 1;
	setAttr ".pm[6]" -type "matrix" 1.0000000000000002 -3.114065560551806e-15 -1.3877787807814686e-16 -0
		 -3.1155633628543463e-15 -1 -7.2528108781667542e-16 0 -5.5511151231255578e-17 7.2508692480786778e-16 -1 -0
		 -2.29271 7.3359504787565425e-15 0.015208000000000874 1;
	setAttr ".pm[7]" -type "matrix" 0.062378378268055229 -3.0661184534858865e-15 -0.9980525727258297 -0
		 2.9995119715331718e-16 1 -3.0483926776348713e-15 -0 0.99805257272582959 -1.0779532343383559e-16 0.06237837826805534 -0
		 0.42057831592099576 5.3001122634587248e-15 1.8133162948912305 1;
	setAttr ".pm[8]" -type "matrix" 1 3.0661184534858857e-15 -3.8649639044763254e-15 -0
		 3.0611666238300485e-15 -1 1.325140745874049e-17 0 -3.9829251008427483e-15 -1.4669356480899709e-17 -0.99999999999999978 0
		 -1.8257099999999993 -5.2760854786787244e-15 0.14168800000000717 1;
	setAttr ".pm[9]" -type "matrix" 1.1102230246251578e-16 3.1225022567582533e-16 -1 -0
		 2.8796409701215003e-16 1.0000000000000002 3.0010716134398773e-16 -0 1 -2.8796409701215008e-16 5.5511151231257753e-17 -0
		 0.35450199999999971 -5.9137891111893377e-16 1.30033 1;
	setAttr ".pm[10]" -type "matrix" 1 -3.1225022567582552e-16 1.3322676295501878e-15 -0
		 -3.0010716134398733e-16 -1.0000000000000002 -4.1042877692688582e-16 0 1.2767564783189304e-15 4.1042877692688542e-16 -1 -0
		 -1.3003300000000004 5.6825539393669727e-16 0.17736199999999827 1;
	setAttr ".gm" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr -s 11 ".ma";
	setAttr -s 11 ".dpf[0:10]"  4 4 4 4 4 4 4 4 4 4 4;
	setAttr -s 11 ".lw";
	setAttr -s 11 ".lw";
	setAttr ".mmi" yes;
	setAttr ".mi" 5;
	setAttr ".bm" 0;
	setAttr ".ucm" yes;
	setAttr -s 11 ".ifcl";
	setAttr -s 11 ".ifcl";
createNode tweak -n "tweak5";
createNode objectSet -n "skinCluster5Set";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "skinCluster5GroupId";
	setAttr ".ihi" 0;
createNode groupParts -n "skinCluster5GroupParts";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode objectSet -n "tweakSet5";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId10";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts10";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode dagPose -n "bindPose11";
	setAttr -s 11 ".wm";
	setAttr -s 11 ".xm";
	setAttr ".xm[0]" -type "matrix" "xform" 1 1 1 0.026919108013402103 -0.12922999798181745
		 0.028881861225483887 0 0.48562699999999998 0 -0.037811400000000002 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.095653724864462511 -5.85710139908928e-18 -0.99541466983340854 6.0951569461790154e-17 1
		 1 1 yes;
	setAttr ".xm[1]" -type "matrix" "xform" 1 1 1 0 0 0 0 -0.89517068300413583 -0.0039450433358636308
		 -0.15307919496491934 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0.00020796504837495127 0 0.99999997837526911 1
		 1 1 yes;
	setAttr ".xm[2]" -type "matrix" "xform" 1 1 1 0 0 0 0 -0.51642198111301285 -6.3570278099908326e-05
		 -0.0025999212719939879 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.04290336168393552 0.014113421600521647 0.99897815495215447 0.0016609681912578885 1
		 1 1 yes;
	setAttr ".xm[3]" -type "matrix" "xform" 1 1 1 0 0 0 0 0.41362943220249693 -1.0408340855860843e-16
		 -6.9388939039072284e-16 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.007162745910981933 -0.36526169216361043 -0.0065505309590416887 0.93085427530464993 1
		 1 1 yes;
	setAttr ".xm[4]" -type "matrix" "xform" 1 1 1 0 0 0 0 0.34577410826862121 1.3877787807814457e-17
		 -2.2204460492503131e-16 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.94877731853544811 -0.014030372962766964 0.31560408414360952 -0.0043371118366855926 1
		 1 1 yes;
	setAttr ".xm[5]" -type "matrix" "xform" 1 1 1 0 0 0 0 0.070402129748501713 -0.051576533602918667
		 0.09663942177306406 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.0027261659826327651 -0.43373843847419763 -0.0056631403155575875 0.90101690541896384 1
		 1 1 yes;
	setAttr ".xm[6]" -type "matrix" "xform" 1 1 1 0 0 0 0 0.6307346672730143 6.4038295284193119e-18
		 -4.4408920985006262e-16 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.76138079088354238 3.9697228295353141e-17 -0.64830493694985192 4.6621127424390524e-17 1
		 1 1 yes;
	setAttr ".xm[7]" -type "matrix" "xform" 1 1 1 0 0 0 0 -0.015985147032774157
		 -0.039255969442869638 0.096743356634195019 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 
		-0.010194848020130459 -0.76520759828351859 -0.0085752816506676158 0.6436457574999056 1
		 1 1 yes;
	setAttr ".xm[8]" -type "matrix" "xform" 1 1 1 0 0 0 0 0.67587521783314441 6.6750092122415803e-18
		 4.4408920985006262e-16 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.72882726975191159 4.1925636542987717e-17 0.68469760541860691 4.4627799151649152e-17 1
		 1 1 yes;
	setAttr ".xm[9]" -type "matrix" "xform" 1 1 1 0 0 0 0 0.022479426233416477 0.027598874120076784
		 0.10877891233819433 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.810560297335432 -0.0026538072535750266 0.58527969514022804 0.020800003536505175 1
		 1 1 yes;
	setAttr ".xm[10]" -type "matrix" "xform" 1 1 1 0 0 0 0 0.53186399999999989 -1.4029366231994909e-18
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.70710678118654802 4.3297802811774633e-17 -0.70710678118654702 4.3297802811774695e-17 1
		 1 1 yes;
	setAttr -s 11 ".m";
	setAttr -s 11 ".p";
	setAttr ".bp" yes;
createNode skinCluster -n "skinCluster6";
	setAttr -s 24 ".wl";
	setAttr -s 5 ".wl[0].w";
	setAttr ".wl[0].w[0]" 0.99994826391717029;
	setAttr ".wl[0].w[1]" 1.5651841950794365e-05;
	setAttr ".wl[0].w[7]" 2.5838616753629082e-06;
	setAttr ".wl[0].w[9]" 1.881825096863322e-05;
	setAttr ".wl[0].w[10]" 1.4682128234851258e-05;
	setAttr -s 5 ".wl[1].w";
	setAttr ".wl[1].w[0]" 0.99999918531936105;
	setAttr ".wl[1].w[1]" 2.268279603885511e-07;
	setAttr ".wl[1].w[7]" 4.2461497549046348e-08;
	setAttr ".wl[1].w[9]" 2.9283727454491808e-07;
	setAttr ".wl[1].w[10]" 2.5255390646698859e-07;
	setAttr -s 5 ".wl[2].w";
	setAttr ".wl[2].w[0]" 0.99997346393213837;
	setAttr ".wl[2].w[1]" 6.7634919282911134e-06;
	setAttr ".wl[2].w[7]" 1.379797403595906e-06;
	setAttr ".wl[2].w[9]" 9.587105260253811e-06;
	setAttr ".wl[2].w[10]" 8.8056732695806891e-06;
	setAttr -s 5 ".wl[3].w";
	setAttr ".wl[3].w[0]" 0.99912943476449811;
	setAttr ".wl[3].w[1]" 0.0001965854121508416;
	setAttr ".wl[3].w[7]" 4.3195173133034719e-05;
	setAttr ".wl[3].w[9]" 0.00032160846933980609;
	setAttr ".wl[3].w[10]" 0.00030917618087812323;
	setAttr -s 5 ".wl[4].w";
	setAttr ".wl[4].w[0]" 0.99910773162587407;
	setAttr ".wl[4].w[1]" 0.00032971545278822641;
	setAttr ".wl[4].w[7]" 3.4258271713174797e-05;
	setAttr ".wl[4].w[9]" 0.00035424369842919633;
	setAttr ".wl[4].w[10]" 0.00017405095119515975;
	setAttr -s 5 ".wl[5].w";
	setAttr ".wl[5].w[0]" 0.99976886815205201;
	setAttr ".wl[5].w[1]" 6.7788676804605749e-05;
	setAttr ".wl[5].w[7]" 7.6978325753888918e-06;
	setAttr ".wl[5].w[9]" 9.4301703220201502e-05;
	setAttr ".wl[5].w[10]" 6.1343635347774892e-05;
	setAttr -s 5 ".wl[6].w";
	setAttr ".wl[6].w[0]" 0.97798171021688429;
	setAttr ".wl[6].w[1]" 0.0042182125054100635;
	setAttr ".wl[6].w[7]" 0.00073030356366422561;
	setAttr ".wl[6].w[9]" 0.0089425755443727183;
	setAttr ".wl[6].w[10]" 0.0081271981696687482;
	setAttr -s 5 ".wl[7].w";
	setAttr ".wl[7].w[0]" 0.85465079748388817;
	setAttr ".wl[7].w[1]" 0.018030577198231697;
	setAttr ".wl[7].w[7]" 0.0049950701834681269;
	setAttr ".wl[7].w[9]" 0.06116177756720606;
	setAttr ".wl[7].w[10]" 0.06116177756720606;
	setAttr -s 5 ".wl[8].w";
	setAttr ".wl[8].w[0]" 0.13397505285892805;
	setAttr ".wl[8].w[1]" 0.86380763804996996;
	setAttr ".wl[8].w[2]" 1.8875990073754953e-05;
	setAttr ".wl[8].w[7]" 1.8887864174332592e-05;
	setAttr ".wl[8].w[9]" 0.0021795452368537811;
	setAttr -s 5 ".wl[9].w";
	setAttr ".wl[9].w[0]" 0.0090798634548121815;
	setAttr ".wl[9].w[1]" 0.091405269931210939;
	setAttr ".wl[9].w[7]" 0.00026343332120918684;
	setAttr ".wl[9].w[9]" 0.89888689740864769;
	setAttr ".wl[9].w[10]" 0.00036453588411997231;
	setAttr -s 5 ".wl[10].w";
	setAttr ".wl[10].w[0]" 0.00062278416928006482;
	setAttr ".wl[10].w[1]" 0.0013777182502626125;
	setAttr ".wl[10].w[7]" 0.00028017250481912295;
	setAttr ".wl[10].w[9]" 0.99011159736238619;
	setAttr ".wl[10].w[10]" 0.0076077277132519843;
	setAttr -s 5 ".wl[11].w";
	setAttr ".wl[11].w[1]" 2.194326331191664e-05;
	setAttr ".wl[11].w[7]" 3.3448057872418814e-05;
	setAttr ".wl[11].w[8]" 3.3448057872418814e-05;
	setAttr ".wl[11].w[9]" 0.49995558031047166;
	setAttr ".wl[11].w[10]" 0.49995558031047166;
	setAttr -s 5 ".wl[12].w";
	setAttr ".wl[12].w[1]" 0.44239787537937453;
	setAttr ".wl[12].w[2]" 0.54487305033037514;
	setAttr ".wl[12].w[3]" 0.00015858110875883229;
	setAttr ".wl[12].w[5]" 0.00014060811877187384;
	setAttr ".wl[12].w[7]" 0.012429885062719538;
	setAttr -s 5 ".wl[13].w";
	setAttr ".wl[13].w[1]" 0.0019565791713274548;
	setAttr ".wl[13].w[2]" 0.010718950996804746;
	setAttr ".wl[13].w[3]" 0.00014905068957460341;
	setAttr ".wl[13].w[5]" 0.00019146441284738805;
	setAttr ".wl[13].w[7]" 0.98698395472944578;
	setAttr -s 5 ".wl[14].w";
	setAttr ".wl[14].w[2]" 7.2228979885963739e-05;
	setAttr ".wl[14].w[5]" 5.5771627303804203e-05;
	setAttr ".wl[14].w[6]" 4.0168266628705597e-05;
	setAttr ".wl[14].w[7]" 0.99918024677107797;
	setAttr ".wl[14].w[8]" 0.00065158435510365034;
	setAttr -s 5 ".wl[15].w[5:9]"  1.9074863506632599e-05 1.9074863506632599e-05 
		0.499972775610107 0.49997277561010689 1.629905277292493e-05;
	setAttr -s 5 ".wl[16].w[1:5]"  0.00033135585409344004 0.49034475539581918 
		0.4903447553958194 0.00084806321190462181 0.018131070142363308;
	setAttr -s 5 ".wl[17].w";
	setAttr ".wl[17].w[2]" 0.0031457279844533271;
	setAttr ".wl[17].w[3]" 0.031754836671660035;
	setAttr ".wl[17].w[4]" 0.0044182769251149417;
	setAttr ".wl[17].w[5]" 0.96043086535810196;
	setAttr ".wl[17].w[7]" 0.0002502930606697475;
	setAttr -s 5 ".wl[18].w[3:7]"  0.00087626910039379185 0.00087626910039379185 
		0.99009003227036996 0.0078702744921882103 0.00028715503665418726;
	setAttr -s 5 ".wl[19].w";
	setAttr ".wl[19].w[3]" 0.0003266825510464066;
	setAttr ".wl[19].w[5]" 0.49922139244205016;
	setAttr ".wl[19].w[6]" 0.49922139244205005;
	setAttr ".wl[19].w[7]" 0.00061693620242265828;
	setAttr ".wl[19].w[8]" 0.00061359636243077354;
	setAttr -s 5 ".wl[20].w[1:5]"  0.00013756744443706721 0.0069710593387339696 
		0.93196417630026096 0.049571964959024301 0.011355231957543687;
	setAttr -s 5 ".wl[21].w[2:6]"  0.00031154443640391758 0.49938078485088411 
		0.499380784850884 0.00088429862500343241 4.2587236824621156e-05;
	setAttr -s 5 ".wl[22].w[2:6]"  0.0066855035635126061 0.46969501995729451 
		0.46969501995729429 0.048148011738796286 0.0057764447831024019;
	setAttr -s 5 ".wl[23].w[2:6]"  0.014372073505831303 0.15359541613793101 
		0.15359541613793101 0.53199343282651135 0.14644366139179532;
	setAttr -s 11 ".pm";
	setAttr ".pm[0]" -type "matrix" -0.94856787241525931 0.036825753102921681 0.31442464173469487 -0
		 -0.0286370457565772 -0.99912063431988452 0.030624788759554721 0 0.31527592840545926 0.02004549786446571 0.94878831515962581 -0
		 0.4725711944167153 -0.017125631664160087 -0.11681808099186797 1;
	setAttr ".pm[1]" -type "matrix" -0.94869856903398952 0.036825753102921674 0.31403007661888632 -0
		 -0.028649781050579849 -0.99912063431988452 0.030612875101588888 0 0.31488127152724527 0.020045497864465706 0.94891936583502756 -0
		 1.367726677024335 -0.013180588328296458 0.036829995835606762 1;
	setAttr ".pm[2]" -type "matrix" 0.97227123770805135 -0.025911706219314695 0.23241605754865147 -0
		 0.026641237644339989 0.99964505923691638 -1.5603837666411384e-15 0 -0.23233356361583218 0.0061918514215157355 0.97261645893617388 -0
		 -1.8738833314245011 0.010258312243423476 0.20049680228307576 1;
	setAttr ".pm[3]" -type "matrix" 0.87100217395696533 -0.010949411416107609 -0.49115712694806901 -0
		 0.012570056276808957 0.99992099372160315 2.0556473190325168e-15 -0 0.49111832245136061 -0.0061738727264948187 0.87107099403442345 -0
		 -1.5406469875417901 -0.031323955453052187 1.7024818689329511 1;
	setAttr ".pm[4]" -type "matrix" 0.99108573323954852 0.036825753102921403 -0.12803489085959749 -0
		 0.033944894651548894 -0.99912063431988452 -0.024611017925450993 0 -0.12882862064045228 0.020045497864465679 -0.99146425276922812 -0
		 -2.5304118354628979 -0.02514286123369136 -0.23322528685260363 1;
	setAttr ".pm[5]" -type "matrix" 0.15940141745289721 3.1140655605518056e-15 -0.98721385125716676 -0
		 9.8483491442588002e-17 1 3.1718170961626012e-15 -0 0.98721385125716665 -6.0262224489313243e-16 0.1594014174528971 -0
		 0.25025989521466313 -7.3314090920802664e-15 2.2609708921591944 1;
	setAttr ".pm[6]" -type "matrix" 1.0000000000000002 -3.114065560551806e-15 -1.3877787807814686e-16 -0
		 -3.1155633628543463e-15 -1 -7.2528108781667542e-16 0 -5.5511151231255578e-17 7.2508692480786778e-16 -1 -0
		 -2.29271 7.3359504787565425e-15 0.015208000000000874 1;
	setAttr ".pm[7]" -type "matrix" 0.062378378268055229 -3.0661184534858865e-15 -0.9980525727258297 -0
		 2.9995119715331718e-16 1 -3.0483926776348713e-15 -0 0.99805257272582959 -1.0779532343383559e-16 0.06237837826805534 -0
		 0.42057831592099576 5.3001122634587248e-15 1.8133162948912305 1;
	setAttr ".pm[8]" -type "matrix" 1 3.0661184534858857e-15 -3.8649639044763254e-15 -0
		 3.0611666238300485e-15 -1 1.325140745874049e-17 0 -3.9829251008427483e-15 -1.4669356480899709e-17 -0.99999999999999978 0
		 -1.8257099999999993 -5.2760854786787244e-15 0.14168800000000717 1;
	setAttr ".pm[9]" -type "matrix" 1.1102230246251578e-16 3.1225022567582533e-16 -1 -0
		 2.8796409701215003e-16 1.0000000000000002 3.0010716134398773e-16 -0 1 -2.8796409701215008e-16 5.5511151231257753e-17 -0
		 0.35450199999999971 -5.9137891111893377e-16 1.30033 1;
	setAttr ".pm[10]" -type "matrix" 1 -3.1225022567582552e-16 1.3322676295501878e-15 -0
		 -3.0010716134398733e-16 -1.0000000000000002 -4.1042877692688582e-16 0 1.2767564783189304e-15 4.1042877692688542e-16 -1 -0
		 -1.3003300000000004 5.6825539393669727e-16 0.17736199999999827 1;
	setAttr ".gm" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr -s 11 ".ma";
	setAttr -s 11 ".dpf[0:10]"  4 4 4 4 4 4 4 4 4 4 4;
	setAttr -s 11 ".lw";
	setAttr -s 11 ".lw";
	setAttr ".mmi" yes;
	setAttr ".mi" 5;
	setAttr ".bm" 0;
	setAttr ".ucm" yes;
	setAttr -s 11 ".ifcl";
	setAttr -s 11 ".ifcl";
createNode tweak -n "tweak6";
createNode objectSet -n "skinCluster6Set";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "skinCluster6GroupId";
	setAttr ".ihi" 0;
createNode groupParts -n "skinCluster6GroupParts";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode objectSet -n "tweakSet6";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId12";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts12";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode skinCluster -n "skinCluster7";
	setAttr -s 40 ".wl";
	setAttr -s 5 ".wl[0].w";
	setAttr ".wl[0].w[0]" 0.99772626066594616;
	setAttr ".wl[0].w[1]" 0.00099690651544444568;
	setAttr ".wl[0].w[2]" 4.0652748812919843e-05;
	setAttr ".wl[0].w[9]" 0.0011296890050779718;
	setAttr ".wl[0].w[10]" 0.00010649106471849716;
	setAttr -s 5 ".wl[1].w";
	setAttr ".wl[1].w[0]" 0.99968194463742166;
	setAttr ".wl[1].w[1]" 0.00012824401528580904;
	setAttr ".wl[1].w[7]" 6.0813852022572247e-06;
	setAttr ".wl[1].w[9]" 0.00016211378977163538;
	setAttr ".wl[1].w[10]" 2.1616172318656666e-05;
	setAttr -s 5 ".wl[2].w";
	setAttr ".wl[2].w[0]" 0.99999875187307763;
	setAttr ".wl[2].w[1]" 4.3589445481328412e-07;
	setAttr ".wl[2].w[7]" 2.2412034720040944e-08;
	setAttr ".wl[2].w[9]" 6.7878584534998318e-07;
	setAttr ".wl[2].w[10]" 1.1103458758968329e-07;
	setAttr -s 5 ".wl[3].w";
	setAttr ".wl[3].w[0]" 0.99817129481451239;
	setAttr ".wl[3].w[1]" 0.00050332833918964636;
	setAttr ".wl[3].w[7]" 2.8753057416382657e-05;
	setAttr ".wl[3].w[9]" 0.0010874355177681297;
	setAttr ".wl[3].w[10]" 0.00020918827111347644;
	setAttr -s 5 ".wl[4].w";
	setAttr ".wl[4].w[0]" 0.99344962882533316;
	setAttr ".wl[4].w[1]" 0.0030942200477874393;
	setAttr ".wl[4].w[2]" 9.1766963424262218e-05;
	setAttr ".wl[4].w[9]" 0.0032001321972655182;
	setAttr ".wl[4].w[10]" 0.00016425196618962724;
	setAttr -s 5 ".wl[5].w";
	setAttr ".wl[5].w[0]" 0.99995120906799428;
	setAttr ".wl[5].w[1]" 1.7986749868961051e-05;
	setAttr ".wl[5].w[7]" 5.691847408654393e-07;
	setAttr ".wl[5].w[9]" 2.8135269833259073e-05;
	setAttr ".wl[5].w[10]" 2.0997275625428031e-06;
	setAttr -s 5 ".wl[6].w";
	setAttr ".wl[6].w[0]" 0.93666463970182923;
	setAttr ".wl[6].w[1]" 0.011725055659620546;
	setAttr ".wl[6].w[7]" 0.00062847767533380429;
	setAttr ".wl[6].w[9]" 0.04483446673672889;
	setAttr ".wl[6].w[10]" 0.0061473602264875285;
	setAttr -s 5 ".wl[7].w";
	setAttr ".wl[7].w[0]" 0.52925594069235493;
	setAttr ".wl[7].w[1]" 0.033273905299963748;
	setAttr ".wl[7].w[7]" 0.0034318601116161852;
	setAttr ".wl[7].w[9]" 0.33646808247937404;
	setAttr ".wl[7].w[10]" 0.097570211416691061;
	setAttr -s 5 ".wl[8].w";
	setAttr ".wl[8].w[0]" 0.84077169304605603;
	setAttr ".wl[8].w[1]" 0.11543910206101375;
	setAttr ".wl[8].w[2]" 0.00031105983130329013;
	setAttr ".wl[8].w[7]" 0.00027880707254857121;
	setAttr ".wl[8].w[9]" 0.043199337989078372;
	setAttr -s 5 ".wl[9].w";
	setAttr ".wl[9].w[0]" 0.55263554115119073;
	setAttr ".wl[9].w[1]" 0.067973002083688977;
	setAttr ".wl[9].w[7]" 0.00076938690261492426;
	setAttr ".wl[9].w[9]" 0.37655312794949797;
	setAttr ".wl[9].w[10]" 0.0020689419130073411;
	setAttr -s 5 ".wl[10].w";
	setAttr ".wl[10].w[0]" 0.021488961528458722;
	setAttr ".wl[10].w[1]" 0.0077678578487343228;
	setAttr ".wl[10].w[7]" 0.00092637093959326987;
	setAttr ".wl[10].w[9]" 0.93138048568375276;
	setAttr ".wl[10].w[10]" 0.038436323999460863;
	setAttr -s 5 ".wl[11].w";
	setAttr ".wl[11].w[0]" 0.0010355129577204324;
	setAttr ".wl[11].w[1]" 0.000466083549381016;
	setAttr ".wl[11].w[7]" 0.00021007350842818044;
	setAttr ".wl[11].w[9]" 0.55350044516128416;
	setAttr ".wl[11].w[10]" 0.44478788482318615;
	setAttr -s 5 ".wl[12].w";
	setAttr ".wl[12].w[0]" 0.018316005006811614;
	setAttr ".wl[12].w[1]" 0.97236603771273811;
	setAttr ".wl[12].w[2]" 0.0019773195214603748;
	setAttr ".wl[12].w[7]" 0.0013284294081672803;
	setAttr ".wl[12].w[9]" 0.006012208350822508;
	setAttr -s 5 ".wl[13].w";
	setAttr ".wl[13].w[0]" 0.033854103371309577;
	setAttr ".wl[13].w[1]" 0.1728610405022373;
	setAttr ".wl[13].w[2]" 0.0011821781488038753;
	setAttr ".wl[13].w[7]" 0.0018460717320512023;
	setAttr ".wl[13].w[9]" 0.79025660624559801;
	setAttr -s 5 ".wl[14].w";
	setAttr ".wl[14].w[0]" 0.0015414519478062381;
	setAttr ".wl[14].w[1]" 0.0021307700856343348;
	setAttr ".wl[14].w[7]" 0.00097275091094167613;
	setAttr ".wl[14].w[9]" 0.97882717834521049;
	setAttr ".wl[14].w[10]" 0.0165278487104073;
	setAttr -s 5 ".wl[15].w";
	setAttr ".wl[15].w[0]" 0.00039328810182616137;
	setAttr ".wl[15].w[7]" 0.00075007824228851244;
	setAttr ".wl[15].w[8]" 0.00075007824228851244;
	setAttr ".wl[15].w[9]" 0.49905327770679841;
	setAttr ".wl[15].w[10]" 0.49905327770679841;
	setAttr -s 5 ".wl[16].w";
	setAttr ".wl[16].w[0]" 0.00081433992764716532;
	setAttr ".wl[16].w[1]" 0.95536525519225068;
	setAttr ".wl[16].w[2]" 0.036155714199236272;
	setAttr ".wl[16].w[7]" 0.0071521191542102108;
	setAttr ".wl[16].w[9]" 0.00051257152665568919;
	setAttr -s 5 ".wl[17].w";
	setAttr ".wl[17].w[0]" 0.14593970721331606;
	setAttr ".wl[17].w[1]" 0.29065343269298016;
	setAttr ".wl[17].w[2]" 0.080181169778572509;
	setAttr ".wl[17].w[7]" 0.20704682569141822;
	setAttr ".wl[17].w[9]" 0.27617886462371316;
	setAttr -s 5 ".wl[18].w";
	setAttr ".wl[18].w[1]" 0.048454892349986275;
	setAttr ".wl[18].w[7]" 0.1245940507537867;
	setAttr ".wl[18].w[8]" 0.063613970734542932;
	setAttr ".wl[18].w[9]" 0.62759238331537315;
	setAttr ".wl[18].w[10]" 0.13574470284631091;
	setAttr -s 5 ".wl[19].w";
	setAttr ".wl[19].w[1]" 0.0057125643733315808;
	setAttr ".wl[19].w[7]" 0.0406378601085918;
	setAttr ".wl[19].w[8]" 0.0406378601085918;
	setAttr ".wl[19].w[9]" 0.45650585770474256;
	setAttr ".wl[19].w[10]" 0.45650585770474233;
	setAttr -s 5 ".wl[20].w";
	setAttr ".wl[20].w[1]" 0.27321400703515297;
	setAttr ".wl[20].w[2]" 0.71492946337432639;
	setAttr ".wl[20].w[3]" 0.00059285785179986721;
	setAttr ".wl[20].w[5]" 0.00048258243736279063;
	setAttr ".wl[20].w[7]" 0.01078108930135804;
	setAttr -s 5 ".wl[21].w";
	setAttr ".wl[21].w[0]" 0.0015643672388656071;
	setAttr ".wl[21].w[1]" 0.011048751331624779;
	setAttr ".wl[21].w[2]" 0.034519839584408248;
	setAttr ".wl[21].w[7]" 0.9510202410443731;
	setAttr ".wl[21].w[9]" 0.0018468008007283302;
	setAttr -s 5 ".wl[22].w";
	setAttr ".wl[22].w[1]" 0.011231664034516756;
	setAttr ".wl[22].w[7]" 0.84124138217659894;
	setAttr ".wl[22].w[8]" 0.10723824510911824;
	setAttr ".wl[22].w[9]" 0.029181413799996749;
	setAttr ".wl[22].w[10]" 0.011107294879769282;
	setAttr -s 5 ".wl[23].w";
	setAttr ".wl[23].w[1]" 0.0071522324441602326;
	setAttr ".wl[23].w[7]" 0.40710323099279394;
	setAttr ".wl[23].w[8]" 0.40710323099279394;
	setAttr ".wl[23].w[9]" 0.089320652785125923;
	setAttr ".wl[23].w[10]" 0.089320652785125923;
	setAttr -s 5 ".wl[24].w";
	setAttr ".wl[24].w[1]" 0.012623788127202388;
	setAttr ".wl[24].w[2]" 0.96782859250769315;
	setAttr ".wl[24].w[3]" 0.0096483931784435723;
	setAttr ".wl[24].w[5]" 0.0049967011988450308;
	setAttr ".wl[24].w[7]" 0.0049025249878159082;
	setAttr -s 5 ".wl[25].w";
	setAttr ".wl[25].w[1]" 0.017995174166949957;
	setAttr ".wl[25].w[2]" 0.12326124398084591;
	setAttr ".wl[25].w[3]" 0.0056323537189063005;
	setAttr ".wl[25].w[5]" 0.0088482250253918461;
	setAttr ".wl[25].w[7]" 0.84426300310790603;
	setAttr -s 5 ".wl[26].w";
	setAttr ".wl[26].w[2]" 5.4889181851205693e-05;
	setAttr ".wl[26].w[5]" 7.8821744251856145e-05;
	setAttr ".wl[26].w[6]" 7.8821744251856145e-05;
	setAttr ".wl[26].w[7]" 0.99944071983991467;
	setAttr ".wl[26].w[8]" 0.00034674748973045742;
	setAttr -s 5 ".wl[27].w[5:9]"  2.2828665165941847e-05 2.2828665165941847e-05 
		0.49996654723366141 0.49996654723366141 2.1248202345239753e-05;
	setAttr -s 5 ".wl[28].w[1:5]"  0.00034130577666322302 0.50534914100056938 
		0.47856442529369314 0.0031137104782126895 0.012631417450861453;
	setAttr -s 5 ".wl[29].w";
	setAttr ".wl[29].w[2]" 0.0055182808589056206;
	setAttr ".wl[29].w[3]" 0.03988572297825356;
	setAttr ".wl[29].w[4]" 0.0019551044136888493;
	setAttr ".wl[29].w[5]" 0.95181972094144252;
	setAttr ".wl[29].w[7]" 0.00082117080770946916;
	setAttr -s 5 ".wl[30].w";
	setAttr ".wl[30].w[2]" 0.0026440594503423956;
	setAttr ".wl[30].w[3]" 0.0044362174910475127;
	setAttr ".wl[30].w[5]" 0.68369125852222856;
	setAttr ".wl[30].w[6]" 0.2986206594362944;
	setAttr ".wl[30].w[7]" 0.01060780510008702;
	setAttr -s 5 ".wl[31].w";
	setAttr ".wl[31].w[2]" 0.0071473124339566894;
	setAttr ".wl[31].w[5]" 0.36031304035761186;
	setAttr ".wl[31].w[6]" 0.36031304035761175;
	setAttr ".wl[31].w[7]" 0.16046360395546325;
	setAttr ".wl[31].w[8]" 0.11176300289535658;
	setAttr -s 5 ".wl[32].w[1:5]"  0.00023472151337874231 0.13857164241501085 
		0.78503441128568308 0.055622894786890011 0.020536329999037352;
	setAttr -s 5 ".wl[33].w[2:6]"  0.018891257643571052 0.14665435890682499 
		0.053563451746094753 0.7795327892058439 0.001358142497665381;
	setAttr -s 5 ".wl[34].w[2:6]"  5.5770024660470771e-05 0.00017356206381694336 
		8.5553031195613054e-05 0.99849770431231655 0.0011874105680104944;
	setAttr -s 5 ".wl[35].w[3:7]"  8.4707655173581793e-06 5.5530026687548046e-06 
		0.49998671158238667 0.49998671158238667 1.2553067040485308e-05;
	setAttr -s 5 ".wl[36].w[2:6]"  0.00050655873680890994 0.49939634929198695 
		0.49939634929198717 0.00069010270367088453 1.0639975545979724e-05;
	setAttr -s 5 ".wl[37].w[2:6]"  0.011839953417692348 0.47626912451478276 
		0.47626912451478265 0.03461305226576035 0.0010087452869818989;
	setAttr -s 5 ".wl[38].w[2:6]"  0.036091630923005213 0.33864509458165742 
		0.33864509458165731 0.27467891135705608 0.011939268556624076;
	setAttr -s 5 ".wl[39].w[2:6]"  0.017983876511704661 0.060513129482444729 
		0.060513129482444729 0.8105104484890906 0.050479416034315258;
	setAttr -s 11 ".pm";
	setAttr ".pm[0]" -type "matrix" 0.99798272710540081 -0 0.063486033103881373 -0 -0 1 -0 0
		 -0.063486033103881373 -0 0.99798272710540081 -0 -0.4877257878841218 0 -0.082980269363401318 1;
	setAttr ".pm[1]" -type "matrix" 0.99968985896038065 -0 0.024903531712883668 -0 -0 1 -0 0
		 -0.024903531712883668 -0 0.99968985896038065 -0 -0.94231901921209327 3.5149077641047815e-18 -0.046629233217468508 1;
	setAttr ".pm[2]" -type "matrix" 0.99755572306974039 -0 -0.06987545614024554 -0 -0 1 -0 0
		 0.06987545614024554 -0 0.99755572306974039 -0 -1.402578540566342 6.1479887062949375e-17 0.086579038440898232 1;
	setAttr ".pm[3]" -type "matrix" 0.87618075276060858 -0 -0.48198266409887947 -0 -0 1 -0 0
		 0.48198266409887947 -0 0.87618075276060858 -0 -1.6092215773183842 1.0798607639133621e-16 0.8392231861343098 1;
	setAttr ".pm[4]" -type "matrix" 1 -8.221304395200876e-32 -7.2164496600635175e-16 -0
		 -4.0686175565393846e-33 -1 1.2246467991473535e-16 0 -7.2164496600635175e-16 -1.2246467991473532e-16 -1 0
		 -1.98075 -1.0174271917941788e-16 0.13178100000000129 1;
	setAttr ".pm[5]" -type "matrix" -0.089208093003861011 0 -0.996013010026784 -0 -0 1 -0 0
		 0.996013010026784 -0 -0.089208093003861011 -0 0.021574083797956972 9.4526726771639736e-17 1.8017991723600273 1;
	setAttr ".pm[6]" -type "matrix" 1 1.0924840555521765e-17 -1.5543122344752192e-15 -0
		 1.0924840555521958e-17 -1 1.2197641446384217e-16 0 -1.457167719820518e-15 -1.2197641446384217e-16 -1 0
		 -1.7533899999999991 -2.7394647634429958e-18 0.62101900000000276 1;
	setAttr ".pm[7]" -type "matrix" -0.23951103139779309 0 -0.97089364290779334 -0 -0 1 -0 0
		 0.97089364290779334 -0 -0.23951103139779309 -0 0.21800267914245047 4.7101596267652581e-17 1.3877791489454343 1;
	setAttr ".pm[8]" -type "matrix" 1 -2.9331641796178837e-17 -1.1934897514720435e-15 -0
		 -2.9331641796178991e-17 -1 -1.1890017920995416e-16 0 -1.3045120539345591e-15 1.1890017920995424e-16 -1 -0
		 -1.2162599999999992 -3.57392561882533e-17 0.86392700000000155 1;
	setAttr ".pm[9]" -type "matrix" -0.52537512854288992 -0 -0.85087071539014747 -0 -0 1 -0 0
		 0.85087071539014747 -0 -0.52537512854288992 -0 0.40220306968975961 -8.740103933089505e-18 0.8324619683692065 1;
	setAttr ".pm[10]" -type "matrix" 0.99999999999999956 6.433989695216791e-17 -1.0547118733938977e-15 -0
		 6.4339896952168045e-17 -1 1.0420160980907619e-16 0 -1.0547118733938977e-15 -1.0420160980907624e-16 -0.99999999999999956 0
		 -0.57774399999999937 1.072009147445834e-16 0.64882500000000076 1;
	setAttr ".gm" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr -s 11 ".ma";
	setAttr -s 11 ".dpf[0:10]"  4 4 4 4 4 4 4 4 4 4 4;
	setAttr -s 11 ".lw";
	setAttr -s 11 ".lw";
	setAttr ".mmi" yes;
	setAttr ".mi" 5;
	setAttr ".bm" 0;
	setAttr ".ucm" yes;
	setAttr -s 11 ".ifcl";
	setAttr -s 11 ".ifcl";
createNode tweak -n "tweak7";
createNode objectSet -n "skinCluster7Set";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "skinCluster7GroupId";
	setAttr ".ihi" 0;
createNode groupParts -n "skinCluster7GroupParts";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode objectSet -n "tweakSet7";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId14";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts14";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode dagPose -n "bindPose12";
	setAttr -s 11 ".wm";
	setAttr -s 11 ".xm";
	setAttr ".xm[0]" -type "matrix" "xform" 1 1 1 0 0 0 0 0.49201 0 0.051849100000000002 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0.031759037253978613 0 0.99949555454374106 1
		 1 1 yes;
	setAttr ".xm[1]" -type "matrix" "xform" 1 1 1 0 0 0 0 0.45208998888048829 -3.5149077641047807e-18
		 2.7755575615628914e-17 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 -0.019310125017439856 0 0.99981354215264095 1
		 1 1 yes;
	setAttr ".xm[2]" -type "matrix" "xform" 1 1 1 0 0 0 0 0.46215533333554637 -5.7964979298844601e-17
		 5.5511151231257827e-17 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 -0.047401505974133701 0 0.99887591683421029 1
		 1 1 yes;
	setAttr ".xm[3]" -type "matrix" "xform" 1 1 1 0 0 0 0 0.4102627958873315 -4.6506189328386836e-17
		 2.0816681711721685e-16 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 -0.21480469866194929 0 0.97665702343901117 1
		 1 1 yes;
	setAttr ".xm[4]" -type "matrix" "xform" 1 1 1 0 0 0 0 0.18978960616980589 -9.8951607719255351e-18
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.96855065762215253 1.5235613186261366e-17 0.24881644563753394 5.9306623133451659e-17 1
		 1 1 yes;
	setAttr ".xm[5]" -type "matrix" "xform" 1 1 1 0 0 0 0 0.031986832273936221 1.3459349619696472e-17
		 0.095327592053765203 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 -0.54685528708727316 0 0.83722714658848463 1
		 1 1 yes;
	setAttr ".xm[6]" -type "matrix" "xform" 1 1 1 0 0 0 0 0.48370050907974055 3.5193097255922265e-17
		 -2.2204460492503131e-16 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.67483031459624632 4.1321439236894724e-17 0.73797293073793113 4.5187809374279937e-17 1
		 1 1 yes;
	setAttr ".xm[7]" -type "matrix" "xform" 1 1 1 0 0 0 0 0.0020365831373348586
		 1.4378290795296807e-17 0.10921725002894335 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 
		0 0.76520714971416659 0 -0.64378413930938139 1 1 1 yes;
	setAttr ".xm[8]" -type "matrix" "xform" 1 1 1 0 0 0 0 0.76547622433097173 7.8408512552696917e-17
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.61663967136497377 3.7758289988219548e-17 -0.78724552440702833 4.820488558040734e-17 1
		 1 1 yes;
	setAttr ".xm[9]" -type "matrix" "xform" 1 1 1 0 0 0 0 -0.025348355444563372
		 1.2255011697194286e-17 0.071375172796611014 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 
		0 0.87931845027800248 0 -0.47623425223380561 1 1 1 yes;
	setAttr ".xm[10]" -type "matrix" "xform" 1 1 1 0 0 0 0 0.65073693333788873 6.8024190751853262e-17
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.4871472423493276 2.9829165552828199e-17 0.8733198522142076 5.3475418082298443e-17 1
		 1 1 yes;
	setAttr -s 11 ".m";
	setAttr -s 11 ".p";
	setAttr ".bp" yes;
createNode skinCluster -n "skinCluster8";
	setAttr -s 40 ".wl";
	setAttr -s 5 ".wl[0].w";
	setAttr ".wl[0].w[0]" 0.99772626066594616;
	setAttr ".wl[0].w[1]" 0.00099690651544444568;
	setAttr ".wl[0].w[2]" 4.0652748812919843e-05;
	setAttr ".wl[0].w[9]" 0.0011296890050779718;
	setAttr ".wl[0].w[10]" 0.00010649106471849716;
	setAttr -s 5 ".wl[1].w";
	setAttr ".wl[1].w[0]" 0.99968194463742166;
	setAttr ".wl[1].w[1]" 0.00012824401528580904;
	setAttr ".wl[1].w[7]" 6.0813852022572247e-06;
	setAttr ".wl[1].w[9]" 0.00016211378977163538;
	setAttr ".wl[1].w[10]" 2.1616172318656666e-05;
	setAttr -s 5 ".wl[2].w";
	setAttr ".wl[2].w[0]" 0.99999875187307763;
	setAttr ".wl[2].w[1]" 4.3589445481328412e-07;
	setAttr ".wl[2].w[7]" 2.2412034720040944e-08;
	setAttr ".wl[2].w[9]" 6.7878584534998318e-07;
	setAttr ".wl[2].w[10]" 1.1103458758968329e-07;
	setAttr -s 5 ".wl[3].w";
	setAttr ".wl[3].w[0]" 0.99817129481451239;
	setAttr ".wl[3].w[1]" 0.00050332833918964636;
	setAttr ".wl[3].w[7]" 2.8753057416382657e-05;
	setAttr ".wl[3].w[9]" 0.0010874355177681297;
	setAttr ".wl[3].w[10]" 0.00020918827111347644;
	setAttr -s 5 ".wl[4].w";
	setAttr ".wl[4].w[0]" 0.99344962882533316;
	setAttr ".wl[4].w[1]" 0.0030942200477874393;
	setAttr ".wl[4].w[2]" 9.1766963424262218e-05;
	setAttr ".wl[4].w[9]" 0.0032001321972655182;
	setAttr ".wl[4].w[10]" 0.00016425196618962724;
	setAttr -s 5 ".wl[5].w";
	setAttr ".wl[5].w[0]" 0.99995120906799428;
	setAttr ".wl[5].w[1]" 1.7986749868961051e-05;
	setAttr ".wl[5].w[7]" 5.691847408654393e-07;
	setAttr ".wl[5].w[9]" 2.8135269833259073e-05;
	setAttr ".wl[5].w[10]" 2.0997275625428031e-06;
	setAttr -s 5 ".wl[6].w";
	setAttr ".wl[6].w[0]" 0.93666463970182923;
	setAttr ".wl[6].w[1]" 0.011725055659620546;
	setAttr ".wl[6].w[7]" 0.00062847767533380429;
	setAttr ".wl[6].w[9]" 0.04483446673672889;
	setAttr ".wl[6].w[10]" 0.0061473602264875285;
	setAttr -s 5 ".wl[7].w";
	setAttr ".wl[7].w[0]" 0.52925594069235493;
	setAttr ".wl[7].w[1]" 0.033273905299963748;
	setAttr ".wl[7].w[7]" 0.0034318601116161852;
	setAttr ".wl[7].w[9]" 0.33646808247937404;
	setAttr ".wl[7].w[10]" 0.097570211416691061;
	setAttr -s 5 ".wl[8].w";
	setAttr ".wl[8].w[0]" 0.84077169304605603;
	setAttr ".wl[8].w[1]" 0.11543910206101375;
	setAttr ".wl[8].w[2]" 0.00031105983130329013;
	setAttr ".wl[8].w[7]" 0.00027880707254857121;
	setAttr ".wl[8].w[9]" 0.043199337989078372;
	setAttr -s 5 ".wl[9].w";
	setAttr ".wl[9].w[0]" 0.55263554115119073;
	setAttr ".wl[9].w[1]" 0.067973002083688977;
	setAttr ".wl[9].w[7]" 0.00076938690261492426;
	setAttr ".wl[9].w[9]" 0.37655312794949797;
	setAttr ".wl[9].w[10]" 0.0020689419130073411;
	setAttr -s 5 ".wl[10].w";
	setAttr ".wl[10].w[0]" 0.021488961528458722;
	setAttr ".wl[10].w[1]" 0.0077678578487343228;
	setAttr ".wl[10].w[7]" 0.00092637093959326987;
	setAttr ".wl[10].w[9]" 0.93138048568375276;
	setAttr ".wl[10].w[10]" 0.038436323999460863;
	setAttr -s 5 ".wl[11].w";
	setAttr ".wl[11].w[0]" 0.0010355129577204324;
	setAttr ".wl[11].w[1]" 0.000466083549381016;
	setAttr ".wl[11].w[7]" 0.00021007350842818044;
	setAttr ".wl[11].w[9]" 0.55350044516128416;
	setAttr ".wl[11].w[10]" 0.44478788482318615;
	setAttr -s 5 ".wl[12].w";
	setAttr ".wl[12].w[0]" 0.018316005006811614;
	setAttr ".wl[12].w[1]" 0.97236603771273811;
	setAttr ".wl[12].w[2]" 0.0019773195214603748;
	setAttr ".wl[12].w[7]" 0.0013284294081672803;
	setAttr ".wl[12].w[9]" 0.006012208350822508;
	setAttr -s 5 ".wl[13].w";
	setAttr ".wl[13].w[0]" 0.033854103371309577;
	setAttr ".wl[13].w[1]" 0.1728610405022373;
	setAttr ".wl[13].w[2]" 0.0011821781488038753;
	setAttr ".wl[13].w[7]" 0.0018460717320512023;
	setAttr ".wl[13].w[9]" 0.79025660624559801;
	setAttr -s 5 ".wl[14].w";
	setAttr ".wl[14].w[0]" 0.0015414519478062381;
	setAttr ".wl[14].w[1]" 0.0021307700856343348;
	setAttr ".wl[14].w[7]" 0.00097275091094167613;
	setAttr ".wl[14].w[9]" 0.97882717834521049;
	setAttr ".wl[14].w[10]" 0.0165278487104073;
	setAttr -s 5 ".wl[15].w";
	setAttr ".wl[15].w[0]" 0.00039328810182616137;
	setAttr ".wl[15].w[7]" 0.00075007824228851244;
	setAttr ".wl[15].w[8]" 0.00075007824228851244;
	setAttr ".wl[15].w[9]" 0.49905327770679841;
	setAttr ".wl[15].w[10]" 0.49905327770679841;
	setAttr -s 5 ".wl[16].w";
	setAttr ".wl[16].w[0]" 0.00081433992764716532;
	setAttr ".wl[16].w[1]" 0.95536525519225068;
	setAttr ".wl[16].w[2]" 0.036155714199236272;
	setAttr ".wl[16].w[7]" 0.0071521191542102108;
	setAttr ".wl[16].w[9]" 0.00051257152665568919;
	setAttr -s 5 ".wl[17].w";
	setAttr ".wl[17].w[0]" 0.14593970721331606;
	setAttr ".wl[17].w[1]" 0.29065343269298016;
	setAttr ".wl[17].w[2]" 0.080181169778572509;
	setAttr ".wl[17].w[7]" 0.20704682569141822;
	setAttr ".wl[17].w[9]" 0.27617886462371316;
	setAttr -s 5 ".wl[18].w";
	setAttr ".wl[18].w[1]" 0.048454892349986275;
	setAttr ".wl[18].w[7]" 0.1245940507537867;
	setAttr ".wl[18].w[8]" 0.063613970734542932;
	setAttr ".wl[18].w[9]" 0.62759238331537315;
	setAttr ".wl[18].w[10]" 0.13574470284631091;
	setAttr -s 5 ".wl[19].w";
	setAttr ".wl[19].w[1]" 0.0057125643733315808;
	setAttr ".wl[19].w[7]" 0.0406378601085918;
	setAttr ".wl[19].w[8]" 0.0406378601085918;
	setAttr ".wl[19].w[9]" 0.45650585770474256;
	setAttr ".wl[19].w[10]" 0.45650585770474233;
	setAttr -s 5 ".wl[20].w";
	setAttr ".wl[20].w[1]" 0.27321400703515297;
	setAttr ".wl[20].w[2]" 0.71492946337432639;
	setAttr ".wl[20].w[3]" 0.00059285785179986721;
	setAttr ".wl[20].w[5]" 0.00048258243736279063;
	setAttr ".wl[20].w[7]" 0.01078108930135804;
	setAttr -s 5 ".wl[21].w";
	setAttr ".wl[21].w[0]" 0.0015643672388656071;
	setAttr ".wl[21].w[1]" 0.011048751331624779;
	setAttr ".wl[21].w[2]" 0.034519839584408248;
	setAttr ".wl[21].w[7]" 0.9510202410443731;
	setAttr ".wl[21].w[9]" 0.0018468008007283302;
	setAttr -s 5 ".wl[22].w";
	setAttr ".wl[22].w[1]" 0.011231664034516756;
	setAttr ".wl[22].w[7]" 0.84124138217659894;
	setAttr ".wl[22].w[8]" 0.10723824510911824;
	setAttr ".wl[22].w[9]" 0.029181413799996749;
	setAttr ".wl[22].w[10]" 0.011107294879769282;
	setAttr -s 5 ".wl[23].w";
	setAttr ".wl[23].w[1]" 0.0071522324441602326;
	setAttr ".wl[23].w[7]" 0.40710323099279394;
	setAttr ".wl[23].w[8]" 0.40710323099279394;
	setAttr ".wl[23].w[9]" 0.089320652785125923;
	setAttr ".wl[23].w[10]" 0.089320652785125923;
	setAttr -s 5 ".wl[24].w";
	setAttr ".wl[24].w[1]" 0.012623788127202388;
	setAttr ".wl[24].w[2]" 0.96782859250769315;
	setAttr ".wl[24].w[3]" 0.0096483931784435723;
	setAttr ".wl[24].w[5]" 0.0049967011988450308;
	setAttr ".wl[24].w[7]" 0.0049025249878159082;
	setAttr -s 5 ".wl[25].w";
	setAttr ".wl[25].w[1]" 0.017995174166949957;
	setAttr ".wl[25].w[2]" 0.12326124398084591;
	setAttr ".wl[25].w[3]" 0.0056323537189063005;
	setAttr ".wl[25].w[5]" 0.0088482250253918461;
	setAttr ".wl[25].w[7]" 0.84426300310790603;
	setAttr -s 5 ".wl[26].w";
	setAttr ".wl[26].w[2]" 5.4889181851205693e-05;
	setAttr ".wl[26].w[5]" 7.8821744251856145e-05;
	setAttr ".wl[26].w[6]" 7.8821744251856145e-05;
	setAttr ".wl[26].w[7]" 0.99944071983991467;
	setAttr ".wl[26].w[8]" 0.00034674748973045742;
	setAttr -s 5 ".wl[27].w[5:9]"  2.2828665165941847e-05 2.2828665165941847e-05 
		0.49996654723366141 0.49996654723366141 2.1248202345239753e-05;
	setAttr -s 5 ".wl[28].w[1:5]"  0.00034130577666322302 0.50534914100056938 
		0.47856442529369314 0.0031137104782126895 0.012631417450861453;
	setAttr -s 5 ".wl[29].w";
	setAttr ".wl[29].w[2]" 0.0055182808589056206;
	setAttr ".wl[29].w[3]" 0.03988572297825356;
	setAttr ".wl[29].w[4]" 0.0019551044136888493;
	setAttr ".wl[29].w[5]" 0.95181972094144252;
	setAttr ".wl[29].w[7]" 0.00082117080770946916;
	setAttr -s 5 ".wl[30].w";
	setAttr ".wl[30].w[2]" 0.0026440594503423956;
	setAttr ".wl[30].w[3]" 0.0044362174910475127;
	setAttr ".wl[30].w[5]" 0.68369125852222856;
	setAttr ".wl[30].w[6]" 0.2986206594362944;
	setAttr ".wl[30].w[7]" 0.01060780510008702;
	setAttr -s 5 ".wl[31].w";
	setAttr ".wl[31].w[2]" 0.0071473124339566894;
	setAttr ".wl[31].w[5]" 0.36031304035761186;
	setAttr ".wl[31].w[6]" 0.36031304035761175;
	setAttr ".wl[31].w[7]" 0.16046360395546325;
	setAttr ".wl[31].w[8]" 0.11176300289535658;
	setAttr -s 5 ".wl[32].w[1:5]"  0.00023472151337874231 0.13857164241501085 
		0.78503441128568308 0.055622894786890011 0.020536329999037352;
	setAttr -s 5 ".wl[33].w[2:6]"  0.018891257643571052 0.14665435890682499 
		0.053563451746094753 0.7795327892058439 0.001358142497665381;
	setAttr -s 5 ".wl[34].w[2:6]"  5.5770024660470771e-05 0.00017356206381694336 
		8.5553031195613054e-05 0.99849770431231655 0.0011874105680104944;
	setAttr -s 5 ".wl[35].w[3:7]"  8.4707655173581793e-06 5.5530026687548046e-06 
		0.49998671158238667 0.49998671158238667 1.2553067040485308e-05;
	setAttr -s 5 ".wl[36].w[2:6]"  0.00050655873680890994 0.49939634929198695 
		0.49939634929198717 0.00069010270367088453 1.0639975545979724e-05;
	setAttr -s 5 ".wl[37].w[2:6]"  0.011839953417692348 0.47626912451478276 
		0.47626912451478265 0.03461305226576035 0.0010087452869818989;
	setAttr -s 5 ".wl[38].w[2:6]"  0.036091630923005213 0.33864509458165742 
		0.33864509458165731 0.27467891135705608 0.011939268556624076;
	setAttr -s 5 ".wl[39].w[2:6]"  0.017983876511704661 0.060513129482444729 
		0.060513129482444729 0.8105104484890906 0.050479416034315258;
	setAttr -s 11 ".pm";
	setAttr ".pm[0]" -type "matrix" 0.99798272710540081 -0 0.063486033103881373 -0 -0 1 -0 0
		 -0.063486033103881373 -0 0.99798272710540081 -0 -0.4877257878841218 0 -0.082980269363401318 1;
	setAttr ".pm[1]" -type "matrix" 0.99968985896038065 -0 0.024903531712883668 -0 -0 1 -0 0
		 -0.024903531712883668 -0 0.99968985896038065 -0 -0.94231901921209327 3.5149077641047815e-18 -0.046629233217468508 1;
	setAttr ".pm[2]" -type "matrix" 0.99755572306974039 -0 -0.06987545614024554 -0 -0 1 -0 0
		 0.06987545614024554 -0 0.99755572306974039 -0 -1.402578540566342 6.1479887062949375e-17 0.086579038440898232 1;
	setAttr ".pm[3]" -type "matrix" 0.87618075276060858 -0 -0.48198266409887947 -0 -0 1 -0 0
		 0.48198266409887947 -0 0.87618075276060858 -0 -1.6092215773183842 1.0798607639133621e-16 0.8392231861343098 1;
	setAttr ".pm[4]" -type "matrix" 1 -8.221304395200876e-32 -7.2164496600635175e-16 -0
		 -4.0686175565393846e-33 -1 1.2246467991473535e-16 0 -7.2164496600635175e-16 -1.2246467991473532e-16 -1 0
		 -1.98075 -1.0174271917941788e-16 0.13178100000000129 1;
	setAttr ".pm[5]" -type "matrix" -0.089208093003861011 0 -0.996013010026784 -0 -0 1 -0 0
		 0.996013010026784 -0 -0.089208093003861011 -0 0.021574083797956972 9.4526726771639736e-17 1.8017991723600273 1;
	setAttr ".pm[6]" -type "matrix" 1 1.0924840555521765e-17 -1.5543122344752192e-15 -0
		 1.0924840555521958e-17 -1 1.2197641446384217e-16 0 -1.457167719820518e-15 -1.2197641446384217e-16 -1 0
		 -1.7533899999999991 -2.7394647634429958e-18 0.62101900000000276 1;
	setAttr ".pm[7]" -type "matrix" -0.23951103139779309 0 -0.97089364290779334 -0 -0 1 -0 0
		 0.97089364290779334 -0 -0.23951103139779309 -0 0.21800267914245047 4.7101596267652581e-17 1.3877791489454343 1;
	setAttr ".pm[8]" -type "matrix" 1 -2.9331641796178837e-17 -1.1934897514720435e-15 -0
		 -2.9331641796178991e-17 -1 -1.1890017920995416e-16 0 -1.3045120539345591e-15 1.1890017920995424e-16 -1 -0
		 -1.2162599999999992 -3.57392561882533e-17 0.86392700000000155 1;
	setAttr ".pm[9]" -type "matrix" -0.52537512854288992 -0 -0.85087071539014747 -0 -0 1 -0 0
		 0.85087071539014747 -0 -0.52537512854288992 -0 0.40220306968975961 -8.740103933089505e-18 0.8324619683692065 1;
	setAttr ".pm[10]" -type "matrix" 0.99999999999999956 6.433989695216791e-17 -1.0547118733938977e-15 -0
		 6.4339896952168045e-17 -1 1.0420160980907619e-16 0 -1.0547118733938977e-15 -1.0420160980907624e-16 -0.99999999999999956 0
		 -0.57774399999999937 1.072009147445834e-16 0.64882500000000076 1;
	setAttr ".gm" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr -s 11 ".ma";
	setAttr -s 11 ".dpf[0:10]"  4 4 4 4 4 4 4 4 4 4 4;
	setAttr -s 11 ".lw";
	setAttr -s 11 ".lw";
	setAttr ".mmi" yes;
	setAttr ".mi" 5;
	setAttr ".bm" 0;
	setAttr ".ucm" yes;
	setAttr -s 11 ".ifcl";
	setAttr -s 11 ".ifcl";
createNode tweak -n "tweak8";
createNode objectSet -n "skinCluster8Set";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "skinCluster8GroupId";
	setAttr ".ihi" 0;
createNode groupParts -n "skinCluster8GroupParts";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode objectSet -n "tweakSet8";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId16";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts16";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode polyNormal -n "polyNormal1";
	setAttr ".ics" -type "componentList" 1 "f[*]";
	setAttr ".unm" no;
createNode polyNormal -n "polyNormal2";
	setAttr ".ics" -type "componentList" 1 "f[*]";
	setAttr ".unm" no;
createNode polyNormal -n "polyNormal3";
	setAttr ".ics" -type "componentList" 1 "f[*]";
	setAttr ".unm" no;
createNode polyNormal -n "polyNormal4";
	setAttr ".ics" -type "componentList" 1 "f[*]";
	setAttr ".unm" no;
select -ne :time1;
	setAttr ".o" 1;
	setAttr ".unw" 1;
select -ne :renderPartition;
	setAttr -s 4 ".st";
select -ne :initialShadingGroup;
	setAttr ".ro" yes;
select -ne :initialParticleSE;
	setAttr ".ro" yes;
select -ne :defaultShaderList1;
	setAttr -s 4 ".s";
select -ne :defaultTextureList1;
	setAttr -s 2 ".tx";
select -ne :postProcessList1;
	setAttr -s 2 ".p";
select -ne :defaultRenderUtilityList1;
select -ne :defaultRenderingList1;
select -ne :renderGlobalsList1;
select -ne :defaultResolution;
	setAttr ".pa" 1;
select -ne :hardwareRenderGlobals;
	setAttr ".ctrs" 256;
	setAttr ".btrs" 512;
select -ne :hardwareRenderingGlobals;
	setAttr ".otfna" -type "stringArray" 18 "NURBS Curves" "NURBS Surfaces" "Polygons" "Subdiv Surfaces" "Particles" "Fluids" "Image Planes" "UI:" "Lights" "Cameras" "Locators" "Joints" "IK Handles" "Deformers" "Motion Trails" "Components" "Misc. UI" "Ornaments"  ;
	setAttr ".otfva" -type "Int32Array" 18 0 1 1 1 1 1
		 1 0 0 0 0 0 0 0 0 0 0 0 ;
select -ne :defaultHardwareRenderGlobals;
	setAttr ".fn" -type "string" "im";
	setAttr ".res" -type "string" "ntsc_4d 646 485 1.333";
select -ne :ikSystem;
	setAttr -s 4 ".sol";
connectAttr "root.s" "leftWing.is";
connectAttr "leftWing.s" "LUWing.is";
connectAttr "LUWing.s" "joint2.is";
connectAttr "joint2.s" "joint3.is";
connectAttr "joint3.s" "joint4.is";
connectAttr "joint4.s" "joint5.is";
connectAttr "joint4.s" "joint11.is";
connectAttr "joint11.s" "joint12.is";
connectAttr "joint3.s" "joint13.is";
connectAttr "joint13.s" "joint14.is";
connectAttr "joint2.s" "joint15.is";
connectAttr "joint15.s" "joint16.is";
connectAttr "leftWing.s" "LLWing.is";
connectAttr "LLWing.s" "joint7.is";
connectAttr "joint7.s" "joint8.is";
connectAttr "joint8.s" "joint9.is";
connectAttr "joint9.s" "joint10.is";
connectAttr "joint9.s" "joint21.is";
connectAttr "joint21.s" "joint22.is";
connectAttr "joint8.s" "joint19.is";
connectAttr "joint19.s" "joint20.is";
connectAttr "joint7.s" "joint17.is";
connectAttr "joint17.s" "joint18.is";
connectAttr "root.s" "rightWing.is";
connectAttr "rightWing.s" "RUWing.is";
connectAttr "RUWing.s" "joint28.is";
connectAttr "joint28.s" "joint29.is";
connectAttr "joint29.s" "joint30.is";
connectAttr "joint30.s" "joint31.is";
connectAttr "joint30.s" "joint32.is";
connectAttr "joint32.s" "joint33.is";
connectAttr "joint29.s" "joint34.is";
connectAttr "joint34.s" "joint35.is";
connectAttr "joint28.s" "joint36.is";
connectAttr "joint36.s" "joint37.is";
connectAttr "rightWing.s" "RLWing.is";
connectAttr "RLWing.s" "joint39.is";
connectAttr "joint39.s" "joint40.is";
connectAttr "joint40.s" "joint41.is";
connectAttr "joint41.s" "joint42.is";
connectAttr "joint41.s" "joint43.is";
connectAttr "joint43.s" "joint44.is";
connectAttr "joint40.s" "joint45.is";
connectAttr "joint45.s" "joint46.is";
connectAttr "joint39.s" "joint47.is";
connectAttr "joint47.s" "joint48.is";
connectAttr "skinCluster1GroupId.id" "loftedSurfaceShape1.iog.og[8].gid";
connectAttr "skinCluster1Set.mwc" "loftedSurfaceShape1.iog.og[8].gco";
connectAttr "groupId2.id" "loftedSurfaceShape1.iog.og[9].gid";
connectAttr "tweakSet1.mwc" "loftedSurfaceShape1.iog.og[9].gco";
connectAttr "skinCluster1.og[0]" "loftedSurfaceShape1.i";
connectAttr "tweak1.vl[0].vt[0]" "loftedSurfaceShape1.twl";
connectAttr "skinCluster3GroupId.id" "loftedSurfaceShape2.iog.og[6].gid";
connectAttr "skinCluster3Set.mwc" "loftedSurfaceShape2.iog.og[6].gco";
connectAttr "groupId6.id" "loftedSurfaceShape2.iog.og[7].gid";
connectAttr "tweakSet3.mwc" "loftedSurfaceShape2.iog.og[7].gco";
connectAttr "skinCluster3.og[0]" "loftedSurfaceShape2.i";
connectAttr "tweak3.vl[0].vt[0]" "loftedSurfaceShape2.twl";
connectAttr "skinCluster5GroupId.id" "loftedSurfaceShape4.iog.og[8].gid";
connectAttr "skinCluster5Set.mwc" "loftedSurfaceShape4.iog.og[8].gco";
connectAttr "groupId10.id" "loftedSurfaceShape4.iog.og[9].gid";
connectAttr "tweakSet5.mwc" "loftedSurfaceShape4.iog.og[9].gco";
connectAttr "skinCluster5.og[0]" "loftedSurfaceShape4.i";
connectAttr "tweak5.vl[0].vt[0]" "loftedSurfaceShape4.twl";
connectAttr "skinCluster7GroupId.id" "loftedSurfaceShape3.iog.og[8].gid";
connectAttr "skinCluster7Set.mwc" "loftedSurfaceShape3.iog.og[8].gco";
connectAttr "groupId14.id" "loftedSurfaceShape3.iog.og[9].gid";
connectAttr "tweakSet7.mwc" "loftedSurfaceShape3.iog.og[9].gco";
connectAttr "skinCluster7.og[0]" "loftedSurfaceShape3.i";
connectAttr "tweak7.vl[0].vt[0]" "loftedSurfaceShape3.twl";
connectAttr "skinCluster2GroupId.id" "loftedSurfaceShape5.iog.og[6].gid";
connectAttr "skinCluster2Set.mwc" "loftedSurfaceShape5.iog.og[6].gco";
connectAttr "groupId4.id" "loftedSurfaceShape5.iog.og[7].gid";
connectAttr "tweakSet2.mwc" "loftedSurfaceShape5.iog.og[7].gco";
connectAttr "polyNormal1.out" "loftedSurfaceShape5.i";
connectAttr "tweak2.vl[0].vt[0]" "loftedSurfaceShape5.twl";
connectAttr "skinCluster4GroupId.id" "loftedSurfaceShape6.iog.og[4].gid";
connectAttr "skinCluster4Set.mwc" "loftedSurfaceShape6.iog.og[4].gco";
connectAttr "groupId8.id" "loftedSurfaceShape6.iog.og[5].gid";
connectAttr "tweakSet4.mwc" "loftedSurfaceShape6.iog.og[5].gco";
connectAttr "polyNormal2.out" "loftedSurfaceShape6.i";
connectAttr "tweak4.vl[0].vt[0]" "loftedSurfaceShape6.twl";
connectAttr "skinCluster6GroupId.id" "loftedSurfaceShape7.iog.og[6].gid";
connectAttr "skinCluster6Set.mwc" "loftedSurfaceShape7.iog.og[6].gco";
connectAttr "groupId12.id" "loftedSurfaceShape7.iog.og[7].gid";
connectAttr "tweakSet6.mwc" "loftedSurfaceShape7.iog.og[7].gco";
connectAttr "polyNormal3.out" "loftedSurfaceShape7.i";
connectAttr "tweak6.vl[0].vt[0]" "loftedSurfaceShape7.twl";
connectAttr "skinCluster8GroupId.id" "loftedSurfaceShape8.iog.og[6].gid";
connectAttr "skinCluster8Set.mwc" "loftedSurfaceShape8.iog.og[6].gco";
connectAttr "groupId16.id" "loftedSurfaceShape8.iog.og[7].gid";
connectAttr "tweakSet8.mwc" "loftedSurfaceShape8.iog.og[7].gco";
connectAttr "polyNormal4.out" "loftedSurfaceShape8.i";
connectAttr "tweak8.vl[0].vt[0]" "loftedSurfaceShape8.twl";
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "lambert2SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "lambert3SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "lambert2SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "lambert3SG.message" ":defaultLightSet.message";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr ":mentalrayGlobals.msg" ":mentalrayItemsList.glb";
connectAttr ":miDefaultOptions.msg" ":mentalrayItemsList.opt" -na;
connectAttr ":miDefaultFramebuffer.msg" ":mentalrayItemsList.fb" -na;
connectAttr ":miDefaultOptions.msg" ":mentalrayGlobals.opt";
connectAttr ":miDefaultFramebuffer.msg" ":mentalrayGlobals.fb";
connectAttr "file1.oc" "lambert2.c";
connectAttr "file1.ot" "lambert2.it";
connectAttr "lambert2.oc" "lambert2SG.ss";
connectAttr "loftedSurfaceShape1.iog" "lambert2SG.dsm" -na;
connectAttr "loftedSurfaceShape4.iog" "lambert2SG.dsm" -na;
connectAttr "loftedSurfaceShape5.iog" "lambert2SG.dsm" -na;
connectAttr "loftedSurfaceShape7.iog" "lambert2SG.dsm" -na;
connectAttr "lambert2SG.msg" "materialInfo1.sg";
connectAttr "lambert2.msg" "materialInfo1.m";
connectAttr "file1.msg" "materialInfo1.t" -na;
connectAttr "place2dTexture1.c" "file1.c";
connectAttr "place2dTexture1.tf" "file1.tf";
connectAttr "place2dTexture1.rf" "file1.rf";
connectAttr "place2dTexture1.mu" "file1.mu";
connectAttr "place2dTexture1.mv" "file1.mv";
connectAttr "place2dTexture1.s" "file1.s";
connectAttr "place2dTexture1.wu" "file1.wu";
connectAttr "place2dTexture1.wv" "file1.wv";
connectAttr "place2dTexture1.re" "file1.re";
connectAttr "place2dTexture1.of" "file1.of";
connectAttr "place2dTexture1.r" "file1.ro";
connectAttr "place2dTexture1.n" "file1.n";
connectAttr "place2dTexture1.vt1" "file1.vt1";
connectAttr "place2dTexture1.vt2" "file1.vt2";
connectAttr "place2dTexture1.vt3" "file1.vt3";
connectAttr "place2dTexture1.vc1" "file1.vc1";
connectAttr "place2dTexture1.o" "file1.uv";
connectAttr "place2dTexture1.ofs" "file1.fs";
connectAttr "file2.oc" "lambert3.c";
connectAttr "file2.ot" "lambert3.it";
connectAttr "lambert3.oc" "lambert3SG.ss";
connectAttr "loftedSurfaceShape2.iog" "lambert3SG.dsm" -na;
connectAttr "loftedSurfaceShape3.iog" "lambert3SG.dsm" -na;
connectAttr "loftedSurfaceShape6.iog" "lambert3SG.dsm" -na;
connectAttr "loftedSurfaceShape8.iog" "lambert3SG.dsm" -na;
connectAttr "lambert3SG.msg" "materialInfo2.sg";
connectAttr "lambert3.msg" "materialInfo2.m";
connectAttr "file2.msg" "materialInfo2.t" -na;
connectAttr "skinCluster1GroupParts.og" "skinCluster1.ip[0].ig";
connectAttr "skinCluster1GroupId.id" "skinCluster1.ip[0].gi";
connectAttr "bindPose9.msg" "skinCluster1.bp";
connectAttr "LUWing.wm" "skinCluster1.ma[0]";
connectAttr "joint2.wm" "skinCluster1.ma[1]";
connectAttr "joint3.wm" "skinCluster1.ma[2]";
connectAttr "joint4.wm" "skinCluster1.ma[3]";
connectAttr "joint5.wm" "skinCluster1.ma[4]";
connectAttr "joint11.wm" "skinCluster1.ma[5]";
connectAttr "joint12.wm" "skinCluster1.ma[6]";
connectAttr "joint13.wm" "skinCluster1.ma[7]";
connectAttr "joint14.wm" "skinCluster1.ma[8]";
connectAttr "joint15.wm" "skinCluster1.ma[9]";
connectAttr "joint16.wm" "skinCluster1.ma[10]";
connectAttr "LUWing.liw" "skinCluster1.lw[0]";
connectAttr "joint2.liw" "skinCluster1.lw[1]";
connectAttr "joint3.liw" "skinCluster1.lw[2]";
connectAttr "joint4.liw" "skinCluster1.lw[3]";
connectAttr "joint5.liw" "skinCluster1.lw[4]";
connectAttr "joint11.liw" "skinCluster1.lw[5]";
connectAttr "joint12.liw" "skinCluster1.lw[6]";
connectAttr "joint13.liw" "skinCluster1.lw[7]";
connectAttr "joint14.liw" "skinCluster1.lw[8]";
connectAttr "joint15.liw" "skinCluster1.lw[9]";
connectAttr "joint16.liw" "skinCluster1.lw[10]";
connectAttr "LUWing.obcc" "skinCluster1.ifcl[0]";
connectAttr "joint2.obcc" "skinCluster1.ifcl[1]";
connectAttr "joint3.obcc" "skinCluster1.ifcl[2]";
connectAttr "joint4.obcc" "skinCluster1.ifcl[3]";
connectAttr "joint5.obcc" "skinCluster1.ifcl[4]";
connectAttr "joint11.obcc" "skinCluster1.ifcl[5]";
connectAttr "joint12.obcc" "skinCluster1.ifcl[6]";
connectAttr "joint13.obcc" "skinCluster1.ifcl[7]";
connectAttr "joint14.obcc" "skinCluster1.ifcl[8]";
connectAttr "joint15.obcc" "skinCluster1.ifcl[9]";
connectAttr "joint16.obcc" "skinCluster1.ifcl[10]";
connectAttr "groupParts2.og" "tweak1.ip[0].ig";
connectAttr "groupId2.id" "tweak1.ip[0].gi";
connectAttr "skinCluster1GroupId.msg" "skinCluster1Set.gn" -na;
connectAttr "loftedSurfaceShape1.iog.og[8]" "skinCluster1Set.dsm" -na;
connectAttr "skinCluster1.msg" "skinCluster1Set.ub[0]";
connectAttr "tweak1.og[0]" "skinCluster1GroupParts.ig";
connectAttr "skinCluster1GroupId.id" "skinCluster1GroupParts.gi";
connectAttr "groupId2.msg" "tweakSet1.gn" -na;
connectAttr "loftedSurfaceShape1.iog.og[9]" "tweakSet1.dsm" -na;
connectAttr "tweak1.msg" "tweakSet1.ub[0]";
connectAttr "loftedSurfaceShape1Orig.w" "groupParts2.ig";
connectAttr "groupId2.id" "groupParts2.gi";
connectAttr "LUWing.msg" "bindPose9.m[0]";
connectAttr "joint2.msg" "bindPose9.m[1]";
connectAttr "joint3.msg" "bindPose9.m[2]";
connectAttr "joint4.msg" "bindPose9.m[3]";
connectAttr "joint5.msg" "bindPose9.m[4]";
connectAttr "joint11.msg" "bindPose9.m[5]";
connectAttr "joint12.msg" "bindPose9.m[6]";
connectAttr "joint13.msg" "bindPose9.m[7]";
connectAttr "joint14.msg" "bindPose9.m[8]";
connectAttr "joint15.msg" "bindPose9.m[9]";
connectAttr "joint16.msg" "bindPose9.m[10]";
connectAttr "bindPose9.w" "bindPose9.p[0]";
connectAttr "bindPose9.m[0]" "bindPose9.p[1]";
connectAttr "bindPose9.m[1]" "bindPose9.p[2]";
connectAttr "bindPose9.m[2]" "bindPose9.p[3]";
connectAttr "bindPose9.m[3]" "bindPose9.p[4]";
connectAttr "bindPose9.m[3]" "bindPose9.p[5]";
connectAttr "bindPose9.m[5]" "bindPose9.p[6]";
connectAttr "bindPose9.m[2]" "bindPose9.p[7]";
connectAttr "bindPose9.m[7]" "bindPose9.p[8]";
connectAttr "bindPose9.m[1]" "bindPose9.p[9]";
connectAttr "bindPose9.m[9]" "bindPose9.p[10]";
connectAttr "LUWing.bps" "bindPose9.wm[0]";
connectAttr "joint2.bps" "bindPose9.wm[1]";
connectAttr "joint3.bps" "bindPose9.wm[2]";
connectAttr "joint4.bps" "bindPose9.wm[3]";
connectAttr "joint5.bps" "bindPose9.wm[4]";
connectAttr "joint11.bps" "bindPose9.wm[5]";
connectAttr "joint12.bps" "bindPose9.wm[6]";
connectAttr "joint13.bps" "bindPose9.wm[7]";
connectAttr "joint14.bps" "bindPose9.wm[8]";
connectAttr "joint15.bps" "bindPose9.wm[9]";
connectAttr "joint16.bps" "bindPose9.wm[10]";
connectAttr "skinCluster2GroupParts.og" "skinCluster2.ip[0].ig";
connectAttr "skinCluster2GroupId.id" "skinCluster2.ip[0].gi";
connectAttr "LUWing.wm" "skinCluster2.ma[0]";
connectAttr "joint2.wm" "skinCluster2.ma[1]";
connectAttr "joint3.wm" "skinCluster2.ma[2]";
connectAttr "joint4.wm" "skinCluster2.ma[3]";
connectAttr "joint5.wm" "skinCluster2.ma[4]";
connectAttr "joint11.wm" "skinCluster2.ma[5]";
connectAttr "joint12.wm" "skinCluster2.ma[6]";
connectAttr "joint13.wm" "skinCluster2.ma[7]";
connectAttr "joint14.wm" "skinCluster2.ma[8]";
connectAttr "joint15.wm" "skinCluster2.ma[9]";
connectAttr "joint16.wm" "skinCluster2.ma[10]";
connectAttr "LUWing.liw" "skinCluster2.lw[0]";
connectAttr "joint2.liw" "skinCluster2.lw[1]";
connectAttr "joint3.liw" "skinCluster2.lw[2]";
connectAttr "joint4.liw" "skinCluster2.lw[3]";
connectAttr "joint5.liw" "skinCluster2.lw[4]";
connectAttr "joint11.liw" "skinCluster2.lw[5]";
connectAttr "joint12.liw" "skinCluster2.lw[6]";
connectAttr "joint13.liw" "skinCluster2.lw[7]";
connectAttr "joint14.liw" "skinCluster2.lw[8]";
connectAttr "joint15.liw" "skinCluster2.lw[9]";
connectAttr "joint16.liw" "skinCluster2.lw[10]";
connectAttr "LUWing.obcc" "skinCluster2.ifcl[0]";
connectAttr "joint2.obcc" "skinCluster2.ifcl[1]";
connectAttr "joint3.obcc" "skinCluster2.ifcl[2]";
connectAttr "joint4.obcc" "skinCluster2.ifcl[3]";
connectAttr "joint5.obcc" "skinCluster2.ifcl[4]";
connectAttr "joint11.obcc" "skinCluster2.ifcl[5]";
connectAttr "joint12.obcc" "skinCluster2.ifcl[6]";
connectAttr "joint13.obcc" "skinCluster2.ifcl[7]";
connectAttr "joint14.obcc" "skinCluster2.ifcl[8]";
connectAttr "joint15.obcc" "skinCluster2.ifcl[9]";
connectAttr "joint16.obcc" "skinCluster2.ifcl[10]";
connectAttr "bindPose9.msg" "skinCluster2.bp";
connectAttr "groupParts4.og" "tweak2.ip[0].ig";
connectAttr "groupId4.id" "tweak2.ip[0].gi";
connectAttr "skinCluster2GroupId.msg" "skinCluster2Set.gn" -na;
connectAttr "loftedSurfaceShape5.iog.og[6]" "skinCluster2Set.dsm" -na;
connectAttr "skinCluster2.msg" "skinCluster2Set.ub[0]";
connectAttr "tweak2.og[0]" "skinCluster2GroupParts.ig";
connectAttr "skinCluster2GroupId.id" "skinCluster2GroupParts.gi";
connectAttr "groupId4.msg" "tweakSet2.gn" -na;
connectAttr "loftedSurfaceShape5.iog.og[7]" "tweakSet2.dsm" -na;
connectAttr "tweak2.msg" "tweakSet2.ub[0]";
connectAttr "loftedSurfaceShape5Orig.w" "groupParts4.ig";
connectAttr "groupId4.id" "groupParts4.gi";
connectAttr "skinCluster3GroupParts.og" "skinCluster3.ip[0].ig";
connectAttr "skinCluster3GroupId.id" "skinCluster3.ip[0].gi";
connectAttr "bindPose10.msg" "skinCluster3.bp";
connectAttr "LLWing.wm" "skinCluster3.ma[0]";
connectAttr "joint7.wm" "skinCluster3.ma[1]";
connectAttr "joint8.wm" "skinCluster3.ma[2]";
connectAttr "joint9.wm" "skinCluster3.ma[3]";
connectAttr "joint10.wm" "skinCluster3.ma[4]";
connectAttr "joint21.wm" "skinCluster3.ma[5]";
connectAttr "joint22.wm" "skinCluster3.ma[6]";
connectAttr "joint19.wm" "skinCluster3.ma[7]";
connectAttr "joint20.wm" "skinCluster3.ma[8]";
connectAttr "joint17.wm" "skinCluster3.ma[9]";
connectAttr "joint18.wm" "skinCluster3.ma[10]";
connectAttr "LLWing.liw" "skinCluster3.lw[0]";
connectAttr "joint7.liw" "skinCluster3.lw[1]";
connectAttr "joint8.liw" "skinCluster3.lw[2]";
connectAttr "joint9.liw" "skinCluster3.lw[3]";
connectAttr "joint10.liw" "skinCluster3.lw[4]";
connectAttr "joint21.liw" "skinCluster3.lw[5]";
connectAttr "joint22.liw" "skinCluster3.lw[6]";
connectAttr "joint19.liw" "skinCluster3.lw[7]";
connectAttr "joint20.liw" "skinCluster3.lw[8]";
connectAttr "joint17.liw" "skinCluster3.lw[9]";
connectAttr "joint18.liw" "skinCluster3.lw[10]";
connectAttr "LLWing.obcc" "skinCluster3.ifcl[0]";
connectAttr "joint7.obcc" "skinCluster3.ifcl[1]";
connectAttr "joint8.obcc" "skinCluster3.ifcl[2]";
connectAttr "joint9.obcc" "skinCluster3.ifcl[3]";
connectAttr "joint10.obcc" "skinCluster3.ifcl[4]";
connectAttr "joint21.obcc" "skinCluster3.ifcl[5]";
connectAttr "joint22.obcc" "skinCluster3.ifcl[6]";
connectAttr "joint19.obcc" "skinCluster3.ifcl[7]";
connectAttr "joint20.obcc" "skinCluster3.ifcl[8]";
connectAttr "joint17.obcc" "skinCluster3.ifcl[9]";
connectAttr "joint18.obcc" "skinCluster3.ifcl[10]";
connectAttr "groupParts6.og" "tweak3.ip[0].ig";
connectAttr "groupId6.id" "tweak3.ip[0].gi";
connectAttr "skinCluster3GroupId.msg" "skinCluster3Set.gn" -na;
connectAttr "loftedSurfaceShape2.iog.og[6]" "skinCluster3Set.dsm" -na;
connectAttr "skinCluster3.msg" "skinCluster3Set.ub[0]";
connectAttr "tweak3.og[0]" "skinCluster3GroupParts.ig";
connectAttr "skinCluster3GroupId.id" "skinCluster3GroupParts.gi";
connectAttr "groupId6.msg" "tweakSet3.gn" -na;
connectAttr "loftedSurfaceShape2.iog.og[7]" "tweakSet3.dsm" -na;
connectAttr "tweak3.msg" "tweakSet3.ub[0]";
connectAttr "loftedSurfaceShape2Orig.w" "groupParts6.ig";
connectAttr "groupId6.id" "groupParts6.gi";
connectAttr "LLWing.msg" "bindPose10.m[0]";
connectAttr "joint7.msg" "bindPose10.m[1]";
connectAttr "joint8.msg" "bindPose10.m[2]";
connectAttr "joint9.msg" "bindPose10.m[3]";
connectAttr "joint10.msg" "bindPose10.m[4]";
connectAttr "joint21.msg" "bindPose10.m[5]";
connectAttr "joint22.msg" "bindPose10.m[6]";
connectAttr "joint19.msg" "bindPose10.m[7]";
connectAttr "joint20.msg" "bindPose10.m[8]";
connectAttr "joint17.msg" "bindPose10.m[9]";
connectAttr "joint18.msg" "bindPose10.m[10]";
connectAttr "bindPose10.w" "bindPose10.p[0]";
connectAttr "bindPose10.m[0]" "bindPose10.p[1]";
connectAttr "bindPose10.m[1]" "bindPose10.p[2]";
connectAttr "bindPose10.m[2]" "bindPose10.p[3]";
connectAttr "bindPose10.m[3]" "bindPose10.p[4]";
connectAttr "bindPose10.m[3]" "bindPose10.p[5]";
connectAttr "bindPose10.m[5]" "bindPose10.p[6]";
connectAttr "bindPose10.m[2]" "bindPose10.p[7]";
connectAttr "bindPose10.m[7]" "bindPose10.p[8]";
connectAttr "bindPose10.m[1]" "bindPose10.p[9]";
connectAttr "bindPose10.m[9]" "bindPose10.p[10]";
connectAttr "LLWing.bps" "bindPose10.wm[0]";
connectAttr "joint7.bps" "bindPose10.wm[1]";
connectAttr "joint8.bps" "bindPose10.wm[2]";
connectAttr "joint9.bps" "bindPose10.wm[3]";
connectAttr "joint10.bps" "bindPose10.wm[4]";
connectAttr "joint21.bps" "bindPose10.wm[5]";
connectAttr "joint22.bps" "bindPose10.wm[6]";
connectAttr "joint19.bps" "bindPose10.wm[7]";
connectAttr "joint20.bps" "bindPose10.wm[8]";
connectAttr "joint17.bps" "bindPose10.wm[9]";
connectAttr "joint18.bps" "bindPose10.wm[10]";
connectAttr "skinCluster4GroupParts.og" "skinCluster4.ip[0].ig";
connectAttr "skinCluster4GroupId.id" "skinCluster4.ip[0].gi";
connectAttr "LLWing.wm" "skinCluster4.ma[0]";
connectAttr "joint7.wm" "skinCluster4.ma[1]";
connectAttr "joint8.wm" "skinCluster4.ma[2]";
connectAttr "joint9.wm" "skinCluster4.ma[3]";
connectAttr "joint10.wm" "skinCluster4.ma[4]";
connectAttr "joint21.wm" "skinCluster4.ma[5]";
connectAttr "joint22.wm" "skinCluster4.ma[6]";
connectAttr "joint19.wm" "skinCluster4.ma[7]";
connectAttr "joint20.wm" "skinCluster4.ma[8]";
connectAttr "joint17.wm" "skinCluster4.ma[9]";
connectAttr "joint18.wm" "skinCluster4.ma[10]";
connectAttr "LLWing.liw" "skinCluster4.lw[0]";
connectAttr "joint7.liw" "skinCluster4.lw[1]";
connectAttr "joint8.liw" "skinCluster4.lw[2]";
connectAttr "joint9.liw" "skinCluster4.lw[3]";
connectAttr "joint10.liw" "skinCluster4.lw[4]";
connectAttr "joint21.liw" "skinCluster4.lw[5]";
connectAttr "joint22.liw" "skinCluster4.lw[6]";
connectAttr "joint19.liw" "skinCluster4.lw[7]";
connectAttr "joint20.liw" "skinCluster4.lw[8]";
connectAttr "joint17.liw" "skinCluster4.lw[9]";
connectAttr "joint18.liw" "skinCluster4.lw[10]";
connectAttr "LLWing.obcc" "skinCluster4.ifcl[0]";
connectAttr "joint7.obcc" "skinCluster4.ifcl[1]";
connectAttr "joint8.obcc" "skinCluster4.ifcl[2]";
connectAttr "joint9.obcc" "skinCluster4.ifcl[3]";
connectAttr "joint10.obcc" "skinCluster4.ifcl[4]";
connectAttr "joint21.obcc" "skinCluster4.ifcl[5]";
connectAttr "joint22.obcc" "skinCluster4.ifcl[6]";
connectAttr "joint19.obcc" "skinCluster4.ifcl[7]";
connectAttr "joint20.obcc" "skinCluster4.ifcl[8]";
connectAttr "joint17.obcc" "skinCluster4.ifcl[9]";
connectAttr "joint18.obcc" "skinCluster4.ifcl[10]";
connectAttr "bindPose10.msg" "skinCluster4.bp";
connectAttr "groupParts8.og" "tweak4.ip[0].ig";
connectAttr "groupId8.id" "tweak4.ip[0].gi";
connectAttr "skinCluster4GroupId.msg" "skinCluster4Set.gn" -na;
connectAttr "loftedSurfaceShape6.iog.og[4]" "skinCluster4Set.dsm" -na;
connectAttr "skinCluster4.msg" "skinCluster4Set.ub[0]";
connectAttr "tweak4.og[0]" "skinCluster4GroupParts.ig";
connectAttr "skinCluster4GroupId.id" "skinCluster4GroupParts.gi";
connectAttr "groupId8.msg" "tweakSet4.gn" -na;
connectAttr "loftedSurfaceShape6.iog.og[5]" "tweakSet4.dsm" -na;
connectAttr "tweak4.msg" "tweakSet4.ub[0]";
connectAttr "loftedSurfaceShape6Orig.w" "groupParts8.ig";
connectAttr "groupId8.id" "groupParts8.gi";
connectAttr "skinCluster5GroupParts.og" "skinCluster5.ip[0].ig";
connectAttr "skinCluster5GroupId.id" "skinCluster5.ip[0].gi";
connectAttr "bindPose11.msg" "skinCluster5.bp";
connectAttr "RUWing.wm" "skinCluster5.ma[0]";
connectAttr "joint28.wm" "skinCluster5.ma[1]";
connectAttr "joint29.wm" "skinCluster5.ma[2]";
connectAttr "joint30.wm" "skinCluster5.ma[3]";
connectAttr "joint31.wm" "skinCluster5.ma[4]";
connectAttr "joint32.wm" "skinCluster5.ma[5]";
connectAttr "joint33.wm" "skinCluster5.ma[6]";
connectAttr "joint34.wm" "skinCluster5.ma[7]";
connectAttr "joint35.wm" "skinCluster5.ma[8]";
connectAttr "joint36.wm" "skinCluster5.ma[9]";
connectAttr "joint37.wm" "skinCluster5.ma[10]";
connectAttr "RUWing.liw" "skinCluster5.lw[0]";
connectAttr "joint28.liw" "skinCluster5.lw[1]";
connectAttr "joint29.liw" "skinCluster5.lw[2]";
connectAttr "joint30.liw" "skinCluster5.lw[3]";
connectAttr "joint31.liw" "skinCluster5.lw[4]";
connectAttr "joint32.liw" "skinCluster5.lw[5]";
connectAttr "joint33.liw" "skinCluster5.lw[6]";
connectAttr "joint34.liw" "skinCluster5.lw[7]";
connectAttr "joint35.liw" "skinCluster5.lw[8]";
connectAttr "joint36.liw" "skinCluster5.lw[9]";
connectAttr "joint37.liw" "skinCluster5.lw[10]";
connectAttr "RUWing.obcc" "skinCluster5.ifcl[0]";
connectAttr "joint28.obcc" "skinCluster5.ifcl[1]";
connectAttr "joint29.obcc" "skinCluster5.ifcl[2]";
connectAttr "joint30.obcc" "skinCluster5.ifcl[3]";
connectAttr "joint31.obcc" "skinCluster5.ifcl[4]";
connectAttr "joint32.obcc" "skinCluster5.ifcl[5]";
connectAttr "joint33.obcc" "skinCluster5.ifcl[6]";
connectAttr "joint34.obcc" "skinCluster5.ifcl[7]";
connectAttr "joint35.obcc" "skinCluster5.ifcl[8]";
connectAttr "joint36.obcc" "skinCluster5.ifcl[9]";
connectAttr "joint37.obcc" "skinCluster5.ifcl[10]";
connectAttr "groupParts10.og" "tweak5.ip[0].ig";
connectAttr "groupId10.id" "tweak5.ip[0].gi";
connectAttr "skinCluster5GroupId.msg" "skinCluster5Set.gn" -na;
connectAttr "loftedSurfaceShape4.iog.og[8]" "skinCluster5Set.dsm" -na;
connectAttr "skinCluster5.msg" "skinCluster5Set.ub[0]";
connectAttr "tweak5.og[0]" "skinCluster5GroupParts.ig";
connectAttr "skinCluster5GroupId.id" "skinCluster5GroupParts.gi";
connectAttr "groupId10.msg" "tweakSet5.gn" -na;
connectAttr "loftedSurfaceShape4.iog.og[9]" "tweakSet5.dsm" -na;
connectAttr "tweak5.msg" "tweakSet5.ub[0]";
connectAttr "loftedSurfaceShape4Orig.w" "groupParts10.ig";
connectAttr "groupId10.id" "groupParts10.gi";
connectAttr "RUWing.msg" "bindPose11.m[0]";
connectAttr "joint28.msg" "bindPose11.m[1]";
connectAttr "joint29.msg" "bindPose11.m[2]";
connectAttr "joint30.msg" "bindPose11.m[3]";
connectAttr "joint31.msg" "bindPose11.m[4]";
connectAttr "joint32.msg" "bindPose11.m[5]";
connectAttr "joint33.msg" "bindPose11.m[6]";
connectAttr "joint34.msg" "bindPose11.m[7]";
connectAttr "joint35.msg" "bindPose11.m[8]";
connectAttr "joint36.msg" "bindPose11.m[9]";
connectAttr "joint37.msg" "bindPose11.m[10]";
connectAttr "bindPose11.w" "bindPose11.p[0]";
connectAttr "bindPose11.m[0]" "bindPose11.p[1]";
connectAttr "bindPose11.m[1]" "bindPose11.p[2]";
connectAttr "bindPose11.m[2]" "bindPose11.p[3]";
connectAttr "bindPose11.m[3]" "bindPose11.p[4]";
connectAttr "bindPose11.m[3]" "bindPose11.p[5]";
connectAttr "bindPose11.m[5]" "bindPose11.p[6]";
connectAttr "bindPose11.m[2]" "bindPose11.p[7]";
connectAttr "bindPose11.m[7]" "bindPose11.p[8]";
connectAttr "bindPose11.m[1]" "bindPose11.p[9]";
connectAttr "bindPose11.m[9]" "bindPose11.p[10]";
connectAttr "RUWing.bps" "bindPose11.wm[0]";
connectAttr "joint28.bps" "bindPose11.wm[1]";
connectAttr "joint29.bps" "bindPose11.wm[2]";
connectAttr "joint30.bps" "bindPose11.wm[3]";
connectAttr "joint31.bps" "bindPose11.wm[4]";
connectAttr "joint32.bps" "bindPose11.wm[5]";
connectAttr "joint33.bps" "bindPose11.wm[6]";
connectAttr "joint34.bps" "bindPose11.wm[7]";
connectAttr "joint35.bps" "bindPose11.wm[8]";
connectAttr "joint36.bps" "bindPose11.wm[9]";
connectAttr "joint37.bps" "bindPose11.wm[10]";
connectAttr "skinCluster6GroupParts.og" "skinCluster6.ip[0].ig";
connectAttr "skinCluster6GroupId.id" "skinCluster6.ip[0].gi";
connectAttr "RUWing.wm" "skinCluster6.ma[0]";
connectAttr "joint28.wm" "skinCluster6.ma[1]";
connectAttr "joint29.wm" "skinCluster6.ma[2]";
connectAttr "joint30.wm" "skinCluster6.ma[3]";
connectAttr "joint31.wm" "skinCluster6.ma[4]";
connectAttr "joint32.wm" "skinCluster6.ma[5]";
connectAttr "joint33.wm" "skinCluster6.ma[6]";
connectAttr "joint34.wm" "skinCluster6.ma[7]";
connectAttr "joint35.wm" "skinCluster6.ma[8]";
connectAttr "joint36.wm" "skinCluster6.ma[9]";
connectAttr "joint37.wm" "skinCluster6.ma[10]";
connectAttr "RUWing.liw" "skinCluster6.lw[0]";
connectAttr "joint28.liw" "skinCluster6.lw[1]";
connectAttr "joint29.liw" "skinCluster6.lw[2]";
connectAttr "joint30.liw" "skinCluster6.lw[3]";
connectAttr "joint31.liw" "skinCluster6.lw[4]";
connectAttr "joint32.liw" "skinCluster6.lw[5]";
connectAttr "joint33.liw" "skinCluster6.lw[6]";
connectAttr "joint34.liw" "skinCluster6.lw[7]";
connectAttr "joint35.liw" "skinCluster6.lw[8]";
connectAttr "joint36.liw" "skinCluster6.lw[9]";
connectAttr "joint37.liw" "skinCluster6.lw[10]";
connectAttr "RUWing.obcc" "skinCluster6.ifcl[0]";
connectAttr "joint28.obcc" "skinCluster6.ifcl[1]";
connectAttr "joint29.obcc" "skinCluster6.ifcl[2]";
connectAttr "joint30.obcc" "skinCluster6.ifcl[3]";
connectAttr "joint31.obcc" "skinCluster6.ifcl[4]";
connectAttr "joint32.obcc" "skinCluster6.ifcl[5]";
connectAttr "joint33.obcc" "skinCluster6.ifcl[6]";
connectAttr "joint34.obcc" "skinCluster6.ifcl[7]";
connectAttr "joint35.obcc" "skinCluster6.ifcl[8]";
connectAttr "joint36.obcc" "skinCluster6.ifcl[9]";
connectAttr "joint37.obcc" "skinCluster6.ifcl[10]";
connectAttr "bindPose11.msg" "skinCluster6.bp";
connectAttr "groupParts12.og" "tweak6.ip[0].ig";
connectAttr "groupId12.id" "tweak6.ip[0].gi";
connectAttr "skinCluster6GroupId.msg" "skinCluster6Set.gn" -na;
connectAttr "loftedSurfaceShape7.iog.og[6]" "skinCluster6Set.dsm" -na;
connectAttr "skinCluster6.msg" "skinCluster6Set.ub[0]";
connectAttr "tweak6.og[0]" "skinCluster6GroupParts.ig";
connectAttr "skinCluster6GroupId.id" "skinCluster6GroupParts.gi";
connectAttr "groupId12.msg" "tweakSet6.gn" -na;
connectAttr "loftedSurfaceShape7.iog.og[7]" "tweakSet6.dsm" -na;
connectAttr "tweak6.msg" "tweakSet6.ub[0]";
connectAttr "loftedSurfaceShape7Orig.w" "groupParts12.ig";
connectAttr "groupId12.id" "groupParts12.gi";
connectAttr "skinCluster7GroupParts.og" "skinCluster7.ip[0].ig";
connectAttr "skinCluster7GroupId.id" "skinCluster7.ip[0].gi";
connectAttr "bindPose12.msg" "skinCluster7.bp";
connectAttr "RLWing.wm" "skinCluster7.ma[0]";
connectAttr "joint39.wm" "skinCluster7.ma[1]";
connectAttr "joint40.wm" "skinCluster7.ma[2]";
connectAttr "joint41.wm" "skinCluster7.ma[3]";
connectAttr "joint42.wm" "skinCluster7.ma[4]";
connectAttr "joint43.wm" "skinCluster7.ma[5]";
connectAttr "joint44.wm" "skinCluster7.ma[6]";
connectAttr "joint45.wm" "skinCluster7.ma[7]";
connectAttr "joint46.wm" "skinCluster7.ma[8]";
connectAttr "joint47.wm" "skinCluster7.ma[9]";
connectAttr "joint48.wm" "skinCluster7.ma[10]";
connectAttr "RLWing.liw" "skinCluster7.lw[0]";
connectAttr "joint39.liw" "skinCluster7.lw[1]";
connectAttr "joint40.liw" "skinCluster7.lw[2]";
connectAttr "joint41.liw" "skinCluster7.lw[3]";
connectAttr "joint42.liw" "skinCluster7.lw[4]";
connectAttr "joint43.liw" "skinCluster7.lw[5]";
connectAttr "joint44.liw" "skinCluster7.lw[6]";
connectAttr "joint45.liw" "skinCluster7.lw[7]";
connectAttr "joint46.liw" "skinCluster7.lw[8]";
connectAttr "joint47.liw" "skinCluster7.lw[9]";
connectAttr "joint48.liw" "skinCluster7.lw[10]";
connectAttr "RLWing.obcc" "skinCluster7.ifcl[0]";
connectAttr "joint39.obcc" "skinCluster7.ifcl[1]";
connectAttr "joint40.obcc" "skinCluster7.ifcl[2]";
connectAttr "joint41.obcc" "skinCluster7.ifcl[3]";
connectAttr "joint42.obcc" "skinCluster7.ifcl[4]";
connectAttr "joint43.obcc" "skinCluster7.ifcl[5]";
connectAttr "joint44.obcc" "skinCluster7.ifcl[6]";
connectAttr "joint45.obcc" "skinCluster7.ifcl[7]";
connectAttr "joint46.obcc" "skinCluster7.ifcl[8]";
connectAttr "joint47.obcc" "skinCluster7.ifcl[9]";
connectAttr "joint48.obcc" "skinCluster7.ifcl[10]";
connectAttr "groupParts14.og" "tweak7.ip[0].ig";
connectAttr "groupId14.id" "tweak7.ip[0].gi";
connectAttr "skinCluster7GroupId.msg" "skinCluster7Set.gn" -na;
connectAttr "loftedSurfaceShape3.iog.og[8]" "skinCluster7Set.dsm" -na;
connectAttr "skinCluster7.msg" "skinCluster7Set.ub[0]";
connectAttr "tweak7.og[0]" "skinCluster7GroupParts.ig";
connectAttr "skinCluster7GroupId.id" "skinCluster7GroupParts.gi";
connectAttr "groupId14.msg" "tweakSet7.gn" -na;
connectAttr "loftedSurfaceShape3.iog.og[9]" "tweakSet7.dsm" -na;
connectAttr "tweak7.msg" "tweakSet7.ub[0]";
connectAttr "loftedSurfaceShape3Orig.w" "groupParts14.ig";
connectAttr "groupId14.id" "groupParts14.gi";
connectAttr "RLWing.msg" "bindPose12.m[0]";
connectAttr "joint39.msg" "bindPose12.m[1]";
connectAttr "joint40.msg" "bindPose12.m[2]";
connectAttr "joint41.msg" "bindPose12.m[3]";
connectAttr "joint42.msg" "bindPose12.m[4]";
connectAttr "joint43.msg" "bindPose12.m[5]";
connectAttr "joint44.msg" "bindPose12.m[6]";
connectAttr "joint45.msg" "bindPose12.m[7]";
connectAttr "joint46.msg" "bindPose12.m[8]";
connectAttr "joint47.msg" "bindPose12.m[9]";
connectAttr "joint48.msg" "bindPose12.m[10]";
connectAttr "bindPose12.w" "bindPose12.p[0]";
connectAttr "bindPose12.m[0]" "bindPose12.p[1]";
connectAttr "bindPose12.m[1]" "bindPose12.p[2]";
connectAttr "bindPose12.m[2]" "bindPose12.p[3]";
connectAttr "bindPose12.m[3]" "bindPose12.p[4]";
connectAttr "bindPose12.m[3]" "bindPose12.p[5]";
connectAttr "bindPose12.m[5]" "bindPose12.p[6]";
connectAttr "bindPose12.m[2]" "bindPose12.p[7]";
connectAttr "bindPose12.m[7]" "bindPose12.p[8]";
connectAttr "bindPose12.m[1]" "bindPose12.p[9]";
connectAttr "bindPose12.m[9]" "bindPose12.p[10]";
connectAttr "RLWing.bps" "bindPose12.wm[0]";
connectAttr "joint39.bps" "bindPose12.wm[1]";
connectAttr "joint40.bps" "bindPose12.wm[2]";
connectAttr "joint41.bps" "bindPose12.wm[3]";
connectAttr "joint42.bps" "bindPose12.wm[4]";
connectAttr "joint43.bps" "bindPose12.wm[5]";
connectAttr "joint44.bps" "bindPose12.wm[6]";
connectAttr "joint45.bps" "bindPose12.wm[7]";
connectAttr "joint46.bps" "bindPose12.wm[8]";
connectAttr "joint47.bps" "bindPose12.wm[9]";
connectAttr "joint48.bps" "bindPose12.wm[10]";
connectAttr "skinCluster8GroupParts.og" "skinCluster8.ip[0].ig";
connectAttr "skinCluster8GroupId.id" "skinCluster8.ip[0].gi";
connectAttr "RLWing.wm" "skinCluster8.ma[0]";
connectAttr "joint39.wm" "skinCluster8.ma[1]";
connectAttr "joint40.wm" "skinCluster8.ma[2]";
connectAttr "joint41.wm" "skinCluster8.ma[3]";
connectAttr "joint42.wm" "skinCluster8.ma[4]";
connectAttr "joint43.wm" "skinCluster8.ma[5]";
connectAttr "joint44.wm" "skinCluster8.ma[6]";
connectAttr "joint45.wm" "skinCluster8.ma[7]";
connectAttr "joint46.wm" "skinCluster8.ma[8]";
connectAttr "joint47.wm" "skinCluster8.ma[9]";
connectAttr "joint48.wm" "skinCluster8.ma[10]";
connectAttr "RLWing.liw" "skinCluster8.lw[0]";
connectAttr "joint39.liw" "skinCluster8.lw[1]";
connectAttr "joint40.liw" "skinCluster8.lw[2]";
connectAttr "joint41.liw" "skinCluster8.lw[3]";
connectAttr "joint42.liw" "skinCluster8.lw[4]";
connectAttr "joint43.liw" "skinCluster8.lw[5]";
connectAttr "joint44.liw" "skinCluster8.lw[6]";
connectAttr "joint45.liw" "skinCluster8.lw[7]";
connectAttr "joint46.liw" "skinCluster8.lw[8]";
connectAttr "joint47.liw" "skinCluster8.lw[9]";
connectAttr "joint48.liw" "skinCluster8.lw[10]";
connectAttr "RLWing.obcc" "skinCluster8.ifcl[0]";
connectAttr "joint39.obcc" "skinCluster8.ifcl[1]";
connectAttr "joint40.obcc" "skinCluster8.ifcl[2]";
connectAttr "joint41.obcc" "skinCluster8.ifcl[3]";
connectAttr "joint42.obcc" "skinCluster8.ifcl[4]";
connectAttr "joint43.obcc" "skinCluster8.ifcl[5]";
connectAttr "joint44.obcc" "skinCluster8.ifcl[6]";
connectAttr "joint45.obcc" "skinCluster8.ifcl[7]";
connectAttr "joint46.obcc" "skinCluster8.ifcl[8]";
connectAttr "joint47.obcc" "skinCluster8.ifcl[9]";
connectAttr "joint48.obcc" "skinCluster8.ifcl[10]";
connectAttr "bindPose12.msg" "skinCluster8.bp";
connectAttr "groupParts16.og" "tweak8.ip[0].ig";
connectAttr "groupId16.id" "tweak8.ip[0].gi";
connectAttr "skinCluster8GroupId.msg" "skinCluster8Set.gn" -na;
connectAttr "loftedSurfaceShape8.iog.og[6]" "skinCluster8Set.dsm" -na;
connectAttr "skinCluster8.msg" "skinCluster8Set.ub[0]";
connectAttr "tweak8.og[0]" "skinCluster8GroupParts.ig";
connectAttr "skinCluster8GroupId.id" "skinCluster8GroupParts.gi";
connectAttr "groupId16.msg" "tweakSet8.gn" -na;
connectAttr "loftedSurfaceShape8.iog.og[7]" "tweakSet8.dsm" -na;
connectAttr "tweak8.msg" "tweakSet8.ub[0]";
connectAttr "loftedSurfaceShape8Orig.w" "groupParts16.ig";
connectAttr "groupId16.id" "groupParts16.gi";
connectAttr "skinCluster2.og[0]" "polyNormal1.ip";
connectAttr "skinCluster4.og[0]" "polyNormal2.ip";
connectAttr "skinCluster6.og[0]" "polyNormal3.ip";
connectAttr "skinCluster8.og[0]" "polyNormal4.ip";
connectAttr "lambert2SG.pa" ":renderPartition.st" -na;
connectAttr "lambert3SG.pa" ":renderPartition.st" -na;
connectAttr "lambert2.msg" ":defaultShaderList1.s" -na;
connectAttr "lambert3.msg" ":defaultShaderList1.s" -na;
connectAttr "file1.msg" ":defaultTextureList1.tx" -na;
connectAttr "file2.msg" ":defaultTextureList1.tx" -na;
connectAttr "place2dTexture1.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
// End of wingExport.ma
