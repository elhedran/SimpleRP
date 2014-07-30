<xsl:stylesheet version='1.0'
    xmlns:xsl='http://www.w3.org/1999/XSL/Transform'
    xmlns:xsi='http://www.w3.org/2001/XMLSchema-instance'
    xmlns:svg='http://www.w3.org/2000/svg'
    >
    <xsl:output omit-xml-declaration="no" indent="yes"/>
    <xsl:strip-space elements="*"/>

    <xsl:template match="node()|@*">
        <xsl:copy>
            <xsl:apply-templates select="node()|@*"/>
        </xsl:copy>
    </xsl:template>

    <xsl:template match="svg:stop[@id = 'stop3972']">
        <xsl:copy>
            <xsl:apply-templates select="node()|@*"/>
            <xsl:attribute name="style">stop-color:#ffffff;stop-opacity:1;</xsl:attribute>
        </xsl:copy>
    </xsl:template>
</xsl:stylesheet>
