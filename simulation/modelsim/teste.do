restart

force -deposit /reset 0 1, 1 5ns
force -deposit /run 0 0, 1 80ns
force -deposit /clock 0 0, 1 {5ns} -r 10ns
run 2000ns