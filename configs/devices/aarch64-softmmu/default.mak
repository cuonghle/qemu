# Default configuration for aarch64-softmmu

# We support all the 32 bit boards so need all their config
include ../arm-softmmu/default.mak

# Xilinx
CONFIG_XLNX_VERSAL_ARM=y
CONFIG_XLNX_ZYNQMP_CSU=y
CONFIG_XLNX_VERSAL_PMC=y
CONFIG_REMOTE_PORT_PCI=y
