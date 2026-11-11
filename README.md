# 3-Stage CMOS Ring Oscillator

Design, simulation, and characterization of a three-stage CMOS ring oscillator using the **SkyWater SKY130 Open PDK**, **Xschem**, and **ngspice**.

> **Project status:** Simulation and characterization work. Physical layout and sign-off are not included in the current scope.

## Overview

A ring oscillator is formed by connecting an odd number of inverting stages in a closed loop. The resulting feedback causes the output to oscillate without an external periodic input. This project uses three CMOS inverter stages and studies how the oscillation frequency responds to operating conditions and device variation.

## Objectives

- Build and simulate a 3-stage CMOS ring oscillator using SKY130 device models.
- Observe transient waveforms and extract oscillation period and frequency.
- Study process, voltage, and temperature (PVT) dependence.
- Examine sensitivity to supply-voltage ripple.
- Run Monte Carlo simulations and characterize the resulting frequency spread.

## Tools and technology

| Item | Environment |
|---|---|
| PDK | SkyWater SKY130 Open PDK |
| Schematic capture | Xschem |
| Circuit simulation | ngspice |
| Operating environment | Ubuntu on WSL |
| Layout | Not included in the current project scope |

## Repository structure

```text
.
├── schematics/          # Xschem source schematics
├── simulations/
│   ├── transient/       # Nominal transient simulation
│   ├── pvt/             # Process, voltage and temperature runs
│   ├── supply-noise/    # Supply ripple experiments
│   └── monte-carlo/     # Statistical simulation decks and logs
├── results/
│   ├── pvt-analysis/
│   ├── noise-analysis/
│   └── monte-carlo/
├── figures/             # Waveforms, plots and result figures
├── documentation/       # Project report and supporting notes
└── README.md
```

Directories will become visible in GitHub as files are added.

## Characterization results

The values below are the results recorded during the project. They should be interpreted in the context of the corresponding simulation decks and conditions; the source files and logs will be added so the results can be independently checked.

### Supply ripple sweep

| Ripple amplitude | Period (s) | Frequency (Hz) |
|---:|---:|---:|
| 10 mV | 5.814023e-10 | 1.719979e+09 |
| 25 mV | 5.797721e-10 | 1.724816e+09 |
| 50 mV | 5.770921e-10 | 1.732826e+09 |
| 100 mV | 5.718650e-10 | 1.748664e+09 |

### Monte Carlo summary

A 100-run Monte Carlo simulation was performed. The previously recorded summary is:

| Metric | Recorded value |
|---|---:|
| Mean frequency | approximately 1.7154 GHz |
| Standard deviation | approximately 25.31 MHz |
| Minimum | approximately 1.6699 GHz |
| Maximum | approximately 1.7769 GHz |
| Peak-to-peak spread | approximately 107.09 MHz |
| Relative standard deviation | approximately 1.48% |

The histogram is presented as an empirical distribution. **No Gaussian distribution is assumed.** These summary values will be reconciled against the raw run data when it is added.

### PVT analysis

Previously recorded endpoint/summary values:

- Process corners: SS approximately 1.184 GHz and FF approximately 2.440 GHz.
- Supply sweep: 1.6 V approximately 1.421 GHz; 2.0 V approximately 2.088 GHz.
- Temperature sweep: recorded frequencies approximately 1.757–1.779 GHz.

The complete PVT table and exact test conditions will be added from the original simulation results. Intermediate values are intentionally not inferred.

## Reproducing the simulations

The simulation decks depend on a local SKY130 installation. Update model-library paths in the decks to match your machine before running them.

Typical tools used:

- Xschem to inspect/edit schematics and generate simulator netlists.
- ngspice to run transient and characterization simulations.
- Python or spreadsheet tools to analyze exported Monte Carlo data and generate plots.

Exact commands will be documented alongside each simulation deck once the source files are committed.

## Current limitations

- No verified physical layout, DRC, LVS, parasitic extraction, or post-layout simulation is included.
- Numerical summaries are provisional until the original decks, logs, and raw data are committed and cross-checked.
- Model paths and simulator versions may need adjustment on another machine.

## Next steps

1. Add the original Xschem schematics and generated netlists.
2. Add separate, reproducible decks for transient, PVT, supply-ripple, and Monte Carlo runs.
3. Commit raw data, logs, and plots with units and test conditions.
4. Add the final project report and a reproducibility guide.

## Author

**Devesh Doshi**  
Electronics and Communication Engineering  
Faculty of Technology, University of Delhi
