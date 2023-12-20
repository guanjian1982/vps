set_max_delay 15.000 -from [get_clocks *] -to [get_wiresets * -type unmuxed]
set_max_delay 15.000 -from [get_wiresets * -type unmuxed] -to [get_clocks *]
set_max_delay 16.000 -from [get_clocks *] -to [get_wiresets * -type muxed]
set_max_delay 16.000 -from [get_wiresets * -type muxed] -to [get_clocks *]
set_max_delay 19.000 -from [get_wiresets *] -to [get_wiresets *]
#enable_redmem_backdoor -redmem_instance {tp.rom}






