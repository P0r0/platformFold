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
    valueFile = decompileDir + "/res/values/g_strings.xml"
    manifestFile = file_utils.getFullPath(manifestFile)
    valueFile = file_utils.getFullPath(valueFile)
    ET.register_namespace('android', androidNS)
    key = '{' + androidNS + '}name'
    icon = '{' + androidNS + '}icon'

    tree = ET.parse(manifestFile)
    root = tree.getroot()

    valueTree = ET.parse(valueFile)
    vlueRoot = valueTree.getroot()
    
    # valueResRoot = root.find("resources")
    # if valueResRoot is None:
    #     return 1

    applicationNode = root.find('application')
    if applicationNode is None:
        return 1

    valueList = vlueRoot.findall('string')
    if valueList is None:
        return 1

    activityNodeLst = applicationNode.findall('activity')
    if activityNodeLst is None:
        return 1
    # if(applicationNode.get(icon) != None):
    #     applicationNode.set(icon,"@drawable/app_icon")
    
    entryName = ""
    for activityNode in activityNodeLst:
        name = activityNode.get(key)
        log_utils.info("now to execute %s...",name)
        if name != "cn.cmgame.billing.api.GameOpenActivity":
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
    
    for valueNode in valueList:
        name = valueNode.get('name')
        if name == "g_class_name":
        	valueNode.text = entryName

    tree.write(manifestFile, 'UTF-8')
    valueTree.write(valueFile, 'UTF-8')

    return 0