<?xml version="1.0" encoding="utf-8" standalone="yes"?>
<axsl:stylesheet xmlns:axsl="http://www.w3.org/1999/XSL/Transform" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:sch="http://www.ascc.net/xml/schematron" version="1.0">
   <axsl:output method="text"/>
   <axsl:template match="*|@*" mode="schematron-get-full-path">
      <axsl:apply-templates select="parent::*" mode="schematron-get-full-path"/>
      <axsl:text>/</axsl:text>
      <axsl:if test="count(. | ../@*) = count(../@*)">@</axsl:if>
      <axsl:value-of select="name()"/>
      <axsl:text>[</axsl:text>
      <axsl:value-of select="1+count(preceding-sibling::*[name()=name(current())])"/>
      <axsl:text>]</axsl:text>
   </axsl:template>
   <axsl:template match="/">

      <axsl:apply-templates select="/" mode="M0"/>
      <axsl:apply-templates select="/" mode="M1"/>
      <axsl:apply-templates select="/" mode="M2"/>
      <axsl:apply-templates select="/" mode="M3"/>
      <axsl:apply-templates select="/" mode="M4"/>
      <axsl:apply-templates select="/" mode="M5"/>
      <axsl:apply-templates select="/" mode="M6"/>
      <axsl:apply-templates select="/" mode="M7"/>
      <axsl:apply-templates select="/" mode="M8"/>
      <axsl:apply-templates select="/" mode="M9"/>
      <axsl:apply-templates select="/" mode="M10"/>
      <axsl:apply-templates select="/" mode="M11"/>
      <axsl:apply-templates select="/" mode="M12"/>
      <axsl:apply-templates select="/" mode="M13"/>
      <axsl:apply-templates select="/" mode="M14"/>
      <axsl:apply-templates select="/" mode="M15"/>
      <axsl:apply-templates select="/" mode="M16"/>
      <axsl:apply-templates select="/" mode="M17"/>
      <axsl:apply-templates select="/" mode="M18"/>
      <axsl:apply-templates select="/" mode="M19"/>
      <axsl:apply-templates select="/" mode="M20"/>
      <axsl:apply-templates select="/" mode="M21"/>
      <axsl:apply-templates select="/" mode="M22"/>
      <axsl:apply-templates select="/" mode="M23"/>
      <axsl:apply-templates select="/" mode="M24"/>
      <axsl:apply-templates select="/" mode="M25"/>
      <axsl:apply-templates select="/" mode="M26"/>
      <axsl:apply-templates select="/" mode="M27"/>
      <axsl:apply-templates select="/" mode="M28"/>
      <axsl:apply-templates select="/" mode="M29"/>
      <axsl:apply-templates select="/" mode="M30"/>
      <axsl:apply-templates select="/" mode="M31"/>
      <axsl:apply-templates select="/" mode="M32"/>
      <axsl:apply-templates select="/" mode="M33"/>
      <axsl:apply-templates select="/" mode="M34"/>
      <axsl:apply-templates select="/" mode="M35"/>
      <axsl:apply-templates select="/" mode="M36"/>
   </axsl:template>
   <axsl:template match="HEAD/SOUR/node()[self::text()]" priority="4000" mode="M0">
      <axsl:choose>
         <axsl:when test="string-length( normalize-space(.) ) &lt; 21"/>
         <axsl:otherwise>In pattern string-length( normalize-space(.) ) &lt; 21:
   Exceeds maximum SOUR length of 20
</axsl:otherwise>
      </axsl:choose>
      <axsl:apply-templates mode="M0"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M0"/>
   <axsl:template match="CORP/node()[self::text()]" priority="4000" mode="M1">
      <axsl:choose>
         <axsl:when test="string-length( normalize-space(.) ) &lt; 91"/>
         <axsl:otherwise>In pattern string-length( normalize-space(.) ) &lt; 91:
   Exceeds maximum CORP length of 90
</axsl:otherwise>
      </axsl:choose>
      <axsl:apply-templates mode="M1"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M1"/>
   <axsl:template match="HEAD/SOUR/DATA/node()[self::text()]" priority="4000" mode="M2">
      <axsl:choose>
         <axsl:when test="string-length( normalize-space(.) ) &lt; 91"/>
         <axsl:otherwise>In pattern string-length( normalize-space(.) ) &lt; 91:
   Exceeds maximum DATA length of 90
</axsl:otherwise>
      </axsl:choose>
      <axsl:apply-templates mode="M2"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M2"/>
   <axsl:template match="GED/HEAD/DATE/node()[1][self::text()]" priority="4000" mode="M3">
      <axsl:choose>
         <axsl:when test="string-length(.) &lt; 12"/>
         <axsl:otherwise>In pattern string-length(normalize-space(.)) &lt; 12:
   range exceeds maximum of 11
</axsl:otherwise>
      </axsl:choose>
      <axsl:choose>
         <axsl:when test="string-length(normalize-space(.)) &gt; 9"/>
         <axsl:otherwise>In pattern string-length(.) &gt; 9:
   range fails to meet the minimum of 10
</axsl:otherwise>
      </axsl:choose>
      <axsl:apply-templates mode="M3"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M3"/>
   <axsl:template match="CHAR/node()[self::text()]" priority="4000" mode="M4">
      <axsl:choose>
         <axsl:when test="contains(., 'ANSEL') or contains(., 'UNICODE') or contains (., 'ASCII')"/>
         <axsl:otherwise>In pattern contains(., 'ANSEL') or contains(., 'UNICODE') or contains (., 'ASCII'):
   CHAR of Gedcom file fails to be ANSEL, UNICODE, or ASCII
</axsl:otherwise>
      </axsl:choose>
      <axsl:apply-templates mode="M4"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M4"/>
   <axsl:template match="GED/HEAD/NOTE/node()[self::text()]" priority="4000" mode="M5">
      <axsl:choose>
         <axsl:when test="string-length( normalize-space(.) ) &lt; 248"/>
         <axsl:otherwise>In pattern string-length( normalize-space(.) ) &lt; 248:
   Exceeds maximum NOTE length of 248
</axsl:otherwise>
      </axsl:choose>
      <axsl:apply-templates mode="M5"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M5"/>
   <axsl:template match="INDI/NAME/node()[self::text()]" priority="4000" mode="M6">
      <axsl:choose>
         <axsl:when test="string-length( normalize-space(.) ) &lt; 121"/>
         <axsl:otherwise>In pattern string-length( normalize-space(.) ) &lt; 121:
   Exceeds maximum NAME length of 120
</axsl:otherwise>
      </axsl:choose>
      <axsl:apply-templates mode="M6"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M6"/>
   <axsl:template match="NOTE/node()[self::text()]" priority="4000" mode="M7">
      <axsl:choose>
         <axsl:when test="string-length( normalize-space(.) ) &lt; 249"/>
         <axsl:otherwise>In pattern string-length( normalize-space(.) ) &lt; 249:
   Exceeds maximum NOTE length of 248
</axsl:otherwise>
      </axsl:choose>
      <axsl:apply-templates mode="M7"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M7"/>
   <axsl:template match="SOUR/DATA/EVEN/node()[self::text()]" priority="4000" mode="M8">
      <axsl:choose>
         <axsl:when test="string-length( normalize-space(.) ) &lt; 91"/>
         <axsl:otherwise>In pattern string-length( normalize-space(.) ) &lt; 91:
   EVEN exceeds maximum of 90
</axsl:otherwise>
      </axsl:choose>
      <axsl:apply-templates mode="M8"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M8"/>
   <axsl:template match="AUTH/node()[self::text()]" priority="4000" mode="M9">
      <axsl:choose>
         <axsl:when test="string-length( normalize-space(.) ) &lt; 249"/>
         <axsl:otherwise>In pattern string-length( normalize-space(.) ) &lt; 249:
   Exceeds maximum AUTH length of 248
</axsl:otherwise>
      </axsl:choose>
      <axsl:apply-templates mode="M9"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M9"/>
   <axsl:template match="SOUR/TITL/node()[self::text()]" priority="4000" mode="M10">
      <axsl:choose>
         <axsl:when test="string-length( normalize-space(.) ) &lt; 249"/>
         <axsl:otherwise>In pattern string-length( normalize-space(.) ) &lt; 249:
   Exceeds maximum TITL length of 248
</axsl:otherwise>
      </axsl:choose>
      <axsl:apply-templates mode="M10"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M10"/>
   <axsl:template match="PUBL/node()[self::text()]" priority="4000" mode="M11">
      <axsl:choose>
         <axsl:when test="string-length( normalize-space(.) ) &lt; 249"/>
         <axsl:otherwise>In pattern string-length( normalize-space(.) ) &lt; 249:
   Exceeds maximum PUBL length of 248
</axsl:otherwise>
      </axsl:choose>
      <axsl:apply-templates mode="M11"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M11"/>
   <axsl:template match="SOUR/TEXT/node()[self::text()]" priority="4000" mode="M12">
      <axsl:choose>
         <axsl:when test="string-length( normalize-space(.) ) &lt; 249"/>
         <axsl:otherwise>In pattern string-length( normalize-space(.) ) &lt; 249:
   Exceeds maximum TEXT length of 248
</axsl:otherwise>
      </axsl:choose>
      <axsl:apply-templates mode="M12"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M12"/>
   <axsl:template match="CALN/node()[self::text()]" priority="4000" mode="M13">
      <axsl:choose>
         <axsl:when test="string-length( normalize-space(.) ) &lt; 121"/>
         <axsl:otherwise>In pattern string-length( normalize-space(.) ) &lt; 121:
   CALN range exceeds maximum of 120
</axsl:otherwise>
      </axsl:choose>
      <axsl:apply-templates mode="M13"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M13"/>
   <axsl:template match="ADDR/node()[self::text()]" priority="4000" mode="M14">
      <axsl:choose>
         <axsl:when test="string-length( normalize-space(.) ) &lt; 61"/>
         <axsl:otherwise>In pattern string-length( normalize-space(.) ) &lt; 61:
   Exceeds maximum NOTE length of 60
</axsl:otherwise>
      </axsl:choose>
      <axsl:apply-templates mode="M14"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M14"/>
   <axsl:template match="CHAN/DATE/node()[self::text()]" priority="4000" mode="M15">
      <axsl:choose>
         <axsl:when test="string-length( normalize-space(.) ) &lt; 12"/>
         <axsl:otherwise>In pattern string-length( normalize-space(.) ) &lt; 12:
   range exceeds maximum of 11
</axsl:otherwise>
      </axsl:choose>
      <axsl:choose>
         <axsl:when test="string-length( normalize-space(.) ) &gt; 9"/>
         <axsl:otherwise>In pattern string-length( normalize-space(.) ) &gt; 9:
   range fails to meet the minimum of 10
</axsl:otherwise>
      </axsl:choose>
      <axsl:apply-templates mode="M15"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M15"/>
   <axsl:template match="PLAC/node()[self::text()]" priority="4000" mode="M16">
      <axsl:choose>
         <axsl:when test="string-length( normalize-space(.) ) &lt; 121"/>
         <axsl:otherwise>In pattern string-length( normalize-space(.) ) &lt; 121:
   PLAC range exceeds maximum of 121
</axsl:otherwise>
      </axsl:choose>
      <axsl:apply-templates mode="M16"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M16"/>
   <axsl:template match="CAST/node()[self::text()]" priority="4000" mode="M17">
      <axsl:choose>
         <axsl:when test="string-length( normalize-space(.) ) &lt; 91"/>
         <axsl:otherwise>In pattern string-length( normalize-space(.) ) &lt; 91:
   Exceeds maximum CAST length of 90
</axsl:otherwise>
      </axsl:choose>
      <axsl:apply-templates mode="M17"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M17"/>
   <axsl:template match="DSCR/node()[self::text()]" priority="4000" mode="M18">
      <axsl:choose>
         <axsl:when test="string-length( normalize-space(.) ) &lt; 249"/>
         <axsl:otherwise>In pattern string-length( normalize-space(.) ) &lt; 249:
   Exceeds maximum DSCR length of 248
</axsl:otherwise>
      </axsl:choose>
      <axsl:apply-templates mode="M18"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M18"/>
   <axsl:template match="EDUC/node()[self::text()]" priority="4000" mode="M19">
      <axsl:choose>
         <axsl:when test="string-length( normalize-space(.) ) &lt; 249"/>
         <axsl:otherwise>In pattern string-length( normalize-space(.) ) &lt; 249:
   Exceeds maximum EDUC length of 248
</axsl:otherwise>
      </axsl:choose>
      <axsl:apply-templates mode="M19"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M19"/>
   <axsl:template match="INDO/node()[self::text()]" priority="4000" mode="M20">
      <axsl:choose>
         <axsl:when test="string-length( normalize-space(.) ) &lt; 31"/>
         <axsl:otherwise>In pattern string-length( normalize-space(.) ) &lt; 31:
   Exceeds maximum INDO length of 30
</axsl:otherwise>
      </axsl:choose>
      <axsl:apply-templates mode="M20"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M20"/>
   <axsl:template match="NATI/node()[self::text()]" priority="4000" mode="M21">
      <axsl:choose>
         <axsl:when test="string-length( normalize-space(.) ) &lt; 121"/>
         <axsl:otherwise>In pattern string-length( normalize-space(.) ) &lt; 121:
   Exceeds maximum NATI length of 120
</axsl:otherwise>
      </axsl:choose>
      <axsl:apply-templates mode="M21"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M21"/>
   <axsl:template match="NCHI/node()[self::text()]" priority="4000" mode="M22">
      <axsl:choose>
         <axsl:when test="string-length( normalize-space(.) ) &lt; 4"/>
         <axsl:otherwise>In pattern string-length( normalize-space(.) ) &lt; 4:
   Exceeds maximum NCHI length of 3
</axsl:otherwise>
      </axsl:choose>
      <axsl:apply-templates mode="M22"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M22"/>
   <axsl:template match="NMR/node()[self::text()]" priority="4000" mode="M23">
      <axsl:choose>
         <axsl:when test="string-length( normalize-space(.) ) &lt; 4"/>
         <axsl:otherwise>In pattern string-length( normalize-space(.) ) &lt; 4:
   Exceeds maximum NMR length of 3
</axsl:otherwise>
      </axsl:choose>
      <axsl:apply-templates mode="M23"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M23"/>
   <axsl:template match="OCCU/node()[self::text()]" priority="4000" mode="M24">
      <axsl:choose>
         <axsl:when test="string-length( normalize-space(.) ) &lt; 91"/>
         <axsl:otherwise>In pattern string-length( normalize-space(.) ) &lt; 91:
   Exceeds maximum OCCU length of 90
</axsl:otherwise>
      </axsl:choose>
      <axsl:apply-templates mode="M24"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M24"/>
   <axsl:template match="PROP/node()[self::text()]" priority="4000" mode="M25">
      <axsl:choose>
         <axsl:when test="string-length( normalize-space(.) ) &lt; 249"/>
         <axsl:otherwise>In pattern string-length( normalize-space(.) ) &lt; 249:
   Exceeds maximum PROP length of 248
</axsl:otherwise>
      </axsl:choose>
      <axsl:apply-templates mode="M25"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M25"/>
   <axsl:template match="RELI/node()[self::text()]" priority="4000" mode="M26">
      <axsl:choose>
         <axsl:when test="string-length( normalize-space(.) ) &lt; 91"/>
         <axsl:otherwise>In pattern string-length( normalize-space(.) ) &lt; 91:
   Exceeds maximum RELI length of 90
</axsl:otherwise>
      </axsl:choose>
      <axsl:apply-templates mode="M26"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M26"/>
   <axsl:template match="SSN/node()[self::text()]" priority="4000" mode="M27">
      <axsl:choose>
         <axsl:when test="string-length( normalize-space(.) ) &lt; 12"/>
         <axsl:otherwise>In pattern string-length( normalize-space(.) ) &lt; 12:
   Exceeds maximum SSN length of 11
</axsl:otherwise>
      </axsl:choose>
      <axsl:apply-templates mode="M27"/>
   </axsl:template>
   <axsl:template match="SSN/node()[self::text()]" priority="3999" mode="M27">
      <axsl:choose>
         <axsl:when test="string-length( normalize-space(.) ) &gt; 8"/>
         <axsl:otherwise>In pattern string-length( normalize-space(.) ) &gt; 8:
   Fails maximum SSN length of 9
</axsl:otherwise>
      </axsl:choose>
      <axsl:apply-templates mode="M27"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M27"/>
   <axsl:template match="INDI/TITL/node()[self::text()]" priority="4000" mode="M28">
      <axsl:choose>
         <axsl:when test="string-length( normalize-space(.) ) &lt; 121"/>
         <axsl:otherwise>In pattern string-length( normalize-space(.) ) &lt; 121:
   Exceeds maximum NOTE length of 120
</axsl:otherwise>
      </axsl:choose>
      <axsl:apply-templates mode="M28"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M28"/>
   <axsl:template match="NOTE/node()[self::text()]" priority="4000" mode="M29">
      <axsl:choose>
         <axsl:when test="string-length( normalize-space(.) ) &lt; 249"/>
         <axsl:otherwise>In pattern string-length( normalize-space(.) ) &lt; 249:
   NOTE range exceeds maximum of 248
</axsl:otherwise>
      </axsl:choose>
      <axsl:apply-templates mode="M29"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M29"/>
   <axsl:template match="EVEN/node()[self::text()]" priority="4000" mode="M30">
      <axsl:choose>
         <axsl:when test="string-length( normalize-space(.) ) &lt; 16"/>
         <axsl:otherwise>In pattern string-length( normalize-space(.) ) &lt; 16:
   EVEN range exceeds maximum of 15
</axsl:otherwise>
      </axsl:choose>
      <axsl:apply-templates mode="M30"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M30"/>
   <axsl:template match="TEXT/node()[self::text()]" priority="4000" mode="M31">
      <axsl:choose>
         <axsl:when test="string-length( normalize-space(.) ) &lt; 249"/>
         <axsl:otherwise>In pattern string-length( normalize-space(.) ) &lt; 249:
   TEXT range exceeds maximum of 248
</axsl:otherwise>
      </axsl:choose>
      <axsl:apply-templates mode="M31"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M31"/>
   <axsl:template match="SOUR/node()[self::text()]" priority="4000" mode="M32">
      <axsl:choose>
         <axsl:when test="string-length( normalize-space(.) ) &lt; 249"/>
         <axsl:otherwise>In pattern string-length( normalize-space(.) ) &lt; 249:
   SOUR range exceeds maximum of 248
</axsl:otherwise>
      </axsl:choose>
      <axsl:apply-templates mode="M32"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M32"/>
   <axsl:template match="TEXT/node()[self::text()]" priority="4000" mode="M33">
      <axsl:choose>
         <axsl:when test="string-length( normalize-space(.) ) &lt; 249"/>
         <axsl:otherwise>In pattern string-length( normalize-space(.) ) &lt; 249:
   TEXT range exceeds maximum of 248
</axsl:otherwise>
      </axsl:choose>
      <axsl:apply-templates mode="M33"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M33"/>
   <axsl:template match="SOUR/node()[self::text()]" priority="4000" mode="M34">
      <axsl:choose>
         <axsl:when test="string-length( normalize-space(.) ) &lt; 249"/>
         <axsl:otherwise>In pattern string-length( normalize-space(.) ) &lt; 249:
   SOUR range exceeds maximum of 248
</axsl:otherwise>
      </axsl:choose>
      <axsl:apply-templates mode="M34"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M34"/>
   <axsl:template match="TEXT/node()[self::text()]" priority="4000" mode="M35">
      <axsl:choose>
         <axsl:when test="string-length( normalize-space(.) ) &lt; 249"/>
         <axsl:otherwise>In pattern string-length( normalize-space(.) ) &lt; 249:
   TEXT range exceeds maximum of 248
</axsl:otherwise>
      </axsl:choose>
      <axsl:apply-templates mode="M35"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M35"/>
   <axsl:template match="REFN/node()[self::text()]" priority="4000" mode="M36">
      <axsl:choose>
         <axsl:when test="string-length( normalize-space(.) ) &lt; 21"/>
         <axsl:otherwise>In pattern string-length( normalize-space(.) ) &lt; 21:
   REFN exceeds maximum of 20
</axsl:otherwise>
      </axsl:choose>
      <axsl:apply-templates mode="M36"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M36"/>
   <axsl:template match="text()" priority="-1"/>
</axsl:stylesheet>