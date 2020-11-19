transcript on
if {[file exists gate_work]} {
	vdel -lib gate_work -all
}
vlib gate_work
vmap work gate_work

vlog -vlog01compat -work work +incdir+. {alu.vo}

vlog -vlog01compat -work work +incdir+C:/Users/User/github/ca_20/week12/exercise2 {C:/Users/User/github/ca_20/week12/exercise2/testbench.v}
vlog -vlog01compat -work work +incdir+C:/Users/User/github/ca_20/week12/exercise2 {C:/Users/User/github/ca_20/week12/exercise2/alu.v}
vlog -vlog01compat -work work +incdir+C:/Users/User/github/ca_20/week12/exercise2 {C:/Users/User/github/ca_20/week12/exercise2/add.v}
vlog -vlog01compat -work work +incdir+C:/Users/User/github/ca_20/week12/exercise2 {C:/Users/User/github/ca_20/week12/exercise2/mux.v}
vlog -vlog01compat -work work +incdir+C:/Users/User/github/ca_20/week12/exercise2 {C:/Users/User/github/ca_20/week12/exercise2/srl.v}
vlog -vlog01compat -work work +incdir+C:/Users/User/github/ca_20/week12/exercise2 {C:/Users/User/github/ca_20/week12/exercise2/sub.v}
vlog -vlog01compat -work work +incdir+C:/Users/User/github/ca_20/week12/exercise2 {C:/Users/User/github/ca_20/week12/exercise2/glob.v}

vsim -t 1ps +transport_int_delays +transport_path_delays -L altera_ver -L altera_lnsim_ver -L fiftyfivenm_ver -L gate_work -L work -voptargs="+acc"  testbench

add wave *
view structure
view signals
run -all
