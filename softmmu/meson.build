specific_ss.add(when: 'CONFIG_SYSTEM_ONLY', if_true: [files(
  'arch_init.c',
  'cpus.c',
  'ioport.c',
  'memory.c',
  'physmem.c',
  'vl.c',
  'watchpoint.c',
)])

specific_ss.add(when: ['CONFIG_SYSTEM_ONLY', 'CONFIG_TCG'], if_true: [files(
  'icount.c',
)])

system_ss.add(files(
  'balloon.c',
  'bootdevice.c',
  'cpu-throttle.c',
  'cpu-timers.c',
  'datadir.c',
  'dirtylimit.c',
  'dma-helpers.c',
  'globals.c',
  'memory_mapping.c',
  'qdev-monitor.c',
  'qtest.c',
  'rtc.c',
  'runstate-action.c',
  'runstate-hmp-cmds.c',
  'runstate.c',
  'tpm-hmp-cmds.c',
), sdl, libpmem, libdaxctl)

if have_tpm
  system_ss.add(files('tpm.c'))
endif

system_ss.add(when: seccomp, if_true: files('qemu-seccomp.c'))
system_ss.add(when: fdt, if_true: files('device_tree.c'))
