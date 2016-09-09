import file_utils
import os
import os.path
import config_utils
from xml.etree import ElementTree as ET
from xml.etree.ElementTree import SubElement
from xml.etree.ElementTree import Element
from xml.etree.ElementTree import ElementTree
import os
import os.path
import zipfile
import re
import subprocess
import platform
from xml.dom import minidom
import codecs
import sys
import log_utils

androidNS = 'http://schemas.android.com/apk/res/android'


def execute(channel, decompileDir, packageName):
    manifestFile = decompileDir + "/AndroidManifest.xml"
    manifestFile = file_utils.getFullPath(manifestFile)
    ET.register_namespace('android', androidNS)
    key = '{' + androidNS + '}name'
    value = '{' + androidNS + '}value'

    tree = ET.parse(manifestFile)
    root = tree.getroot()

    applicationNode = root.find('application')
    if applicationNode is None:
        return 1


    activityNodeLst = applicationNode.findall('activity')
    if activityNodeLst is None:
        return 1

    applicationKey = applicationNode.get(key)
    if(applicationKey != None):
        applicationNode.set(key,"com.u8.sdk.U8Appliction4Unicom")

    entryName = ""
    metaNode = None
    for activityNode in activityNodeLst:
        name = activityNode.get(key)
        log_utils.info("now to execute %s...", name)
        if name == "com.unicom.dcLoader.welcomeview":
            metaNodes = activityNode.findall("meta-data")
            if metaNodes != None and len(metaNodes) > 0:
                for node in metaNodes:
                    if node.get(key) == "UNICOM_DIST_ACTIVITY":
                        metaNode = node
                        break

        else:
            intentNodes = activityNode.findall('intent-filter')
            if intentNodes != None and len(intentNodes) > 0:
                for intentNode in intentNodes:
                    categoryNodes = intentNode.findall('category')
                    if categoryNodes != None and len(categoryNodes) > 0:
                        for categoryNode in categoryNodes:
                            categoryName = categoryNode.get(key)
                            if categoryName == 'android.intent.category.LAUNCHER':
                                activityNode.remove(intentNode)
                                entryName = name
                                break

    metaNode.set(value,entryName)

    tree.write(manifestFile, 'UTF-8')

    return 0
