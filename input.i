            <div style='margin:0; font-family:Helvetica; font-size:16px;'>
               <div style='margin:0; padding:0 20px 20px 20px; font-size:12px;'><a href='index.html'>Home</a> | <span style='color:red;'>Open projects</span></div>
               <div style='display:flex;'>
                  <div style='margin:0px; padding:0 20px 20px 20px;'>
                     <a href='architecture.html'>Code&nbsp;architecture</a><br>
                     Input&nbsp;description<br><br>
                     <a href='ongoing_projects.html'>Ongoing projects</a><br>
                     <a href='open_projects.html'>Open projects</a><br>
                  </div>
                  <div style='margin:0; padding:0 20px 20px 20px; width:min-content;'>
<div>
The input file should have name <code>input</code>. 
It consists of lines (cards) identified by keywords. 
The card are presented below by examples in alphabetical order of the keywords. 
All numerical values and upper-case words are specified by users. 
The low-case words are keywords and should not be changed.
The colour code indicates the class to which the card "belongs": <code style='background-color:#ccfdcc;'>Control</code>, <code style='background-color:#cdeefd;'>Fluid</code>, <code style='background-color:#fadadd;'>Neutron</code> and <code style='background-color:#ccc;'>Solid</code>.
</div><br>
<!------------------------------------------------------------------------------------------------>
<div style='background-color:#ccfdcc; border-top:1px solid black; font-size:20px; font-weight:bold'><code>*</code> : Comment</div>
<code>* A line started with an asterisk is considered a comment.</code><br>
<br>
<!------------------------------------------------------------------------------------------------>
<div style='background-color:#ccfdcc; border-top:1px solid black; font-size:20px; font-weight:bold'><code>&</code> : Line continuation</div>
<code>* An ampersand symbol at the end of the line &<br> is a line continuation symbol.</code><br>
<br>
<!------------------------------------------------------------------------------------------------>
<div style='background-color:#fadadd; border-top:1px solid black; font-size:20px; font-weight:bold'><code>betaeff</code> : Effective fractions of delayed neutrons</div>
<code>*----&nbsp;----1----&nbsp;----2----&nbsp;----3----&nbsp;----4----&nbsp;----5----&nbsp;----6----&nbsp;----7----&nbsp;----8----&nbsp;----9----&nbsp;----0----</code><br>
<code>*&nbsp;Beta-effective&nbsp;in&nbsp;6&nbsp;time&nbsp;groups</code><br>
<code>*----&nbsp;----1----&nbsp;----2----&nbsp;----3----&nbsp;----4----&nbsp;----5----&nbsp;----6----&nbsp;----7----&nbsp;----8----&nbsp;----9----&nbsp;----0----</code><br>
<code>betaeff&nbsp;&nbsp;&nbsp;0.000285&nbsp;&nbsp;0.0015975&nbsp;0.00141&nbsp;&nbsp;&nbsp;0.0030525&nbsp;0.00096&nbsp;&nbsp;&nbsp;0.000195&nbsp;&nbsp;*&nbsp;a&nbsp;comment&nbsp;can&nbsp;also&nbsp;be&nbsp;put&nbsp;here</code><br>
<div>Number of values (i.e. number of the time groups) should be the same as in card <code>dnplmb</code>.</div>
<br>
<!------------------------------------------------------------------------------------------------>
<div style='background-color:#ccc; border-top:1px solid black; font-size:20px; font-weight:bold'><code>clad</code> : Cladding tube</div>
<code>*----&nbsp;----1----&nbsp;----2----&nbsp;----3----&nbsp;----4----&nbsp;----5----&nbsp;----6----&nbsp;----7----&nbsp;----8----&nbsp;----9----&nbsp;----0----</code><br>
<code>*&nbsp;Cladding tube</code><br>
<code>*----&nbsp;----1----&nbsp;----2----&nbsp;----3----&nbsp;----4----&nbsp;----5----&nbsp;----6----&nbsp;----7----&nbsp;----8----&nbsp;----9----&nbsp;----0----</code><br>
<code>*****&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;id&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;matid&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;ri(m)&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;ro(m)&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;nr</code><br>
<code>clad&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;C01&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;SS1&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;4.1e-3&nbsp;&nbsp;&nbsp;&nbsp;4.5e-3&nbsp;&nbsp;&nbsp;&nbsp;3</code><br>
<br>
<div><code>id</code> : user-defined word of cladding tube id;</div>
<div><code>matid</code> : user-defined word of cladding tube material id, the word should appear in the <code>mat</code> card;</div>
<div><code>ri</code> : inner radius of cladding tube (m);</div>
<div><code>ro</code> : outer radius of cladding tube (m); </div>
<div><code>nr</code> : number of radial nodes.</div>
<br>
<!------------------------------------------------------------------------------------------------>
<div style='background-color:#ccffcc; border-top:1px solid black; font-size:20px; font-weight:bold'><code>constant</code> :Constant value</div>
<code>*----&nbsp;----1----&nbsp;----2----&nbsp;----3----&nbsp;----4----&nbsp;----5----&nbsp;----6----&nbsp;----7----&nbsp;----8----&nbsp;----9----&nbsp;----0----</code><br>
<code>constant&nbsp;&nbsp;PI&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;3.14159</code><br>
<br>
<!------------------------------------------------------------------------------------------------>
<div style='background-color:#fadadd; border-top:1px solid black; font-size:20px; font-weight:bold'><code>dnplmb</code> : Delayed neutron precursor decay time constants</div>
<code>*----&nbsp;----1----&nbsp;----2----&nbsp;----3----&nbsp;----4----&nbsp;----5----&nbsp;----6----&nbsp;----7----&nbsp;----8----&nbsp;----9----&nbsp;----0----</code><br>
<code>*&nbsp; Delayed neutron precursor decay time constants&nbsp;in&nbsp;6&nbsp;time&nbsp;groups (1/s)</code><br>
<code>*----&nbsp;----1----&nbsp;----2----&nbsp;----3----&nbsp;----4----&nbsp;----5----&nbsp;----6----&nbsp;----7----&nbsp;----8----&nbsp;----9----&nbsp;----0----</code><br>
<code>dnplmb&nbsp;&nbsp;&nbsp;&nbsp;0.0127&nbsp;&nbsp;&nbsp;&nbsp;0.0317&nbsp;&nbsp;&nbsp;&nbsp;0.115&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;0.311&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;1.4&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;3.87</code><br>
<br>
<div>Number of values (i.e. number of the time groups) should be the same as in card <code>betaeff</code>.</div>
<br>
<!------------------------------------------------------------------------------------------------>
<div style='background-color:#ccc; border-top:1px solid black; font-size:20px; font-weight:bold'><code>fuel</code> : Fuel column</div>
<code>*----&nbsp;----1----&nbsp;----2----&nbsp;----3----&nbsp;----4----&nbsp;----5----&nbsp;----6----&nbsp;----7----&nbsp;----8----&nbsp;----9----&nbsp;----0----</code><br>
<code>*&nbsp;Fuel column</code><br>
<code>*----&nbsp;----1----&nbsp;----2----&nbsp;----3----&nbsp;----4----&nbsp;----5----&nbsp;----6----&nbsp;----7----&nbsp;----8----&nbsp;----9----&nbsp;----0----</code><br>
<code>*****&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;id&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;matid&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;ri(m)&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;ro(m)&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;nr</code><br>
<code>fuel&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;F01&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;MOX1&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;1e-3&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;4e-3&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;20</code><br>
<br>
<div><code>id</code> : user-defined word of fuel column id;</div>
<div><code>matid</code> : user-defined word of fuel column material id, the word should appear in the <code>mat</code> card;</div>
<div><code>ri</code> : inner radius of fuel column (m);</div>
<div><code>ro</code> : outer radius of fuel column (m); </div>
<div><code>nr</code> : number of radial nodes.</div>
<br>
<!------------------------------------------------------------------------------------------------>
<div style='background-color:#ccc; border-top:1px solid black; font-size:20px; font-weight:bold'><code>fuelrod</code> : Fuel rod axial levels</div>
<code>*----&nbsp;----1----&nbsp;----2----&nbsp;----3----&nbsp;----4----&nbsp;----5----&nbsp;----6----&nbsp;----7----&nbsp;----8----&nbsp;----9----&nbsp;----0----</code><br>
<code>*&nbsp;Fuel rod axial levels</code><br>
<code>*----&nbsp;----1----&nbsp;----2----&nbsp;----3----&nbsp;----4----&nbsp;----5----&nbsp;----6----&nbsp;----7----&nbsp;----8----&nbsp;----9----&nbsp;----0----</code><br>
<code>*****&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;id&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;fuelid&nbsp;&nbsp;&nbsp;&nbsp;hgap&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;cladid&nbsp;&nbsp;&nbsp;&nbsp;p2d&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;mltpl&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;pipeid&nbsp;&nbsp;&nbsp;&nbsp;pipenodeid</code><br>
<code>fuelrod&nbsp;&nbsp;&nbsp;FR01&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;F01&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;0&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;C01&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;1.02&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;10&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;UP1&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;2</code><br>
<code>fuelrod&nbsp;&nbsp;&nbsp;FR01&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;F01&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;0&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;C01&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;1.02&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;10&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;UP1&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;3</code><br>
<code>fuelrod&nbsp;&nbsp;&nbsp;FR01&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;F01&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;0&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;C01&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;1.02&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;10&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;UP1&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;4</code><br>
<code>fuelrod&nbsp;&nbsp;&nbsp;FR01&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;F01&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;0&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;C01&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;1.02&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;10&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;UP1&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;5</code><br>
<code>*</code><br>
<code>fuelrod&nbsp;&nbsp;&nbsp;FR02&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;F01&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;1000&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;C01&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;1.02&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;10&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;UP2&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;2</code><br>
<code>fuelrod&nbsp;&nbsp;&nbsp;FR02&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;F01&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;1000&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;C01&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;1.02&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;10&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;UP2&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;3</code><br>
<code>fuelrod&nbsp;&nbsp;&nbsp;FR02&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;F01&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;1000&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;C01&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;1.02&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;10&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;UP2&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;4</code><br>
<code>fuelrod&nbsp;&nbsp;&nbsp;FR02&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;F01&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;1000&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;C01&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;1.02&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;10&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;UP2&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;5</code><br>
<br>
<div><code>id</code> : user-defined id of fuel rod to which the axial layer belongs;</div>
<div><code>fuelid</code> : fuel column id defined in <code>fuel</code> card;</div>
<div><code>hgap</code> : fuel-clad gap conductance (W/m<sup>2</sup>K); if zero, the gap conductance is calculated by the code;</div>
<div><code>cladid</code> : clad tube id defined in <code>clad</code> card;</div>
<div><code>p2d</code> : pitch-to-diameter ratio of the fuel rod lattice; </div>
<div><code>mltpl</code> : multiplicity of the heat exchange surface (actual number of fuel rods simulated by one).</div>
<div><code>pipeid</code> : thermal-hydraulic pipe id defined in the <code>pipe</code> card;</div>
<div><code>pipenodeid</code> : index of the node inside the thermal-hydraulic pipe coupled to the current fuel rod level.</div>
<br>
<!------------------------------------------------------------------------------------------------>
<div style='background-color:#ccc; border-top:1px solid black; font-size:20px; font-weight:bold'><code>innergas</code> : Fuel rod inner gas</div>
<code>*----&nbsp;----1----&nbsp;----2----&nbsp;----3----&nbsp;----4----&nbsp;----5----&nbsp;----6----&nbsp;----7----&nbsp;----8----&nbsp;----9----&nbsp;----0----</code><br>
<code>*&nbsp;Fuel rod inner gas</code><br>
<code>*----&nbsp;----1----&nbsp;----2----&nbsp;----3----&nbsp;----4----&nbsp;----5----&nbsp;----6----&nbsp;----7----&nbsp;----8----&nbsp;----9----&nbsp;----0----</code><br>
<code>*****&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;fuelrodid&nbsp;matid&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;plenv(m3)</code><br>
<code>innergas&nbsp;&nbsp;FR01&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;HE1&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;53e-6</code><br>
<code>innergas&nbsp;&nbsp;FR02&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;HE1&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;53e-6</code><br>

                  </div>
               </div>
            </div>
