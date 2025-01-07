create_project vivado_sim D:/AGH_Files/Eng_Proj/Matlab_float_model/fixed_model/hdl_prj/hdlsrc/hdl_model_fixed/ -part xc7z010clg400-1 -force
source D:/AGH_Files/Eng_Proj/Matlab_float_model/fixed_model/hdl_prj/hdlsrc/hdl_model_fixed/my_FFT_tb_compile.tcl
add_files -fileset sim_1 -norecurse D:/AGH_Files/Eng_Proj/Matlab_float_model/fixed_model/hdl_prj/hdlsrc/hdl_model_fixed/Data_out_im_expected.dat
add_files -fileset sim_1 -norecurse D:/AGH_Files/Eng_Proj/Matlab_float_model/fixed_model/hdl_prj/hdlsrc/hdl_model_fixed/Data_out_re_expected.dat
add_files -fileset sim_1 -norecurse D:/AGH_Files/Eng_Proj/Matlab_float_model/fixed_model/hdl_prj/hdlsrc/hdl_model_fixed/data_in.dat
add_files -fileset sim_1 -norecurse D:/AGH_Files/Eng_Proj/Matlab_float_model/fixed_model/hdl_prj/hdlsrc/hdl_model_fixed/ready_expected.dat
add_files -fileset sim_1 -norecurse D:/AGH_Files/Eng_Proj/Matlab_float_model/fixed_model/hdl_prj/hdlsrc/hdl_model_fixed/valid_in.dat
add_files -fileset sim_1 -norecurse D:/AGH_Files/Eng_Proj/Matlab_float_model/fixed_model/hdl_prj/hdlsrc/hdl_model_fixed/valid_out_expected.dat
update_compile_order -fileset sim_1
source D:/AGH_Files/Eng_Proj/Matlab_float_model/fixed_model/hdl_prj/hdlsrc/hdl_model_fixed/my_FFT_tb_sim.tcl
