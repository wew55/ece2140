# Directory Intro

* The source files are in ./src_parallel

* The testbench files are in ./sim

* The whole project is under ./cnn_parallel

* The input/output files for testing are ./input_file and ./output_file

# How to run the project?

1. Try to open the vivado project file in ./cnn_parallel/cnn_parallel.xpr,
  and the project is automatically loaded.

2. The paths to input/output files may need to be modified according to 
  local settings.

* Change the following output files paths in line 30, 31 in ./sim/test_top.vhd to: $PROJECT_ROOT_DIR/ece2140/ece2140_cnn_theta/hardware/cnn_final/output_file

* Change the following input files paths in line 198, 211, 224 in ./sim/test_top.vhd to: $PROJECT_ROOT_DIR/ece2140/ece2140_cnn_theta/hardware/cnn_final/input_file

3. Run simulation in vivado, and type "restart" then "run all" (required to run very long time) in Tcl cmd line console.

4. The output files should be written to ./output_file/out_pool.txt after running the simulation in vivado.

# BSD License

**THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT OWNER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.**
