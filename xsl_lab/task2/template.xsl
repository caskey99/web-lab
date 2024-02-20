<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

  <xsl:template match="графика">
    <svg>
      <xsl:apply-templates select="@*" />
      <xsl:apply-templates />
    </svg>
  </xsl:template>

  <xsl:template match="графика/@*">
    <xsl:attribute name="{name()}">
      <xsl:value-of select="." />
    </xsl:attribute>
  </xsl:template>

  <xsl:template match="эллипс">
    <ellipse>
      <xsl:apply-templates select="@*" />
    </ellipse>
  </xsl:template>

  <xsl:template match="эллипс/@*">
    <xsl:attribute name="{name()}">
      <xsl:value-of select="." />
    </xsl:attribute>
  </xsl:template>

  <xsl:template match="node() | @*">
    <xsl:copy>
      <xsl:apply-templates select="node() | @*" />
    </xsl:copy>
  </xsl:template>

</xsl:stylesheet>
