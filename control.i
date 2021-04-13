            <div style='margin:0; font-family:Helvetica; font-size:16px;'>
               <div style='margin:0; padding:0 20px 20px 20px; font-size:12px;'><a href='index.html'>Home</a> | <a href='architecture.html'>Code architecture</a> | <span style='color:red;'><code>Control</code></span></div>
               <div style='display:flex;'>
                  <div style='margin:0; padding:0 20px 20px 20px;'>
                     <div style='margin:0; padding:0 20px 20px 0;'>Tree of classes:</div>
                     <code style='white-space:nowrap;'>
                        <a href='architecture.html'>Reactor</a><br>
                        &#9500;&#9472;&nbsp;<b>Control</b><br>
                        &#9500;&#9472;&nbsp;Solid<br>
                        &#9474;&nbsp; &#9500;&#9472; &nbsp;Structure<br>
                        &#9474;&nbsp; &#9492;&#9472; &nbsp;FuelRod<br>
                        &#9474;&nbsp; &nbsp; &nbsp;  &nbsp;&#9500;&#9472;&nbsp;Fuel<br>
                        &#9474;&nbsp; &nbsp; &nbsp;  &nbsp;&#9474;&nbsp; &#9492;&#9472;&nbsp;FuelGrain<br>
                        &#9474;&nbsp; &nbsp; &nbsp;  &nbsp;&#9500;&#9472;&nbsp;Gap<br>
                        &#9474;&nbsp; &nbsp; &nbsp;  &nbsp;&#9492;&#9472;&nbsp;Clad<br>
                        &#9500;&#9472;&nbsp;Fluid<br>
                        &#9492;&#9472;&nbsp;Neutron<br>
                        &nbsp;&nbsp;&nbsp;&#9500;&#9472;&nbsp;PointKinetics<br>
                        &nbsp;&nbsp;&nbsp;&#9492;&#9472;&nbsp;SpatialKinetics<br>
                     </code>
                  </div>
                  <div style='margin:0; padding:0 20px 20px 20px;'>
                     <br><br>The <code>Control</code> class is responsible for reading the <code>input</code> file (function <code>construct_input()</code> called in the <code>Control</code> class constructor) and
                     for evaluating signals and control blocks*. All input data are stored in the dictionary <code>reactor.inp</code>. 
                     If the control block requires integration of an Ordinary Differential Equation (ODE) with respect to time, 
                     the right-hand side of this ODE is included* in the overall system of ODEs through the <code>control.calculate_rhs(self, reactor, t)</code> function 
                     called by the <code>Reactor</code> class constructor.
                     <br><br>
                     *<span style='font-size:12px;'>under development</span>
                  </div>
               </div>
            </div>
