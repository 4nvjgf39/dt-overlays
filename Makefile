# SPDX-License-Identifier: GPL-2.0+ or MIT
# Copyright (C) 2021-present Team LibreELEC (https://libreelec.tv)

DTBOS := \
  overlays/slice/slice-audio.dtbo \
  overlays/slice/slice-cm3-ws2812.dtbo \
  overlays/slice/slice-cm4s-ws2812.dtbo

all: $(DTBOS)

clean:
	@rm overlays/*/*.dtbo

%.dtbo: %.dts
	@dtc -@ -O dtb -o $@ $<
