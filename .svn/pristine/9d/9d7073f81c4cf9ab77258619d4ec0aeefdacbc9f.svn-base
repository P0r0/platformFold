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
    valueFile = decompileDir + "/res/values/strings.xml"
    manifestFile = file_utils.getFullPath(manifestFile)
    valueFile = file_utils.getFullPath(valueFile)
    ET.register_namespace('android', androidNS)
    key = '{' + androidNS + '}name'
    value = '{' + androidNS + '}value'

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
    
    metadataNodeLst = applicationNode.findall('meta-data')
    if metadataNodeLst is None:
        return 1

    entryName = ""
    for activityNode in activityNodeLst:
        name = activityNode.get(key)
        log_utils.info("now to execute %s...",name)
        if name != "cn.egame.terminal.paysdk.EgameLaunchActivity":
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
    
    appName = ""
    for metaNode in metadataNodeLst:
        name = metaNode.get(key)
        if name == "EGAME_LAUNCH_ACTIVITY":
            metaNode.set(value,entryName)
        if name == "AppName":
            appName = metaNode.get(value)

    for valueNode in valueList:
        name = valueNode.get('name')
        if name == "app_name":
            valueNode.text = appName

    tree.write(manifestFile, 'UTF-8')
    valueTree.write(valueFile, 'UTF-8')

    return 0