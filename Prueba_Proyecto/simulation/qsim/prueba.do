onerror {exit -code 1}
vlib work
vcom -work work prueba.vho
vcom -work work vwf_general.vwf.vht
vsim -novopt -c -t 1ps -L cycloneive -L altera -L altera_mf -L 220model -L sgate -L altera_lnsim work.Diagrama_prueba_vhd_vec_tst
vcd file -direction prueba.msim.vcd
vcd add -internal Diagrama_prueba_vhd_vec_tst/*
vcd add -internal Diagrama_prueba_vhd_vec_tst/i1/*
proc simTimestamp {} {
    echo "Simulation time: $::now ps"
    if { [string equal running [runStatus]] } {
        after 2500 simTimestamp
    }
}
after 2500 simTimestamp
run -all
quit -f


