<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
                xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                xmlns:uni="https://www.university.com/uniQuest">
    
    <xsl:output method="html" encoding="UTF-8" />

    <xsl:template match="/">
        <html>
            <head>
                <title>University User Data</title>
                <style>
                    table {
                        border-collapse: collapse;
                        width: 100%;
                        margin-bottom: 20px;
                    }
                    table, th, td {
                        border: 1px solid black;
                    }
                    th, td {
                        padding: 8px;
                        text-align: left;
                    }
                    th {
                        background-color: #f2f2f2;
                    }
                </style>
            </head>
            <body>
                <h2>Uniquest User Data</h2>
                <table>
                    <thead>
                        <tr>
                            <th>User ID</th>
                            <th>User Name</th>
                            <th>User Phone</th>
                            <th>User Email</th>
                            <th>User Course</th>
                            <th>User Address</th>
                        </tr>
                    </thead>
                    <tbody>
                        <!-- Adjusted the XPath expressions to handle the namespace -->
                        <xsl:for-each select="//uni:user">
                            <tr>
                                <td><xsl:value-of select="uni:user-id" /></td>
                                <td><xsl:value-of select="uni:user-name" /></td>
                                <td><xsl:value-of select="uni:user-phone" /></td>
                                <td><xsl:value-of select="uni:user-email" /></td>
                                <td><xsl:value-of select="uni:user-course" /></td>
                                <td><xsl:value-of select="uni:user-address" /></td>
                            </tr>
                        </xsl:for-each>
                    </tbody>
                </table>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>
