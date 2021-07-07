#!/usr/bin/env python3

import discord
import os
import psycopg2
import json
import codecs
from iso639 import languages
from dotenv import load_dotenv
from datetime import datetime, timezone

load_dotenv()
DATABASE_URL = os.environ['DATABASE_URL']
TOKEN = os.getenv('DISCORD_TOKEN')
GUILD = os.getenv('DISCORD_GUILD')

sql = "INSERT INTO tasks (reply, active, server, origin, dest, \"LangTo\", "\
      "\"LangFrom\", \"createdAt\", \"updatedAt\") VALUES ('R', True, %s, %s, %s, "\
      "%s, %s, %s, %s) ON CONFLICT DO NOTHING"

layouFile = './json/layout.json'
serverid = 0
allChans = {}
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
        f'{client.user} is reading channel information from '
        f'{guild.name}(id: {serverid})'
    )
    for channel in guild.text_channels:
        allChans[channel.name] = channel.id
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


def buildsql(layOut):
    conn = psycopg2.connect(DATABASE_URL, sslmode='require')
    cur = conn.cursor()
    categories = layOut['categories']
    langDict = layOut['languages']
    c = 1
    for cat in categories:
        if categories[cat].get('channels') is not None and categories[cat].get('notrans') is None:
            for chan in categories[cat]['channels']:
                for key, val in langDict.items():
                    for key2, val2 in langDict.items():
                        if key2 != key:
                            sourceChan = f"{chan.lower()}-{key}"
                            destChan = f"{chan.lower()}-{key2}"
                            if val == 'chinese':
                                sourceLang = 'zh-CN'
                            else:
                                sourceLangObj = languages.get(name=val.capitalize())
                                sourceLang = sourceLangObj.part1
                            if val2 == 'chinese':
                                destLang = 'zh-CN'
                            else:
                                destLangObj = languages.get(name=val2.capitalize())
                                destLang = destLangObj.part1
                            data = (serverid,
                                    allChans[sourceChan],
                                    allChans[destChan],
                                    destLang,
                                    sourceLang,
                                    dt,
                                    dt
                                    )
                            
                            try:
                                cur.execute(sql, data)
                                print(f"{c}: Inserted {sourceChan}-{sourceLang}"
                                      f" -> {destChan}-{destLang} ")
                            except psycopg2.errors.UniqueViolation:
                                print(f"{c}: {sourceChan}-{sourceLang}"
                                      f" -> {destChan}-{destLang} Exsists")
                                
                            c += 1
    conn.commit()
    cur.close()
    conn.close()


def main():
    # writeJson()
    buildsql(readJson())


if __name__ == "__main__":
    main()
