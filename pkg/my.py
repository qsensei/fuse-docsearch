import os

def location(terms):
  for term in terms:
    dirname = os.path.dirname(term)
    for segment in dirname.split(os.path.sep):
	if segment:
           yield segment
