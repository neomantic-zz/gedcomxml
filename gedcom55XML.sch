<?xml version="1.0" encoding="utf-8" standalone="yes"?>
<sch:schema xmlns:sch="http://www.ascc.net/xml/schematron" 
            xmlns:rng="http://relaxng.org/ns/structure/1.0"
            xmlns:dc="http://purl.org/dc/elements/1.1/">
 <dc:creator>Chad Albers</dc:creator>
 <dc:publisher>Chad Albers</dc:publisher>
 <dc:date>2008-5-1</dc:date>
 <dc:title>Schematron patterns extracted from gedcom55XML.rng version 0.1</dc:title>
 <dc:description>These Schematron rules were written to capture the mixed-content elements
 in GEDCOM 5.5 XML.</dc:description>
 <dc:identifier>http://www.neomantic.com/gedcom55XML</dc:identifier>
 <dc:type>software</dc:type>
 <dc:format>application/xml</dc:format>
 <dc:language>en-US</dc:language>
 <dc:rights>Copyright (c) 2008 Chad Albers mailto:chad@neomantic.com 
    This program is free software; you can redistribute it and/or modify
    it under the terms of the GNU General Public License as published by
    the Free Software Foundation; either version 2 of the License, or
    (at your option) any later version.
    This program is distributed in the hope that it will be useful,
    but WITHOUT ANY WARRANTY; without even the implied warranty of
    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
    GNU General Public License for more details.
    You should have received a copy of the GNU General Public License
    along with this program; if not, write to the Free Software
    Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA
 </dc:rights>
  <sch:pattern xmlns="http://relaxng.org/ns/structure/1.0" name="Checking length of Header Record SOUR">
            
      <sch:rule context="HEAD/SOUR/node()[1][self::text()]">
              
         <sch:assert test="string-length( normalize-space(.) ) &lt; 21">Exceeds maximum HEAD.SOUR length of 20</sch:assert>
			  
         <sch:assert test="not( contains( normalize-space(.), ' '))">APPROVED_SYSTEM_ID cannot contain whitespaces.  Replace spaces with underscores.</sch:assert>
            
      </sch:rule>
          
   </sch:pattern>
   <sch:pattern xmlns="http://relaxng.org/ns/structure/1.0" name="Checking length of Header Record CORP">
                  
      <sch:rule context="CORP/node()[1][self::text()]">
                    
         <sch:assert test="string-length( normalize-space(.) ) &lt; 91">Exceeds maximum HEAD.SOUR.CORP length of 90</sch:assert>
                  
      </sch:rule>
                
   </sch:pattern>
   <sch:pattern xmlns="http://relaxng.org/ns/structure/1.0" name="Checking length of Header Record DATA">
                  
      <sch:rule context="HEAD/SOUR/DATA/node()[1][self::text()]">
                    
         <sch:assert test="string-length( normalize-space(.) ) &lt; 91">Exceeds maximum HEAD.SOUR.DATA length of 90</sch:assert>
                  
      </sch:rule>
                
   </sch:pattern>
   <sch:pattern xmlns="http://relaxng.org/ns/structure/1.0" name="Checking length of Header Record DATE">
              
      <sch:rule context="GED/HEAD/DATE/node()[1][self::text()]">
                
         <sch:assert test="string-length(normalize-space(.)) &lt; 12">Exceeds maximum of HEAD.DATE length of 11</sch:assert>
                
         <sch:assert test="string-length(normalize-space(.)) &gt; 9">Fails to meet minimum HEAD.DATE length of 10</sch:assert>
              
      </sch:rule>
            
   </sch:pattern>
   <sch:pattern xmlns="http://relaxng.org/ns/structure/1.0" name="Checking value of length of Header Record CHAR">
            
      <sch:rule context="CHAR/node()[1][self::text()]">
              
         <sch:assert test="contains( translate( normalize-space(.), 'abcdefghijklmnopqrstuvwxyz', 'ABCDEFGHIJKLMNOPQRSTUVWXYZ'), 'ANSEL') or                 contains( translate( normalize-space(.), 'abcdefghijklmnopqrstuvwxyz', 'ABCDEFGHIJKLMNOPQRSTUVWXYZ'), 'UNICODE') or                contains( translate( normalize-space(.), 'abcdefghijklmnopqrstuvwxyz', 'ABCDEFGHIJKLMNOPQRSTUVWXYZ'), 'ASCII')">
               CHAR of Gedcom file fails to be ANSEL, UNICODE, or ASCII</sch:assert>
            
      </sch:rule>
          
   </sch:pattern>
   <sch:pattern xmlns="http://relaxng.org/ns/structure/1.0" name="Checking value and length of Header Record LANG">
            
      <sch:rule context="HEAD/LANG/node()[1][self::text()]">
              
         <sch:assert test="contains( translate( normalize-space(.) , 'ABCDEFGHIJKLMNOPQRSTUVWXYZ', 'abcdefghijklmnopqrstuvwxyz'), 'afrikaans') or               contains( translate( normalize-space(.) , 'ABCDEFGHIJKLMNOPQRSTUVWXYZ', 'abcdefghijklmnopqrstuvwxyz'), 'albanian') or               contains( translate( normalize-space(.) , 'ABCDEFGHIJKLMNOPQRSTUVWXYZ', 'abcdefghijklmnopqrstuvwxyz'), 'anglo-saxon') or               contains( translate( normalize-space(.) , 'ABCDEFGHIJKLMNOPQRSTUVWXYZ', 'abcdefghijklmnopqrstuvwxyz'), 'catalan') or               contains( translate( normalize-space(.) , 'ABCDEFGHIJKLMNOPQRSTUVWXYZ', 'abcdefghijklmnopqrstuvwxyz'), 'catalan_spn') or               contains( translate( normalize-space(.) , 'ABCDEFGHIJKLMNOPQRSTUVWXYZ', 'abcdefghijklmnopqrstuvwxyz'), 'czech') or               contains( translate( normalize-space(.) , 'ABCDEFGHIJKLMNOPQRSTUVWXYZ', 'abcdefghijklmnopqrstuvwxyz'), 'danish') or               contains( translate( normalize-space(.) , 'ABCDEFGHIJKLMNOPQRSTUVWXYZ', 'abcdefghijklmnopqrstuvwxyz'), 'dutch') or               contains( translate( normalize-space(.) , 'ABCDEFGHIJKLMNOPQRSTUVWXYZ', 'abcdefghijklmnopqrstuvwxyz'), 'english') or               contains( translate( normalize-space(.) , 'ABCDEFGHIJKLMNOPQRSTUVWXYZ', 'abcdefghijklmnopqrstuvwxyz'), 'esperato') or               contains( translate( normalize-space(.) , 'ABCDEFGHIJKLMNOPQRSTUVWXYZ', 'abcdefghijklmnopqrstuvwxyz'), 'estonian') or               contains( translate( normalize-space(.) , 'ABCDEFGHIJKLMNOPQRSTUVWXYZ', 'abcdefghijklmnopqrstuvwxyz'), 'faroese') or               contains( translate( normalize-space(.) , 'ABCDEFGHIJKLMNOPQRSTUVWXYZ', 'abcdefghijklmnopqrstuvwxyz'), 'finnish') or               contains( translate( normalize-space(.) , 'ABCDEFGHIJKLMNOPQRSTUVWXYZ', 'abcdefghijklmnopqrstuvwxyz'), 'french') or               contains( translate( normalize-space(.) , 'ABCDEFGHIJKLMNOPQRSTUVWXYZ', 'abcdefghijklmnopqrstuvwxyz'), 'german') or               contains( translate( normalize-space(.) , 'ABCDEFGHIJKLMNOPQRSTUVWXYZ', 'abcdefghijklmnopqrstuvwxyz'), 'hawaiian') or               contains( translate( normalize-space(.) , 'ABCDEFGHIJKLMNOPQRSTUVWXYZ', 'abcdefghijklmnopqrstuvwxyz'), 'hungarian') or               contains( translate( normalize-space(.) , 'ABCDEFGHIJKLMNOPQRSTUVWXYZ', 'abcdefghijklmnopqrstuvwxyz'), 'icelandic') or               contains( translate( normalize-space(.) , 'ABCDEFGHIJKLMNOPQRSTUVWXYZ', 'abcdefghijklmnopqrstuvwxyz'), 'indonesian') or               contains( translate( normalize-space(.) , 'ABCDEFGHIJKLMNOPQRSTUVWXYZ', 'abcdefghijklmnopqrstuvwxyz'), 'italian') or               contains( translate( normalize-space(.) , 'ABCDEFGHIJKLMNOPQRSTUVWXYZ', 'abcdefghijklmnopqrstuvwxyz'), 'latvian') or               contains( translate( normalize-space(.) , 'ABCDEFGHIJKLMNOPQRSTUVWXYZ', 'abcdefghijklmnopqrstuvwxyz'), 'lithuanian') or               contains( translate( normalize-space(.) , 'ABCDEFGHIJKLMNOPQRSTUVWXYZ', 'abcdefghijklmnopqrstuvwxyz'), 'navaho') or               contains( translate( normalize-space(.) , 'ABCDEFGHIJKLMNOPQRSTUVWXYZ', 'abcdefghijklmnopqrstuvwxyz'), 'norwegian') or               contains( translate( normalize-space(.) , 'ABCDEFGHIJKLMNOPQRSTUVWXYZ', 'abcdefghijklmnopqrstuvwxyz'), 'polish') or               contains( translate( normalize-space(.) , 'ABCDEFGHIJKLMNOPQRSTUVWXYZ', 'abcdefghijklmnopqrstuvwxyz'), 'portuguese') or               contains( translate( normalize-space(.) , 'ABCDEFGHIJKLMNOPQRSTUVWXYZ', 'abcdefghijklmnopqrstuvwxyz'), 'romanian') or               contains( translate( normalize-space(.) , 'ABCDEFGHIJKLMNOPQRSTUVWXYZ', 'abcdefghijklmnopqrstuvwxyz'), 'serbo_croa') or               contains( translate( normalize-space(.) , 'ABCDEFGHIJKLMNOPQRSTUVWXYZ', 'abcdefghijklmnopqrstuvwxyz'), 'slovene') or               contains( translate( normalize-space(.) , 'ABCDEFGHIJKLMNOPQRSTUVWXYZ', 'abcdefghijklmnopqrstuvwxyz'), 'spanish') or               contains( translate( normalize-space(.) , 'ABCDEFGHIJKLMNOPQRSTUVWXYZ', 'abcdefghijklmnopqrstuvwxyz'), 'swedish') or               contains( translate( normalize-space(.) , 'ABCDEFGHIJKLMNOPQRSTUVWXYZ', 'abcdefghijklmnopqrstuvwxyz'), 'turkish') or                contains( translate( normalize-space(.) , 'ABCDEFGHIJKLMNOPQRSTUVWXYZ', 'abcdefghijklmnopqrstuvwxyz'), 'wendic')">
              The only allowable values for HEAD.SOUR.LANG are Afrikaans, Albanian, Anglo-Saxon, Catalan, Catalan_Spn, Czech, Danish, Dutch, English, Esperanto, Estonian, Faroese, Finnish, French, German, Hawaiian, Hungarian, Icelandic, Indonesian, Italian, Latvian, Lithuanian, Navaho, Norwegian, Polish, Portuguese, Romanian, Serbo_Croa, Slovak, Slovene, Spanish, Swedish, Turkish, Wendic
              </sch:assert>
              
         <sch:assert test="string-length(normalize-space(.)) &lt; 16">Exceeds maximum of HEAD.SOUR.LANG length of 16</sch:assert>
            
      </sch:rule>
          
   </sch:pattern>
   <sch:pattern xmlns="http://relaxng.org/ns/structure/1.0" name="Checking length of Header Record NOTE">
              
      <sch:rule context="GED/HEAD/NOTE/node()[1][self::text()]">
                
         <sch:assert test="string-length( normalize-space(.) ) &lt; 248">Exceeds maximum HEAD.NOTE length of 248</sch:assert>
              
      </sch:rule>
            
   </sch:pattern>
   <sch:pattern xmlns="http://relaxng.org/ns/structure/1.0" name="Checking value and length of FAM.SLGS.STAT">
                    
      <sch:rule context="FAM/SLGS/STAT/node()[1][self::text()]">
                      
         <sch:assert test="                       contains( translate( normalize-space(.) , 'abcdefghijklmnopqrstuvwxyz', 'ABCDEFGHIJKLMNOPQRSTUVWXYZ'), 'CANCELED') or              contains( translate( normalize-space(.) , 'abcdefghijklmnopqrstuvwxyz', 'ABCDEFGHIJKLMNOPQRSTUVWXYZ'), 'CLEARED') or              contains( translate( normalize-space(.) , 'abcdefghijklmnopqrstuvwxyz', 'ABCDEFGHIJKLMNOPQRSTUVWXYZ'), 'COMPLETED') or              contains( translate( normalize-space(.) , 'abcdefghijklmnopqrstuvwxyz', 'ABCDEFGHIJKLMNOPQRSTUVWXYZ'), 'DNS') or              contains( translate( normalize-space(.) , 'abcdefghijklmnopqrstuvwxyz', 'ABCDEFGHIJKLMNOPQRSTUVWXYZ'), 'DNS/CAN') or              contains( translate( normalize-space(.) , 'abcdefghijklmnopqrstuvwxyz', 'ABCDEFGHIJKLMNOPQRSTUVWXYZ'), 'PRE-1970') or              contains( translate( normalize-space(.) , 'abcdefghijklmnopqrstuvwxyz', 'ABCDEFGHIJKLMNOPQRSTUVWXYZ'), 'QUALIFIED') or              contains( translate( normalize-space(.) , 'abcdefghijklmnopqrstuvwxyz', 'ABCDEFGHIJKLMNOPQRSTUVWXYZ'), 'SUBMITTED') or              contains( translate( normalize-space(.) , 'abcdefghijklmnopqrstuvwxyz', 'ABCDEFGHIJKLMNOPQRSTUVWXYZ'), 'UNCLEARED')">
        			  The only allowable values for FAM.SLGS.STAT are CANCELED, CLEARED, COMPLETED, DNS, DNS/CAN, PRE-1970, QUALIFIED, SUBMITTED, UNCLEARED
                      </sch:assert>
                      
         <sch:assert test="string-length(normalize-space(.)) &lt; 11">Exceeds maximum of FAM.SLGS.STAT length of 10</sch:assert>
                      
         <sch:assert test="string-length(normalize-space(.)) &gt; 2">Fails to meet the minimum  length of 3</sch:assert>
                    
      </sch:rule>
                  
   </sch:pattern>
   <sch:pattern xmlns="http://relaxng.org/ns/structure/1.0" name="Checking length of Individual Record NAME">
              
      <sch:rule context="INDI/NAME/node()[1][self::text()]">
                
         <sch:assert test="string-length( normalize-space(.) ) &lt; 121">Exceeds maximum INDI.NAME length of 120</sch:assert>
              
      </sch:rule>
            
   </sch:pattern>
   <sch:pattern xmlns="http://relaxng.org/ns/structure/1.0" name="Checking value and length of INDI.SEX">
                
      <sch:rule context="INDI/SEX/node()[1][self::text()]">
                  
         <sch:assert test="contains( translate( normalize-space(.) , 'ABCDEFGHIJKLMNOPQRSTUVWXYZ', 'abcdefghijklmnopqrstuvwxyz'), 'm') or                   contains( translate( normalize-space(.) , 'ABCDEFGHIJKLMNOPQRSTUVWXYZ', 'abcdefghijklmnopqrstuvwxyz'), 'f') or                   contains( translate( normalize-space(.) , 'ABCDEFGHIJKLMNOPQRSTUVWXYZ', 'abcdefghijklmnopqrstuvwxyz'), 'male') or                   contains( translate( normalize-space(.) , 'ABCDEFGHIJKLMNOPQRSTUVWXYZ', 'abcdefghijklmnopqrstuvwxyz'), 'female')">
                  The only allowable values for INDI.SEX are M, F, Male, Female
                  </sch:assert>
                  
         <sch:assert test="string-length(normalize-space(.)) &lt; 8">Exceeds maximum of INDI.SEX length of 7</sch:assert>
                
      </sch:rule>
              
   </sch:pattern>
   <sch:pattern xmlns="http://relaxng.org/ns/structure/1.0" name="Checking value and length of INDI.FAMC.PEDI">
                    
      <sch:rule context="INDI/FAMC/PEDI/node()[self::text()]">
                      
         <sch:assert test="contains( translate( normalize-space(.) , 'ABCDEFGHIJKLMNOPQRSTUVWXYZ', 'abcdefghijklmnopqrstuvwxyz'), 'adopted') or                       contains( translate( normalize-space(.) , 'ABCDEFGHIJKLMNOPQRSTUVWXYZ', 'abcdefghijklmnopqrstuvwxyz'), 'birth') or                       contains( translate( normalize-space(.) , 'ABCDEFGHIJKLMNOPQRSTUVWXYZ', 'abcdefghijklmnopqrstuvwxyz'), 'foster') or                       contains( translate( normalize-space(.) , 'ABCDEFGHIJKLMNOPQRSTUVWXYZ', 'abcdefghijklmnopqrstuvwxyz'), 'sealing')">
                      The only allowable values for INDI.FAMC.PEDI are adopted, birth, foster, sealing
                      </sch:assert>
                      
         <sch:assert test="string-length(normalize-space(.)) &lt; 8">Exceeds maximum of INDI.FAMC.PEDI length of 16</sch:assert>
                      
         <sch:assert test="string-length(normalize-space(.)) &gt; 4">Fails to meet minimum INDI.FAMC.PEDI length of 5</sch:assert>
                    
      </sch:rule>
                  
   </sch:pattern>
   <sch:pattern xmlns="http://relaxng.org/ns/structure/1.0" name="Checking value length of OBJE.FORM">
            
      <sch:rule context="OBJE/FORM/node()[1][self::text()]">
              
         <sch:assert test="contains( translate( normalize-space(.) , 'ABCDEFGHIJKLMNOPQRSTUVWXYZ', 'abcdefghijklmnopqrstuvwxyz'), 'bmp') or               contains( translate( normalize-space(.) , 'ABCDEFGHIJKLMNOPQRSTUVWXYZ', 'abcdefghijklmnopqrstuvwxyz'), 'gif') or               contains( translate( normalize-space(.) , 'ABCDEFGHIJKLMNOPQRSTUVWXYZ', 'abcdefghijklmnopqrstuvwxyz'), 'jpeg') or               contains( translate( normalize-space(.) , 'ABCDEFGHIJKLMNOPQRSTUVWXYZ', 'abcdefghijklmnopqrstuvwxyz'), 'ole') or      contains( translate( normalize-space(.) , 'ABCDEFGHIJKLMNOPQRSTUVWXYZ', 'abcdefghijklmnopqrstuvwxyz'), 'pcx') or      contains( translate( normalize-space(.) , 'ABCDEFGHIJKLMNOPQRSTUVWXYZ', 'abcdefghijklmnopqrstuvwxyz'), 'tiff') or      contains( translate( normalize-space(.) , 'ABCDEFGHIJKLMNOPQRSTUVWXYZ', 'abcdefghijklmnopqrstuvwxyz'), 'wav')">
              The only allowable values for OBJE.FORM are bmp, gif, jpeg, ole, pcx, tiff, wav
              </sch:assert>
              
         <sch:assert test="string-length(normalize-space(.)) &lt; 5">Exceeds maximum of OBJE.FORM length of 4</sch:assert>
              
         <sch:assert test="string-length(normalize-space(.)) &gt; 2">Fails to meet minimum OBJE.FORM length of 3</sch:assert>
            
      </sch:rule>
          
   </sch:pattern>
   <sch:pattern xmlns="http://relaxng.org/ns/structure/1.0" name="Checking length of Note Record NOTE">
        
      <sch:rule context="NOTE/node()[1][self::text()]">
          
         <sch:assert test="string-length( normalize-space(.) ) &lt; 249">Exceeds maximum NOTE length of 248</sch:assert>
        
      </sch:rule>
      
   </sch:pattern>
   <sch:pattern xmlns="http://relaxng.org/ns/structure/1.0" name="Checking length of Source Citation EVEN">
                      
      <sch:rule context="SOUR/DATA/EVEN/node()[1][self::text()]">
                          
         <sch:assert test="string-length( normalize-space(.) ) &lt; 91">Exceeds maximum SOUR.DATA.EVEN length of 90</sch:assert>
                      
      </sch:rule>
                    
   </sch:pattern>
   <sch:pattern xmlns="http://relaxng.org/ns/structure/1.0" name="Checking length of Header Record AUTH">
              
      <sch:rule context="AUTH/node()[1][self::text()]">
                
         <sch:assert test="string-length( normalize-space(.) ) &lt; 249">Exceeds maximum SOUR.AUTH length of 248</sch:assert>
              
      </sch:rule>
            
   </sch:pattern>
   <sch:pattern xmlns="http://relaxng.org/ns/structure/1.0" name="Checking length of Source Record TITL">
              
      <sch:rule context="SOUR/TITL/node()[1][self::text()]">
                
         <sch:assert test="string-length( normalize-space(.) ) &lt; 249">Exceeds maximum SOUR.TITL length of 248</sch:assert>
              
      </sch:rule>
            
   </sch:pattern>
   <sch:pattern xmlns="http://relaxng.org/ns/structure/1.0" name="Checking length of Source Record PUBL">
              
      <sch:rule context="PUBL/node()[1][self::text()]">
                
         <sch:assert test="string-length( normalize-space(.) ) &lt; 249">Exceeds maximum SOUR.PUBL length of 248</sch:assert>
              
      </sch:rule>
            
   </sch:pattern>
   <sch:pattern xmlns="http://relaxng.org/ns/structure/1.0" name="Checking length of Source Record TEXT">
              
      <sch:rule context="SOUR/TEXT/node()[1][self::text()]">
                
         <sch:assert test="string-length( normalize-space(.) ) &lt; 249">Exceeds maximum SOUR.TEXT length of 248</sch:assert>
              
      </sch:rule>
            
   </sch:pattern>
   <sch:pattern xmlns="http://relaxng.org/ns/structure/1.0" name="Checking length of Source Repository Citation CALN">
                    
      <sch:rule context="CALN/node()[1][self::text()]">
                      
         <sch:assert test="string-length( normalize-space(.) ) &lt; 121">Exceeds maximum REPO.CALN of 120</sch:assert>
                    
      </sch:rule>
                  
   </sch:pattern>
   <sch:pattern xmlns="http://relaxng.org/ns/structure/1.0" name="Checking value and length of SOUR.REPO.CALN.MEDI">
                            
      <sch:rule context="SOUR/REPO/CALN/MEDI/node()[1][self::text()]">
                              
         <sch:assert test="contains( translate( normalize-space(.) , 'ABCDEFGHIJKLMNOPQRSTUVWXYZ', 'abcdefghijklmnopqrstuvwxyz'), 'audio') or                                                         contains( translate( normalize-space(.) , 'ABCDEFGHIJKLMNOPQRSTUVWXYZ', 'abcdefghijklmnopqrstuvwxyz'), 'book') or                               contains( translate( normalize-space(.) , 'ABCDEFGHIJKLMNOPQRSTUVWXYZ', 'abcdefghijklmnopqrstuvwxyz'), 'card') or                               contains( translate( normalize-space(.) , 'ABCDEFGHIJKLMNOPQRSTUVWXYZ', 'abcdefghijklmnopqrstuvwxyz'), 'electronic') or                      contains( translate( normalize-space(.) , 'ABCDEFGHIJKLMNOPQRSTUVWXYZ', 'abcdefghijklmnopqrstuvwxyz'), 'fiche') or                      contains( translate( normalize-space(.) , 'ABCDEFGHIJKLMNOPQRSTUVWXYZ', 'abcdefghijklmnopqrstuvwxyz'), 'film') or                      contains( translate( normalize-space(.) , 'ABCDEFGHIJKLMNOPQRSTUVWXYZ', 'abcdefghijklmnopqrstuvwxyz'), 'magazine') or                      contains( translate( normalize-space(.) , 'ABCDEFGHIJKLMNOPQRSTUVWXYZ', 'abcdefghijklmnopqrstuvwxyz'), 'manuscript') or                      contains( translate( normalize-space(.) , 'ABCDEFGHIJKLMNOPQRSTUVWXYZ', 'abcdefghijklmnopqrstuvwxyz'), 'map') or                      contains( translate( normalize-space(.) , 'ABCDEFGHIJKLMNOPQRSTUVWXYZ', 'abcdefghijklmnopqrstuvwxyz'), 'newspaper') or                      contains( translate( normalize-space(.) , 'ABCDEFGHIJKLMNOPQRSTUVWXYZ', 'abcdefghijklmnopqrstuvwxyz'), 'photo') or                      contains( translate( normalize-space(.) , 'ABCDEFGHIJKLMNOPQRSTUVWXYZ', 'abcdefghijklmnopqrstuvwxyz'), 'tombstone') or                      contains( translate( normalize-space(.) , 'ABCDEFGHIJKLMNOPQRSTUVWXYZ', 'abcdefghijklmnopqrstuvwxyz'), 'video')">
                              The only allowable values for SOUR.REPO.CALN.MEDI are audio, book, card, electronic, fiche, film, magazine, manuscript, map, newspaper, photo, tombstone, video
                              </sch:assert>
                              
         <sch:assert test="string-length(normalize-space(.)) &lt; 16">Exceeds maximum of SOUR.REPO.CALN.MEDI length of 15</sch:assert>
                            
      </sch:rule>
                          
   </sch:pattern>
   <sch:pattern xmlns="http://relaxng.org/ns/structure/1.0" name="Checking value and length of SUBN.ORDI">
                
      <sch:rule context="SUBN/ORDI/node()[1][self::text()]">
                  
         <sch:assert test="contains( translate( normalize-space(.) , 'ABCDEFGHIJKLMNOPQRSTUVWXYZ', 'abcdefghijklmnopqrstuvwxyz'), 'yes') or                                             contains( translate( normalize-space(.) , 'ABCDEFGHIJKLMNOPQRSTUVWXYZ', 'abcdefghijklmnopqrstuvwxyz'), 'no')">
                  The only allowable values for SUBN.ORDI are yes or no
                  </sch:assert>
                  
         <sch:assert test="string-length(normalize-space(.)) &lt; 4">Exceeds maximum of SUBN.ORDI length of 3</sch:assert>
                  
         <sch:assert test="string-length(normalize-space(.)) &gt; 1">Fails to meet the minumum SUBN.ORDI length of 2</sch:assert>
                
      </sch:rule>
              
   </sch:pattern>
   <sch:pattern xmlns="http://relaxng.org/ns/structure/1.0" name="Checking length of Address Structure ADDR">
        
      <sch:rule context="ADDR/node()[1][self::text()]">
          
         <sch:assert test="string-length( normalize-space(.) ) &lt; 61">Exceeds maximum ADDR length of 60</sch:assert>
        
      </sch:rule>
      
   </sch:pattern>
   <sch:pattern xmlns="http://relaxng.org/ns/structure/1.0" name="Checking length of Change Date">
            
      <sch:rule context="CHAN/DATE/node()[1][self::text()]">
              
         <sch:assert test="string-length( normalize-space(.) ) &lt; 12">Exceeds maximum CHAN.DATE length of 11</sch:assert>
              
         <sch:assert test="string-length( normalize-space(.) ) &gt; 9">Fails to meet the minimum CHAN.DATE length of 10</sch:assert>
            
      </sch:rule>
          
   </sch:pattern>
   <sch:pattern xmlns="http://relaxng.org/ns/structure/1.0" name="Checking length of Event Detail Structure PLAC">
            
      <sch:rule context="PLAC/node()[1][self::text()]">
              
         <sch:assert test="string-length( normalize-space(.) ) &lt; 121">PLAC range exceeds maximum of 121</sch:assert>
            
      </sch:rule>
          
   </sch:pattern>
   <sch:pattern xmlns="http://relaxng.org/ns/structure/1.0" name="Checking length of Individual Attribute Structure CAST">
          
      <sch:rule context="CAST/node()[1][self::text()]">
            
         <sch:assert test="string-length( normalize-space(.) ) &lt; 91">Exceeds maximum INDI.CAST length of 90</sch:assert>
          
      </sch:rule>
        
   </sch:pattern>
   <sch:pattern xmlns="http://relaxng.org/ns/structure/1.0" name="Checking length of Individual Attribute Structure DSCR">
          
      <sch:rule context="DSCR/node()[1][self::text()]">
            
         <sch:assert test="string-length( normalize-space(.) ) &lt; 249">Exceeds maximum INDI.DSCR length of 248</sch:assert>
          
      </sch:rule>
        
   </sch:pattern>
   <sch:pattern xmlns="http://relaxng.org/ns/structure/1.0" name="Checking length of Individual Attribute Structure EDUC">
          
      <sch:rule context="EDUC/node()[1][self::text()]">
            
         <sch:assert test="string-length( normalize-space(.) ) &lt; 249">Exceeds maximum INDI.EDUC length of 248</sch:assert>
          
      </sch:rule>
        
   </sch:pattern>
   <sch:pattern xmlns="http://relaxng.org/ns/structure/1.0" name="Checking Individual Attribute Structure INDO">
          
      <sch:rule context="IDNO/node()[1][self::text()]">
          	<!-- INDO must have a TYPE to modifie it -->
            
         <sch:assert test="string-length( normalize-space(.) ) &lt; 31">Exceeds maximum IDNO.INDO length of 30</sch:assert>
          
      </sch:rule>
          
      <sch:rule context="IDNO">
          	
         <sch:assert test="not( IDNO/TYPE )">
          		IDNO (Identification numbers) must be described by a TYPE attribute
          	</sch:assert>
          
      </sch:rule>
        
   </sch:pattern>
   <sch:pattern xmlns="http://relaxng.org/ns/structure/1.0" name="Checking length of Individual Attribute Structure NATI">
          
      <sch:rule context="NATI/node()[1][self::text()]">
            
         <sch:assert test="string-length( normalize-space(.) ) &lt; 121">Exceeds maximum INDI.NATI length of 120</sch:assert>
          
      </sch:rule>
        
   </sch:pattern>
   <sch:pattern xmlns="http://relaxng.org/ns/structure/1.0" name="Checking length of Individual Attribute Structure NCHI">
          
      <sch:rule context="NCHI/node()[1][self::text()]">
            
         <sch:assert test="string-length( normalize-space(.) ) &lt; 4">Exceeds maximum INDI.NCHI length of 3</sch:assert>
          
      </sch:rule>
        
   </sch:pattern>
   <sch:pattern xmlns="http://relaxng.org/ns/structure/1.0" name="Checking length of Individual Attribute Structure NMR">
          
      <sch:rule context="NMR/node()[1][self::text()]">
            
         <sch:assert test="string-length( normalize-space(.) ) &lt; 4">Exceeds maximum INDI.NMR length of 3</sch:assert>
          
      </sch:rule>
        
   </sch:pattern>
   <sch:pattern xmlns="http://relaxng.org/ns/structure/1.0" name="Checking length of Individual Attribute Structure OCCU">
          
      <sch:rule context="OCCU/node()[1][self::text()]">
            
         <sch:assert test="string-length( normalize-space(.) ) &lt; 91">Exceeds maximum INDI.OCCU length of 90</sch:assert>
          
      </sch:rule>
        
   </sch:pattern>
   <sch:pattern xmlns="http://relaxng.org/ns/structure/1.0" name="Checking length of Individual Attribute Structure PROP">
          
      <sch:rule context="PROP/node()[1][self::text()]">
            
         <sch:assert test="string-length( normalize-space(.) ) &lt; 249">Exceeds maximum INDI.PROP length of 248</sch:assert>
          
      </sch:rule>
        
   </sch:pattern>
   <sch:pattern xmlns="http://relaxng.org/ns/structure/1.0" name="Checking length of Individual Attribute Structure RELI">
          
      <sch:rule context="RELI/node()[1][self::text()]">
            
         <sch:assert test="string-length( normalize-space(.) ) &lt; 91">Exceeds maximum INDI.RELI length of 90</sch:assert>
          
      </sch:rule>
        
   </sch:pattern>
   <sch:pattern xmlns="http://relaxng.org/ns/structure/1.0" name="Checking length of Individual Attribute Structure SSN">
          
      <sch:rule context="SSN/node()[1][self::text()]">
            
         <sch:assert test="string-length( normalize-space(.) ) &lt; 12">Exceeds maximum INDI.SSN length of 11</sch:assert>
          
      </sch:rule>
          
      <sch:rule context="SSN/node()[1][self::text()]">
            
         <sch:assert test="string-length( normalize-space(.) ) &gt; 8">Fails maximum INDI.SSN length of 9</sch:assert>
          
      </sch:rule>
        
   </sch:pattern>
   <sch:pattern xmlns="http://relaxng.org/ns/structure/1.0" name="Checking length of Individual Attribute Structure TITL">
          
      <sch:rule context="INDI/TITL/node()[1][self::text()]">
            
         <sch:assert test="string-length( normalize-space(.) ) &lt; 121">Exceeds maximum INDI.TITL length of 120</sch:assert>
          
      </sch:rule>
        
   </sch:pattern>
   <sch:pattern xmlns="http://relaxng.org/ns/structure/1.0" name="Checking value and length of INDI.ADOP.FAMC.ADOP">
                    
      <sch:rule context="INDI/ADOP/FAMC/ADOP/node()[1][self::text()]">
                      
         <sch:assert test="contains( translate( normalize-space(.) , 'abcdefghijklmnopqrstuvwxyz', 'ABCDEFGHIJKLMNOPQRSTUVWXYZ'), 'HUSB') or              contains( translate( normalize-space(.) , 'abcdefghijklmnopqrstuvwxyz', 'ABCDEFGHIJKLMNOPQRSTUVWXYZ'), 'WIFE') or              contains( translate( normalize-space(.) , 'abcdefghijklmnopqrstuvwxyz', 'ABCDEFGHIJKLMNOPQRSTUVWXYZ'), 'BOTH')">
        			  The only allowable values for INDI.ADOP.FAMC.ADOP are HUSB, WIFE, or BOTH
                      </sch:assert>
                      
         <sch:assert test="string-length(normalize-space(.)) &lt; 5">Exceeds maximum of INDI.ADOP.FAMC.ADOP length of 5</sch:assert>
                    
      </sch:rule>
                  
   </sch:pattern>
   <sch:pattern xmlns="http://relaxng.org/ns/structure/1.0" name="Checking value and length of BAPL.STAT, CONL.STAT, and ENDL.STAT">
                
      <sch:rule context="INDI/BAPL/STAT/node()[1][self::text()]|INDI/CONL/STAT/node()[1][self::text()]|INDI/ENDL/STAT/node()[1][self::text()]">
                  
         <sch:assert test="contains( translate( normalize-space(.) , 'abcdefghijklmnopqrstuvwxyz', 'ABCDEFGHIJKLMNOPQRSTUVWXYZ'), 'CHILD') or          contains( translate( normalize-space(.) , 'abcdefghijklmnopqrstuvwxyz', 'ABCDEFGHIJKLMNOPQRSTUVWXYZ'), 'CLEARED') or          contains( translate( normalize-space(.) , 'abcdefghijklmnopqrstuvwxyz', 'ABCDEFGHIJKLMNOPQRSTUVWXYZ'), 'COMPLETED') or          contains( translate( normalize-space(.) , 'abcdefghijklmnopqrstuvwxyz', 'ABCDEFGHIJKLMNOPQRSTUVWXYZ'), 'INFANT') or          contains( translate( normalize-space(.) , 'abcdefghijklmnopqrstuvwxyz', 'ABCDEFGHIJKLMNOPQRSTUVWXYZ'), 'PRE-1970') or          contains( translate( normalize-space(.) , 'abcdefghijklmnopqrstuvwxyz', 'ABCDEFGHIJKLMNOPQRSTUVWXYZ'), 'QUALIFIED') or          contains( translate( normalize-space(.) , 'abcdefghijklmnopqrstuvwxyz', 'ABCDEFGHIJKLMNOPQRSTUVWXYZ'), 'STILLBORN') or          contains( translate( normalize-space(.) , 'abcdefghijklmnopqrstuvwxyz', 'ABCDEFGHIJKLMNOPQRSTUVWXYZ'), 'SUBMITTED') or          contains( translate( normalize-space(.) , 'abcdefghijklmnopqrstuvwxyz', 'ABCDEFGHIJKLMNOPQRSTUVWXYZ'), 'UNCLEARED')">
    			  The only allowable values for BAPL.STAT, CONL.STAT, and ENDL.STAT are CHILD, CLEARED, COMPLETED, INFANT, PRE-1970, QUALIFIED, STILLBORN, SUBMITTED, UNCLEARED
                  </sch:assert>
                  
         <sch:assert test="string-length(normalize-space(.)) &lt; 11">Exceeds maximum of BAPL.STAT, CONL.STAT, and ENDL.STAT length of 10</sch:assert>
                  
         <sch:assert test="string-length(normalize-space(.)) &gt; 4">Fails to meet the minimum BAPL.STAT, CONL.STAT, and ENDL.STAT length of 5</sch:assert>
                
      </sch:rule>
              
   </sch:pattern>
   <sch:pattern xmlns="http://relaxng.org/ns/structure/1.0" name="Checking value and length of SLGC.STAT">
                
      <sch:rule context="INDI/SLGC/STAT/node()[1][self::text()]">
                  
         <sch:assert test="contains( translate( normalize-space(.) , 'abcdefghijklmnopqrstuvwxyz', 'ABCDEFGHIJKLMNOPQRSTUVWXYZ'), 'BIC') or             contains( translate( normalize-space(.) , 'abcdefghijklmnopqrstuvwxyz', 'ABCDEFGHIJKLMNOPQRSTUVWXYZ'), 'CLEARED') or          contains( translate( normalize-space(.) , 'abcdefghijklmnopqrstuvwxyz', 'ABCDEFGHIJKLMNOPQRSTUVWXYZ'), 'COMPLETED') or          contains( translate( normalize-space(.) , 'abcdefghijklmnopqrstuvwxyz', 'ABCDEFGHIJKLMNOPQRSTUVWXYZ'), 'DNS') or          contains( translate( normalize-space(.) , 'abcdefghijklmnopqrstuvwxyz', 'ABCDEFGHIJKLMNOPQRSTUVWXYZ'), 'PRE-1970') or          contains( translate( normalize-space(.) , 'abcdefghijklmnopqrstuvwxyz', 'ABCDEFGHIJKLMNOPQRSTUVWXYZ'), 'QUALIFIED') or          contains( translate( normalize-space(.) , 'abcdefghijklmnopqrstuvwxyz', 'ABCDEFGHIJKLMNOPQRSTUVWXYZ'), 'STILLBORN') or          contains( translate( normalize-space(.) , 'abcdefghijklmnopqrstuvwxyz', 'ABCDEFGHIJKLMNOPQRSTUVWXYZ'), 'SUBMITTED') or          contains( translate( normalize-space(.) , 'abcdefghijklmnopqrstuvwxyz', 'ABCDEFGHIJKLMNOPQRSTUVWXYZ'), 'UNCLEARED')">
    			  The only allowable values for SLGC.STAT are BIC, CLEARED, COMPLETED, DNS, PRE-1970, QUALIFIED, STILLBORN, SUBMITTED, UNCLEARED
                  </sch:assert>
                  
         <sch:assert test="string-length(normalize-space(.)) &lt; 11">Exceeds maximum of SLGC.STAT length of 10</sch:assert>
                  
         <sch:assert test="string-length(normalize-space(.)) &gt; 2">Fails to meet the minimum SLGC.STAT length of 3</sch:assert>
                
      </sch:rule>
              
   </sch:pattern>
   <sch:pattern xmlns="http://relaxng.org/ns/structure/1.0" name="Checking length of Note Structure NOTE">
        
      <sch:rule context="NOTE/node()[1][self::text()]">
          
         <sch:assert test="string-length( normalize-space(.) ) &lt; 249">NOTE range exceeds maximum of 248</sch:assert>
        
      </sch:rule>
      
   </sch:pattern>
   <sch:pattern xmlns="http://relaxng.org/ns/structure/1.0" name="Checking length of Source Citation EVEN">
              
      <sch:rule context="SOUR/EVEN/node()[1][self::text()]">
				
         <sch:assert test="string-length( normalize-space(.) ) &lt; 16">*.SOUR.EVEN range exceeds maximum of 15</sch:assert>
              
      </sch:rule>
            
   </sch:pattern>
   <sch:pattern xmlns="http://relaxng.org/ns/structure/1.0" name="Checking length of Source Citation TEXT">
                    
      <sch:rule context="TEXT/node()[1][self::text()]">
                      
         <sch:assert test="string-length( normalize-space(.) ) &lt; 249">Exceeds maxim SOUR.DATA.TEXT length of 248</sch:assert>
                    
      </sch:rule>
                  
   </sch:pattern>
   <sch:pattern xmlns="http://relaxng.org/ns/structure/1.0" name="Checking length of Source Citaton (simple) SOUR">
        
      <sch:rule context="SOUR/node()[1][self::text()]">
          
         <sch:assert test="string-length( normalize-space(.) ) &lt; 249">Exceeds maximum SOUR length of 248</sch:assert>
        
      </sch:rule>
      
   </sch:pattern>
   <sch:pattern xmlns="http://relaxng.org/ns/structure/1.0" name="Checking length of Source Citation (simple) TEXT">
              
      <sch:rule context="TEXT/node()[1][self::text()]">
                
         <sch:assert test="string-length( normalize-space(.) ) &lt; 249">Exceeds maximum SOUR.TEXT length of 248</sch:assert>
              
      </sch:rule>
            
   </sch:pattern>
   <sch:pattern xmlns="http://relaxng.org/ns/structure/1.0" name="Checking length of Source Citation (simple) SOUR">
        
      <sch:rule context="SOUR/node()[1][self::text()]">
          
         <sch:assert test="string-length( normalize-space(.) ) &lt; 249">Exceeds maximum SOUR length of 248</sch:assert>
        
      </sch:rule>
      
   </sch:pattern>
   <sch:pattern xmlns="http://relaxng.org/ns/structure/1.0" name="Checking length of Source Citation (simple) TEXT">
              
      <sch:rule context="TEXT/node()[1][self::text()]">
                
         <sch:assert test="string-length( normalize-space(.) ) &lt; 249">Exceeds maximum SOUR.TEXT of 248</sch:assert>
              
      </sch:rule>
            
   </sch:pattern>
   <sch:pattern xmlns="http://relaxng.org/ns/structure/1.0" name="Checking value and length of Submitter Record LANG">
            
      <sch:rule context="SUBM/LANG/node()[1][self::text()]">
              
         <sch:assert test="contains( translate( normalize-space(.) , 'ABCDEFGHIJKLMNOPQRSTUVWXYZ', 'abcdefghijklmnopqrstuvwxyz'), 'afrikaans') or               contains( translate( normalize-space(.) , 'ABCDEFGHIJKLMNOPQRSTUVWXYZ', 'abcdefghijklmnopqrstuvwxyz'), 'albanian') or               contains( translate( normalize-space(.) , 'ABCDEFGHIJKLMNOPQRSTUVWXYZ', 'abcdefghijklmnopqrstuvwxyz'), 'anglo-saxon') or               contains( translate( normalize-space(.) , 'ABCDEFGHIJKLMNOPQRSTUVWXYZ', 'abcdefghijklmnopqrstuvwxyz'), 'catalan') or               contains( translate( normalize-space(.) , 'ABCDEFGHIJKLMNOPQRSTUVWXYZ', 'abcdefghijklmnopqrstuvwxyz'), 'catalan_spn') or               contains( translate( normalize-space(.) , 'ABCDEFGHIJKLMNOPQRSTUVWXYZ', 'abcdefghijklmnopqrstuvwxyz'), 'czech') or               contains( translate( normalize-space(.) , 'ABCDEFGHIJKLMNOPQRSTUVWXYZ', 'abcdefghijklmnopqrstuvwxyz'), 'danish') or               contains( translate( normalize-space(.) , 'ABCDEFGHIJKLMNOPQRSTUVWXYZ', 'abcdefghijklmnopqrstuvwxyz'), 'dutch') or               contains( translate( normalize-space(.) , 'ABCDEFGHIJKLMNOPQRSTUVWXYZ', 'abcdefghijklmnopqrstuvwxyz'), 'english') or               contains( translate( normalize-space(.) , 'ABCDEFGHIJKLMNOPQRSTUVWXYZ', 'abcdefghijklmnopqrstuvwxyz'), 'esperato') or               contains( translate( normalize-space(.) , 'ABCDEFGHIJKLMNOPQRSTUVWXYZ', 'abcdefghijklmnopqrstuvwxyz'), 'estonian') or               contains( translate( normalize-space(.) , 'ABCDEFGHIJKLMNOPQRSTUVWXYZ', 'abcdefghijklmnopqrstuvwxyz'), 'faroese') or               contains( translate( normalize-space(.) , 'ABCDEFGHIJKLMNOPQRSTUVWXYZ', 'abcdefghijklmnopqrstuvwxyz'), 'finnish') or               contains( translate( normalize-space(.) , 'ABCDEFGHIJKLMNOPQRSTUVWXYZ', 'abcdefghijklmnopqrstuvwxyz'), 'french') or               contains( translate( normalize-space(.) , 'ABCDEFGHIJKLMNOPQRSTUVWXYZ', 'abcdefghijklmnopqrstuvwxyz'), 'german') or               contains( translate( normalize-space(.) , 'ABCDEFGHIJKLMNOPQRSTUVWXYZ', 'abcdefghijklmnopqrstuvwxyz'), 'hawaiian') or               contains( translate( normalize-space(.) , 'ABCDEFGHIJKLMNOPQRSTUVWXYZ', 'abcdefghijklmnopqrstuvwxyz'), 'hungarian') or               contains( translate( normalize-space(.) , 'ABCDEFGHIJKLMNOPQRSTUVWXYZ', 'abcdefghijklmnopqrstuvwxyz'), 'icelandic') or               contains( translate( normalize-space(.) , 'ABCDEFGHIJKLMNOPQRSTUVWXYZ', 'abcdefghijklmnopqrstuvwxyz'), 'indonesian') or               contains( translate( normalize-space(.) , 'ABCDEFGHIJKLMNOPQRSTUVWXYZ', 'abcdefghijklmnopqrstuvwxyz'), 'italian') or               contains( translate( normalize-space(.) , 'ABCDEFGHIJKLMNOPQRSTUVWXYZ', 'abcdefghijklmnopqrstuvwxyz'), 'latvian') or               contains( translate( normalize-space(.) , 'ABCDEFGHIJKLMNOPQRSTUVWXYZ', 'abcdefghijklmnopqrstuvwxyz'), 'lithuanian') or               contains( translate( normalize-space(.) , 'ABCDEFGHIJKLMNOPQRSTUVWXYZ', 'abcdefghijklmnopqrstuvwxyz'), 'navaho') or               contains( translate( normalize-space(.) , 'ABCDEFGHIJKLMNOPQRSTUVWXYZ', 'abcdefghijklmnopqrstuvwxyz'), 'norwegian') or               contains( translate( normalize-space(.) , 'ABCDEFGHIJKLMNOPQRSTUVWXYZ', 'abcdefghijklmnopqrstuvwxyz'), 'polish') or               contains( translate( normalize-space(.) , 'ABCDEFGHIJKLMNOPQRSTUVWXYZ', 'abcdefghijklmnopqrstuvwxyz'), 'portuguese') or               contains( translate( normalize-space(.) , 'ABCDEFGHIJKLMNOPQRSTUVWXYZ', 'abcdefghijklmnopqrstuvwxyz'), 'romanian') or               contains( translate( normalize-space(.) , 'ABCDEFGHIJKLMNOPQRSTUVWXYZ', 'abcdefghijklmnopqrstuvwxyz'), 'serbo_croa') or               contains( translate( normalize-space(.) , 'ABCDEFGHIJKLMNOPQRSTUVWXYZ', 'abcdefghijklmnopqrstuvwxyz'), 'slovene') or               contains( translate( normalize-space(.) , 'ABCDEFGHIJKLMNOPQRSTUVWXYZ', 'abcdefghijklmnopqrstuvwxyz'), 'spanish') or               contains( translate( normalize-space(.) , 'ABCDEFGHIJKLMNOPQRSTUVWXYZ', 'abcdefghijklmnopqrstuvwxyz'), 'swedish') or               contains( translate( normalize-space(.) , 'ABCDEFGHIJKLMNOPQRSTUVWXYZ', 'abcdefghijklmnopqrstuvwxyz'), 'turkish') or                contains( translate( normalize-space(.) , 'ABCDEFGHIJKLMNOPQRSTUVWXYZ', 'abcdefghijklmnopqrstuvwxyz'), 'wendic')">
              The only allowable values for SUBM.LANG are Afrikaans, Albanian, Anglo-Saxon, Catalan, Catalan_Spn, Czech, Danish, Dutch, English, Esperanto, Estonian, Faroese, Finnish, French, German, Hawaiian, Hungarian, Icelandic, Indonesian, Italian, Latvian, Lithuanian, Navaho, Norwegian, Polish, Portuguese, Romanian, Serbo_Croa, Slovak, Slovene, Spanish, Swedish, Turkish, Wendic
              </sch:assert>
              
         <sch:assert test="string-length(normalize-space(.)) &lt; 16">Exceeds maximum of SUBM.LANG length of 16</sch:assert>
            
      </sch:rule>
          
   </sch:pattern>
   <sch:pattern xmlns="http://relaxng.org/ns/structure/1.0" name="Checking length of User_Reference_Number">
        
      <sch:rule context="REFN/node()[1][self::text()]">
          
         <sch:assert test="string-length( normalize-space(.) ) &lt; 21">Exceeds maximum REFN length of 20</sch:assert>
        
      </sch:rule>
      
   </sch:pattern>
   <sch:diagnostics/>
</sch:schema>