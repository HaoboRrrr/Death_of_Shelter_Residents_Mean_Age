# Shelter deaths in Toronto

## Overview

This repo studies the number of deaths of shelter residents in Toronto and the average age of decedents each year from 2007 to 2024. 
This repo provides all the resources needed to duplicate the whole study.

## Data Source

The Data of the study was taken from Open Data Toronto:https://open.toronto.ca/dataset/deaths-of-shelter-residents/
There is an csv file called"Deaths of Shelter Residents Mean Age" in the download tab.
The sketch of the datase and graph was draw by author Haobo Ren.

## File Structure

The repo is structured as:

-   `data/raw_data` contains the raw data as obtained from opendatatoronto
-   `data/analysis_data` contains the cleaned dataset that was constructed.
-   `other` contains details about LLM chat interactions, and sketches.
-   `paper` contains the files used to generate the paper, including the Quarto document and reference bibliography file, as well as the PDF of the paper. 
-   `scripts` contains the R scripts used to simulate, download and clean data.

## Procedure of the study

1. Simulate the data. (scripts/00-simulate_data.R)
2. Download the data. (scripts/01-download_data.R)
3. Data cleaning, clear Unrelated columns. (scripts/02-data-cleaning.R)
4. Test the sanity of the data. (03-test_data.R)
5. Main body of the paper

## Statement on LLM usage

Aspects of the code were written with the help of the auto-complete tool, Chatgpt. The entire chat history is available in inputs/llms/usage.txt.

