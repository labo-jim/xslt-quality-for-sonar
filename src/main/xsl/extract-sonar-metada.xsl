<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    xmlns:sonar="http://www.jimetevenard.com/ns/sonar-xslt"
    xmlns:html="http://www.w3.org/1999/xhtml"
    exclude-result-prefixes="xsl xs"
    version="2.0">
    
    <xsl:output indent="yes"></xsl:output>
    
    <xsl:template match="/">
        <sonar:metadata>
            <xsl:apply-templates></xsl:apply-templates>
        </sonar:metadata>
    </xsl:template>
    
    <xsl:template match="node()">
        <xsl:apply-templates select="node()"></xsl:apply-templates>
    </xsl:template>
    
    <xsl:template match="sonar:*">
        <xsl:copy-of  copy-namespaces="no" select="."/>
    </xsl:template>    
    
    <xsl:template match="sonar:description" priority="1"/>
</xsl:stylesheet>