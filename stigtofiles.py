#!/usr/bin/env python3
# -*- coding: utf-8 -*-
# Copyright © 2016 Taylor C. Richberger <taywee@gmx.com>
# This code is released under the license described in the LICENSE file

import argparse
import os.path
import xml.etree.ElementTree as ET

from io import StringIO

def luastring(string):
    if '\n' in string:
        equalsigns = 1
        while ('=' * equalsigns) in string:
            equalsigns += 1
        return '[{eq}[{string}]{eq}]'.format(eq=('=' * equalsigns), string=string)
    else:
        return repr(string)

def main():
    parser = argparse.ArgumentParser(description='Convert all the groups in a STIG file into a set of lua hardening scripts')
    parser.add_argument('-d', '--dest', help='The destination directory (default: %(default)s)', default='.')
    parser.add_argument('file', help='The STIG file to convert into lua files')
    args = parser.parse_args()

    tree = ET.parse(args.file)
    ns = {'ns': 'http://checklists.nist.gov/xccdf/1.1'}
    for group in tree.findall('ns:Group', ns):
        id = group.attrib['id']
        for rule in group.findall('ns:Rule', ns):
            buffer = StringIO()
            def tryget(attribute):
                try:
                    return rule.find('ns:{}'.format(attribute), ns).text
                except:
                    return ''

            severity = rule.get('severity', '')
            weight = rule.get('weight', '')
            title = tryget('title')
            try:
                descriptiontext = rule.find('ns:description', ns).text
                descriptiontree = ET.fromstring('<root>{}</root>'.format(descriptiontext))
                description = descriptiontree.find('VulnDiscussion').text
            except:
                description = ''
            fixtext = tryget('fixtext')
            try:
                checktext = rule.find('ns:check', ns).find('ns:check-content', ns).text.strip()
            except:
                checktext = ''

            buffer.write('id = {}\n'.format(luastring(id)))
            buffer.write('severity = {}\n'.format(luastring(severity)))
            buffer.write('weight = {}\n'.format(weight))
            buffer.write('title = {}\n'.format(luastring(title)))
            buffer.write('description = {}\n'.format(luastring(description)))
            buffer.write('fixtext = {}\n'.format(luastring(fixtext)))
            buffer.write('checktext = {}\n'.format(luastring(checktext)))
            buffer.write('\n')
            buffer.write('function test()\nend\n')
            buffer.write('\n')
            buffer.write('function fix()\nend\n')

            filename = os.path.join(args.dest, '{}.lua'.format(id))
            print('writing {}'.format(filename))
            with open(filename, 'w') as file:
                file.write(buffer.getvalue())

if __name__ == '__main__':
    main()
