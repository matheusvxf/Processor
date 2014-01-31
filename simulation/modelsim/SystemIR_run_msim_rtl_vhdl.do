transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {/home/matheus/Documents/Unifei/Periodo_6/ELT013 - Eletronica Digital II/Pratica/Projeto/tipos.vhd}
vcom -93 -work work {/home/matheus/Documents/Unifei/Periodo_6/ELT013 - Eletronica Digital II/Pratica/Projeto/SystemIR.vhd}
vcom -93 -work work {/home/matheus/Documents/Unifei/Periodo_6/ELT013 - Eletronica Digital II/Pratica/Projeto/Registern.vhd}
vcom -93 -work work {/home/matheus/Documents/Unifei/Periodo_6/ELT013 - Eletronica Digital II/Pratica/Projeto/RAM.vhd}
vcom -93 -work work {/home/matheus/Documents/Unifei/Periodo_6/ELT013 - Eletronica Digital II/Pratica/Projeto/ProgramCounter.vhd}
vcom -93 -work work {/home/matheus/Documents/Unifei/Periodo_6/ELT013 - Eletronica Digital II/Pratica/Projeto/Mux.vhd}
vcom -93 -work work {/home/matheus/Documents/Unifei/Periodo_6/ELT013 - Eletronica Digital II/Pratica/Projeto/Addsub.vhd}
vcom -93 -work work {/home/matheus/Documents/Unifei/Periodo_6/ELT013 - Eletronica Digital II/Pratica/Projeto/ProcessorIR.vhd}
vcom -93 -work work {/home/matheus/Documents/Unifei/Periodo_6/ELT013 - Eletronica Digital II/Pratica/Projeto/CU.vhd}

