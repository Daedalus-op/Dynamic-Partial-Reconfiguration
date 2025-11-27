# Issues and workarounds...

| Sl.no | Issues                                    | Workaround                                  | Valid Fix                     |
| ----- | ------                                    | ----------                                  | ---------                     |
| 1     | [Syntax Errors in script](#syntax-errors) | -                                           | Done                          |
| 2     | [Files Ignored](#files-ignored)           | Force the addition in the static tcl script | Done - Fix the python scripts |
| 3     |                                           |                                             |                               |

## Syntax Errors
#### Problem
```shell
File "/home/zycap/zypr/zypr/fpga.py", line 260, in setup_vivado_project
    self.backend = get_edatool("vivado")(edam=self.edam, work_root=self.work_root)
                   ^^^^^^^^^^^
NameError: name 'get_edatool' is not defined
```

#### Solution
Insert `from edalise.edatool import *` in `fpga.py`


## Files ignored
### pr_wrapper not found
#### Problem
```shell
ERROR: [filemgmt 56-189] Failed to resolve reference. Nothing was found in the project to match the name 'pr_wrapper'.
ERROR: [BD 41-1690] Unable to resolve module-source based on inputs: pr_wrapper
ERROR: [BD 5-7] Error: running create_bd_cell  -type module -reference pr_wrapper -name pr_wrapper_0 .
ERROR: [Common 17-39] 'create_bd_cell' failed due to earlier errors.

    while executing
"create_bd_cell -type module -reference pr_wrapper pr_wrapper_0"
    (file "/home/zycap/zypr/zypr/scripts/vivado/generate_bd_wrapper.tcl" line 12)

    while executing
"source {/home/zycap/zypr/zypr/scripts/vivado/generate_bd_wrapper.tcl}"
    (file "hls_vision_demo.tcl" line 16)
```

#### Solution
Insert to `scripts/vivado/generate_bd_wrapper.tcl`
```tcl
add_files -scan_for_includes {/home/zycap/zypr/zypr/tests/demo/build/hls_vision_demo.inst/blackbox_0.v /home/zycap/zypr/zypr/tests/demo/build/hls_vision_demo.inst/blackbox_1.v /home/zycap/zypr/zypr/tests/demo/build/hls_vision_demo.inst/wrapper.v /home/zycap/zypr/zypr/tests/demo/build/hls_vision_demo.inst/zypr.v}
 
add_files -scan_for_includes {/home/zycap/zypr/zypr/tests/demo/build/hls_vision_demo.ip/ICAP.v /home/zycap/zypr/zypr/tests/demo/build/hls_vision_demo.ip/AXI_STREAM_MASTER.v /home/zycap/zypr/zypr/tests/demo/build/hls_vision_demo.ip/AXI_STREAM_SLAVE.v}
``` 

### config checkpoints not generated
#### Problem
```shell
Loading hls_vision_demo_i/pr_wrapper_0/inst/inst_0 with config_a
Command: read_checkpoint hls_vision_demo.checkpoint/init/config_a.dcp -cell hls_vision_demo_i/pr_wrapper_0/inst/inst_0
ERROR: [Common 17-69] Command failed: File '/home/zycap/zypr/zypr/tests/demo/build/hls_vision_demo.checkpoint/init/config_a.dcp' does not exist

    while executing
"source {/home/zycap/zypr/zypr/tests/demo/build/hls_vision_demo.inst/init_prr.tcl}"
    (file "hls_vision_demo.tcl" line 18)
```

#### Solution
Insert to `scripts/vivado/synth.tcl` (end)
```tcl
source /home/zycap/zypr/zypr/tests/demo/build/hls_vision_demo.inst/gen_modules.tcl
```

### Implementation not running due to blackboxes
#### Problem
```shell
Starting DRC Task
INFO: [DRC 23-27] Running DRC with 8 threads
ERROR: [DRC INBB-3] Black Box Instances: Cell 'hls_vision_demo_i/pr_wrapper_0/inst/inst_0' of type 'hls_vision_demo_pr_wrapper_0_0_blackbox_0' has undefined contents and is considered a black box.  The contents of this cell must be defined for opt_design to complete successfully.
ERROR: [DRC INBB-3] Black Box Instances: Cell 'hls_vision_demo_i/pr_wrapper_0/inst/inst_1' of type 'hls_vision_demo_pr_wrapper_0_0_blackbox_1' has undefined contents and is considered a black box.  The contents of this cell must be defined for opt_design to complete successfully.
INFO: [Project 1-461] DRC finished with 2 Errors
INFO: [Project 1-462] Please refer to the DRC report (report_drc) for more information.
ERROR: [Vivado_Tcl 4-78] Error(s) found during DRC. Opt_design not run.
```

#### Solution #todo
Insert to `scripts/vivado/synth.tcl` (start)
```tcl
set_property PR_FLOW 1 [current_project] 
```
