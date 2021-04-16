            <div style='margin:0; font-family:Helvetica; font-size:16px;'>
               <div style='margin:0; padding:0 20px 20px 20px; font-size:12px;'><a href='index.html'>Home</a> | <span style='color:red;'>Code architecture</span></div>
               <div style='display:flex;'>
                  <div style='margin:0; padding:0 20px 20px 20px;'>
                     <div style='margin:0; padding:0 20px 20px 0;'>Tree of classes:</div>
                     <code style='white-space:nowrap;'>
                        <b>Reactor</b><br>
                        &#9500;&#9472;&nbsp;<a href='control.html'>Control</a><br>
                        &#9500;&#9472;&nbsp;<a href='solid.html'>Solid</a><br>
                        &#9474;&nbsp; &#9500;&#9472; &nbsp;Structure<br>
                        &#9474;&nbsp; &#9492;&#9472; &nbsp;FuelRod<br>
                        &#9474;&nbsp; &nbsp; &nbsp;  &nbsp;&#9500;&#9472;&nbsp;FuelPellet<br>
                        &#9474;&nbsp; &nbsp; &nbsp;  &nbsp;&#9474;&nbsp; &#9492;&#9472;&nbsp;FuelGrain<br>
                        &#9474;&nbsp; &nbsp; &nbsp;  &nbsp;&#9500;&#9472;&nbsp;InnerGas<br>
                        &#9474;&nbsp; &nbsp; &nbsp;  &nbsp;&#9492;&#9472;&nbsp;Clad<br>
                        &#9500;&#9472;&nbsp;Fluid<br>
                        &#9492;&#9472;&nbsp;Neutron<br>
                        &nbsp;&nbsp;&nbsp;&#9500;&#9472;&nbsp;PointKinetics<br>
                        &nbsp;&nbsp;&nbsp;&#9492;&#9472;&nbsp;SpatialKinetics<br>
                     </code>
                  </div>
                  <div style='margin:0; padding:0 20px 20px 20px;'>
                     <br><br>At the very top of the code the <code>r</code> object is created as follows: <code>r = Reactor()</code> and 
                     virtually everything happens in the constructor of the <code>Reactor</code> class. 
                     First, four objects are created from classes <code>Control</code>, <code>Solid</code>, <code>Fluid</code> and <code>Neutron</code>.
                     Then the list of unknowns is initialized and the system of Ordinary Differenial Equations (ODEs) is solved using 
                     the Livermore Solver for Ordinary Differential Equations with Sparse Jacobian (LSODES) which is the engine of the ROOSTER code. 
                     LSODES (available in the SciPy package) solves a stiff system of ODEs of the form <code>dy/dt = f(t,y)</code>. 
                     The vector of the right-hand sides of this system is constructed in the <code>construct_rhs(t, y)</code> function 
                     defined in the <code>Reactor</code> class by calling four <code>calculate_rhs(self, reactor, t)</code> functions 
                     defined in classes <code>Control</code>, <code>Solid</code>, <code>Fluid</code> and <code>Neutron</code> 
                     and calculating the right-hand sides of the corresponding parts of the whole system of ODEs.
                  </div>
               </div>
            </div>
