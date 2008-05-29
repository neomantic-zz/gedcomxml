<?xml version="1.0" encoding="utf-8" standalone="yes"?>
 <!-- 
 ******************************************************************************
 ******************************************************************************
    Copyright (c) 2008 Chad Albers <chad@neomantic.com>
     
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
    
 ******************************************************************************
 ******************************************************************************
 -->
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
      <axsl:apply-templates select="/" mode="M37"/>
      <axsl:apply-templates select="/" mode="M38"/>
      <axsl:apply-templates select="/" mode="M39"/>
      <axsl:apply-templates select="/" mode="M40"/>
      <axsl:apply-templates select="/" mode="M41"/>
      <axsl:apply-templates select="/" mode="M42"/>
      <axsl:apply-templates select="/" mode="M43"/>
      <axsl:apply-templates select="/" mode="M44"/>
      <axsl:apply-templates select="/" mode="M45"/>
      <axsl:apply-templates select="/" mode="M46"/>
      <axsl:apply-templates select="/" mode="M47"/>
   </axsl:template>
   <axsl:template match="HEAD/SOUR/node()[1][self::text()]" priority="4000" mode="M0">
      <axsl:choose>
         <axsl:when test="string-length( normalize-space(.) ) &lt; 21"/>
         <axsl:otherwise>In pattern string-length( normalize-space(.) ) &lt; 21:
   Exceeds maximum HEAD.SOUR length of 20
</axsl:otherwise>
      </axsl:choose>
      <axsl:choose>
         <axsl:when test="not( contains( normalize-space(.), ' '))"/>
         <axsl:otherwise>In pattern not( contains( normalize-space(.), ' ')):
   APPROVED_SYSTEM_ID cannot contain whitespaces. Replace spaces with underscores.
</axsl:otherwise>
      </axsl:choose>
      <axsl:apply-templates mode="M0"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M0"/>
   <axsl:template match="CORP/node()[1][self::text()]" priority="4000" mode="M1">
      <axsl:choose>
         <axsl:when test="string-length( normalize-space(.) ) &lt; 91"/>
         <axsl:otherwise>In pattern string-length( normalize-space(.) ) &lt; 91:
   Exceeds maximum HEAD.SOUR.CORP length of 90
</axsl:otherwise>
      </axsl:choose>
      <axsl:apply-templates mode="M1"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M1"/>
   <axsl:template match="HEAD/SOUR/DATA/node()[1][self::text()]" priority="4000" mode="M2">
      <axsl:choose>
         <axsl:when test="string-length( normalize-space(.) ) &lt; 91"/>
         <axsl:otherwise>In pattern string-length( normalize-space(.) ) &lt; 91:
   Exceeds maximum HEAD.SOUR.DATA length of 90
</axsl:otherwise>
      </axsl:choose>
      <axsl:apply-templates mode="M2"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M2"/>
   <axsl:template match="GED/HEAD/DATE/node()[1][self::text()]" priority="4000" mode="M3">
      <axsl:choose>
         <axsl:when test="string-length(normalize-space(.)) &lt; 12"/>
         <axsl:otherwise>In pattern string-length(normalize-space(.)) &lt; 12:
   Exceeds maximum of HEAD.DATE length of 11
</axsl:otherwise>
      </axsl:choose>
      <axsl:choose>
         <axsl:when test="string-length(normalize-space(.)) &gt; 9"/>
         <axsl:otherwise>In pattern string-length(normalize-space(.)) &gt; 9:
   Fails to meet minimum HEAD.DATE length of 10
</axsl:otherwise>
      </axsl:choose>
      <axsl:apply-templates mode="M3"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M3"/>
   <axsl:template match="CHAR/node()[1][self::text()]" priority="4000" mode="M4">
      <axsl:choose>
         <axsl:when test="contains( translate( normalize-space(.), 'abcdefghijklmnopqrstuvwxyz', 'ABCDEFGHIJKLMNOPQRSTUVWXYZ'), 'ANSEL') or                 contains( translate( normalize-space(.), 'abcdefghijklmnopqrstuvwxyz', 'ABCDEFGHIJKLMNOPQRSTUVWXYZ'), 'UNICODE') or                contains( translate( normalize-space(.), 'abcdefghijklmnopqrstuvwxyz', 'ABCDEFGHIJKLMNOPQRSTUVWXYZ'), 'ASCII')"/>
         <axsl:otherwise>In pattern contains( translate( normalize-space(.), 'abcdefghijklmnopqrstuvwxyz', 'ABCDEFGHIJKLMNOPQRSTUVWXYZ'), 'ANSEL') or contains( translate( normalize-space(.), 'abcdefghijklmnopqrstuvwxyz', 'ABCDEFGHIJKLMNOPQRSTUVWXYZ'), 'UNICODE') or contains( translate( normalize-space(.), 'abcdefghijklmnopqrstuvwxyz', 'ABCDEFGHIJKLMNOPQRSTUVWXYZ'), 'ASCII'):
   CHAR of Gedcom file fails to be ANSEL, UNICODE, or ASCII
</axsl:otherwise>
      </axsl:choose>
      <axsl:apply-templates mode="M4"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M4"/>
   <axsl:template match="HEAD/LANG/node()[1][self::text()]" priority="4000" mode="M5">
      <axsl:choose>
         <axsl:when test="contains( translate( normalize-space(.) , 'ABCDEFGHIJKLMNOPQRSTUVWXYZ', 'abcdefghijklmnopqrstuvwxyz'), 'afrikaans') or               contains( translate( normalize-space(.) , 'ABCDEFGHIJKLMNOPQRSTUVWXYZ', 'abcdefghijklmnopqrstuvwxyz'), 'albanian') or               contains( translate( normalize-space(.) , 'ABCDEFGHIJKLMNOPQRSTUVWXYZ', 'abcdefghijklmnopqrstuvwxyz'), 'anglo-saxon') or               contains( translate( normalize-space(.) , 'ABCDEFGHIJKLMNOPQRSTUVWXYZ', 'abcdefghijklmnopqrstuvwxyz'), 'catalan') or               contains( translate( normalize-space(.) , 'ABCDEFGHIJKLMNOPQRSTUVWXYZ', 'abcdefghijklmnopqrstuvwxyz'), 'catalan_spn') or               contains( translate( normalize-space(.) , 'ABCDEFGHIJKLMNOPQRSTUVWXYZ', 'abcdefghijklmnopqrstuvwxyz'), 'czech') or               contains( translate( normalize-space(.) , 'ABCDEFGHIJKLMNOPQRSTUVWXYZ', 'abcdefghijklmnopqrstuvwxyz'), 'danish') or               contains( translate( normalize-space(.) , 'ABCDEFGHIJKLMNOPQRSTUVWXYZ', 'abcdefghijklmnopqrstuvwxyz'), 'dutch') or               contains( translate( normalize-space(.) , 'ABCDEFGHIJKLMNOPQRSTUVWXYZ', 'abcdefghijklmnopqrstuvwxyz'), 'english') or               contains( translate( normalize-space(.) , 'ABCDEFGHIJKLMNOPQRSTUVWXYZ', 'abcdefghijklmnopqrstuvwxyz'), 'esperato') or               contains( translate( normalize-space(.) , 'ABCDEFGHIJKLMNOPQRSTUVWXYZ', 'abcdefghijklmnopqrstuvwxyz'), 'estonian') or               contains( translate( normalize-space(.) , 'ABCDEFGHIJKLMNOPQRSTUVWXYZ', 'abcdefghijklmnopqrstuvwxyz'), 'faroese') or               contains( translate( normalize-space(.) , 'ABCDEFGHIJKLMNOPQRSTUVWXYZ', 'abcdefghijklmnopqrstuvwxyz'), 'finnish') or               contains( translate( normalize-space(.) , 'ABCDEFGHIJKLMNOPQRSTUVWXYZ', 'abcdefghijklmnopqrstuvwxyz'), 'french') or               contains( translate( normalize-space(.) , 'ABCDEFGHIJKLMNOPQRSTUVWXYZ', 'abcdefghijklmnopqrstuvwxyz'), 'german') or               contains( translate( normalize-space(.) , 'ABCDEFGHIJKLMNOPQRSTUVWXYZ', 'abcdefghijklmnopqrstuvwxyz'), 'hawaiian') or               contains( translate( normalize-space(.) , 'ABCDEFGHIJKLMNOPQRSTUVWXYZ', 'abcdefghijklmnopqrstuvwxyz'), 'hungarian') or               contains( translate( normalize-space(.) , 'ABCDEFGHIJKLMNOPQRSTUVWXYZ', 'abcdefghijklmnopqrstuvwxyz'), 'icelandic') or               contains( translate( normalize-space(.) , 'ABCDEFGHIJKLMNOPQRSTUVWXYZ', 'abcdefghijklmnopqrstuvwxyz'), 'indonesian') or               contains( translate( normalize-space(.) , 'ABCDEFGHIJKLMNOPQRSTUVWXYZ', 'abcdefghijklmnopqrstuvwxyz'), 'italian') or               contains( translate( normalize-space(.) , 'ABCDEFGHIJKLMNOPQRSTUVWXYZ', 'abcdefghijklmnopqrstuvwxyz'), 'latvian') or               contains( translate( normalize-space(.) , 'ABCDEFGHIJKLMNOPQRSTUVWXYZ', 'abcdefghijklmnopqrstuvwxyz'), 'lithuanian') or               contains( translate( normalize-space(.) , 'ABCDEFGHIJKLMNOPQRSTUVWXYZ', 'abcdefghijklmnopqrstuvwxyz'), 'navaho') or               contains( translate( normalize-space(.) , 'ABCDEFGHIJKLMNOPQRSTUVWXYZ', 'abcdefghijklmnopqrstuvwxyz'), 'norwegian') or               contains( translate( normalize-space(.) , 'ABCDEFGHIJKLMNOPQRSTUVWXYZ', 'abcdefghijklmnopqrstuvwxyz'), 'polish') or               contains( translate( normalize-space(.) , 'ABCDEFGHIJKLMNOPQRSTUVWXYZ', 'abcdefghijklmnopqrstuvwxyz'), 'portuguese') or               contains( translate( normalize-space(.) , 'ABCDEFGHIJKLMNOPQRSTUVWXYZ', 'abcdefghijklmnopqrstuvwxyz'), 'romanian') or               contains( translate( normalize-space(.) , 'ABCDEFGHIJKLMNOPQRSTUVWXYZ', 'abcdefghijklmnopqrstuvwxyz'), 'serbo_croa') or               contains( translate( normalize-space(.) , 'ABCDEFGHIJKLMNOPQRSTUVWXYZ', 'abcdefghijklmnopqrstuvwxyz'), 'slovene') or               contains( translate( normalize-space(.) , 'ABCDEFGHIJKLMNOPQRSTUVWXYZ', 'abcdefghijklmnopqrstuvwxyz'), 'spanish') or               contains( translate( normalize-space(.) , 'ABCDEFGHIJKLMNOPQRSTUVWXYZ', 'abcdefghijklmnopqrstuvwxyz'), 'swedish') or               contains( translate( normalize-space(.) , 'ABCDEFGHIJKLMNOPQRSTUVWXYZ', 'abcdefghijklmnopqrstuvwxyz'), 'turkish') or                contains( translate( normalize-space(.) , 'ABCDEFGHIJKLMNOPQRSTUVWXYZ', 'abcdefghijklmnopqrstuvwxyz'), 'wendic')"/>
         <axsl:otherwise>In pattern contains( translate( normalize-space(.) , 'ABCDEFGHIJKLMNOPQRSTUVWXYZ', 'abcdefghijklmnopqrstuvwxyz'), 'afrikaans') or contains( translate( normalize-space(.) , 'ABCDEFGHIJKLMNOPQRSTUVWXYZ', 'abcdefghijklmnopqrstuvwxyz'), 'albanian') or contains( translate( normalize-space(.) , 'ABCDEFGHIJKLMNOPQRSTUVWXYZ', 'abcdefghijklmnopqrstuvwxyz'), 'anglo-saxon') or contains( translate( normalize-space(.) , 'ABCDEFGHIJKLMNOPQRSTUVWXYZ', 'abcdefghijklmnopqrstuvwxyz'), 'catalan') or contains( translate( normalize-space(.) , 'ABCDEFGHIJKLMNOPQRSTUVWXYZ', 'abcdefghijklmnopqrstuvwxyz'), 'catalan_spn') or contains( translate( normalize-space(.) , 'ABCDEFGHIJKLMNOPQRSTUVWXYZ', 'abcdefghijklmnopqrstuvwxyz'), 'czech') or contains( translate( normalize-space(.) , 'ABCDEFGHIJKLMNOPQRSTUVWXYZ', 'abcdefghijklmnopqrstuvwxyz'), 'danish') or contains( translate( normalize-space(.) , 'ABCDEFGHIJKLMNOPQRSTUVWXYZ', 'abcdefghijklmnopqrstuvwxyz'), 'dutch') or contains( translate( normalize-space(.) , 'ABCDEFGHIJKLMNOPQRSTUVWXYZ', 'abcdefghijklmnopqrstuvwxyz'), 'english') or contains( translate( normalize-space(.) , 'ABCDEFGHIJKLMNOPQRSTUVWXYZ', 'abcdefghijklmnopqrstuvwxyz'), 'esperato') or contains( translate( normalize-space(.) , 'ABCDEFGHIJKLMNOPQRSTUVWXYZ', 'abcdefghijklmnopqrstuvwxyz'), 'estonian') or contains( translate( normalize-space(.) , 'ABCDEFGHIJKLMNOPQRSTUVWXYZ', 'abcdefghijklmnopqrstuvwxyz'), 'faroese') or contains( translate( normalize-space(.) , 'ABCDEFGHIJKLMNOPQRSTUVWXYZ', 'abcdefghijklmnopqrstuvwxyz'), 'finnish') or contains( translate( normalize-space(.) , 'ABCDEFGHIJKLMNOPQRSTUVWXYZ', 'abcdefghijklmnopqrstuvwxyz'), 'french') or contains( translate( normalize-space(.) , 'ABCDEFGHIJKLMNOPQRSTUVWXYZ', 'abcdefghijklmnopqrstuvwxyz'), 'german') or contains( translate( normalize-space(.) , 'ABCDEFGHIJKLMNOPQRSTUVWXYZ', 'abcdefghijklmnopqrstuvwxyz'), 'hawaiian') or contains( translate( normalize-space(.) , 'ABCDEFGHIJKLMNOPQRSTUVWXYZ', 'abcdefghijklmnopqrstuvwxyz'), 'hungarian') or contains( translate( normalize-space(.) , 'ABCDEFGHIJKLMNOPQRSTUVWXYZ', 'abcdefghijklmnopqrstuvwxyz'), 'icelandic') or contains( translate( normalize-space(.) , 'ABCDEFGHIJKLMNOPQRSTUVWXYZ', 'abcdefghijklmnopqrstuvwxyz'), 'indonesian') or contains( translate( normalize-space(.) , 'ABCDEFGHIJKLMNOPQRSTUVWXYZ', 'abcdefghijklmnopqrstuvwxyz'), 'italian') or contains( translate( normalize-space(.) , 'ABCDEFGHIJKLMNOPQRSTUVWXYZ', 'abcdefghijklmnopqrstuvwxyz'), 'latvian') or contains( translate( normalize-space(.) , 'ABCDEFGHIJKLMNOPQRSTUVWXYZ', 'abcdefghijklmnopqrstuvwxyz'), 'lithuanian') or contains( translate( normalize-space(.) , 'ABCDEFGHIJKLMNOPQRSTUVWXYZ', 'abcdefghijklmnopqrstuvwxyz'), 'navaho') or contains( translate( normalize-space(.) , 'ABCDEFGHIJKLMNOPQRSTUVWXYZ', 'abcdefghijklmnopqrstuvwxyz'), 'norwegian') or contains( translate( normalize-space(.) , 'ABCDEFGHIJKLMNOPQRSTUVWXYZ', 'abcdefghijklmnopqrstuvwxyz'), 'polish') or contains( translate( normalize-space(.) , 'ABCDEFGHIJKLMNOPQRSTUVWXYZ', 'abcdefghijklmnopqrstuvwxyz'), 'portuguese') or contains( translate( normalize-space(.) , 'ABCDEFGHIJKLMNOPQRSTUVWXYZ', 'abcdefghijklmnopqrstuvwxyz'), 'romanian') or contains( translate( normalize-space(.) , 'ABCDEFGHIJKLMNOPQRSTUVWXYZ', 'abcdefghijklmnopqrstuvwxyz'), 'serbo_croa') or contains( translate( normalize-space(.) , 'ABCDEFGHIJKLMNOPQRSTUVWXYZ', 'abcdefghijklmnopqrstuvwxyz'), 'slovene') or contains( translate( normalize-space(.) , 'ABCDEFGHIJKLMNOPQRSTUVWXYZ', 'abcdefghijklmnopqrstuvwxyz'), 'spanish') or contains( translate( normalize-space(.) , 'ABCDEFGHIJKLMNOPQRSTUVWXYZ', 'abcdefghijklmnopqrstuvwxyz'), 'swedish') or contains( translate( normalize-space(.) , 'ABCDEFGHIJKLMNOPQRSTUVWXYZ', 'abcdefghijklmnopqrstuvwxyz'), 'turkish') or contains( translate( normalize-space(.) , 'ABCDEFGHIJKLMNOPQRSTUVWXYZ', 'abcdefghijklmnopqrstuvwxyz'), 'wendic'):
   The only allowable values for HEAD.SOUR.LANG are Afrikaans, Albanian, Anglo-Saxon, Catalan, Catalan_Spn, Czech, Danish, Dutch, English, Esperanto, Estonian, Faroese, Finnish, French, German, Hawaiian, Hungarian, Icelandic, Indonesian, Italian, Latvian, Lithuanian, Navaho, Norwegian, Polish, Portuguese, Romanian, Serbo_Croa, Slovak, Slovene, Spanish, Swedish, Turkish, Wendic
</axsl:otherwise>
      </axsl:choose>
      <axsl:choose>
         <axsl:when test="string-length(normalize-space(.)) &lt; 16"/>
         <axsl:otherwise>In pattern string-length(normalize-space(.)) &lt; 16:
   Exceeds maximum of HEAD.SOUR.LANG length of 16
</axsl:otherwise>
      </axsl:choose>
      <axsl:apply-templates mode="M5"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M5"/>
   <axsl:template match="GED/HEAD/NOTE/node()[1][self::text()]" priority="4000" mode="M6">
      <axsl:choose>
         <axsl:when test="string-length( normalize-space(.) ) &lt; 248"/>
         <axsl:otherwise>In pattern string-length( normalize-space(.) ) &lt; 248:
   Exceeds maximum HEAD.NOTE length of 248
</axsl:otherwise>
      </axsl:choose>
      <axsl:apply-templates mode="M6"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M6"/>
   <axsl:template match="FAM/SLGS/STAT/node()[1][self::text()]" priority="4000" mode="M7">
      <axsl:choose>
         <axsl:when test="                       contains( translate( normalize-space(.) , 'abcdefghijklmnopqrstuvwxyz', 'ABCDEFGHIJKLMNOPQRSTUVWXYZ'), 'CANCELED') or              contains( translate( normalize-space(.) , 'abcdefghijklmnopqrstuvwxyz', 'ABCDEFGHIJKLMNOPQRSTUVWXYZ'), 'CLEARED') or              contains( translate( normalize-space(.) , 'abcdefghijklmnopqrstuvwxyz', 'ABCDEFGHIJKLMNOPQRSTUVWXYZ'), 'COMPLETED') or              contains( translate( normalize-space(.) , 'abcdefghijklmnopqrstuvwxyz', 'ABCDEFGHIJKLMNOPQRSTUVWXYZ'), 'DNS') or              contains( translate( normalize-space(.) , 'abcdefghijklmnopqrstuvwxyz', 'ABCDEFGHIJKLMNOPQRSTUVWXYZ'), 'DNS/CAN') or              contains( translate( normalize-space(.) , 'abcdefghijklmnopqrstuvwxyz', 'ABCDEFGHIJKLMNOPQRSTUVWXYZ'), 'PRE-1970') or              contains( translate( normalize-space(.) , 'abcdefghijklmnopqrstuvwxyz', 'ABCDEFGHIJKLMNOPQRSTUVWXYZ'), 'QUALIFIED') or              contains( translate( normalize-space(.) , 'abcdefghijklmnopqrstuvwxyz', 'ABCDEFGHIJKLMNOPQRSTUVWXYZ'), 'SUBMITTED') or              contains( translate( normalize-space(.) , 'abcdefghijklmnopqrstuvwxyz', 'ABCDEFGHIJKLMNOPQRSTUVWXYZ'), 'UNCLEARED')"/>
         <axsl:otherwise>In pattern contains( translate( normalize-space(.) , 'abcdefghijklmnopqrstuvwxyz', 'ABCDEFGHIJKLMNOPQRSTUVWXYZ'), 'CANCELED') or contains( translate( normalize-space(.) , 'abcdefghijklmnopqrstuvwxyz', 'ABCDEFGHIJKLMNOPQRSTUVWXYZ'), 'CLEARED') or contains( translate( normalize-space(.) , 'abcdefghijklmnopqrstuvwxyz', 'ABCDEFGHIJKLMNOPQRSTUVWXYZ'), 'COMPLETED') or contains( translate( normalize-space(.) , 'abcdefghijklmnopqrstuvwxyz', 'ABCDEFGHIJKLMNOPQRSTUVWXYZ'), 'DNS') or contains( translate( normalize-space(.) , 'abcdefghijklmnopqrstuvwxyz', 'ABCDEFGHIJKLMNOPQRSTUVWXYZ'), 'DNS/CAN') or contains( translate( normalize-space(.) , 'abcdefghijklmnopqrstuvwxyz', 'ABCDEFGHIJKLMNOPQRSTUVWXYZ'), 'PRE-1970') or contains( translate( normalize-space(.) , 'abcdefghijklmnopqrstuvwxyz', 'ABCDEFGHIJKLMNOPQRSTUVWXYZ'), 'QUALIFIED') or contains( translate( normalize-space(.) , 'abcdefghijklmnopqrstuvwxyz', 'ABCDEFGHIJKLMNOPQRSTUVWXYZ'), 'SUBMITTED') or contains( translate( normalize-space(.) , 'abcdefghijklmnopqrstuvwxyz', 'ABCDEFGHIJKLMNOPQRSTUVWXYZ'), 'UNCLEARED'):
   The only allowable values for FAM.SLGS.STAT are CANCELED, CLEARED, COMPLETED, DNS, DNS/CAN, PRE-1970, QUALIFIED, SUBMITTED, UNCLEARED
</axsl:otherwise>
      </axsl:choose>
      <axsl:choose>
         <axsl:when test="string-length(normalize-space(.)) &lt; 11"/>
         <axsl:otherwise>In pattern string-length(normalize-space(.)) &lt; 11:
   Exceeds maximum of FAM.SLGS.STAT length of 10
</axsl:otherwise>
      </axsl:choose>
      <axsl:choose>
         <axsl:when test="string-length(normalize-space(.)) &gt; 2"/>
         <axsl:otherwise>In pattern string-length(normalize-space(.)) &gt; 2:
   Fails to meet the minimum length of 3
</axsl:otherwise>
      </axsl:choose>
      <axsl:apply-templates mode="M7"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M7"/>
   <axsl:template match="INDI/NAME/node()[1][self::text()]" priority="4000" mode="M8">
      <axsl:choose>
         <axsl:when test="string-length( normalize-space(.) ) &lt; 121"/>
         <axsl:otherwise>In pattern string-length( normalize-space(.) ) &lt; 121:
   Exceeds maximum INDI.NAME length of 120
</axsl:otherwise>
      </axsl:choose>
      <axsl:apply-templates mode="M8"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M8"/>
   <axsl:template match="INDI/SEX/node()[1][self::text()]" priority="4000" mode="M9">
      <axsl:choose>
         <axsl:when test="contains( translate( normalize-space(.) , 'ABCDEFGHIJKLMNOPQRSTUVWXYZ', 'abcdefghijklmnopqrstuvwxyz'), 'm') or                   contains( translate( normalize-space(.) , 'ABCDEFGHIJKLMNOPQRSTUVWXYZ', 'abcdefghijklmnopqrstuvwxyz'), 'f') or                   contains( translate( normalize-space(.) , 'ABCDEFGHIJKLMNOPQRSTUVWXYZ', 'abcdefghijklmnopqrstuvwxyz'), 'male') or                   contains( translate( normalize-space(.) , 'ABCDEFGHIJKLMNOPQRSTUVWXYZ', 'abcdefghijklmnopqrstuvwxyz'), 'female')"/>
         <axsl:otherwise>In pattern contains( translate( normalize-space(.) , 'ABCDEFGHIJKLMNOPQRSTUVWXYZ', 'abcdefghijklmnopqrstuvwxyz'), 'm') or contains( translate( normalize-space(.) , 'ABCDEFGHIJKLMNOPQRSTUVWXYZ', 'abcdefghijklmnopqrstuvwxyz'), 'f') or contains( translate( normalize-space(.) , 'ABCDEFGHIJKLMNOPQRSTUVWXYZ', 'abcdefghijklmnopqrstuvwxyz'), 'male') or contains( translate( normalize-space(.) , 'ABCDEFGHIJKLMNOPQRSTUVWXYZ', 'abcdefghijklmnopqrstuvwxyz'), 'female'):
   The only allowable values for INDI.SEX are M, F, Male, Female
</axsl:otherwise>
      </axsl:choose>
      <axsl:choose>
         <axsl:when test="string-length(normalize-space(.)) &lt; 8"/>
         <axsl:otherwise>In pattern string-length(normalize-space(.)) &lt; 8:
   Exceeds maximum of INDI.SEX length of 7
</axsl:otherwise>
      </axsl:choose>
      <axsl:apply-templates mode="M9"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M9"/>
   <axsl:template match="INDI/FAMC/PEDI/node()[self::text()]" priority="4000" mode="M10">
      <axsl:choose>
         <axsl:when test="contains( translate( normalize-space(.) , 'ABCDEFGHIJKLMNOPQRSTUVWXYZ', 'abcdefghijklmnopqrstuvwxyz'), 'adopted') or                       contains( translate( normalize-space(.) , 'ABCDEFGHIJKLMNOPQRSTUVWXYZ', 'abcdefghijklmnopqrstuvwxyz'), 'birth') or                       contains( translate( normalize-space(.) , 'ABCDEFGHIJKLMNOPQRSTUVWXYZ', 'abcdefghijklmnopqrstuvwxyz'), 'foster') or                       contains( translate( normalize-space(.) , 'ABCDEFGHIJKLMNOPQRSTUVWXYZ', 'abcdefghijklmnopqrstuvwxyz'), 'sealing')"/>
         <axsl:otherwise>In pattern contains( translate( normalize-space(.) , 'ABCDEFGHIJKLMNOPQRSTUVWXYZ', 'abcdefghijklmnopqrstuvwxyz'), 'adopted') or contains( translate( normalize-space(.) , 'ABCDEFGHIJKLMNOPQRSTUVWXYZ', 'abcdefghijklmnopqrstuvwxyz'), 'birth') or contains( translate( normalize-space(.) , 'ABCDEFGHIJKLMNOPQRSTUVWXYZ', 'abcdefghijklmnopqrstuvwxyz'), 'foster') or contains( translate( normalize-space(.) , 'ABCDEFGHIJKLMNOPQRSTUVWXYZ', 'abcdefghijklmnopqrstuvwxyz'), 'sealing'):
   The only allowable values for INDI.FAMC.PEDI are adopted, birth, foster, sealing
</axsl:otherwise>
      </axsl:choose>
      <axsl:choose>
         <axsl:when test="string-length(normalize-space(.)) &lt; 8"/>
         <axsl:otherwise>In pattern string-length(normalize-space(.)) &lt; 8:
   Exceeds maximum of INDI.FAMC.PEDI length of 16
</axsl:otherwise>
      </axsl:choose>
      <axsl:choose>
         <axsl:when test="string-length(normalize-space(.)) &gt; 4"/>
         <axsl:otherwise>In pattern string-length(normalize-space(.)) &gt; 4:
   Fails to meet minimum INDI.FAMC.PEDI length of 5
</axsl:otherwise>
      </axsl:choose>
      <axsl:apply-templates mode="M10"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M10"/>
   <axsl:template match="OBJE/FORM/node()[1][self::text()]" priority="4000" mode="M11">
      <axsl:choose>
         <axsl:when test="contains( translate( normalize-space(.) , 'ABCDEFGHIJKLMNOPQRSTUVWXYZ', 'abcdefghijklmnopqrstuvwxyz'), 'bmp') or               contains( translate( normalize-space(.) , 'ABCDEFGHIJKLMNOPQRSTUVWXYZ', 'abcdefghijklmnopqrstuvwxyz'), 'gif') or               contains( translate( normalize-space(.) , 'ABCDEFGHIJKLMNOPQRSTUVWXYZ', 'abcdefghijklmnopqrstuvwxyz'), 'jpeg') or               contains( translate( normalize-space(.) , 'ABCDEFGHIJKLMNOPQRSTUVWXYZ', 'abcdefghijklmnopqrstuvwxyz'), 'ole') or      contains( translate( normalize-space(.) , 'ABCDEFGHIJKLMNOPQRSTUVWXYZ', 'abcdefghijklmnopqrstuvwxyz'), 'pcx') or      contains( translate( normalize-space(.) , 'ABCDEFGHIJKLMNOPQRSTUVWXYZ', 'abcdefghijklmnopqrstuvwxyz'), 'tiff') or      contains( translate( normalize-space(.) , 'ABCDEFGHIJKLMNOPQRSTUVWXYZ', 'abcdefghijklmnopqrstuvwxyz'), 'wav')"/>
         <axsl:otherwise>In pattern contains( translate( normalize-space(.) , 'ABCDEFGHIJKLMNOPQRSTUVWXYZ', 'abcdefghijklmnopqrstuvwxyz'), 'bmp') or contains( translate( normalize-space(.) , 'ABCDEFGHIJKLMNOPQRSTUVWXYZ', 'abcdefghijklmnopqrstuvwxyz'), 'gif') or contains( translate( normalize-space(.) , 'ABCDEFGHIJKLMNOPQRSTUVWXYZ', 'abcdefghijklmnopqrstuvwxyz'), 'jpeg') or contains( translate( normalize-space(.) , 'ABCDEFGHIJKLMNOPQRSTUVWXYZ', 'abcdefghijklmnopqrstuvwxyz'), 'ole') or contains( translate( normalize-space(.) , 'ABCDEFGHIJKLMNOPQRSTUVWXYZ', 'abcdefghijklmnopqrstuvwxyz'), 'pcx') or contains( translate( normalize-space(.) , 'ABCDEFGHIJKLMNOPQRSTUVWXYZ', 'abcdefghijklmnopqrstuvwxyz'), 'tiff') or contains( translate( normalize-space(.) , 'ABCDEFGHIJKLMNOPQRSTUVWXYZ', 'abcdefghijklmnopqrstuvwxyz'), 'wav'):
   The only allowable values for OBJE.FORM are bmp, gif, jpeg, ole, pcx, tiff, wav
</axsl:otherwise>
      </axsl:choose>
      <axsl:choose>
         <axsl:when test="string-length(normalize-space(.)) &lt; 5"/>
         <axsl:otherwise>In pattern string-length(normalize-space(.)) &lt; 5:
   Exceeds maximum of OBJE.FORM length of 4
</axsl:otherwise>
      </axsl:choose>
      <axsl:choose>
         <axsl:when test="string-length(normalize-space(.)) &gt; 2"/>
         <axsl:otherwise>In pattern string-length(normalize-space(.)) &gt; 2:
   Fails to meet minimum OBJE.FORM length of 3
</axsl:otherwise>
      </axsl:choose>
      <axsl:apply-templates mode="M11"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M11"/>
   <axsl:template match="NOTE/node()[1][self::text()]" priority="4000" mode="M12">
      <axsl:choose>
         <axsl:when test="string-length( normalize-space(.) ) &lt; 249"/>
         <axsl:otherwise>In pattern string-length( normalize-space(.) ) &lt; 249:
   Exceeds maximum NOTE length of 248
</axsl:otherwise>
      </axsl:choose>
      <axsl:apply-templates mode="M12"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M12"/>
   <axsl:template match="SOUR/DATA/EVEN/node()[1][self::text()]" priority="4000" mode="M13">
      <axsl:choose>
         <axsl:when test="string-length( normalize-space(.) ) &lt; 91"/>
         <axsl:otherwise>In pattern string-length( normalize-space(.) ) &lt; 91:
   Exceeds maximum SOUR.DATA.EVEN length of 90
</axsl:otherwise>
      </axsl:choose>
      <axsl:apply-templates mode="M13"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M13"/>
   <axsl:template match="AUTH/node()[1][self::text()]" priority="4000" mode="M14">
      <axsl:choose>
         <axsl:when test="string-length( normalize-space(.) ) &lt; 249"/>
         <axsl:otherwise>In pattern string-length( normalize-space(.) ) &lt; 249:
   Exceeds maximum SOUR.AUTH length of 248
</axsl:otherwise>
      </axsl:choose>
      <axsl:apply-templates mode="M14"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M14"/>
   <axsl:template match="SOUR/TITL/node()[1][self::text()]" priority="4000" mode="M15">
      <axsl:choose>
         <axsl:when test="string-length( normalize-space(.) ) &lt; 249"/>
         <axsl:otherwise>In pattern string-length( normalize-space(.) ) &lt; 249:
   Exceeds maximum SOUR.TITL length of 248
</axsl:otherwise>
      </axsl:choose>
      <axsl:apply-templates mode="M15"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M15"/>
   <axsl:template match="PUBL/node()[1][self::text()]" priority="4000" mode="M16">
      <axsl:choose>
         <axsl:when test="string-length( normalize-space(.) ) &lt; 249"/>
         <axsl:otherwise>In pattern string-length( normalize-space(.) ) &lt; 249:
   Exceeds maximum SOUR.PUBL length of 248
</axsl:otherwise>
      </axsl:choose>
      <axsl:apply-templates mode="M16"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M16"/>
   <axsl:template match="SOUR/TEXT/node()[1][self::text()]" priority="4000" mode="M17">
      <axsl:choose>
         <axsl:when test="string-length( normalize-space(.) ) &lt; 249"/>
         <axsl:otherwise>In pattern string-length( normalize-space(.) ) &lt; 249:
   Exceeds maximum SOUR.TEXT length of 248
</axsl:otherwise>
      </axsl:choose>
      <axsl:apply-templates mode="M17"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M17"/>
   <axsl:template match="CALN/node()[1][self::text()]" priority="4000" mode="M18">
      <axsl:choose>
         <axsl:when test="string-length( normalize-space(.) ) &lt; 121"/>
         <axsl:otherwise>In pattern string-length( normalize-space(.) ) &lt; 121:
   Exceeds maximum REPO.CALN of 120
</axsl:otherwise>
      </axsl:choose>
      <axsl:apply-templates mode="M18"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M18"/>
   <axsl:template match="SOUR/REPO/CALN/MEDI/node()[1][self::text()]" priority="4000" mode="M19">
      <axsl:choose>
         <axsl:when test="contains( translate( normalize-space(.) , 'ABCDEFGHIJKLMNOPQRSTUVWXYZ', 'abcdefghijklmnopqrstuvwxyz'), 'audio') or                                                         contains( translate( normalize-space(.) , 'ABCDEFGHIJKLMNOPQRSTUVWXYZ', 'abcdefghijklmnopqrstuvwxyz'), 'book') or                               contains( translate( normalize-space(.) , 'ABCDEFGHIJKLMNOPQRSTUVWXYZ', 'abcdefghijklmnopqrstuvwxyz'), 'card') or                               contains( translate( normalize-space(.) , 'ABCDEFGHIJKLMNOPQRSTUVWXYZ', 'abcdefghijklmnopqrstuvwxyz'), 'electronic') or                      contains( translate( normalize-space(.) , 'ABCDEFGHIJKLMNOPQRSTUVWXYZ', 'abcdefghijklmnopqrstuvwxyz'), 'fiche') or                      contains( translate( normalize-space(.) , 'ABCDEFGHIJKLMNOPQRSTUVWXYZ', 'abcdefghijklmnopqrstuvwxyz'), 'film') or                      contains( translate( normalize-space(.) , 'ABCDEFGHIJKLMNOPQRSTUVWXYZ', 'abcdefghijklmnopqrstuvwxyz'), 'magazine') or                      contains( translate( normalize-space(.) , 'ABCDEFGHIJKLMNOPQRSTUVWXYZ', 'abcdefghijklmnopqrstuvwxyz'), 'manuscript') or                      contains( translate( normalize-space(.) , 'ABCDEFGHIJKLMNOPQRSTUVWXYZ', 'abcdefghijklmnopqrstuvwxyz'), 'map') or                      contains( translate( normalize-space(.) , 'ABCDEFGHIJKLMNOPQRSTUVWXYZ', 'abcdefghijklmnopqrstuvwxyz'), 'newspaper') or                      contains( translate( normalize-space(.) , 'ABCDEFGHIJKLMNOPQRSTUVWXYZ', 'abcdefghijklmnopqrstuvwxyz'), 'photo') or                      contains( translate( normalize-space(.) , 'ABCDEFGHIJKLMNOPQRSTUVWXYZ', 'abcdefghijklmnopqrstuvwxyz'), 'tombstone') or                      contains( translate( normalize-space(.) , 'ABCDEFGHIJKLMNOPQRSTUVWXYZ', 'abcdefghijklmnopqrstuvwxyz'), 'video')"/>
         <axsl:otherwise>In pattern contains( translate( normalize-space(.) , 'ABCDEFGHIJKLMNOPQRSTUVWXYZ', 'abcdefghijklmnopqrstuvwxyz'), 'audio') or contains( translate( normalize-space(.) , 'ABCDEFGHIJKLMNOPQRSTUVWXYZ', 'abcdefghijklmnopqrstuvwxyz'), 'book') or contains( translate( normalize-space(.) , 'ABCDEFGHIJKLMNOPQRSTUVWXYZ', 'abcdefghijklmnopqrstuvwxyz'), 'card') or contains( translate( normalize-space(.) , 'ABCDEFGHIJKLMNOPQRSTUVWXYZ', 'abcdefghijklmnopqrstuvwxyz'), 'electronic') or contains( translate( normalize-space(.) , 'ABCDEFGHIJKLMNOPQRSTUVWXYZ', 'abcdefghijklmnopqrstuvwxyz'), 'fiche') or contains( translate( normalize-space(.) , 'ABCDEFGHIJKLMNOPQRSTUVWXYZ', 'abcdefghijklmnopqrstuvwxyz'), 'film') or contains( translate( normalize-space(.) , 'ABCDEFGHIJKLMNOPQRSTUVWXYZ', 'abcdefghijklmnopqrstuvwxyz'), 'magazine') or contains( translate( normalize-space(.) , 'ABCDEFGHIJKLMNOPQRSTUVWXYZ', 'abcdefghijklmnopqrstuvwxyz'), 'manuscript') or contains( translate( normalize-space(.) , 'ABCDEFGHIJKLMNOPQRSTUVWXYZ', 'abcdefghijklmnopqrstuvwxyz'), 'map') or contains( translate( normalize-space(.) , 'ABCDEFGHIJKLMNOPQRSTUVWXYZ', 'abcdefghijklmnopqrstuvwxyz'), 'newspaper') or contains( translate( normalize-space(.) , 'ABCDEFGHIJKLMNOPQRSTUVWXYZ', 'abcdefghijklmnopqrstuvwxyz'), 'photo') or contains( translate( normalize-space(.) , 'ABCDEFGHIJKLMNOPQRSTUVWXYZ', 'abcdefghijklmnopqrstuvwxyz'), 'tombstone') or contains( translate( normalize-space(.) , 'ABCDEFGHIJKLMNOPQRSTUVWXYZ', 'abcdefghijklmnopqrstuvwxyz'), 'video'):
   The only allowable values for SOUR.REPO.CALN.MEDI are audio, book, card, electronic, fiche, film, magazine, manuscript, map, newspaper, photo, tombstone, video
</axsl:otherwise>
      </axsl:choose>
      <axsl:choose>
         <axsl:when test="string-length(normalize-space(.)) &lt; 16"/>
         <axsl:otherwise>In pattern string-length(normalize-space(.)) &lt; 16:
   Exceeds maximum of SOUR.REPO.CALN.MEDI length of 15
</axsl:otherwise>
      </axsl:choose>
      <axsl:apply-templates mode="M19"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M19"/>
   <axsl:template match="SUBN/ORDI/node()[1][self::text()]" priority="4000" mode="M20">
      <axsl:choose>
         <axsl:when test="contains( translate( normalize-space(.) , 'ABCDEFGHIJKLMNOPQRSTUVWXYZ', 'abcdefghijklmnopqrstuvwxyz'), 'yes') or                                             contains( translate( normalize-space(.) , 'ABCDEFGHIJKLMNOPQRSTUVWXYZ', 'abcdefghijklmnopqrstuvwxyz'), 'no')"/>
         <axsl:otherwise>In pattern contains( translate( normalize-space(.) , 'ABCDEFGHIJKLMNOPQRSTUVWXYZ', 'abcdefghijklmnopqrstuvwxyz'), 'yes') or contains( translate( normalize-space(.) , 'ABCDEFGHIJKLMNOPQRSTUVWXYZ', 'abcdefghijklmnopqrstuvwxyz'), 'no'):
   The only allowable values for SUBN.ORDI are yes or no
</axsl:otherwise>
      </axsl:choose>
      <axsl:choose>
         <axsl:when test="string-length(normalize-space(.)) &lt; 4"/>
         <axsl:otherwise>In pattern string-length(normalize-space(.)) &lt; 4:
   Exceeds maximum of SUBN.ORDI length of 3
</axsl:otherwise>
      </axsl:choose>
      <axsl:choose>
         <axsl:when test="string-length(normalize-space(.)) &gt; 1"/>
         <axsl:otherwise>In pattern string-length(normalize-space(.)) &gt; 1:
   Fails to meet the minumum SUBN.ORDI length of 2
</axsl:otherwise>
      </axsl:choose>
      <axsl:apply-templates mode="M20"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M20"/>
   <axsl:template match="ADDR/node()[1][self::text()]" priority="4000" mode="M21">
      <axsl:choose>
         <axsl:when test="string-length( normalize-space(.) ) &lt; 61"/>
         <axsl:otherwise>In pattern string-length( normalize-space(.) ) &lt; 61:
   Exceeds maximum ADDR length of 60
</axsl:otherwise>
      </axsl:choose>
      <axsl:apply-templates mode="M21"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M21"/>
   <axsl:template match="CHAN/DATE/node()[1][self::text()]" priority="4000" mode="M22">
      <axsl:choose>
         <axsl:when test="string-length( normalize-space(.) ) &lt; 12"/>
         <axsl:otherwise>In pattern string-length( normalize-space(.) ) &lt; 12:
   Exceeds maximum CHAN.DATE length of 11
</axsl:otherwise>
      </axsl:choose>
      <axsl:choose>
         <axsl:when test="string-length( normalize-space(.) ) &gt; 9"/>
         <axsl:otherwise>In pattern string-length( normalize-space(.) ) &gt; 9:
   Fails to meet the minimum CHAN.DATE length of 10
</axsl:otherwise>
      </axsl:choose>
      <axsl:apply-templates mode="M22"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M22"/>
   <axsl:template match="PLAC/node()[1][self::text()]" priority="4000" mode="M23">
      <axsl:choose>
         <axsl:when test="string-length( normalize-space(.) ) &lt; 121"/>
         <axsl:otherwise>In pattern string-length( normalize-space(.) ) &lt; 121:
   PLAC range exceeds maximum of 121
</axsl:otherwise>
      </axsl:choose>
      <axsl:apply-templates mode="M23"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M23"/>
   <axsl:template match="CAST/node()[1][self::text()]" priority="4000" mode="M24">
      <axsl:choose>
         <axsl:when test="string-length( normalize-space(.) ) &lt; 91"/>
         <axsl:otherwise>In pattern string-length( normalize-space(.) ) &lt; 91:
   Exceeds maximum INDI.CAST length of 90
</axsl:otherwise>
      </axsl:choose>
      <axsl:apply-templates mode="M24"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M24"/>
   <axsl:template match="DSCR/node()[1][self::text()]" priority="4000" mode="M25">
      <axsl:choose>
         <axsl:when test="string-length( normalize-space(.) ) &lt; 249"/>
         <axsl:otherwise>In pattern string-length( normalize-space(.) ) &lt; 249:
   Exceeds maximum INDI.DSCR length of 248
</axsl:otherwise>
      </axsl:choose>
      <axsl:apply-templates mode="M25"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M25"/>
   <axsl:template match="EDUC/node()[1][self::text()]" priority="4000" mode="M26">
      <axsl:choose>
         <axsl:when test="string-length( normalize-space(.) ) &lt; 249"/>
         <axsl:otherwise>In pattern string-length( normalize-space(.) ) &lt; 249:
   Exceeds maximum INDI.EDUC length of 248
</axsl:otherwise>
      </axsl:choose>
      <axsl:apply-templates mode="M26"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M26"/>
   <axsl:template match="IDNO/node()[1][self::text()]" priority="4000" mode="M27">
      <axsl:choose>
         <axsl:when test="string-length( normalize-space(.) ) &lt; 31"/>
         <axsl:otherwise>In pattern string-length( normalize-space(.) ) &lt; 31:
   Exceeds maximum IDNO.INDO length of 30
</axsl:otherwise>
      </axsl:choose>
      <axsl:apply-templates mode="M27"/>
   </axsl:template>
   <axsl:template match="IDNO" priority="3999" mode="M27">
      <axsl:choose>
         <axsl:when test="not( IDNO/TYPE )"/>
         <axsl:otherwise>In pattern not( IDNO/TYPE ):
   IDNO (Identification numbers) must be described by a TYPE attribute
</axsl:otherwise>
      </axsl:choose>
      <axsl:apply-templates mode="M27"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M27"/>
   <axsl:template match="NATI/node()[1][self::text()]" priority="4000" mode="M28">
      <axsl:choose>
         <axsl:when test="string-length( normalize-space(.) ) &lt; 121"/>
         <axsl:otherwise>In pattern string-length( normalize-space(.) ) &lt; 121:
   Exceeds maximum INDI.NATI length of 120
</axsl:otherwise>
      </axsl:choose>
      <axsl:apply-templates mode="M28"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M28"/>
   <axsl:template match="NCHI/node()[1][self::text()]" priority="4000" mode="M29">
      <axsl:choose>
         <axsl:when test="string-length( normalize-space(.) ) &lt; 4"/>
         <axsl:otherwise>In pattern string-length( normalize-space(.) ) &lt; 4:
   Exceeds maximum INDI.NCHI length of 3
</axsl:otherwise>
      </axsl:choose>
      <axsl:apply-templates mode="M29"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M29"/>
   <axsl:template match="NMR/node()[1][self::text()]" priority="4000" mode="M30">
      <axsl:choose>
         <axsl:when test="string-length( normalize-space(.) ) &lt; 4"/>
         <axsl:otherwise>In pattern string-length( normalize-space(.) ) &lt; 4:
   Exceeds maximum INDI.NMR length of 3
</axsl:otherwise>
      </axsl:choose>
      <axsl:apply-templates mode="M30"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M30"/>
   <axsl:template match="OCCU/node()[1][self::text()]" priority="4000" mode="M31">
      <axsl:choose>
         <axsl:when test="string-length( normalize-space(.) ) &lt; 91"/>
         <axsl:otherwise>In pattern string-length( normalize-space(.) ) &lt; 91:
   Exceeds maximum INDI.OCCU length of 90
</axsl:otherwise>
      </axsl:choose>
      <axsl:apply-templates mode="M31"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M31"/>
   <axsl:template match="PROP/node()[1][self::text()]" priority="4000" mode="M32">
      <axsl:choose>
         <axsl:when test="string-length( normalize-space(.) ) &lt; 249"/>
         <axsl:otherwise>In pattern string-length( normalize-space(.) ) &lt; 249:
   Exceeds maximum INDI.PROP length of 248
</axsl:otherwise>
      </axsl:choose>
      <axsl:apply-templates mode="M32"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M32"/>
   <axsl:template match="RELI/node()[1][self::text()]" priority="4000" mode="M33">
      <axsl:choose>
         <axsl:when test="string-length( normalize-space(.) ) &lt; 91"/>
         <axsl:otherwise>In pattern string-length( normalize-space(.) ) &lt; 91:
   Exceeds maximum INDI.RELI length of 90
</axsl:otherwise>
      </axsl:choose>
      <axsl:apply-templates mode="M33"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M33"/>
   <axsl:template match="SSN/node()[1][self::text()]" priority="4000" mode="M34">
      <axsl:choose>
         <axsl:when test="string-length( normalize-space(.) ) &lt; 12"/>
         <axsl:otherwise>In pattern string-length( normalize-space(.) ) &lt; 12:
   Exceeds maximum INDI.SSN length of 11
</axsl:otherwise>
      </axsl:choose>
      <axsl:apply-templates mode="M34"/>
   </axsl:template>
   <axsl:template match="SSN/node()[1][self::text()]" priority="3999" mode="M34">
      <axsl:choose>
         <axsl:when test="string-length( normalize-space(.) ) &gt; 8"/>
         <axsl:otherwise>In pattern string-length( normalize-space(.) ) &gt; 8:
   Fails maximum INDI.SSN length of 9
</axsl:otherwise>
      </axsl:choose>
      <axsl:apply-templates mode="M34"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M34"/>
   <axsl:template match="INDI/TITL/node()[1][self::text()]" priority="4000" mode="M35">
      <axsl:choose>
         <axsl:when test="string-length( normalize-space(.) ) &lt; 121"/>
         <axsl:otherwise>In pattern string-length( normalize-space(.) ) &lt; 121:
   Exceeds maximum INDI.TITL length of 120
</axsl:otherwise>
      </axsl:choose>
      <axsl:apply-templates mode="M35"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M35"/>
   <axsl:template match="INDI/ADOP/FAMC/ADOP/node()[1][self::text()]" priority="4000" mode="M36">
      <axsl:choose>
         <axsl:when test="contains( translate( normalize-space(.) , 'abcdefghijklmnopqrstuvwxyz', 'ABCDEFGHIJKLMNOPQRSTUVWXYZ'), 'HUSB') or              contains( translate( normalize-space(.) , 'abcdefghijklmnopqrstuvwxyz', 'ABCDEFGHIJKLMNOPQRSTUVWXYZ'), 'WIFE') or              contains( translate( normalize-space(.) , 'abcdefghijklmnopqrstuvwxyz', 'ABCDEFGHIJKLMNOPQRSTUVWXYZ'), 'BOTH')"/>
         <axsl:otherwise>In pattern contains( translate( normalize-space(.) , 'abcdefghijklmnopqrstuvwxyz', 'ABCDEFGHIJKLMNOPQRSTUVWXYZ'), 'HUSB') or contains( translate( normalize-space(.) , 'abcdefghijklmnopqrstuvwxyz', 'ABCDEFGHIJKLMNOPQRSTUVWXYZ'), 'WIFE') or contains( translate( normalize-space(.) , 'abcdefghijklmnopqrstuvwxyz', 'ABCDEFGHIJKLMNOPQRSTUVWXYZ'), 'BOTH'):
   The only allowable values for INDI.ADOP.FAMC.ADOP are HUSB, WIFE, or BOTH
</axsl:otherwise>
      </axsl:choose>
      <axsl:choose>
         <axsl:when test="string-length(normalize-space(.)) &lt; 5"/>
         <axsl:otherwise>In pattern string-length(normalize-space(.)) &lt; 5:
   Exceeds maximum of INDI.ADOP.FAMC.ADOP length of 5
</axsl:otherwise>
      </axsl:choose>
      <axsl:apply-templates mode="M36"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M36"/>
   <axsl:template match="INDI/BAPL/STAT/node()[1][self::text()]|INDI/CONL/STAT/node()[1][self::text()]|INDI/ENDL/STAT/node()[1][self::text()]" priority="4000" mode="M37">
      <axsl:choose>
         <axsl:when test="contains( translate( normalize-space(.) , 'abcdefghijklmnopqrstuvwxyz', 'ABCDEFGHIJKLMNOPQRSTUVWXYZ'), 'CHILD') or          contains( translate( normalize-space(.) , 'abcdefghijklmnopqrstuvwxyz', 'ABCDEFGHIJKLMNOPQRSTUVWXYZ'), 'CLEARED') or          contains( translate( normalize-space(.) , 'abcdefghijklmnopqrstuvwxyz', 'ABCDEFGHIJKLMNOPQRSTUVWXYZ'), 'COMPLETED') or          contains( translate( normalize-space(.) , 'abcdefghijklmnopqrstuvwxyz', 'ABCDEFGHIJKLMNOPQRSTUVWXYZ'), 'INFANT') or          contains( translate( normalize-space(.) , 'abcdefghijklmnopqrstuvwxyz', 'ABCDEFGHIJKLMNOPQRSTUVWXYZ'), 'PRE-1970') or          contains( translate( normalize-space(.) , 'abcdefghijklmnopqrstuvwxyz', 'ABCDEFGHIJKLMNOPQRSTUVWXYZ'), 'QUALIFIED') or          contains( translate( normalize-space(.) , 'abcdefghijklmnopqrstuvwxyz', 'ABCDEFGHIJKLMNOPQRSTUVWXYZ'), 'STILLBORN') or          contains( translate( normalize-space(.) , 'abcdefghijklmnopqrstuvwxyz', 'ABCDEFGHIJKLMNOPQRSTUVWXYZ'), 'SUBMITTED') or          contains( translate( normalize-space(.) , 'abcdefghijklmnopqrstuvwxyz', 'ABCDEFGHIJKLMNOPQRSTUVWXYZ'), 'UNCLEARED')"/>
         <axsl:otherwise>In pattern contains( translate( normalize-space(.) , 'abcdefghijklmnopqrstuvwxyz', 'ABCDEFGHIJKLMNOPQRSTUVWXYZ'), 'CHILD') or contains( translate( normalize-space(.) , 'abcdefghijklmnopqrstuvwxyz', 'ABCDEFGHIJKLMNOPQRSTUVWXYZ'), 'CLEARED') or contains( translate( normalize-space(.) , 'abcdefghijklmnopqrstuvwxyz', 'ABCDEFGHIJKLMNOPQRSTUVWXYZ'), 'COMPLETED') or contains( translate( normalize-space(.) , 'abcdefghijklmnopqrstuvwxyz', 'ABCDEFGHIJKLMNOPQRSTUVWXYZ'), 'INFANT') or contains( translate( normalize-space(.) , 'abcdefghijklmnopqrstuvwxyz', 'ABCDEFGHIJKLMNOPQRSTUVWXYZ'), 'PRE-1970') or contains( translate( normalize-space(.) , 'abcdefghijklmnopqrstuvwxyz', 'ABCDEFGHIJKLMNOPQRSTUVWXYZ'), 'QUALIFIED') or contains( translate( normalize-space(.) , 'abcdefghijklmnopqrstuvwxyz', 'ABCDEFGHIJKLMNOPQRSTUVWXYZ'), 'STILLBORN') or contains( translate( normalize-space(.) , 'abcdefghijklmnopqrstuvwxyz', 'ABCDEFGHIJKLMNOPQRSTUVWXYZ'), 'SUBMITTED') or contains( translate( normalize-space(.) , 'abcdefghijklmnopqrstuvwxyz', 'ABCDEFGHIJKLMNOPQRSTUVWXYZ'), 'UNCLEARED'):
   The only allowable values for BAPL.STAT, CONL.STAT, and ENDL.STAT are CHILD, CLEARED, COMPLETED, INFANT, PRE-1970, QUALIFIED, STILLBORN, SUBMITTED, UNCLEARED
</axsl:otherwise>
      </axsl:choose>
      <axsl:choose>
         <axsl:when test="string-length(normalize-space(.)) &lt; 11"/>
         <axsl:otherwise>In pattern string-length(normalize-space(.)) &lt; 11:
   Exceeds maximum of BAPL.STAT, CONL.STAT, and ENDL.STAT length of 10
</axsl:otherwise>
      </axsl:choose>
      <axsl:choose>
         <axsl:when test="string-length(normalize-space(.)) &gt; 4"/>
         <axsl:otherwise>In pattern string-length(normalize-space(.)) &gt; 4:
   Fails to meet the minimum BAPL.STAT, CONL.STAT, and ENDL.STAT length of 5
</axsl:otherwise>
      </axsl:choose>
      <axsl:apply-templates mode="M37"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M37"/>
   <axsl:template match="INDI/SLGC/STAT/node()[1][self::text()]" priority="4000" mode="M38">
      <axsl:choose>
         <axsl:when test="contains( translate( normalize-space(.) , 'abcdefghijklmnopqrstuvwxyz', 'ABCDEFGHIJKLMNOPQRSTUVWXYZ'), 'BIC') or             contains( translate( normalize-space(.) , 'abcdefghijklmnopqrstuvwxyz', 'ABCDEFGHIJKLMNOPQRSTUVWXYZ'), 'CLEARED') or          contains( translate( normalize-space(.) , 'abcdefghijklmnopqrstuvwxyz', 'ABCDEFGHIJKLMNOPQRSTUVWXYZ'), 'COMPLETED') or          contains( translate( normalize-space(.) , 'abcdefghijklmnopqrstuvwxyz', 'ABCDEFGHIJKLMNOPQRSTUVWXYZ'), 'DNS') or          contains( translate( normalize-space(.) , 'abcdefghijklmnopqrstuvwxyz', 'ABCDEFGHIJKLMNOPQRSTUVWXYZ'), 'PRE-1970') or          contains( translate( normalize-space(.) , 'abcdefghijklmnopqrstuvwxyz', 'ABCDEFGHIJKLMNOPQRSTUVWXYZ'), 'QUALIFIED') or          contains( translate( normalize-space(.) , 'abcdefghijklmnopqrstuvwxyz', 'ABCDEFGHIJKLMNOPQRSTUVWXYZ'), 'STILLBORN') or          contains( translate( normalize-space(.) , 'abcdefghijklmnopqrstuvwxyz', 'ABCDEFGHIJKLMNOPQRSTUVWXYZ'), 'SUBMITTED') or          contains( translate( normalize-space(.) , 'abcdefghijklmnopqrstuvwxyz', 'ABCDEFGHIJKLMNOPQRSTUVWXYZ'), 'UNCLEARED')"/>
         <axsl:otherwise>In pattern contains( translate( normalize-space(.) , 'abcdefghijklmnopqrstuvwxyz', 'ABCDEFGHIJKLMNOPQRSTUVWXYZ'), 'BIC') or contains( translate( normalize-space(.) , 'abcdefghijklmnopqrstuvwxyz', 'ABCDEFGHIJKLMNOPQRSTUVWXYZ'), 'CLEARED') or contains( translate( normalize-space(.) , 'abcdefghijklmnopqrstuvwxyz', 'ABCDEFGHIJKLMNOPQRSTUVWXYZ'), 'COMPLETED') or contains( translate( normalize-space(.) , 'abcdefghijklmnopqrstuvwxyz', 'ABCDEFGHIJKLMNOPQRSTUVWXYZ'), 'DNS') or contains( translate( normalize-space(.) , 'abcdefghijklmnopqrstuvwxyz', 'ABCDEFGHIJKLMNOPQRSTUVWXYZ'), 'PRE-1970') or contains( translate( normalize-space(.) , 'abcdefghijklmnopqrstuvwxyz', 'ABCDEFGHIJKLMNOPQRSTUVWXYZ'), 'QUALIFIED') or contains( translate( normalize-space(.) , 'abcdefghijklmnopqrstuvwxyz', 'ABCDEFGHIJKLMNOPQRSTUVWXYZ'), 'STILLBORN') or contains( translate( normalize-space(.) , 'abcdefghijklmnopqrstuvwxyz', 'ABCDEFGHIJKLMNOPQRSTUVWXYZ'), 'SUBMITTED') or contains( translate( normalize-space(.) , 'abcdefghijklmnopqrstuvwxyz', 'ABCDEFGHIJKLMNOPQRSTUVWXYZ'), 'UNCLEARED'):
   The only allowable values for SLGC.STAT are BIC, CLEARED, COMPLETED, DNS, PRE-1970, QUALIFIED, STILLBORN, SUBMITTED, UNCLEARED
</axsl:otherwise>
      </axsl:choose>
      <axsl:choose>
         <axsl:when test="string-length(normalize-space(.)) &lt; 11"/>
         <axsl:otherwise>In pattern string-length(normalize-space(.)) &lt; 11:
   Exceeds maximum of SLGC.STAT length of 10
</axsl:otherwise>
      </axsl:choose>
      <axsl:choose>
         <axsl:when test="string-length(normalize-space(.)) &gt; 2"/>
         <axsl:otherwise>In pattern string-length(normalize-space(.)) &gt; 2:
   Fails to meet the minimum SLGC.STAT length of 3
</axsl:otherwise>
      </axsl:choose>
      <axsl:apply-templates mode="M38"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M38"/>
   <axsl:template match="NOTE/node()[1][self::text()]" priority="4000" mode="M39">
      <axsl:choose>
         <axsl:when test="string-length( normalize-space(.) ) &lt; 249"/>
         <axsl:otherwise>In pattern string-length( normalize-space(.) ) &lt; 249:
   NOTE range exceeds maximum of 248
</axsl:otherwise>
      </axsl:choose>
      <axsl:apply-templates mode="M39"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M39"/>
   <axsl:template match="SOUR/EVEN/node()[1][self::text()]" priority="4000" mode="M40">
      <axsl:choose>
         <axsl:when test="string-length( normalize-space(.) ) &lt; 16"/>
         <axsl:otherwise>In pattern string-length( normalize-space(.) ) &lt; 16:
   *.SOUR.EVEN range exceeds maximum of 15
</axsl:otherwise>
      </axsl:choose>
      <axsl:apply-templates mode="M40"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M40"/>
   <axsl:template match="TEXT/node()[1][self::text()]" priority="4000" mode="M41">
      <axsl:choose>
         <axsl:when test="string-length( normalize-space(.) ) &lt; 249"/>
         <axsl:otherwise>In pattern string-length( normalize-space(.) ) &lt; 249:
   Exceeds maxim SOUR.DATA.TEXT length of 248
</axsl:otherwise>
      </axsl:choose>
      <axsl:apply-templates mode="M41"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M41"/>
   <axsl:template match="SOUR/node()[1][self::text()]" priority="4000" mode="M42">
      <axsl:choose>
         <axsl:when test="string-length( normalize-space(.) ) &lt; 249"/>
         <axsl:otherwise>In pattern string-length( normalize-space(.) ) &lt; 249:
   Exceeds maximum SOUR length of 248
</axsl:otherwise>
      </axsl:choose>
      <axsl:apply-templates mode="M42"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M42"/>
   <axsl:template match="TEXT/node()[1][self::text()]" priority="4000" mode="M43">
      <axsl:choose>
         <axsl:when test="string-length( normalize-space(.) ) &lt; 249"/>
         <axsl:otherwise>In pattern string-length( normalize-space(.) ) &lt; 249:
   Exceeds maximum SOUR.TEXT length of 248
</axsl:otherwise>
      </axsl:choose>
      <axsl:apply-templates mode="M43"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M43"/>
   <axsl:template match="SOUR/node()[1][self::text()]" priority="4000" mode="M44">
      <axsl:choose>
         <axsl:when test="string-length( normalize-space(.) ) &lt; 249"/>
         <axsl:otherwise>In pattern string-length( normalize-space(.) ) &lt; 249:
   Exceeds maximum SOUR length of 248
</axsl:otherwise>
      </axsl:choose>
      <axsl:apply-templates mode="M44"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M44"/>
   <axsl:template match="TEXT/node()[1][self::text()]" priority="4000" mode="M45">
      <axsl:choose>
         <axsl:when test="string-length( normalize-space(.) ) &lt; 249"/>
         <axsl:otherwise>In pattern string-length( normalize-space(.) ) &lt; 249:
   Exceeds maximum SOUR.TEXT of 248
</axsl:otherwise>
      </axsl:choose>
      <axsl:apply-templates mode="M45"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M45"/>
   <axsl:template match="SUBM/LANG/node()[1][self::text()]" priority="4000" mode="M46">
      <axsl:choose>
         <axsl:when test="contains( translate( normalize-space(.) , 'ABCDEFGHIJKLMNOPQRSTUVWXYZ', 'abcdefghijklmnopqrstuvwxyz'), 'afrikaans') or               contains( translate( normalize-space(.) , 'ABCDEFGHIJKLMNOPQRSTUVWXYZ', 'abcdefghijklmnopqrstuvwxyz'), 'albanian') or               contains( translate( normalize-space(.) , 'ABCDEFGHIJKLMNOPQRSTUVWXYZ', 'abcdefghijklmnopqrstuvwxyz'), 'anglo-saxon') or               contains( translate( normalize-space(.) , 'ABCDEFGHIJKLMNOPQRSTUVWXYZ', 'abcdefghijklmnopqrstuvwxyz'), 'catalan') or               contains( translate( normalize-space(.) , 'ABCDEFGHIJKLMNOPQRSTUVWXYZ', 'abcdefghijklmnopqrstuvwxyz'), 'catalan_spn') or               contains( translate( normalize-space(.) , 'ABCDEFGHIJKLMNOPQRSTUVWXYZ', 'abcdefghijklmnopqrstuvwxyz'), 'czech') or               contains( translate( normalize-space(.) , 'ABCDEFGHIJKLMNOPQRSTUVWXYZ', 'abcdefghijklmnopqrstuvwxyz'), 'danish') or               contains( translate( normalize-space(.) , 'ABCDEFGHIJKLMNOPQRSTUVWXYZ', 'abcdefghijklmnopqrstuvwxyz'), 'dutch') or               contains( translate( normalize-space(.) , 'ABCDEFGHIJKLMNOPQRSTUVWXYZ', 'abcdefghijklmnopqrstuvwxyz'), 'english') or               contains( translate( normalize-space(.) , 'ABCDEFGHIJKLMNOPQRSTUVWXYZ', 'abcdefghijklmnopqrstuvwxyz'), 'esperato') or               contains( translate( normalize-space(.) , 'ABCDEFGHIJKLMNOPQRSTUVWXYZ', 'abcdefghijklmnopqrstuvwxyz'), 'estonian') or               contains( translate( normalize-space(.) , 'ABCDEFGHIJKLMNOPQRSTUVWXYZ', 'abcdefghijklmnopqrstuvwxyz'), 'faroese') or               contains( translate( normalize-space(.) , 'ABCDEFGHIJKLMNOPQRSTUVWXYZ', 'abcdefghijklmnopqrstuvwxyz'), 'finnish') or               contains( translate( normalize-space(.) , 'ABCDEFGHIJKLMNOPQRSTUVWXYZ', 'abcdefghijklmnopqrstuvwxyz'), 'french') or               contains( translate( normalize-space(.) , 'ABCDEFGHIJKLMNOPQRSTUVWXYZ', 'abcdefghijklmnopqrstuvwxyz'), 'german') or               contains( translate( normalize-space(.) , 'ABCDEFGHIJKLMNOPQRSTUVWXYZ', 'abcdefghijklmnopqrstuvwxyz'), 'hawaiian') or               contains( translate( normalize-space(.) , 'ABCDEFGHIJKLMNOPQRSTUVWXYZ', 'abcdefghijklmnopqrstuvwxyz'), 'hungarian') or               contains( translate( normalize-space(.) , 'ABCDEFGHIJKLMNOPQRSTUVWXYZ', 'abcdefghijklmnopqrstuvwxyz'), 'icelandic') or               contains( translate( normalize-space(.) , 'ABCDEFGHIJKLMNOPQRSTUVWXYZ', 'abcdefghijklmnopqrstuvwxyz'), 'indonesian') or               contains( translate( normalize-space(.) , 'ABCDEFGHIJKLMNOPQRSTUVWXYZ', 'abcdefghijklmnopqrstuvwxyz'), 'italian') or               contains( translate( normalize-space(.) , 'ABCDEFGHIJKLMNOPQRSTUVWXYZ', 'abcdefghijklmnopqrstuvwxyz'), 'latvian') or               contains( translate( normalize-space(.) , 'ABCDEFGHIJKLMNOPQRSTUVWXYZ', 'abcdefghijklmnopqrstuvwxyz'), 'lithuanian') or               contains( translate( normalize-space(.) , 'ABCDEFGHIJKLMNOPQRSTUVWXYZ', 'abcdefghijklmnopqrstuvwxyz'), 'navaho') or               contains( translate( normalize-space(.) , 'ABCDEFGHIJKLMNOPQRSTUVWXYZ', 'abcdefghijklmnopqrstuvwxyz'), 'norwegian') or               contains( translate( normalize-space(.) , 'ABCDEFGHIJKLMNOPQRSTUVWXYZ', 'abcdefghijklmnopqrstuvwxyz'), 'polish') or               contains( translate( normalize-space(.) , 'ABCDEFGHIJKLMNOPQRSTUVWXYZ', 'abcdefghijklmnopqrstuvwxyz'), 'portuguese') or               contains( translate( normalize-space(.) , 'ABCDEFGHIJKLMNOPQRSTUVWXYZ', 'abcdefghijklmnopqrstuvwxyz'), 'romanian') or               contains( translate( normalize-space(.) , 'ABCDEFGHIJKLMNOPQRSTUVWXYZ', 'abcdefghijklmnopqrstuvwxyz'), 'serbo_croa') or               contains( translate( normalize-space(.) , 'ABCDEFGHIJKLMNOPQRSTUVWXYZ', 'abcdefghijklmnopqrstuvwxyz'), 'slovene') or               contains( translate( normalize-space(.) , 'ABCDEFGHIJKLMNOPQRSTUVWXYZ', 'abcdefghijklmnopqrstuvwxyz'), 'spanish') or               contains( translate( normalize-space(.) , 'ABCDEFGHIJKLMNOPQRSTUVWXYZ', 'abcdefghijklmnopqrstuvwxyz'), 'swedish') or               contains( translate( normalize-space(.) , 'ABCDEFGHIJKLMNOPQRSTUVWXYZ', 'abcdefghijklmnopqrstuvwxyz'), 'turkish') or                contains( translate( normalize-space(.) , 'ABCDEFGHIJKLMNOPQRSTUVWXYZ', 'abcdefghijklmnopqrstuvwxyz'), 'wendic')"/>
         <axsl:otherwise>In pattern contains( translate( normalize-space(.) , 'ABCDEFGHIJKLMNOPQRSTUVWXYZ', 'abcdefghijklmnopqrstuvwxyz'), 'afrikaans') or contains( translate( normalize-space(.) , 'ABCDEFGHIJKLMNOPQRSTUVWXYZ', 'abcdefghijklmnopqrstuvwxyz'), 'albanian') or contains( translate( normalize-space(.) , 'ABCDEFGHIJKLMNOPQRSTUVWXYZ', 'abcdefghijklmnopqrstuvwxyz'), 'anglo-saxon') or contains( translate( normalize-space(.) , 'ABCDEFGHIJKLMNOPQRSTUVWXYZ', 'abcdefghijklmnopqrstuvwxyz'), 'catalan') or contains( translate( normalize-space(.) , 'ABCDEFGHIJKLMNOPQRSTUVWXYZ', 'abcdefghijklmnopqrstuvwxyz'), 'catalan_spn') or contains( translate( normalize-space(.) , 'ABCDEFGHIJKLMNOPQRSTUVWXYZ', 'abcdefghijklmnopqrstuvwxyz'), 'czech') or contains( translate( normalize-space(.) , 'ABCDEFGHIJKLMNOPQRSTUVWXYZ', 'abcdefghijklmnopqrstuvwxyz'), 'danish') or contains( translate( normalize-space(.) , 'ABCDEFGHIJKLMNOPQRSTUVWXYZ', 'abcdefghijklmnopqrstuvwxyz'), 'dutch') or contains( translate( normalize-space(.) , 'ABCDEFGHIJKLMNOPQRSTUVWXYZ', 'abcdefghijklmnopqrstuvwxyz'), 'english') or contains( translate( normalize-space(.) , 'ABCDEFGHIJKLMNOPQRSTUVWXYZ', 'abcdefghijklmnopqrstuvwxyz'), 'esperato') or contains( translate( normalize-space(.) , 'ABCDEFGHIJKLMNOPQRSTUVWXYZ', 'abcdefghijklmnopqrstuvwxyz'), 'estonian') or contains( translate( normalize-space(.) , 'ABCDEFGHIJKLMNOPQRSTUVWXYZ', 'abcdefghijklmnopqrstuvwxyz'), 'faroese') or contains( translate( normalize-space(.) , 'ABCDEFGHIJKLMNOPQRSTUVWXYZ', 'abcdefghijklmnopqrstuvwxyz'), 'finnish') or contains( translate( normalize-space(.) , 'ABCDEFGHIJKLMNOPQRSTUVWXYZ', 'abcdefghijklmnopqrstuvwxyz'), 'french') or contains( translate( normalize-space(.) , 'ABCDEFGHIJKLMNOPQRSTUVWXYZ', 'abcdefghijklmnopqrstuvwxyz'), 'german') or contains( translate( normalize-space(.) , 'ABCDEFGHIJKLMNOPQRSTUVWXYZ', 'abcdefghijklmnopqrstuvwxyz'), 'hawaiian') or contains( translate( normalize-space(.) , 'ABCDEFGHIJKLMNOPQRSTUVWXYZ', 'abcdefghijklmnopqrstuvwxyz'), 'hungarian') or contains( translate( normalize-space(.) , 'ABCDEFGHIJKLMNOPQRSTUVWXYZ', 'abcdefghijklmnopqrstuvwxyz'), 'icelandic') or contains( translate( normalize-space(.) , 'ABCDEFGHIJKLMNOPQRSTUVWXYZ', 'abcdefghijklmnopqrstuvwxyz'), 'indonesian') or contains( translate( normalize-space(.) , 'ABCDEFGHIJKLMNOPQRSTUVWXYZ', 'abcdefghijklmnopqrstuvwxyz'), 'italian') or contains( translate( normalize-space(.) , 'ABCDEFGHIJKLMNOPQRSTUVWXYZ', 'abcdefghijklmnopqrstuvwxyz'), 'latvian') or contains( translate( normalize-space(.) , 'ABCDEFGHIJKLMNOPQRSTUVWXYZ', 'abcdefghijklmnopqrstuvwxyz'), 'lithuanian') or contains( translate( normalize-space(.) , 'ABCDEFGHIJKLMNOPQRSTUVWXYZ', 'abcdefghijklmnopqrstuvwxyz'), 'navaho') or contains( translate( normalize-space(.) , 'ABCDEFGHIJKLMNOPQRSTUVWXYZ', 'abcdefghijklmnopqrstuvwxyz'), 'norwegian') or contains( translate( normalize-space(.) , 'ABCDEFGHIJKLMNOPQRSTUVWXYZ', 'abcdefghijklmnopqrstuvwxyz'), 'polish') or contains( translate( normalize-space(.) , 'ABCDEFGHIJKLMNOPQRSTUVWXYZ', 'abcdefghijklmnopqrstuvwxyz'), 'portuguese') or contains( translate( normalize-space(.) , 'ABCDEFGHIJKLMNOPQRSTUVWXYZ', 'abcdefghijklmnopqrstuvwxyz'), 'romanian') or contains( translate( normalize-space(.) , 'ABCDEFGHIJKLMNOPQRSTUVWXYZ', 'abcdefghijklmnopqrstuvwxyz'), 'serbo_croa') or contains( translate( normalize-space(.) , 'ABCDEFGHIJKLMNOPQRSTUVWXYZ', 'abcdefghijklmnopqrstuvwxyz'), 'slovene') or contains( translate( normalize-space(.) , 'ABCDEFGHIJKLMNOPQRSTUVWXYZ', 'abcdefghijklmnopqrstuvwxyz'), 'spanish') or contains( translate( normalize-space(.) , 'ABCDEFGHIJKLMNOPQRSTUVWXYZ', 'abcdefghijklmnopqrstuvwxyz'), 'swedish') or contains( translate( normalize-space(.) , 'ABCDEFGHIJKLMNOPQRSTUVWXYZ', 'abcdefghijklmnopqrstuvwxyz'), 'turkish') or contains( translate( normalize-space(.) , 'ABCDEFGHIJKLMNOPQRSTUVWXYZ', 'abcdefghijklmnopqrstuvwxyz'), 'wendic'):
   The only allowable values for SUBM.LANG are Afrikaans, Albanian, Anglo-Saxon, Catalan, Catalan_Spn, Czech, Danish, Dutch, English, Esperanto, Estonian, Faroese, Finnish, French, German, Hawaiian, Hungarian, Icelandic, Indonesian, Italian, Latvian, Lithuanian, Navaho, Norwegian, Polish, Portuguese, Romanian, Serbo_Croa, Slovak, Slovene, Spanish, Swedish, Turkish, Wendic
</axsl:otherwise>
      </axsl:choose>
      <axsl:choose>
         <axsl:when test="string-length(normalize-space(.)) &lt; 16"/>
         <axsl:otherwise>In pattern string-length(normalize-space(.)) &lt; 16:
   Exceeds maximum of SUBM.LANG length of 16
</axsl:otherwise>
      </axsl:choose>
      <axsl:apply-templates mode="M46"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M46"/>
   <axsl:template match="REFN/node()[1][self::text()]" priority="4000" mode="M47">
      <axsl:choose>
         <axsl:when test="string-length( normalize-space(.) ) &lt; 21"/>
         <axsl:otherwise>In pattern string-length( normalize-space(.) ) &lt; 21:
   Exceeds maximum REFN length of 20
</axsl:otherwise>
      </axsl:choose>
      <axsl:apply-templates mode="M47"/>
   </axsl:template>
   <axsl:template match="text()" priority="-1" mode="M47"/>
   <axsl:template match="text()" priority="-1"/>
</axsl:stylesheet>