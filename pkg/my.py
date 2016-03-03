import os


def location(terms):
    for term in terms:
        dirname = os.path.dirname(term)
        for segment in dirname.split(os.path.sep):
            if segment:
                yield segment


def file_extension(terms):
    for term in terms:
        base, ext = os.path.splitext(term)
        if ext and len(ext) > 1:
            yield ext[1:]
