from typing import List


def split_sentences(text: str) -> List[str]:
    sentences = text.split(". ")

    last = sentences[-1]
    sentences = [s + "." for s in sentences[:-1]] + [last]

    return sentences
