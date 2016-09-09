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

    tree = ET.parse(manifestFile)
    root = tree.getroot()

    applicationNode = root.find('application')
    if applicationNode is None:
        return 1

    applicationKey = applicationNode.get(key)
    if(applicationKey != None):
        applicationNode.set(key,"com.u8.sdk.U8Appliction4Unicom")

    tree.write(manifestFile, 'UTF-8')

    return 0
