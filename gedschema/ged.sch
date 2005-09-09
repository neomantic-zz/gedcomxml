<?xml version="1.0" encoding="utf-8" standalone="yes"?>
<sch:schema xmlns:sch="http://www.ascc.net/xml/schematron" xmlns:rng="http://relaxng.org/ns/structure/1.0">
   <sch:pattern xmlns="http://relaxng.org/ns/structure/1.0" name="Checking length of Header Record SOUR">
            
      <sch:rule context="HEAD/SOUR/node()[self::text()]">
              
         <sch:assert test="string-length( normalize-space(.) ) &lt; 21">Exceeds maximum SOUR length of 20</sch:assert>
            
      </sch:rule>
          
   </sch:pattern>
   <sch:pattern xmlns="http://relaxng.org/ns/structure/1.0" name="Checking length of Header Record CORP">
                  
      <sch:rule context="CORP/node()[self::text()]">
                    
         <sch:assert test="string-length( normalize-space(.) ) &lt; 91">Exceeds maximum CORP length of 90</sch:assert>
                  
      </sch:rule>
                
   </sch:pattern>
   <sch:pattern xmlns="http://relaxng.org/ns/structure/1.0" name="Checking length of Header Record DATA">
                  
      <sch:rule context="HEAD/SOUR/DATA/node()[self::text()]">
                    
         <sch:assert test="string-length( normalize-space(.) ) &lt; 91">Exceeds maximum DATA length of 90</sch:assert>
                  
      </sch:rule>
                
   </sch:pattern>
   <sch:pattern xmlns="http://relaxng.org/ns/structure/1.0" name="Checking length of Header Record DATE">
              
      <sch:rule context="GED/HEAD/DATE/node()[self::text()]">
                
         <sch:assert test="string-length(.) &lt; 12">range exceeds maximum of 11</sch:assert>
                
         <sch:assert test="string-length(.) &gt; 9">range fails to meet the minimum of 10</sch:assert>
              
      </sch:rule>
            
   </sch:pattern>
   <sch:pattern xmlns="http://relaxng.org/ns/structure/1.0" name="Checking length of Header Record CHAR">
            
      <sch:rule context="CHAR/node()[self::text()]">
              
         <sch:assert test="contains(., 'ANSEL') or contains(., 'UNICODE') or contains (., 'ASCII')">CHAR of Gedcom file fails to be ANSEL, UNICODE, or ASCII</sch:assert>
            
      </sch:rule>
          
   </sch:pattern>
   <sch:pattern xmlns="http://relaxng.org/ns/structure/1.0" name="Checking length of Header Record NOTE">
              
      <sch:rule context="GED/HEAD/NOTE/node()[self::text()]">
                
         <sch:assert test="string-length( normalize-space(.) ) &lt; 248">Exceeds maximum NOTE length of 248</sch:assert>
              
      </sch:rule>
            
   </sch:pattern>
   <sch:pattern xmlns="http://relaxng.org/ns/structure/1.0" name="Checking length of Individual Record NAME">
              
      <sch:rule context="INDI/NAME/node()[self::text()]">
                
         <sch:assert test="string-length( normalize-space(.) ) &lt; 121">Exceeds maximum NAME length of 120</sch:assert>
              
      </sch:rule>
            
   </sch:pattern>
   <sch:pattern xmlns="http://relaxng.org/ns/structure/1.0" name="Checking length of Note Record NOTE">
        
      <sch:rule context="NOTE/node()[self::text()]">
          
         <sch:assert test="string-length( normalize-space(.) ) &lt; 249">Exceeds maximum NOTE length of 248</sch:assert>
        
      </sch:rule>
      
   </sch:pattern>
   <sch:pattern xmlns="http://relaxng.org/ns/structure/1.0" name="Checking length of Source Record EVEN">
                    
      <sch:rule context="SOUR/DATA/EVEN/node()[self::text()]">
                      
         <sch:assert test="string-length( normalize-space(.) ) &lt; 91">EVEN exceeds maximum of 90</sch:assert>
                    
      </sch:rule>
                  
   </sch:pattern>
   <sch:pattern xmlns="http://relaxng.org/ns/structure/1.0" name="Checking length of Header Record AUTH">
              
      <sch:rule context="AUTH/node()[self::text()]">
                
         <sch:assert test="string-length( normalize-space(.) ) &lt; 249">Exceeds maximum AUTH length of 248</sch:assert>
              
      </sch:rule>
            
   </sch:pattern>
   <sch:pattern xmlns="http://relaxng.org/ns/structure/1.0" name="Checking length of Source Record TITL">
              
      <sch:rule context="SOUR/TITL/node()[self::text()]">
                
         <sch:assert test="string-length( normalize-space(.) ) &lt; 249">Exceeds maximum TITL length of 248</sch:assert>
              
      </sch:rule>
            
   </sch:pattern>
   <sch:pattern xmlns="http://relaxng.org/ns/structure/1.0" name="Checking length of Source Record PUBL">
              
      <sch:rule context="PUBL/node()[self::text()]">
                
         <sch:assert test="string-length( normalize-space(.) ) &lt; 249">Exceeds maximum PUBL length of 248</sch:assert>
              
      </sch:rule>
            
   </sch:pattern>
   <sch:pattern xmlns="http://relaxng.org/ns/structure/1.0" name="Checking length of Source Record TEXT">
              
      <sch:rule context="SOUR/TEXT/node()[self::text()]">
                
         <sch:assert test="string-length( normalize-space(.) ) &lt; 249">Exceeds maximum TEXT length of 248</sch:assert>
              
      </sch:rule>
            
   </sch:pattern>
   <sch:pattern xmlns="http://relaxng.org/ns/structure/1.0" name="Checking length of Source Repository Citation CALN">
                    
      <sch:rule context="CALN/node()[self::text()]">
                      
         <sch:assert test="string-length( normalize-space(.) ) &lt; 121">CALN range exceeds maximum of 120</sch:assert>
                    
      </sch:rule>
                  
   </sch:pattern>
   <sch:pattern xmlns="http://relaxng.org/ns/structure/1.0" name="Checking length of Address Structure ADDR">
        
      <sch:rule context="ADDR/node()[self::text()]">
          
         <sch:assert test="string-length( normalize-space(.) ) &lt; 61">Exceeds maximum NOTE length of 60</sch:assert>
        
      </sch:rule>
      
   </sch:pattern>
   <sch:pattern xmlns="http://relaxng.org/ns/structure/1.0" name="Checking length of Change Date">
            
      <sch:rule context="CHAN/DATE/node()[self::text()]">
              
         <sch:assert test="string-length( normalize-space(.) ) &lt; 12">range exceeds maximum of 11</sch:assert>
              
         <sch:assert test="string-length( normalize-space(.) ) &gt; 9">range fails to meet the minimum of 10</sch:assert>
            
      </sch:rule>
          
   </sch:pattern>
   <sch:pattern xmlns="http://relaxng.org/ns/structure/1.0" name="Checking length of Event Detail Structure PLAC">
            
      <sch:rule context="PLAC/node()[self::text()]">
              
         <sch:assert test="string-length( normalize-space(.) ) &lt; 121">PLAC range exceeds maximum of 121</sch:assert>
            
      </sch:rule>
          
   </sch:pattern>
   <sch:pattern xmlns="http://relaxng.org/ns/structure/1.0" name="Checking length of Individual Attribute Structure CAST">
          
      <sch:rule context="CAST/node()[self::text()]">
            
         <sch:assert test="string-length( normalize-space(.) ) &lt; 91">Exceeds maximum CAST length of 90</sch:assert>
          
      </sch:rule>
        
   </sch:pattern>
   <sch:pattern xmlns="http://relaxng.org/ns/structure/1.0" name="Checking length of Individual Attribute Structure DSCR">
          
      <sch:rule context="DSCR/node()[self::text()]">
            
         <sch:assert test="string-length( normalize-space(.) ) &lt; 249">Exceeds maximum DSCR length of 248</sch:assert>
          
      </sch:rule>
        
   </sch:pattern>
   <sch:pattern xmlns="http://relaxng.org/ns/structure/1.0" name="Checking length of Individual Attribute Structure EDUC">
          
      <sch:rule context="EDUC/node()[self::text()]">
            
         <sch:assert test="string-length( normalize-space(.) ) &lt; 249">Exceeds maximum EDUC length of 248</sch:assert>
          
      </sch:rule>
        
   </sch:pattern>
   <sch:pattern xmlns="http://relaxng.org/ns/structure/1.0" name="Checking length of Individual Attribute Structure INDO">
          
      <sch:rule context="INDO/node()[self::text()]">
            
         <sch:assert test="string-length( normalize-space(.) ) &lt; 31">Exceeds maximum INDO length of 30</sch:assert>
          
      </sch:rule>
        
   </sch:pattern>
   <sch:pattern xmlns="http://relaxng.org/ns/structure/1.0" name="Checking length of Individual Attribute Structure NATI">
          
      <sch:rule context="NATI/node()[self::text()]">
            
         <sch:assert test="string-length( normalize-space(.) ) &lt; 121">Exceeds maximum NATI length of 120</sch:assert>
          
      </sch:rule>
        
   </sch:pattern>
   <sch:pattern xmlns="http://relaxng.org/ns/structure/1.0" name="Checking length of Individual Attribute Structure NCHI">
          
      <sch:rule context="NCHI/node()[self::text()]">
            
         <sch:assert test="string-length( normalize-space(.) ) &lt; 4">Exceeds maximum NCHI length of 3</sch:assert>
          
      </sch:rule>
        
   </sch:pattern>
   <sch:pattern xmlns="http://relaxng.org/ns/structure/1.0" name="Checking length of Individual Attribute Structure NMR">
          
      <sch:rule context="NMR/node()[self::text()]">
            
         <sch:assert test="string-length( normalize-space(.) ) &lt; 4">Exceeds maximum NMR length of 3</sch:assert>
          
      </sch:rule>
        
   </sch:pattern>
   <sch:pattern xmlns="http://relaxng.org/ns/structure/1.0" name="Checking length of Individual Attribute Structure OCCU">
          
      <sch:rule context="OCCU/node()[self::text()]">
            
         <sch:assert test="string-length( normalize-space(.) ) &lt; 91">Exceeds maximum OCCU length of 90</sch:assert>
          
      </sch:rule>
        
   </sch:pattern>
   <sch:pattern xmlns="http://relaxng.org/ns/structure/1.0" name="Checking length of Individual Attribute Structure PROP">
          
      <sch:rule context="PROP/node()[self::text()]">
            
         <sch:assert test="string-length( normalize-space(.) ) &lt; 249">Exceeds maximum PROP length of 248</sch:assert>
          
      </sch:rule>
        
   </sch:pattern>
   <sch:pattern xmlns="http://relaxng.org/ns/structure/1.0" name="Checking length of Individual Attribute Structure RELI">
          
      <sch:rule context="RELI/node()[self::text()]">
            
         <sch:assert test="string-length( normalize-space(.) ) &lt; 91">Exceeds maximum RELI length of 90</sch:assert>
          
      </sch:rule>
        
   </sch:pattern>
   <sch:pattern xmlns="http://relaxng.org/ns/structure/1.0" name="Checking length of Individual Attribute Structure SSN">
          
      <sch:rule context="SSN/node()[self::text()]">
            
         <sch:assert test="string-length( normalize-space(.) ) &lt; 12">Exceeds maximum SSN length of 11</sch:assert>
          
      </sch:rule>
          
      <sch:rule context="SSN/node()[self::text()]">
            
         <sch:assert test="string-length( normalize-space(.) ) &gt; 8">Fails maximum SSN length of 9</sch:assert>
          
      </sch:rule>
        
   </sch:pattern>
   <sch:pattern xmlns="http://relaxng.org/ns/structure/1.0" name="Checking length of Individual Attribute Structure TITL">
          
      <sch:rule context="INDI/TITL/node()[self::text()]">
            
         <sch:assert test="string-length( normalize-space(.) ) &lt; 121">Exceeds maximum NOTE length of 120</sch:assert>
          
      </sch:rule>
        
   </sch:pattern>
   <sch:pattern xmlns="http://relaxng.org/ns/structure/1.0" name="Checking length of Note Structure NOTE">
        
      <sch:rule context="NOTE/node()[self::text()]">
          
         <sch:assert test="string-length( normalize-space(.) ) &lt; 249">NOTE range exceeds maximum of 248</sch:assert>
        
      </sch:rule>
      
   </sch:pattern>
   <sch:pattern xmlns="http://relaxng.org/ns/structure/1.0" name="Checking length of Source Citation EVEN">
              
      <sch:rule context="EVEN/node()[self::text()]">
                
         <sch:assert test="string-length( normalize-space(.) ) &lt; 16">EVEN range exceeds maximum of 15</sch:assert>
              
      </sch:rule>
            
   </sch:pattern>
   <sch:pattern xmlns="http://relaxng.org/ns/structure/1.0" name="Checking length of Source Citation TEXT">
                    
      <sch:rule context="TEXT/node()[self::text()]">
                      
         <sch:assert test="string-length( normalize-space(.) ) &lt; 249">TEXT range exceeds maximum of 248</sch:assert>
                    
      </sch:rule>
                  
   </sch:pattern>
   <sch:pattern xmlns="http://relaxng.org/ns/structure/1.0" name="Checking length of Source Citaton (simple) SOUR">
        
      <sch:rule context="SOUR/node()[self::text()]">
          
         <sch:assert test="string-length( normalize-space(.) ) &lt; 249">SOUR range exceeds maximum of 248</sch:assert>
        
      </sch:rule>
      
   </sch:pattern>
   <sch:pattern xmlns="http://relaxng.org/ns/structure/1.0" name="Checking length of Source Citation (simple) TEXT">
              
      <sch:rule context="TEXT/node()[self::text()]">
                
         <sch:assert test="string-length( normalize-space(.) ) &lt; 249">TEXT range exceeds maximum of 248</sch:assert>
              
      </sch:rule>
            
   </sch:pattern>
   <sch:pattern xmlns="http://relaxng.org/ns/structure/1.0" name="Checking length of Source Citation (simple) SOUR">
        
      <sch:rule context="SOUR/node()[self::text()]">
          
         <sch:assert test="string-length( normalize-space(.) ) &lt; 249">SOUR range exceeds maximum of 248</sch:assert>
        
      </sch:rule>
      
   </sch:pattern>
   <sch:pattern xmlns="http://relaxng.org/ns/structure/1.0" name="Checking length of Source Citation (simple) TEXT">
              
      <sch:rule context="TEXT/node()[self::text()]">
                
         <sch:assert test="string-length( normalize-space(.) ) &lt; 249">TEXT range exceeds maximum of 248</sch:assert>
              
      </sch:rule>
            
   </sch:pattern>
   <sch:pattern xmlns="http://relaxng.org/ns/structure/1.0" name="Checking length of User_Reference_Number">
        
      <sch:rule context="REFN/node()[self::text()]">
          
         <sch:assert test="string-length( normalize-space(.) ) &lt; 21">REFN exceeds maximum of 20</sch:assert>
        
      </sch:rule>
      
   </sch:pattern>
   <sch:diagnostics/>
</sch:schema>