<?xml version="1.0" encoding="UTF-8" ?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:param name="section"/>
    <xsl:template match="/">
        <ul id="NavMenu">
            <xsl:for-each select="NavMenu/MenuEntry">
                <li>
                    <xsl:attribute name="id">
                        <xsl:value-of select="HeadingTitle"/>
                    </xsl:attribute>
                    <a>
                        <xsl:attribute name="href">
                            <xsl:value-of select="HeadingURL"/>
                        </xsl:attribute>
                        <xsl:value-of select="HeadingTitle"/>
                    </a>
                </li>
                <ul>
                    <xsl:for-each select="SubHeading">
                        <li>
                            <a>
                                <xsl:attribute name="href">
                                    <xsl:value-of select="SubURL"/>
                                </xsl:attribute>
                                <xsl:value-of select="SubTitle"/>
                            </a>
                        </li>
                    </xsl:for-each>
                </ul>
            </xsl:for-each>
        </ul>
    </xsl:template>
</xsl:stylesheet>
