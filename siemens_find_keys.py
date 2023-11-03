import json
import sys

with open("/Users/OmarCr/Documents/Docs/Jobs/Siemens/PE_Recruiting_Analyser_CaseStudy_Sep2023.json") as jsonfile:
    data = json.load(jsonfile)

    with open('file', 'w') as sys.stdout:
     for x in data:
          keys = x.keys()
          kvalues = x.values()
          sorted(keys)
          print('Insert into TMP_SIEMENS ('+str(keys).replace("'","").replace(" ","") + ') values (' + str(kvalues) + '),')