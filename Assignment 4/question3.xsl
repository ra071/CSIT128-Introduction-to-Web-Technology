<?xml version="1.0" ?>
<xsl:stylesheet
   version="1.0"
   xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
   xmlns="http://www.w3.org/1999/xhtml">
   <xsl:output method="xml" indent="yes" encoding="UTF-8"/>
   <xsl:template match="/patronRecord">
     <html>
	   <head>
	     <title>Assignment4</title>
	   </head>
	   
	   <body>
		 <table border="1">
		   <tr>
		     Patron record for: 
			 <xsl:value-of select="lastName" />
			 , <xsl:value-of select="firstName" />
			 <br />
			 
			 Items checked out:
		   </tr>
		   <tr>
		     <th align="left">Title/ Authors</th>
			 <th>Call Number</th>
			 <th align="left">Due</th>
		   </tr>
		   
		   <xsl:for-each select="itemsCheckedOut/item" >
		     <tr>
		       <td>
			     <xsl:value-of select="title" />
				 <xsl:text>/ </xsl:text>
				 <xsl:value-of select="authors"/>
			   </td>
			   <td>
			     <xsl:value-of select="callNumber"/>
			   </td>
			   <td>
			     <xsl:value-of select="dueDate" />
				 <br />
				 <xsl:value-of select="overdueStatus" />
			   </td>
		     </tr>
		   </xsl:for-each>
		 </table>
		 
	   </body>
	 </html>
   </xsl:template>
  
</xsl:stylesheet>