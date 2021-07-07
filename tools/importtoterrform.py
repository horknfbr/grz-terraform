#!/usr/bin/env python3

import discord
import os
import json
import codecs
from dotenv import load_dotenv
from datetime import datetime, timezone

load_dotenv()
TOKEN = os.getenv('DISCORD_TOKEN')
GUILD = os.getenv('DISCORD_GUILD')

layouFile = './json/layout.json'
serverid = 0
allChans = {}
allCats = {}
importDef = {}
dt = datetime.now(timezone.utc)
client = discord.Client()


@client.event
async def on_ready():
    global serverid
    for guild in client.guilds:
        if guild.name == GUILD:
            break
    serverid = guild.id
    print(
        f'{client.user} is reading config information from '
        f'{guild.name}(id: {serverid})'
    )
    for channel in guild.text_channels:
        allChans[channel.name] = channel.id
    for cats in guild.categories:
        allCats[cats.name] = cats.id
#    print(allChans)
    await client.close()

client.run(TOKEN)


def readJson():
    """[summary]

    Returns:
        [dict]: dictionary containing the contents of the layout json file
    """
    with codecs.open(layouFile, 'r', encoding='utf-8') as layout:
        data = json.load(layout)

    return data


def buildImport(layOut, resource, dict):
    categories = layOut['categories']

    for name, gid in dict.items():
        name = name[2:]
        name = name[:-2]
        # print(f"|{ name }|")
        print(f"terraform import { resource }.{ categories[name]['short'] } { gid }")


def importChans(layOut, resource, dict):
    categories = layOut['categories']
    langDict = layOut['languages']
    for cat in categories:
        chan = categories[cat]['channels']

        if chan is not None:
            for chatChan in chan:
                if categories[cat].get('notrans') is None:
                    for lang, lname in langDict.items():
                        fullChanName = f"{chatChan.lower()}-{lang}"
                        shortChanName = f"{ categories[cat]['channels'][chatChan]['short'].lower() }-{lname.lower()}"
                        try:
                            print(f"terraform import { resource }.{ shortChanName } { dict[fullChanName] }")
                        except KeyError:
                            continue

                else:
                    fullChanName = chatChan.lower()
                    shortChanName = categories[cat]['channels'][chatChan]['short'].lower()

                    print(f"terraform import { resource }.{ shortChanName }"
                          f" { dict[fullChanName] }")


def main():
#    buildImport('discord_text_channel', allChans)
    buildImport(readJson(), 'discord_category_channel', allCats)
    importChans(readJson(), 'discord_text_channel', allChans)
    # writeJson()
    # buildsql(readJson())


if __name__ == "__main__":
    main()
