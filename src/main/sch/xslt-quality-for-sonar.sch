<?xml version="1.0" encoding="UTF-8"?>
<schema xmlns="http://purl.oclc.org/dsdl/schematron"
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:xs="http://www.w3.org/2001/XMLSchema"
  xmlns:xd="http://www.oxygenxml.com/ns/doc/xsl" xmlns:saxon="http://saxon.sf.net/"
  xmlns:sonar="http://www.jimetevenard.com/ns/sonar-xslt" xmlns:html="http://www.w3.org/1999/xhtml"
  queryBinding="xslt2" id="checkXSLTstyle.sch">

  <extends href="dependency:/org.mricaud.xml+xslt-quality/checkXSLTstyle.sch"/>
  
  <sonar:documentation from="dependency:/org.mricaud.xml+xslt-quality/modules/xsl-common.sch" />
  <sonar:documentation from="dependency:/org.mricaud.xml+xslt-quality/modules/xsl-quality.sch" />

  <sonar:name rel="xslt-quality_avoid-for-each">"xsl:apply-templates" should be prefered to
    "xsl:for-each"</sonar:name>
  <sonar:tags rel="xslt-quality_avoid-for-each">
    <sonar:tag>xsl-common</sonar:tag>
  </sonar:tags>
  
  <sonar:name rel="xslt-quality_use-resolve-uri-instead-of-concat">"resolve-uri()" should be used to
    resolve relatives URIs</sonar:name>
  <sonar:type rel="xslt-quality_use-resolve-uri-instead-of-concat">bug</sonar:type>
  <sonar:tags rel="xslt-quality_use-resolve-uri-instead-of-concat">
    <sonar:tag>xsl-common</sonar:tag>
  </sonar:tags>
  
  <sonar:name rel="xslt-quality_documentation-stylesheet">Stylesheet should be
    documented</sonar:name>
  <sonar:tags rel="xslt-quality_documentation-stylesheet">
    <sonar:tag>documentation</sonar:tag>
  </sonar:tags>
  
  <sonar:name rel="xslt-quality_typing-with-as-attribute">Parameters, variables and functions
    declarations should be typed</sonar:name>
  <sonar:tags rel="xslt-quality_typing-with-as-attribute">
    <sonar:tag>typing</sonar:tag>
  </sonar:tags>
  
  <sonar:name rel="xslt-quality_ns-global-statements-need-prefix">Global statements names should be
    prefixed</sonar:name>
  <sonar:tags rel="xslt-quality_ns-global-statements-need-prefix">
    <sonar:tag>namespaces</sonar:tag>
  </sonar:tags>
  
  <sonar:name rel="xslt-quality_ns-mode-statements-need-prefix">Mode statements should be
    prefixed</sonar:name>
  <sonar:tags rel="xslt-quality_ns-mode-statements-need-prefix">
    <sonar:tag>namespaces</sonar:tag>
  </sonar:tags>
  
  <sonar:name rel="xslt-quality_ns-do-not-use-wildcard-prefix">Wildcard prefix should be
    avoided</sonar:name>
  <sonar:tags rel="xslt-quality_ns-do-not-use-wildcard-prefix">
    <sonar:tag>namespaces</sonar:tag>
  </sonar:tags>
  
  <sonar:name rel="xslt-quality_writing-use-select-attribute-when-possible">TODO
    xslt-quality_writing-use-select-attribute-when-possible</sonar:name>
  <sonar:tags rel="xslt-quality_writing-use-select-attribute-when-possible">
    <sonar:tag>writing</sonar:tag>
  </sonar:tags>
  
  <sonar:name rel="xslt-quality_xslt-3.0-import-first">"xsl:import" should come after the "xd:doc"
    block</sonar:name>
  <sonar:tags rel="xslt-quality_xslt-3.0-import-first">
    <sonar:tag>xslt-30</sonar:tag>
  </sonar:tags>
  
  <sonar:name rel="xslqual-RedundantNamespaceDeclarations">Stylesheets should not have unused namespace declarations</sonar:name>
  <sonar:tags rel="xslqual-RedundantNamespaceDeclarations">
    <sonar:tag>xslqual</sonar:tag>
  </sonar:tags>
  
  <sonar:name rel="xslqual-TooManySmallTemplates">Too many low-granular templates should be avoided</sonar:name>
  <sonar:tags rel="xslqual-TooManySmallTemplates">
    <sonar:tag>xslqual</sonar:tag>
  </sonar:tags>
  
  <sonar:name rel="xslqual-MonolithicDesign">Stylesheets code should be modularized</sonar:name>
  <sonar:tags rel="xslqual-MonolithicDesign">
    <sonar:tag>xslqual</sonar:tag>
  </sonar:tags>
  
  <sonar:name rel="xslqual-NotUsingSchemaTypes">Built-in XSD types should be used</sonar:name>
  <sonar:tags rel="xslqual-NotUsingSchemaTypes">
    <sonar:tag>xslqual</sonar:tag>
  </sonar:tags>
  
  <sonar:name rel="xslqual-OutputMethodXml">"html" output method should be used when generating HTML code</sonar:name>
  <sonar:tags rel="xslqual-OutputMethodXml">
    <sonar:tag>xslqual</sonar:tag>
  </sonar:tags>
  
  <sonar:name rel="xslqual-SettingValueOfVariableIncorrectly">"@select" ashould be prefered to "xsl:value-of" or "xsl:sequence" to assign a variable</sonar:name>
  <sonar:tags rel="xslqual-SettingValueOfVariableIncorrectly">
    <sonar:tag>xslqual</sonar:tag>
  </sonar:tags>
  <sonar:name rel="xslqual-UnusedVariable">Unused variables should be avoided</sonar:name>
  <sonar:tags rel="xslqual-UnusedVariable">
    <sonar:tag>xslqual</sonar:tag>
  </sonar:tags>
  
  <sonar:name rel="xslqual-SettingValueOfParamIncorrectly">"@select" should be prefered to "xsl:value-of" or "xsl:sequence" to assign a param</sonar:name>
  <sonar:tags rel="xslqual-SettingValueOfParamIncorrectly">
    <sonar:tag>xslqual</sonar:tag>
  </sonar:tags>
  
  <sonar:name rel="xslqual-UnusedParameter">Unused parameters should be avoided</sonar:name>
  <sonar:tags rel="xslqual-UnusedParameter">
    <sonar:tag>xslqual</sonar:tag>
  </sonar:tags>
  
  <sonar:name rel="xslqual-EmptyContentInInstructions">Loops and conditionnal structures should not be empty</sonar:name>
  <sonar:tags rel="xslqual-EmptyContentInInstructions">
    <sonar:tag>xslqual</sonar:tag>
  </sonar:tags>
  
  <sonar:name rel="xslqual-UnusedFunction">Unused fonctions should be avoided</sonar:name>
  <sonar:tags rel="xslqual-UnusedFunction">
    <sonar:tag>xslqual</sonar:tag>
  </sonar:tags>
  
  <sonar:name rel="xslqual-FunctionComplexity">Complex functions should be modularized</sonar:name>
  <sonar:tags rel="xslqual-FunctionComplexity">
    <sonar:tag>xslqual</sonar:tag>
  </sonar:tags>
  
  <sonar:name rel="xslqual-UnusedNamedTemplate">Named templates should be used in the stylesheet</sonar:name>
  <sonar:tags rel="xslqual-UnusedNamedTemplate">
    <sonar:tag>xslqual</sonar:tag>
  </sonar:tags>
  
  <sonar:name rel="xslqual-TemplateComplexity">Complex templates should be modularized</sonar:name>
  <sonar:tags rel="xslqual-TemplateComplexity">
    <sonar:tag>xslqual</sonar:tag>
  </sonar:tags>
  
  <sonar:name rel="xslqual-NotCreatingElementCorrectly">Direct element creation should be prefered to xsl:element where possible</sonar:name>
  <sonar:tags rel="xslqual-NotCreatingElementCorrectly">
    <sonar:tag>xslqual</sonar:tag>
  </sonar:tags>
  
  <sonar:name rel="xslqual-AreYouConfusingVariableAndNode">Variable references should not be confused whith node refenrences</sonar:name>
  <sonar:tags rel="xslqual-AreYouConfusingVariableAndNode">
    <sonar:tag>xslqual</sonar:tag>
  </sonar:tags>
  
  <sonar:name rel="xslqual-DontUseDoubleSlashOperatorNearRoot">Double-Slash operator should be avoided near root</sonar:name>
  <sonar:tags rel="xslqual-DontUseDoubleSlashOperatorNearRoot">
    <sonar:tag>xslqual</sonar:tag>
  </sonar:tags>
  
  <sonar:name rel="xslqual-DontUseDoubleSlashOperator">Double-Slash operator should be avoided</sonar:name>
  <sonar:tags rel="xslqual-DontUseDoubleSlashOperator">
    <sonar:tag>xslqual</sonar:tag>
  </sonar:tags>
  
  <sonar:name rel="xslqual-UsingNameOrLocalNameFunction">The choice of using "name()" or "local-name()" should be made with care</sonar:name>
  <sonar:tags rel="xslqual-UsingNameOrLocalNameFunction">
    <sonar:tag>xslqual</sonar:tag>
  </sonar:tags>
  
  <sonar:name rel="xslqual-IncorrectUseOfBooleanConstants">Boolean constans "true()" or "false()" should be prefered to litteral strings</sonar:name>
  <sonar:tags rel="xslqual-IncorrectUseOfBooleanConstants">
    <sonar:tag>xslqual</sonar:tag>
  </sonar:tags>
  
  <sonar:name rel="xslqual-UsingNamespaceAxis">Usage of the deprecated "namescpace::" axis should be avoided</sonar:name>
  <sonar:tags rel="xslqual-UsingNamespaceAxis">
    <sonar:tag>xslqual</sonar:tag>
  </sonar:tags>
  
  <sonar:name rel="xslqual-CanUseAbbreviatedAxisSpecifier">TODO xslqual-CanUseAbbreviatedAxisSpecifier</sonar:name>
  <sonar:tags rel="xslqual-CanUseAbbreviatedAxisSpecifier">
    <sonar:tag>xslqual</sonar:tag>
  </sonar:tags>
  
  <sonar:name rel="xslqual-UsingDisableOutputEscaping">TODO xslqual-UsingDisableOutputEscaping</sonar:name>
  <sonar:tags rel="xslqual-UsingDisableOutputEscaping">
    <sonar:tag>xslqual</sonar:tag>
  </sonar:tags>



</schema>
