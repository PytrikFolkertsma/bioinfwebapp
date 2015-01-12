<%--
    Document   : submit_entry_fields
    Created on : Dec 11, 2014, 11:10:33 AM
    Author     : eschutte
--%>
<div id="submit_entry_fields">
    <form id="submit_data_form" class="formular" method="POST" action="settings.do">
        
        
        
        
        <label>
            <span class="field_header" id="req_node_number_h">Required number of nodes : </span><br />
            <span class="field_comment" id="req_node_number">Enter the number of sequences you desire in your fasta file.
                <br /><br />Minimal input = "1", maximum input = "5000"</span>
            <input value="" class="text-input" type="number" name="number_field"
                   id="seq_number_field" placeholder="2000" min="1" max="5000" required/>
        </label>
        <label>
            <span class="field_header" id="req_node_length_h">The length of each node sequence :</span><br />
            <span class="field_comment" id="req_node_length">Enter the sequence length for your sequences in the fasta file.
                <br /><br />Minimal input = "5", maximum input = "2500"</span>
            <input value="" class="text-input" type="number" name="length"
                   id="seq_length" placeholder="500" min="5" max="2500" required/>
        </label>
        <label>
            <span class="field_header" id="req_node_var_h">Sequence deviation : </span><br />
            <span class="field_comment" id="req_node_var">Enter the sequence length variation for your sequences in the fasta file.
                <br /><br />Minimal input = "0", maximum input = "100"</span>
            <input value="" class="text-input" type="number" name="length_variation"
                   id="seq_length_variation" placeholder="25"  min="0" max="100" required/>
        </label>
        <label>
            <span class="field_header" id="req_node_perc_h">Nucleotide Frequency: </span><br />
            <span class="field_comment" id="req_node_perc">Slide for your nucleotide frequency in the fasta file.</span>
            
            <div id="sliders">
                <table>
                    <tr>
                        <th>Percentage A</th>
                        <th>Percentage T</th>
                        <th>Percentage G</th>
                        <th>Percentage C</th>
                    </tr>
                    <tr>
                        <td>
                            <div id="slider_a" class="sliders"></div><br />
                            <input id="lock_slider_a" type="checkbox" name="lock_A" value="ON" />
                            <div class="value">
                                <span id="value_slider_a" class="value_slider"  />25</span>
                                
                            </div>
                        </td>
                        <td>
                            <div id="slider_t" class="sliders"></div><br />
                            <input id="lock_slider_t" type="checkbox" name="lock_T" value="ON" />
                            <div  class="value">
                                <span id="value_slider_t" class="value_slider" />25</span>
                                
                            </div>
                        </td>
                        <td>
                            <div id="slider_g" class="sliders"></div><br />
                            <input id="lock_slider_g" type="checkbox" name="lock_G" value="ON" />
                            <div class="value">
                                <span id="value_slider_g" class="value_slider" />25</span>
                                
                            </div>
                        </td>
                        <td>
                            <div id="slider_c" class="sliders"></div><br />
                            <input id="lock_slider_c" type="checkbox" name="lock_C" value="ON" />
                            <div class="value">
                                <span id="value_slider_c" class="value_slider" />25</span>
                                
                            </div>
                        </td>
                    </tr>
                </table>
            </div>    
        </label>
        <input id=value_slider_a_i" class="value_slider" type="hidden" name="slider_a" value="25"/>
        <input id=value_slider_t_i" class="value_slider" type="hidden" name="slider_t" value="25"/>
        <input id=value_slider_g_i" class="value_slider" type="hidden" name="slider_g" value="25"/>
        <input id=value_slider_c_i" class="value_slider" type="hidden" name="slider_c" value="25"/>
        <input class="submit" type="submit" value="Validate &amp; Send!" name="submit_form" id="submit_form"/>
    </form>
</div>