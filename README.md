# GBCR Testing

## Description
The GBCR (Gigabit Cable Receiver) is a custom radiaiton hard ASIC designed by SMU. It functions as a Continuous time linear equalizer. This library contains the Viviado project and bitstream necessary to program the KC705 FPGAs we use for testing the GBCRs. It also contains the scripts necessary to configure the GBCR over I<sup>2</sup>C. Finally the software to controll the FPGA and interprate the results in also included. 

## Table of Contents
- [Installation](#installation)
- [Usage](#usage)
- [Features](#features)
- [Contributing](#contributing)
- [License](#license)

## Installation
Instructions on how to install and set up the project.

```bash
# Example:
git clone https://github.com/username/repository.git
cd repository
npm install
```

## Usage
Steps or examples on how to use the project.

```bash
# Example:
npm start
```

## Features
- Feature 1
- Feature 2
- Feature 3

## Contributing
Contributions are welcome! Please follow the [contribution guidelines](CONTRIBUTING.md).

## To Do
- update the FPGA firmware to load from an SD Card
- update the readout code to display a rolling count of progress instead of all at once at the end 
- update the program_fpga.tcl script to porgram all attached fpgas

## License
This project is licensed under the [MIT License](LICENSE).