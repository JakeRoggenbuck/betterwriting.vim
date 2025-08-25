import pytest
from betterwriter import split_sentences


def test_split_sentences():
    sentences = [
        "This is a sentence 1. This is another sentence.",
        "Hello there. How are you?"
    ]

    answers = [
        ["This is a sentence 1.", "This is another sentence."],
        ["Hello there.", "How are you?"]
    ]

    for answer, sentence in zip(answers, sentences):
        print(split_sentences(sentence), answer)
        assert split_sentences(sentence) == answer
