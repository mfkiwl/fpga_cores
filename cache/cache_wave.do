onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -group TB /data_cache_tb/*
add wave -noupdate -expand -group Cache /data_cache_tb/data_cache/*
add wave -noupdate -expand -group LRU {/data_cache_tb/data_cache/g_set_associative/g_lru[0]/lru/*}
add wave -noupdate -expand -group LRU {/data_cache_tb/data_cache/g_set_associative/*}
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {38864 ps} 0}
quietly wave cursor active 1
configure wave -namecolwidth 150
configure wave -valuecolwidth 100
configure wave -justifyvalue left
configure wave -signalnamewidth 1
configure wave -snapdistance 10
configure wave -datasetprefix 0
configure wave -rowmargin 4
configure wave -childrowmargin 2
configure wave -gridoffset 0
configure wave -gridperiod 1
configure wave -griddelta 40
configure wave -timeline 0
configure wave -timelineunits ns
update
WaveRestoreZoom {0 ps} {63 ns}
run 30ns
