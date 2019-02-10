<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    xmlns:sonar="http://www.jimetevenard.com/ns/sonar-xslt"
    xmlns:html="http://www.w3.org/1999/xhtml"
    xmlns:xd="http://www.oxygenxml.com/ns/doc/xsl"
    xmlns:sch="http://purl.oclc.org/dsdl/schematron"
    exclude-result-prefixes="xsl xs"
    version="2.0">
    
    <xsl:param name="lang" select="'en'" as="xs:string" />
    
    <xsl:output indent="yes"></xsl:output>
    
    <xsl:template match="/">
        <xsl:message terminate="yes">TODO : adapter au @from !</xsl:message>
        <sonar:metadata>
            <xsl:apply-templates></xsl:apply-templates>
        </sonar:metadata>
    </xsl:template>
    
    <xsl:template match="node()">
        <xsl:apply-templates select="node()"></xsl:apply-templates>
    </xsl:template>
    
    <xsl:template match="xd:doc">
        <sonar:description>
            <xsl:attribute name="rel" select="(following-sibling::sch:assert|following-sibling::sch:report)/@id" />          
            <xsl:apply-templates/>
        </sonar:description>
    </xsl:template>
    
    <xsl:template match="xd:desc[@xml:lang = $lang]">
        <html:p>
            <xsl:value-of select="."/>
        </html:p>
    </xsl:template>
    
    
</xsl:stylesheet>