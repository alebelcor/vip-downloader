<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:output method="text" encoding="UTF-8" omit-xml-declaration="yes" indent="no"/>

  <xsl:template match="/playlist/trackList">
    <xsl:for-each select="track">
      <xsl:choose>
        <xsl:when test="title/text()='V10P!'"></xsl:when>
        <xsl:when test="creator/text()='Changelog'"></xsl:when>
        <xsl:when test="creator/text()='Notice'"></xsl:when>
        <xsl:when test="creator/text()='Notice II'"></xsl:when>
        <xsl:when test="creator/text()='Vidya Intarweb Playlist'"></xsl:when>
        <xsl:otherwise>
          <xsl:value-of select="location"/>
          <xsl:text>|</xsl:text>
          <xsl:value-of select="creator"/>
          <xsl:if test="title/text() !=''">
            <xsl:text> - </xsl:text>
            <xsl:value-of select="title"/>
          </xsl:if>
          <xsl:text>&#xa;</xsl:text>
        </xsl:otherwise>
      </xsl:choose>
    </xsl:for-each>
  </xsl:template>
</xsl:stylesheet>
