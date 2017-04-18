## Directory Intro

* The source files are in ./FC.src

* The testbench files are in ./FC.sim

* The whole project is under ./cnn_fullyconnected

* The input files are input.txt and exponential_input

## How to run the project?

* Try to open the vivado project file in ./cnn_fullyconnected/FC.xpr, and the project is automatically loaded.
* The paths to input files may need to be modified according to local settings.
* Change the following input files paths in line 81 in test_top.vhd to: $PROJECT_ROOT_DIR/ece2140/ece2140_cnn_theta/hardware/cnn_fullyconnected/input.txt
* Change the following exponential input files paths in line 48 in bram.vhd to: $PROJECT_ROOT_DIR/ece2140/ece2140_cnn_theta/hardware/cnn_fullyconnected/exponential_input.txt
* Run simulation in vivado, and type "restart" then "run all" (required to run very long time) in Tcl cmd line console.

# BSD License

**THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT OWNER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.**
