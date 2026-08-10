<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:output method="html" encoding="UTF-8"/>
<xsl:template match="/">
<html><head><title><xsl:value-of select="squad/name"/></title></head>
<body>
<h1><xsl:value-of select="squad/name"/></h1>
<p><b>Nick:</b> <xsl:value-of select="squad/@nick"/></p>
<p><b>Email:</b> <xsl:value-of select="squad/email"/></p>
<p><b>Title:</b> <xsl:value-of select="squad/title"/></p>
<p><img src="{squad/picture}" width="256" height="256"/></p>
<h2>Members</h2>
<xsl:for-each select="squad/member">
<p><b><xsl:value-of select="@nick"/></b><br/>
Player ID: <xsl:value-of select="@id"/><br/>
Name: <xsl:value-of select="name"/><br/>
Email: <xsl:value-of select="email"/><br/>
Remark: <xsl:value-of select="remark"/></p>
</xsl:for-each>
</body></html>
</xsl:template>
</xsl:stylesheet>
