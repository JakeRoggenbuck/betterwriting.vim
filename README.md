# betterwriting.vim

[![Vim](https://img.shields.io/badge/Vim-%2311AB00.svg?logo=vim&logoColor=white&style=for-the-badge)](https://github.com/JakeRoggenbuck/betterwriting.vim)
[![Python](https://img.shields.io/badge/Python-3776AB?style=for-the-badge&logo=python&logoColor=white)](https://github.com/JakeRoggenbuck?tab=repositories&q=&type=&language=python&sort=stargazers)
[![Version](https://img.shields.io/badge/v0.1.0-blue?style=for-the-badge)](#)
[![Python](https://img.shields.io/github/actions/workflow/status/jakeroggenbuck/betterwriting.vim/python.yml?branch=main&style=for-the-badge)](https://github.com/JakeRoggenbuck/betterwriting.vim/actions)

Offer suggestions in Vim for simple and effective writing.

> [!IMPORTANT]  
> Very early development

## Rational

Technical writing is a critical skill. This plugin offered suggestions and points out writing weaknesses.

I often use overuse words like 'very', 'really', 'stuff', 'something', and 'thing'. I also make sentences too long, while including 'and' too many times.

I will also implement ideas from the [Flesch–Kincaid readability tests](https://en.wikipedia.org/wiki/Flesch%E2%80%93Kincaid_readability_tests) and [Better Business Writing](https://hbsp.harvard.edu/product/10946-PDF-ENG).

This also serves as a good way for me to internalize and learn these rules that I want to follow.

## Configure

TODO: Allow a list to be defined in the vim configuration for words to highlight in red.

## Features

#### Completed Features

#### TODO Features

- Local thesaurus
- Local dictionary
- Highlight overused / weak words in red
- Highlight fluff and filler words
- Highlight sentences with more than two commas
- Highlight sentences with more than 25 words

## Specification

#### What is a sentence?

On change (with a debounce) betterwriting.vim will split the chunk of text in view into sentences with a period separator. Specifically, it will use a period followed by a space `. ` to count as a sentence.

#### Hightlight Overused Words

```
[very, really, stuff, something, thing]
```

#### Max Two Commas

If the sentence has two commas with at least six words between each, highlight it in orange. If it has three or more with six words in between, highlight in red. Why the six or more words between? I've noticed I have a hard time reading sentences when there seem to be many different clauses per sentence, and this is a mistake I make often (as demonstrated once here). The word count for each clause is to not falsely overreact to list of items in an otherwise well written sentence.

```vim
let g:comma_count_warning = 2
let g:comma_count_error = 3
let g:comma_clause_length = 6
```

#### Sentence Word Count

If the sentence is over 25 words, it will underline in orange. If it's over 30, it will underline in red. It's not a hard and fast rule, but it's a good suggestion to make you more mindful of this.

```vim
let g:word_count_warning = 25
let g:word_count_error = 30
```
