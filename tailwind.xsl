<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
                xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                xmlns:uni="https://www.university.com/uniQuest">

    <xsl:output method="html" encoding="UTF-8" />

    <xsl:template match="/">
        <html>
            <head>
                <title>University User Data</title>
                <!-- Include Tailwind CSS from CDN -->
                <link href="https://cdn.jsdelivr.net/npm/tailwindcss@2.2.19/dist/tailwind.min.css" rel="stylesheet"></link>
            </head>
            <body class="bg-gray-100 p-6">
                <h2 class="text-2xl font-bold text-gray-800 mb-4">UniQuest User Data</h2>
                <table class="min-w-full bg-white border border-gray-300 rounded-lg">
                    <thead>
                        <tr class="bg-gray-200 text-gray-700">
                            <th class="py-2 px-4 border-b">User ID</th>
                            <th class="py-2 px-4 border-b">User Name</th>
                            <th class="py-2 px-4 border-b">User Phone</th>
                            <th class="py-2 px-4 border-b">User Email</th>
                            <th class="py-2 px-4 border-b">User Course</th>
                            <th class="py-2 px-4 border-b">User Address</th>
                        </tr>
                    </thead>
                    <tbody>
                        <xsl:for-each select="//uni:user">
                            <tr class="text-gray-700">
                                <td class="py-2 px-4 border-b"><xsl:value-of select="uni:user-id" /></td>
                                <td class="py-2 px-4 border-b"><xsl:value-of select="uni:user-name" /></td>
                                <td class="py-2 px-4 border-b"><xsl:value-of select="uni:user-phone" /></td>
                                <td class="py-2 px-4 border-b"><xsl:value-of select="uni:user-email" /></td>
                                <td class="py-2 px-4 border-b"><xsl:value-of select="uni:user-course" /></td>
                                <td class="py-2 px-4 border-b"><xsl:value-of select="uni:user-address" /></td>
                            </tr>
                        </xsl:for-each>
                    </tbody>
                </table>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>
