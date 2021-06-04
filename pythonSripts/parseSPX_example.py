import xml.etree.ElementTree as ET


tree = ET.parse('devops.spx')
root = tree.getroot()
print(root)
