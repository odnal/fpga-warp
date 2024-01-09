examples and stuff with basys3 aritix-7 and icestick HX-1k fpga dev boards
- using yosys toolchain environment


Install Prerequisites:

sudo apt install build-essential clang bison flex libreadline-dev \
                gawk tcl-dev libffi-dev git mercurial graphviz   \
                xdot pkg-config python python3 libftdi-dev


Download tools:

sudo apt install iverilog - for simulation or you can look into verilator or proprietary tools
sudo apt install gtkwave

git clone https://github.com/cliffordwolf/icestorm.git
git clone https://github.com/cseed/arachne-pnr.git
git clone https://github.com/cliffordwolf/yosys.git



cd icestorm
make -j$(nproc)
sudo make install
cd ..

cd arachne-pnr
make -j$(nproc)
sudo make install
cd ..

cd yosys
make -j$(nproc)
sudo make install
cd ..
