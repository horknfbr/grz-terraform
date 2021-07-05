#!/usr/bin/env python3

import json
import codecs

layouFile = './json/layout.json'


def createChannels(layOut):
    """[summary]

    Args:
        layOut ([type]): [description]
    """
    categories = layOut['categories']
    langDict = layOut['languages']
    chanPos = 1
    c = 0
    open('./categories.tf', 'w').close()
    open('./channels.tf', 'w').close()
    open('./chanperms.tf', 'w').close()
    open('./outputs.tf', 'w').close()
    for cat in categories:
        with codecs.open('./categories.tf', 'a', encoding='utf-8') as ct:
            ct.write(f"resource discord_category_channel { categories[cat]['short'] } {{\n"
                     "  server_id = data.discord_server.discord_api.id\n"
                     f"  name = \"{ categories[cat]['emote'] } { cat } { categories[cat]['emote'] }\"\n"
                     f"  position = { c }\n"
                     "}\n"
                     "\n"
                     )
        chan = categories[cat]['channels']

        if chan is not None:
            for chatChan in chan:
                if categories[cat].get('notrans') is None:
                    for lang, lname in langDict.items():
                        with codecs.open('./channels.tf', 'a', encoding='utf-8') as chantf:
                            chantf.write(f"resource discord_text_channel { categories[cat]['channels'][chatChan]['short'].lower() }-{lname.lower()} {{\n"
                                         f"  name = \"{chatChan.lower()}-{lang}\"\n"
                                         "  server_id = data.discord_server.discord_api.id\n"
                                         f"  category = discord_category_channel.{ categories[cat]['short'] }.id \n"
                                         f"  position = { chanPos }\n"
                                         "}\n"
                                         "\n"
                                         )
                        chanPos += 1

                else:
                    with codecs.open('./channels.tf', 'a', encoding='utf-8') as chantf:
                        chantf.write(f"resource discord_text_channel { categories[cat]['channels'][chatChan]['short'].lower() } {{\n"
                                     f"  name = \"{chatChan.lower()}\"\n"
                                     "  server_id = data.discord_server.discord_api.id\n"
                                     f"  category = discord_category_channel.{ categories[cat]['short'] }.id \n"
                                     f"  position = { chanPos }\n"
                                     "}\n"
                                     "\n"
                                     )
                    chanPos += 1
        c += 1


def createRoles(layout):
    """[summary]

    Args:
        layout (dict): [description]
    """
    langDict = layout['languages']
    c = 1
    open('./createroles.tf', 'w').close()
    for lang, lname in langDict.items():
        with codecs.open('./createroles.tf', 'a', encoding='utf-8') as roletf:
            roletf.write(f"resource discord_role { lname.lower() } {{\n"
                         "  server_id = data.discord_server.discord_api.id\n"
                         f"  name = \"{lname.lower()}\"\n"
                         "  permissions = 0\n"
                         f"  position = {c}\n"
                         "}\n"
                         "\n"
                         )
            c += 1


def readJson():
    """[summary]

    Returns:
        [dict]: dictionary containing the contents of the layout json file
    """
    with codecs.open(layouFile, 'r', encoding='utf-8') as layout:
        data = json.load(layout)

    return data


def main():
#    writeJson()
    createChannels(readJson())


if __name__ == "__main__":
    main()
