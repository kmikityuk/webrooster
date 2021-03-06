            <div style='margin:0; font-family:Helvetica; font-size:16px;'>
               <div style='margin:0; padding:0 20px 20px 20px; font-size:12px;'><a href='index.html'>Home</a> | <a href='architecture.html'>Code architecture</a> | <span style='color:red;'><code>Control</code></span></div>
               <div style='display:flex;'>
                  <div style='margin:0; padding:0 20px 20px 20px;'>
                     <div style='margin:0; padding:0 20px 20px 0;'>Tree of classes:</div>
                     <code style='white-space:nowrap;'>
                        <a href='architecture.html'>Reactor</a><br>
                        &#9500;&#9472;&nbsp;<a href='control.html'>Control</a><br>
                        &#9500;&#9472;&nbsp;<b>Solid</b><br>
                        &#9474;&nbsp;&nbsp;&#9500;&#9472;&nbsp;Structure[]<br>
                        &#9474;&nbsp;&nbsp;&#9492;&#9472;&nbsp;FuelRod[]<br>
                        &#9474;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&#9500;&#9472;&nbsp;Fuel[]<br>
                        &#9474;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&#9474;&nbsp;&nbsp;&#9492;&#9472;&nbsp;FuelGrain[]<br>
                        &#9474;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&#9500;&#9472;&nbsp;InnerGas<br>
                        &#9474;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&#9492;&#9472;&nbsp;Clad[]<br>
                        &#9500;&#9472;&nbsp;Fluid<br>
                        &#9492;&#9472;&nbsp;Core<br>
                        &nbsp;&nbsp;&nbsp;&#9500;&#9472;&nbsp;Isotope[]<br>
                        &nbsp;&nbsp;&nbsp;&#9492;&#9472;&nbsp;Mix[]<br>
                     </code>
                  </div>
                  <div style='margin:0; padding:0 20px 20px 20px;'>
                     <br><br>The <code>Solid</code> class is a driver for the parts of the code that simulate thermal behaviour of reactor structures* 
                     (e.g. reactor vessel, diagrid, control rod drivelines) and thermal-mechanical performance of fuel rods*. 
                     The constructor of the <code>Solid</code> class creates the <code>structure</code> and <code>fuelrod</code> objects
                     from the <code>Structure</code> and <code>FuelRod</code> classes as well as initializes the vector of unknowns from 
                     those built in the <code>Structure</code> and <code>FuelRod</code> classes.

                     <br><br>The <code>calculate_rhs(self, reactor, t)</code> function is defined in the <code>Solid</code> class and called 
                     in the constructor of the <code>Reactor</code> class just to construct the right-hand side vector by calling 
                     <code>structure.calculate_rhs(self, reactor, t)</code> and <code>fueldrod.calculate_rhs(self, reactor, t)</code> functions 
                     calculating the right-hand sides of the corresponding parts of the whole system of ODEs.<br><br>

                     *<span style='font-size:12px;'>under development</span>
                  </div>
               </div>
            </div>
