	.text	0x00400000
	.globl	main
	la	$28, _heap_
	la	$11, _aaMSSPa_210_
# was:	la	_aaMSSPa_210__addr, _aaMSSPa_210_
	ori	$10, $0, 18
# was:	ori	_aaMSSPa_210__init, 0, 18
	sw	$10, 0($11)
# was:	sw	_aaMSSPa_210__init, 0(_aaMSSPa_210__addr)
	la	$11, _aaa__st_59_
# was:	la	_aaa__st_59__addr, _aaa__st_59_
	ori	$10, $0, 3
# was:	ori	_aaa__st_59__init, 0, 3
	sw	$10, 0($11)
# was:	sw	_aaa__st_59__init, 0(_aaa__st_59__addr)
	la	$11, _aaa__st_44_
# was:	la	_aaa__st_44__addr, _aaa__st_44_
	ori	$10, $0, 3
# was:	ori	_aaa__st_44__init, 0, 3
	sw	$10, 0($11)
# was:	sw	_aaa__st_44__init, 0(_aaa__st_44__addr)
	la	$11, _a__str__14_
# was:	la	_a__str__14__addr, _a__str__14_
	ori	$10, $0, 1
# was:	ori	_a__str__14__init, 0, 1
	sw	$10, 0($11)
# was:	sw	_a__str__14__init, 0(_a__str__14__addr)
	la	$11, _aa__str_10_
# was:	la	_aa__str_10__addr, _aa__str_10_
	ori	$10, $0, 2
# was:	ori	_aa__str_10__init, 0, 2
	sw	$10, 0($11)
# was:	sw	_aa__str_10__init, 0(_aa__str_10__addr)
	la	$11, _Introdu_5_
# was:	la	_Introdu_5__addr, _Introdu_5_
	ori	$10, $0, 17
# was:	ori	_Introdu_5__init, 0, 17
	sw	$10, 0($11)
# was:	sw	_Introdu_5__init, 0(_Introdu_5__addr)
	la	$11, _true
# was:	la	_true_addr, _true
	ori	$10, $0, 4
# was:	ori	_true_init, 0, 4
	sw	$10, 0($11)
# was:	sw	_true_init, 0(_true_addr)
	la	$10, _false
# was:	la	_false_addr, _false
	ori	$11, $0, 5
# was:	ori	_false_init, 0, 5
	sw	$11, 0($10)
# was:	sw	_false_init, 0(_false_addr)
	jal	main
_stop_:
	ori	$2, $0, 10
	syscall
# Function read_int
read_int:
	sw	$31, -4($29)
	sw	$16, -8($29)
	addi	$29, $29, -12
	ori	$16, $2, 0
# was:	ori	_param_i_1_, 2, 0
	la	$2, _Introdu_5_
# was:	la	_tmp_4_, _Introdu_5_
# _Introdu_5_: string "Introduce number "
# 	ori	_letBind_3_,_tmp_4_,0
# 	ori	2,_tmp_4_,0
	jal	putstring
# was:	jal	putstring, 2
# 	ori	_tmp_7_,_param_i_1_,0
	ori	$2, $16, 0
# was:	ori	_letBind_6_, _tmp_7_, 0
# 	ori	2,_letBind_6_,0
	jal	putint
# was:	jal	putint, 2
	la	$2, _aa__str_10_
# was:	la	_tmp_9_, _aa__str_10_
# _aa__str_10_: string ": "
# 	ori	_letBind_8_,_tmp_9_,0
# 	ori	2,_tmp_9_,0
	jal	putstring
# was:	jal	putstring, 2
	jal	getint
# was:	jal	getint, 2
	ori	$16, $2, 0
# was:	ori	_letBind_11_, 2, 0
	la	$2, _a__str__14_
# was:	la	_tmp_13_, _a__str__14_
# _a__str__14_: string "\n"
# 	ori	_letBind_12_,_tmp_13_,0
# 	ori	2,_tmp_13_,0
	jal	putstring
# was:	jal	putstring, 2
# 	ori	_read_intres_2_,_letBind_11_,0
	ori	$2, $16, 0
# was:	ori	2, _read_intres_2_, 0
	addi	$29, $29, 12
	lw	$16, -8($29)
	lw	$31, -4($29)
	jr	$31
# Function read_int_arr
read_int_arr:
	sw	$31, -4($29)
	sw	$20, -24($29)
	sw	$19, -20($29)
	sw	$18, -16($29)
	sw	$17, -12($29)
	sw	$16, -8($29)
	addi	$29, $29, -28
	ori	$10, $2, 0
# was:	ori	_param_n_15_, 2, 0
# 	ori	_size_reg_18_,_param_n_15_,0
	addi	$10, $10, -1
# was:	addi	_size_reg_18_, _size_reg_18_, -1
	bgez	$10, _safe_lab_19_
# was:	bgez	_size_reg_18_, _safe_lab_19_
	ori	$5, $0, 10
# was:	ori	5, 0, 10
	j	_IllegalArrSizeError_
_safe_lab_19_:
	addi	$10, $10, 1
# was:	addi	_size_reg_18_, _size_reg_18_, 1
	ori	$11, $28, 0
# was:	ori	_letBind_17_, 28, 0
	sll	$12, $10, 2
# was:	sll	_tmp_25_, _size_reg_18_, 2
	addi	$12, $12, 4
# was:	addi	_tmp_25_, _tmp_25_, 4
	add	$28, $28, $12
# was:	add	28, 28, _tmp_25_
	sw	$10, 0($11)
# was:	sw	_size_reg_18_, 0(_letBind_17_)
	addi	$14, $11, 4
# was:	addi	_addr_reg_20_, _letBind_17_, 4
	ori	$13, $0, 0
# was:	ori	_i_reg_21_, 0, 0
_loop_beg_22_:
	sub	$12, $13, $10
# was:	sub	_tmp_reg_24_, _i_reg_21_, _size_reg_18_
	bgez	$12, _loop_end_23_
# was:	bgez	_tmp_reg_24_, _loop_end_23_
	sw	$13, 0($14)
# was:	sw	_i_reg_21_, 0(_addr_reg_20_)
	addi	$14, $14, 4
# was:	addi	_addr_reg_20_, _addr_reg_20_, 4
	addi	$13, $13, 1
# was:	addi	_i_reg_21_, _i_reg_21_, 1
	j	_loop_beg_22_
_loop_end_23_:
	ori	$10, $11, 0
# was:	ori	_arr_reg_27_, _letBind_17_, 0
	lw	$17, 0($10)
# was:	lw	_size_reg_26_, 0(_arr_reg_27_)
	ori	$16, $28, 0
# was:	ori	_read_int_arrres_16_, 28, 0
	sll	$11, $17, 2
# was:	sll	_tmp_36_, _size_reg_26_, 2
	addi	$11, $11, 4
# was:	addi	_tmp_36_, _tmp_36_, 4
	add	$28, $28, $11
# was:	add	28, 28, _tmp_36_
	sw	$17, 0($16)
# was:	sw	_size_reg_26_, 0(_read_int_arrres_16_)
	addi	$18, $16, 4
# was:	addi	_addr_reg_30_, _read_int_arrres_16_, 4
	ori	$19, $0, 0
# was:	ori	_i_reg_31_, 0, 0
	addi	$20, $10, 4
# was:	addi	_elem_reg_28_, _arr_reg_27_, 4
_loop_beg_32_:
	sub	$10, $19, $17
# was:	sub	_tmp_reg_34_, _i_reg_31_, _size_reg_26_
	bgez	$10, _loop_end_33_
# was:	bgez	_tmp_reg_34_, _loop_end_33_
	lw	$2, 0($20)
# was:	lw	_res_reg_29_, 0(_elem_reg_28_)
# 	ori	2,_res_reg_29_,0
	jal	read_int
# was:	jal	read_int, 2
# 	ori	_tmp_reg_35_,2,0
# 	ori	_res_reg_29_,_tmp_reg_35_,0
	addi	$20, $20, 4
# was:	addi	_elem_reg_28_, _elem_reg_28_, 4
	sw	$2, 0($18)
# was:	sw	_res_reg_29_, 0(_addr_reg_30_)
	addi	$18, $18, 4
# was:	addi	_addr_reg_30_, _addr_reg_30_, 4
	addi	$19, $19, 1
# was:	addi	_i_reg_31_, _i_reg_31_, 1
	j	_loop_beg_32_
_loop_end_33_:
	ori	$2, $16, 0
# was:	ori	2, _read_int_arrres_16_, 0
	addi	$29, $29, 28
	lw	$20, -24($29)
	lw	$19, -20($29)
	lw	$18, -16($29)
	lw	$17, -12($29)
	lw	$16, -8($29)
	lw	$31, -4($29)
	jr	$31
# Function write_int
write_int:
	sw	$31, -4($29)
	sw	$16, -8($29)
	addi	$29, $29, -12
	ori	$16, $2, 0
# was:	ori	_param_i_37_, 2, 0
# 	ori	_tmp_39_,_param_i_37_,0
# 	ori	_write_intres_38_,_tmp_39_,0
	ori	$2, $16, 0
# was:	ori	2, _write_intres_38_, 0
	jal	putint
# was:	jal	putint, 2
	ori	$2, $16, 0
# was:	ori	2, _write_intres_38_, 0
	addi	$29, $29, 12
	lw	$16, -8($29)
	lw	$31, -4($29)
	jr	$31
# Function write_int_arr
write_int_arr:
	sw	$31, -4($29)
	sw	$19, -20($29)
	sw	$18, -16($29)
	sw	$17, -12($29)
	sw	$16, -8($29)
	addi	$29, $29, -24
	ori	$16, $2, 0
# was:	ori	_param_arr_40_, 2, 0
	la	$2, _aaa__st_44_
# was:	la	_tmp_43_, _aaa__st_44_
# _aaa__st_44_: string " { "
# 	ori	_letBind_42_,_tmp_43_,0
# 	ori	2,_tmp_43_,0
	jal	putstring
# was:	jal	putstring, 2
	ori	$10, $16, 0
# was:	ori	_arr_reg_47_, _param_arr_40_, 0
	lw	$16, 0($10)
# was:	lw	_size_reg_46_, 0(_arr_reg_47_)
	ori	$11, $28, 0
# was:	ori	_letBind_45_, 28, 0
	sll	$12, $16, 2
# was:	sll	_tmp_56_, _size_reg_46_, 2
	addi	$12, $12, 4
# was:	addi	_tmp_56_, _tmp_56_, 4
	add	$28, $28, $12
# was:	add	28, 28, _tmp_56_
	sw	$16, 0($11)
# was:	sw	_size_reg_46_, 0(_letBind_45_)
	addi	$17, $11, 4
# was:	addi	_addr_reg_50_, _letBind_45_, 4
	ori	$18, $0, 0
# was:	ori	_i_reg_51_, 0, 0
	addi	$19, $10, 4
# was:	addi	_elem_reg_48_, _arr_reg_47_, 4
_loop_beg_52_:
	sub	$10, $18, $16
# was:	sub	_tmp_reg_54_, _i_reg_51_, _size_reg_46_
	bgez	$10, _loop_end_53_
# was:	bgez	_tmp_reg_54_, _loop_end_53_
	lw	$2, 0($19)
# was:	lw	_res_reg_49_, 0(_elem_reg_48_)
# 	ori	2,_res_reg_49_,0
	jal	write_int
# was:	jal	write_int, 2
# 	ori	_tmp_reg_55_,2,0
# 	ori	_res_reg_49_,_tmp_reg_55_,0
	addi	$19, $19, 4
# was:	addi	_elem_reg_48_, _elem_reg_48_, 4
	sw	$2, 0($17)
# was:	sw	_res_reg_49_, 0(_addr_reg_50_)
	addi	$17, $17, 4
# was:	addi	_addr_reg_50_, _addr_reg_50_, 4
	addi	$18, $18, 1
# was:	addi	_i_reg_51_, _i_reg_51_, 1
	j	_loop_beg_52_
_loop_end_53_:
	la	$2, _aaa__st_59_
# was:	la	_tmp_58_, _aaa__st_59_
# _aaa__st_59_: string " }\n"
# 	ori	_letBind_57_,_tmp_58_,0
# 	ori	2,_tmp_58_,0
	jal	putstring
# was:	jal	putstring, 2
	ori	$2, $0, 1
# was:	ori	_write_int_arrres_41_, 0, 1
# 	ori	2,_write_int_arrres_41_,0
	addi	$29, $29, 24
	lw	$19, -20($29)
	lw	$18, -16($29)
	lw	$17, -12($29)
	lw	$16, -8($29)
	lw	$31, -4($29)
	jr	$31
# Function max
max:
	sw	$31, -4($29)
	addi	$29, $29, -8
# 	ori	_param_x_60_,2,0
# 	ori	_param_y_61_,3,0
# 	ori	_lt_L_67_,_param_x_60_,0
# 	ori	_lt_R_68_,_param_y_61_,0
	slt	$10, $2, $3
# was:	slt	_cond_66_, _lt_L_67_, _lt_R_68_
	bne	$10, $0, _then_63_
# was:	bne	_cond_66_, 0, _then_63_
	j	_else_64_
_then_63_:
	ori	$2, $3, 0
# was:	ori	_maxres_62_, _param_y_61_, 0
	j	_endif_65_
_else_64_:
# 	ori	_maxres_62_,_param_x_60_,0
_endif_65_:
# 	ori	2,_maxres_62_,0
	addi	$29, $29, 8
	lw	$31, -4($29)
	jr	$31
# Function mapper
mapper:
	sw	$31, -4($29)
	sw	$16, -8($29)
	addi	$29, $29, -12
	ori	$16, $2, 0
# was:	ori	_param_x_69_, 2, 0
# 	ori	_arg_72_,_param_x_69_,0
	ori	$3, $0, 0
# was:	ori	_arg_73_, 0, 0
	ori	$2, $16, 0
# was:	ori	2, _arg_72_, 0
# 	ori	3,_arg_73_,0
	jal	max
# was:	jal	max, 2 3
# 	ori	_letBind_71_,2,0
	ori	$12, $0, 4
# was:	ori	_size_reg_74_, 0, 4
	ori	$10, $28, 0
# was:	ori	_mapperres_70_, 28, 0
	sll	$11, $12, 2
# was:	sll	_tmp_77_, _size_reg_74_, 2
	addi	$11, $11, 4
# was:	addi	_tmp_77_, _tmp_77_, 4
	add	$28, $28, $11
# was:	add	28, 28, _tmp_77_
	sw	$12, 0($10)
# was:	sw	_size_reg_74_, 0(_mapperres_70_)
	addi	$11, $10, 4
# was:	addi	_addr_reg_75_, _mapperres_70_, 4
# 	ori	_tmp_reg_76_,_letBind_71_,0
	sw	$2, 0($11)
# was:	sw	_tmp_reg_76_, 0(_addr_reg_75_)
	addi	$11, $11, 4
# was:	addi	_addr_reg_75_, _addr_reg_75_, 4
# 	ori	_tmp_reg_76_,_letBind_71_,0
	sw	$2, 0($11)
# was:	sw	_tmp_reg_76_, 0(_addr_reg_75_)
	addi	$11, $11, 4
# was:	addi	_addr_reg_75_, _addr_reg_75_, 4
# 	ori	_tmp_reg_76_,_letBind_71_,0
	sw	$2, 0($11)
# was:	sw	_tmp_reg_76_, 0(_addr_reg_75_)
	addi	$11, $11, 4
# was:	addi	_addr_reg_75_, _addr_reg_75_, 4
	ori	$2, $16, 0
# was:	ori	_tmp_reg_76_, _param_x_69_, 0
	sw	$2, 0($11)
# was:	sw	_tmp_reg_76_, 0(_addr_reg_75_)
	addi	$11, $11, 4
# was:	addi	_addr_reg_75_, _addr_reg_75_, 4
	ori	$2, $10, 0
# was:	ori	2, _mapperres_70_, 0
	addi	$29, $29, 12
	lw	$16, -8($29)
	lw	$31, -4($29)
	jr	$31
# Function reducer
reducer:
	sw	$31, -4($29)
	sw	$19, -20($29)
	sw	$18, -16($29)
	sw	$17, -12($29)
	sw	$16, -8($29)
	addi	$29, $29, -24
	ori	$18, $2, 0
# was:	ori	_param_a_78_, 2, 0
	ori	$16, $3, 0
# was:	ori	_param_b_79_, 3, 0
	ori	$11, $0, 0
# was:	ori	_arr_ind_84_, 0, 0
	addi	$10, $18, 4
# was:	addi	_arr_reg_85_, _param_a_78_, 4
	lw	$12, 0($18)
# was:	lw	_size_reg_86_, 0(_param_a_78_)
	bgez	$11, _safe_lab_89_
# was:	bgez	_arr_ind_84_, _safe_lab_89_
_error_lab_88_:
	ori	$5, $0, 28
# was:	ori	5, 0, 28
	j	_IllegalArrSizeError_
_safe_lab_89_:
	sub	$12, $11, $12
# was:	sub	_tmp_reg_87_, _arr_ind_84_, _size_reg_86_
	bgez	$12, _error_lab_88_
# was:	bgez	_tmp_reg_87_, _error_lab_88_
	sll	$11, $11, 2
# was:	sll	_arr_ind_84_, _arr_ind_84_, 2
	add	$10, $10, $11
# was:	add	_arr_reg_85_, _arr_reg_85_, _arr_ind_84_
	lw	$2, 0($10)
# was:	lw	_arg_83_, 0(_arr_reg_85_)
	ori	$10, $0, 0
# was:	ori	_arr_ind_91_, 0, 0
	addi	$11, $16, 4
# was:	addi	_arr_reg_92_, _param_b_79_, 4
	lw	$12, 0($16)
# was:	lw	_size_reg_93_, 0(_param_b_79_)
	bgez	$10, _safe_lab_96_
# was:	bgez	_arr_ind_91_, _safe_lab_96_
_error_lab_95_:
	ori	$5, $0, 28
# was:	ori	5, 0, 28
	j	_IllegalArrSizeError_
_safe_lab_96_:
	sub	$12, $10, $12
# was:	sub	_tmp_reg_94_, _arr_ind_91_, _size_reg_93_
	bgez	$12, _error_lab_95_
# was:	bgez	_tmp_reg_94_, _error_lab_95_
	sll	$10, $10, 2
# was:	sll	_arr_ind_91_, _arr_ind_91_, 2
	add	$11, $11, $10
# was:	add	_arr_reg_92_, _arr_reg_92_, _arr_ind_91_
	lw	$3, 0($11)
# was:	lw	_arg_90_, 0(_arr_reg_92_)
# 	ori	2,_arg_83_,0
# 	ori	3,_arg_90_,0
	jal	max
# was:	jal	max, 2 3
# 	ori	_arg_82_,2,0
	ori	$12, $0, 2
# was:	ori	_arr_ind_100_, 0, 2
	addi	$11, $18, 4
# was:	addi	_arr_reg_101_, _param_a_78_, 4
	lw	$10, 0($18)
# was:	lw	_size_reg_102_, 0(_param_a_78_)
	bgez	$12, _safe_lab_105_
# was:	bgez	_arr_ind_100_, _safe_lab_105_
_error_lab_104_:
	ori	$5, $0, 28
# was:	ori	5, 0, 28
	j	_IllegalArrSizeError_
_safe_lab_105_:
	sub	$10, $12, $10
# was:	sub	_tmp_reg_103_, _arr_ind_100_, _size_reg_102_
	bgez	$10, _error_lab_104_
# was:	bgez	_tmp_reg_103_, _error_lab_104_
	sll	$12, $12, 2
# was:	sll	_arr_ind_100_, _arr_ind_100_, 2
	add	$11, $11, $12
# was:	add	_arr_reg_101_, _arr_reg_101_, _arr_ind_100_
	lw	$10, 0($11)
# was:	lw	_plus_L_98_, 0(_arr_reg_101_)
	ori	$12, $0, 1
# was:	ori	_arr_ind_106_, 0, 1
	addi	$11, $16, 4
# was:	addi	_arr_reg_107_, _param_b_79_, 4
	lw	$13, 0($16)
# was:	lw	_size_reg_108_, 0(_param_b_79_)
	bgez	$12, _safe_lab_111_
# was:	bgez	_arr_ind_106_, _safe_lab_111_
_error_lab_110_:
	ori	$5, $0, 28
# was:	ori	5, 0, 28
	j	_IllegalArrSizeError_
_safe_lab_111_:
	sub	$13, $12, $13
# was:	sub	_tmp_reg_109_, _arr_ind_106_, _size_reg_108_
	bgez	$13, _error_lab_110_
# was:	bgez	_tmp_reg_109_, _error_lab_110_
	sll	$12, $12, 2
# was:	sll	_arr_ind_106_, _arr_ind_106_, 2
	add	$11, $11, $12
# was:	add	_arr_reg_107_, _arr_reg_107_, _arr_ind_106_
	lw	$11, 0($11)
# was:	lw	_plus_R_99_, 0(_arr_reg_107_)
	add	$3, $10, $11
# was:	add	_arg_97_, _plus_L_98_, _plus_R_99_
# 	ori	2,_arg_82_,0
# 	ori	3,_arg_97_,0
	jal	max
# was:	jal	max, 2 3
	ori	$17, $2, 0
# was:	ori	_letBind_81_, 2, 0
	ori	$11, $0, 1
# was:	ori	_arr_ind_114_, 0, 1
	addi	$10, $18, 4
# was:	addi	_arr_reg_115_, _param_a_78_, 4
	lw	$12, 0($18)
# was:	lw	_size_reg_116_, 0(_param_a_78_)
	bgez	$11, _safe_lab_119_
# was:	bgez	_arr_ind_114_, _safe_lab_119_
_error_lab_118_:
	ori	$5, $0, 29
# was:	ori	5, 0, 29
	j	_IllegalArrSizeError_
_safe_lab_119_:
	sub	$12, $11, $12
# was:	sub	_tmp_reg_117_, _arr_ind_114_, _size_reg_116_
	bgez	$12, _error_lab_118_
# was:	bgez	_tmp_reg_117_, _error_lab_118_
	sll	$11, $11, 2
# was:	sll	_arr_ind_114_, _arr_ind_114_, 2
	add	$10, $10, $11
# was:	add	_arr_reg_115_, _arr_reg_115_, _arr_ind_114_
	lw	$2, 0($10)
# was:	lw	_arg_113_, 0(_arr_reg_115_)
	ori	$10, $0, 3
# was:	ori	_arr_ind_123_, 0, 3
	addi	$11, $18, 4
# was:	addi	_arr_reg_124_, _param_a_78_, 4
	lw	$12, 0($18)
# was:	lw	_size_reg_125_, 0(_param_a_78_)
	bgez	$10, _safe_lab_128_
# was:	bgez	_arr_ind_123_, _safe_lab_128_
_error_lab_127_:
	ori	$5, $0, 29
# was:	ori	5, 0, 29
	j	_IllegalArrSizeError_
_safe_lab_128_:
	sub	$12, $10, $12
# was:	sub	_tmp_reg_126_, _arr_ind_123_, _size_reg_125_
	bgez	$12, _error_lab_127_
# was:	bgez	_tmp_reg_126_, _error_lab_127_
	sll	$10, $10, 2
# was:	sll	_arr_ind_123_, _arr_ind_123_, 2
	add	$11, $11, $10
# was:	add	_arr_reg_124_, _arr_reg_124_, _arr_ind_123_
	lw	$12, 0($11)
# was:	lw	_plus_L_121_, 0(_arr_reg_124_)
	ori	$10, $0, 1
# was:	ori	_arr_ind_129_, 0, 1
	addi	$11, $16, 4
# was:	addi	_arr_reg_130_, _param_b_79_, 4
	lw	$13, 0($16)
# was:	lw	_size_reg_131_, 0(_param_b_79_)
	bgez	$10, _safe_lab_134_
# was:	bgez	_arr_ind_129_, _safe_lab_134_
_error_lab_133_:
	ori	$5, $0, 29
# was:	ori	5, 0, 29
	j	_IllegalArrSizeError_
_safe_lab_134_:
	sub	$13, $10, $13
# was:	sub	_tmp_reg_132_, _arr_ind_129_, _size_reg_131_
	bgez	$13, _error_lab_133_
# was:	bgez	_tmp_reg_132_, _error_lab_133_
	sll	$10, $10, 2
# was:	sll	_arr_ind_129_, _arr_ind_129_, 2
	add	$11, $11, $10
# was:	add	_arr_reg_130_, _arr_reg_130_, _arr_ind_129_
	lw	$10, 0($11)
# was:	lw	_plus_R_122_, 0(_arr_reg_130_)
	add	$3, $12, $10
# was:	add	_arg_120_, _plus_L_121_, _plus_R_122_
# 	ori	2,_arg_113_,0
# 	ori	3,_arg_120_,0
	jal	max
# was:	jal	max, 2 3
	ori	$19, $2, 0
# was:	ori	_letBind_112_, 2, 0
	ori	$10, $0, 2
# was:	ori	_arr_ind_139_, 0, 2
	addi	$11, $18, 4
# was:	addi	_arr_reg_140_, _param_a_78_, 4
	lw	$12, 0($18)
# was:	lw	_size_reg_141_, 0(_param_a_78_)
	bgez	$10, _safe_lab_144_
# was:	bgez	_arr_ind_139_, _safe_lab_144_
_error_lab_143_:
	ori	$5, $0, 30
# was:	ori	5, 0, 30
	j	_IllegalArrSizeError_
_safe_lab_144_:
	sub	$12, $10, $12
# was:	sub	_tmp_reg_142_, _arr_ind_139_, _size_reg_141_
	bgez	$12, _error_lab_143_
# was:	bgez	_tmp_reg_142_, _error_lab_143_
	sll	$10, $10, 2
# was:	sll	_arr_ind_139_, _arr_ind_139_, 2
	add	$11, $11, $10
# was:	add	_arr_reg_140_, _arr_reg_140_, _arr_ind_139_
	lw	$10, 0($11)
# was:	lw	_plus_L_137_, 0(_arr_reg_140_)
	ori	$11, $0, 3
# was:	ori	_arr_ind_145_, 0, 3
	addi	$12, $16, 4
# was:	addi	_arr_reg_146_, _param_b_79_, 4
	lw	$13, 0($16)
# was:	lw	_size_reg_147_, 0(_param_b_79_)
	bgez	$11, _safe_lab_150_
# was:	bgez	_arr_ind_145_, _safe_lab_150_
_error_lab_149_:
	ori	$5, $0, 30
# was:	ori	5, 0, 30
	j	_IllegalArrSizeError_
_safe_lab_150_:
	sub	$13, $11, $13
# was:	sub	_tmp_reg_148_, _arr_ind_145_, _size_reg_147_
	bgez	$13, _error_lab_149_
# was:	bgez	_tmp_reg_148_, _error_lab_149_
	sll	$11, $11, 2
# was:	sll	_arr_ind_145_, _arr_ind_145_, 2
	add	$12, $12, $11
# was:	add	_arr_reg_146_, _arr_reg_146_, _arr_ind_145_
	lw	$11, 0($12)
# was:	lw	_plus_R_138_, 0(_arr_reg_146_)
	add	$2, $10, $11
# was:	add	_arg_136_, _plus_L_137_, _plus_R_138_
	ori	$10, $0, 2
# was:	ori	_arr_ind_152_, 0, 2
	addi	$11, $16, 4
# was:	addi	_arr_reg_153_, _param_b_79_, 4
	lw	$12, 0($16)
# was:	lw	_size_reg_154_, 0(_param_b_79_)
	bgez	$10, _safe_lab_157_
# was:	bgez	_arr_ind_152_, _safe_lab_157_
_error_lab_156_:
	ori	$5, $0, 30
# was:	ori	5, 0, 30
	j	_IllegalArrSizeError_
_safe_lab_157_:
	sub	$12, $10, $12
# was:	sub	_tmp_reg_155_, _arr_ind_152_, _size_reg_154_
	bgez	$12, _error_lab_156_
# was:	bgez	_tmp_reg_155_, _error_lab_156_
	sll	$10, $10, 2
# was:	sll	_arr_ind_152_, _arr_ind_152_, 2
	add	$11, $11, $10
# was:	add	_arr_reg_153_, _arr_reg_153_, _arr_ind_152_
	lw	$3, 0($11)
# was:	lw	_arg_151_, 0(_arr_reg_153_)
# 	ori	2,_arg_136_,0
# 	ori	3,_arg_151_,0
	jal	max
# was:	jal	max, 2 3
# 	ori	_letBind_135_,2,0
	ori	$11, $0, 3
# was:	ori	_arr_ind_161_, 0, 3
	addi	$10, $18, 4
# was:	addi	_arr_reg_162_, _param_a_78_, 4
	lw	$12, 0($18)
# was:	lw	_size_reg_163_, 0(_param_a_78_)
	bgez	$11, _safe_lab_166_
# was:	bgez	_arr_ind_161_, _safe_lab_166_
_error_lab_165_:
	ori	$5, $0, 31
# was:	ori	5, 0, 31
	j	_IllegalArrSizeError_
_safe_lab_166_:
	sub	$12, $11, $12
# was:	sub	_tmp_reg_164_, _arr_ind_161_, _size_reg_163_
	bgez	$12, _error_lab_165_
# was:	bgez	_tmp_reg_164_, _error_lab_165_
	sll	$11, $11, 2
# was:	sll	_arr_ind_161_, _arr_ind_161_, 2
	add	$10, $10, $11
# was:	add	_arr_reg_162_, _arr_reg_162_, _arr_ind_161_
	lw	$12, 0($10)
# was:	lw	_plus_L_159_, 0(_arr_reg_162_)
	ori	$11, $0, 3
# was:	ori	_arr_ind_167_, 0, 3
	addi	$10, $16, 4
# was:	addi	_arr_reg_168_, _param_b_79_, 4
	lw	$13, 0($16)
# was:	lw	_size_reg_169_, 0(_param_b_79_)
	bgez	$11, _safe_lab_172_
# was:	bgez	_arr_ind_167_, _safe_lab_172_
_error_lab_171_:
	ori	$5, $0, 31
# was:	ori	5, 0, 31
	j	_IllegalArrSizeError_
_safe_lab_172_:
	sub	$13, $11, $13
# was:	sub	_tmp_reg_170_, _arr_ind_167_, _size_reg_169_
	bgez	$13, _error_lab_171_
# was:	bgez	_tmp_reg_170_, _error_lab_171_
	sll	$11, $11, 2
# was:	sll	_arr_ind_167_, _arr_ind_167_, 2
	add	$10, $10, $11
# was:	add	_arr_reg_168_, _arr_reg_168_, _arr_ind_167_
	lw	$10, 0($10)
# was:	lw	_plus_R_160_, 0(_arr_reg_168_)
	add	$10, $12, $10
# was:	add	_letBind_158_, _plus_L_159_, _plus_R_160_
	ori	$13, $0, 4
# was:	ori	_size_reg_173_, 0, 4
	ori	$12, $28, 0
# was:	ori	_reducerres_80_, 28, 0
	sll	$11, $13, 2
# was:	sll	_tmp_176_, _size_reg_173_, 2
	addi	$11, $11, 4
# was:	addi	_tmp_176_, _tmp_176_, 4
	add	$28, $28, $11
# was:	add	28, 28, _tmp_176_
	sw	$13, 0($12)
# was:	sw	_size_reg_173_, 0(_reducerres_80_)
	addi	$11, $12, 4
# was:	addi	_addr_reg_174_, _reducerres_80_, 4
# 	ori	_tmp_reg_175_,_letBind_81_,0
	sw	$17, 0($11)
# was:	sw	_tmp_reg_175_, 0(_addr_reg_174_)
	addi	$11, $11, 4
# was:	addi	_addr_reg_174_, _addr_reg_174_, 4
	ori	$17, $19, 0
# was:	ori	_tmp_reg_175_, _letBind_112_, 0
	sw	$17, 0($11)
# was:	sw	_tmp_reg_175_, 0(_addr_reg_174_)
	addi	$11, $11, 4
# was:	addi	_addr_reg_174_, _addr_reg_174_, 4
	ori	$17, $2, 0
# was:	ori	_tmp_reg_175_, _letBind_135_, 0
	sw	$17, 0($11)
# was:	sw	_tmp_reg_175_, 0(_addr_reg_174_)
	addi	$11, $11, 4
# was:	addi	_addr_reg_174_, _addr_reg_174_, 4
	ori	$17, $10, 0
# was:	ori	_tmp_reg_175_, _letBind_158_, 0
	sw	$17, 0($11)
# was:	sw	_tmp_reg_175_, 0(_addr_reg_174_)
	addi	$11, $11, 4
# was:	addi	_addr_reg_174_, _addr_reg_174_, 4
	ori	$2, $12, 0
# was:	ori	2, _reducerres_80_, 0
	addi	$29, $29, 24
	lw	$19, -20($29)
	lw	$18, -16($29)
	lw	$17, -12($29)
	lw	$16, -8($29)
	lw	$31, -4($29)
	jr	$31
# Function mssp
mssp:
	sw	$31, -4($29)
	sw	$20, -24($29)
	sw	$19, -20($29)
	sw	$18, -16($29)
	sw	$17, -12($29)
	sw	$16, -8($29)
	addi	$29, $29, -28
# 	ori	_param_n_177_,2,0
# 	ori	_arg_180_,_param_n_177_,0
# 	ori	2,_arg_180_,0
	jal	read_int_arr
# was:	jal	read_int_arr, 2
	ori	$10, $2, 0
# was:	ori	_letBind_179_, 2, 0
# 	ori	_arr_reg_183_,_letBind_179_,0
	lw	$17, 0($10)
# was:	lw	_size_reg_182_, 0(_arr_reg_183_)
	ori	$16, $28, 0
# was:	ori	_letBind_181_, 28, 0
	sll	$11, $17, 2
# was:	sll	_tmp_192_, _size_reg_182_, 2
	addi	$11, $11, 4
# was:	addi	_tmp_192_, _tmp_192_, 4
	add	$28, $28, $11
# was:	add	28, 28, _tmp_192_
	sw	$17, 0($16)
# was:	sw	_size_reg_182_, 0(_letBind_181_)
	addi	$19, $16, 4
# was:	addi	_addr_reg_186_, _letBind_181_, 4
	ori	$18, $0, 0
# was:	ori	_i_reg_187_, 0, 0
	addi	$20, $10, 4
# was:	addi	_elem_reg_184_, _arr_reg_183_, 4
_loop_beg_188_:
	sub	$10, $18, $17
# was:	sub	_tmp_reg_190_, _i_reg_187_, _size_reg_182_
	bgez	$10, _loop_end_189_
# was:	bgez	_tmp_reg_190_, _loop_end_189_
	lw	$2, 0($20)
# was:	lw	_res_reg_185_, 0(_elem_reg_184_)
# 	ori	2,_res_reg_185_,0
	jal	mapper
# was:	jal	mapper, 2
# 	ori	_tmp_reg_191_,2,0
# 	ori	_res_reg_185_,_tmp_reg_191_,0
	addi	$20, $20, 4
# was:	addi	_elem_reg_184_, _elem_reg_184_, 4
	sw	$2, 0($19)
# was:	sw	_res_reg_185_, 0(_addr_reg_186_)
	addi	$19, $19, 4
# was:	addi	_addr_reg_186_, _addr_reg_186_, 4
	addi	$18, $18, 1
# was:	addi	_i_reg_187_, _i_reg_187_, 1
	j	_loop_beg_188_
_loop_end_189_:
	ori	$11, $0, 4
# was:	ori	_size_reg_194_, 0, 4
	ori	$10, $28, 0
# was:	ori	_letBind_193_, 28, 0
	sll	$12, $11, 2
# was:	sll	_tmp_197_, _size_reg_194_, 2
	addi	$12, $12, 4
# was:	addi	_tmp_197_, _tmp_197_, 4
	add	$28, $28, $12
# was:	add	28, 28, _tmp_197_
	sw	$11, 0($10)
# was:	sw	_size_reg_194_, 0(_letBind_193_)
	addi	$11, $10, 4
# was:	addi	_addr_reg_195_, _letBind_193_, 4
	ori	$12, $0, 0
# was:	ori	_tmp_reg_196_, 0, 0
	sw	$12, 0($11)
# was:	sw	_tmp_reg_196_, 0(_addr_reg_195_)
	addi	$11, $11, 4
# was:	addi	_addr_reg_195_, _addr_reg_195_, 4
	ori	$12, $0, 0
# was:	ori	_tmp_reg_196_, 0, 0
	sw	$12, 0($11)
# was:	sw	_tmp_reg_196_, 0(_addr_reg_195_)
	addi	$11, $11, 4
# was:	addi	_addr_reg_195_, _addr_reg_195_, 4
	ori	$12, $0, 0
# was:	ori	_tmp_reg_196_, 0, 0
	sw	$12, 0($11)
# was:	sw	_tmp_reg_196_, 0(_addr_reg_195_)
	addi	$11, $11, 4
# was:	addi	_addr_reg_195_, _addr_reg_195_, 4
	ori	$12, $0, 0
# was:	ori	_tmp_reg_196_, 0, 0
	sw	$12, 0($11)
# was:	sw	_tmp_reg_196_, 0(_addr_reg_195_)
	addi	$11, $11, 4
# was:	addi	_addr_reg_195_, _addr_reg_195_, 4
	ori	$17, $16, 0
# was:	ori	_arr_reg_198_, _letBind_181_, 0
	lw	$16, 0($17)
# was:	lw	_size_reg_199_, 0(_arr_reg_198_)
# 	ori	_msspres_178_,_letBind_193_,0
	addi	$17, $17, 4
# was:	addi	_arr_reg_198_, _arr_reg_198_, 4
	ori	$18, $0, 0
# was:	ori	_ind_var_200_, 0, 0
_loop_beg_202_:
	sub	$3, $18, $16
# was:	sub	_tmp_reg_201_, _ind_var_200_, _size_reg_199_
	bgez	$3, _loop_end_203_
# was:	bgez	_tmp_reg_201_, _loop_end_203_
	lw	$3, 0($17)
# was:	lw	_tmp_reg_201_, 0(_arr_reg_198_)
	addi	$17, $17, 4
# was:	addi	_arr_reg_198_, _arr_reg_198_, 4
	ori	$2, $10, 0
# was:	ori	2, _msspres_178_, 0
# 	ori	3,_tmp_reg_201_,0
	jal	reducer
# was:	jal	reducer, 2 3
	ori	$10, $2, 0
# was:	ori	_tmp_reg_204_, 2, 0
# 	ori	_msspres_178_,_tmp_reg_204_,0
	addi	$18, $18, 1
# was:	addi	_ind_var_200_, _ind_var_200_, 1
	j	_loop_beg_202_
_loop_end_203_:
	ori	$2, $10, 0
# was:	ori	2, _msspres_178_, 0
	addi	$29, $29, 28
	lw	$20, -24($29)
	lw	$19, -20($29)
	lw	$18, -16($29)
	lw	$17, -12($29)
	lw	$16, -8($29)
	lw	$31, -4($29)
	jr	$31
# Function main
main:
	sw	$31, -4($29)
	sw	$16, -8($29)
	addi	$29, $29, -12
	ori	$2, $0, 8
# was:	ori	_arg_207_, 0, 8
# 	ori	2,_arg_207_,0
	jal	mssp
# was:	jal	mssp, 2
	ori	$16, $2, 0
# was:	ori	_letBind_206_, 2, 0
	la	$2, _aaMSSPa_210_
# was:	la	_tmp_209_, _aaMSSPa_210_
# _aaMSSPa_210_: string "\n\nMSSP result is: "
# 	ori	_letBind_208_,_tmp_209_,0
# 	ori	2,_tmp_209_,0
	jal	putstring
# was:	jal	putstring, 2
	ori	$11, $0, 0
# was:	ori	_arr_ind_212_, 0, 0
	addi	$10, $16, 4
# was:	addi	_arr_reg_213_, _letBind_206_, 4
	lw	$12, 0($16)
# was:	lw	_size_reg_214_, 0(_letBind_206_)
	bgez	$11, _safe_lab_217_
# was:	bgez	_arr_ind_212_, _safe_lab_217_
_error_lab_216_:
	ori	$5, $0, 44
# was:	ori	5, 0, 44
	j	_IllegalArrSizeError_
_safe_lab_217_:
	sub	$12, $11, $12
# was:	sub	_tmp_reg_215_, _arr_ind_212_, _size_reg_214_
	bgez	$12, _error_lab_216_
# was:	bgez	_tmp_reg_215_, _error_lab_216_
	sll	$11, $11, 2
# was:	sll	_arr_ind_212_, _arr_ind_212_, 2
	add	$10, $10, $11
# was:	add	_arr_reg_213_, _arr_reg_213_, _arr_ind_212_
	lw	$16, 0($10)
# was:	lw	_tmp_211_, 0(_arr_reg_213_)
# 	ori	_mainres_205_,_tmp_211_,0
	ori	$2, $16, 0
# was:	ori	2, _mainres_205_, 0
	jal	putint
# was:	jal	putint, 2
	ori	$2, $16, 0
# was:	ori	2, _mainres_205_, 0
	addi	$29, $29, 12
	lw	$16, -8($29)
	lw	$31, -4($29)
	jr	$31
ord:
	jr	$31
chr:
	andi	$2, $2, 255
	jr	$31
putint:
	addi	$29, $29, -8
	sw	$2, 0($29)
	sw	$4, 4($29)
	ori	$4, $2, 0
	ori	$2, $0, 1
	syscall
	ori	$2, $0, 4
	la	$4, _space_
	syscall
	lw	$2, 0($29)
	lw	$4, 4($29)
	addi	$29, $29, 8
	jr	$31
getint:
	ori	$2, $0, 5
	syscall
	jr	$31
putchar:
	addi	$29, $29, -8
	sw	$2, 0($29)
	sw	$4, 4($29)
	ori	$4, $2, 0
	ori	$2, $0, 11
	syscall
	ori	$2, $0, 4
	la	$4, _space_
	syscall
	lw	$2, 0($29)
	lw	$4, 4($29)
	addi	$29, $29, 8
	jr	$31
getchar:
	addi	$29, $29, -8
	sw	$4, 0($29)
	sw	$5, 4($29)
	ori	$2, $0, 12
	syscall
	ori	$5, $2, 0
	ori	$2, $0, 4
	la	$4, _cr_
	syscall
	ori	$2, $5, 0
	lw	$4, 0($29)
	lw	$5, 4($29)
	addi	$29, $29, 8
	jr	$31
putstring:
	addi	$29, $29, -16
	sw	$2, 0($29)
	sw	$4, 4($29)
	sw	$5, 8($29)
	sw	$6, 12($29)
	lw	$4, 0($2)
	addi	$5, $2, 4
	add	$6, $5, $4
	ori	$2, $0, 11
putstring_begin:
	sub	$4, $5, $6
	bgez	$4, putstring_done
	lb	$4, 0($5)
	syscall
	addi	$5, $5, 1
	j	putstring_begin
putstring_done:
	lw	$2, 0($29)
	lw	$4, 4($29)
	lw	$5, 8($29)
	lw	$6, 12($29)
	addi	$29, $29, 16
	jr	$31
_IllegalArrSizeError_:
	la	$4, _IllegalArrSizeString_
	ori	$2, $0, 4
	syscall
	ori	$4, $5, 0
	ori	$2, $0, 1
	syscall
	la	$4, _cr_
	ori	$2, $0, 4
	syscall
	j	_stop_
	.data	
_cr_:
	.asciiz	"\n"
_space_:
	.asciiz	" "
_IllegalArrSizeString_:
	.asciiz	"Error: Array size less or equal to 0 at line "
# String Literals
	.align	2
_aaMSSPa_210_:
	.space	4
	.asciiz	"\n\nMSSP result is: "
	.align	2
_aaa__st_59_:
	.space	4
	.asciiz	" }\n"
	.align	2
_aaa__st_44_:
	.space	4
	.asciiz	" { "
	.align	2
_a__str__14_:
	.space	4
	.asciiz	"\n"
	.align	2
_aa__str_10_:
	.space	4
	.asciiz	": "
	.align	2
_Introdu_5_:
	.space	4
	.asciiz	"Introduce number "
	.align	2
_true:
	.space	4
	.asciiz	"true"
	.align	2
_false:
	.space	4
	.asciiz	"false"
	.align	2
_heap_:
	.space	100000