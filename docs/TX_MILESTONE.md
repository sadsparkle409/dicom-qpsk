# TX Milestone

## Scope
- Current top-level TX path uses `data_gen` to drive the QPSK chain.
- UDP receive/transmit, FIFO buffering, and loopback remain enabled for network-side verification.
- `byte2symbol` is intentionally kept in the design as the next integration point for `UDP -> QPSK`.

## Repo Hygiene
- Vivado generated state is ignored through [`.gitignore`](/D:/FPGAProject/dicom_qpsk/.gitignore).
- Source-of-truth files stay under `dicom_qpsk.srcs/`, `matlab/`, `docs/`, `memory/`, and `scripts/`.
- Build artifacts should be regenerated locally from the `.xpr` plus tracked HDL/IP sources.

## Constraints
- The committed XDC currently covers pinout, clocks, CDC grouping, and async reset exclusions.
- The following constraints still require board timing data before they should be signed off:
  - RGMII `set_input_delay` / `set_output_delay`
  - DAC output interface timing against `da_clk1` / `da_clk2`
  - `CFGBVS` / `CONFIG_VOLTAGE` after confirming the board configuration bank voltage

## Verification Notes
- `matlab/qpsk_spectrum_analysis.m` is now self-contained and no longer depends on an external absolute-path payload file.
- MATLAB constellation mapping is aligned with [`qpsk_mapper.v`](/D:/FPGAProject/dicom_qpsk/dicom_qpsk.srcs/sources_1/new/qpsk_mapper.v).
