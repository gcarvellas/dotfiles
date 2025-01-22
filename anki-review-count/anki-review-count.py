#!/usr/bin/python

from anki import collection, errors
import json
import urllib.request
import urllib.error
import sys
import os

collection_name = sys.argv[1]
ANKI_COLLECTION_PATH = f"{os.environ["XDG_DATA_HOME"]}/Anki2/{collection_name}/collection.anki2"

def get_card_count_offline():
    col = collection.Collection(ANKI_COLLECTION_PATH)
    due_tree = col.sched.deck_due_tree()
    return due_tree.learn_count + due_tree.new_count + due_tree.review_count

def request(action, **params):
    return {'action': action, 'params': params, 'version': 6}

def invoke(action, **params):
    request_json = json.dumps(request(action, **params)).encode('utf-8')
    response = json.load(urllib.request.urlopen(urllib.request.Request('http://127.0.0.1:8765', request_json)))
    if len(response) != 2:
        raise Exception('response has an unexpected number of fields')
    if 'error' not in response:
        raise Exception('response is missing required error field')
    if 'result' not in response:
        raise Exception('response is missing required result field')
    if response['error'] is not None:
        raise Exception(response['error'])
    return response['result']

def verify_active_profile():
    result = invoke("getActiveProfile")
    if result != collection_name:
        raise Exception(f"Attempting to select collection `{result}`, but `{collection_name} was requested.`")

def get_card_count_online():
    verify_active_profile()
    decks = [s for s in invoke('deckNames') if "::" not in s] # filter out child decks
    deck_stats = invoke("getDeckStats", decks=decks)

    sum = 0 
    for deck in deck_stats.values():
        sum+=deck["new_count"] + deck["learn_count"] + deck["review_count"]
    return sum

def main():

    try:
        # Try using AnkiConnect first
        res = get_card_count_offline()
    except errors.DBError:
        res = get_card_count_online()
    print(res)

main()

