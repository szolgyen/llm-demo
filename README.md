# llm-demo

A demonstration project for extracting structured information from pathology reports using Large Language Models (LLMs) via the Hugging Face API.

## Setup

### 1. Create and activate virtual environment

```bash
make setup
source .venv/bin/activate
```

This creates a Python virtual environment, installs dependencies, and registers the Jupyter kernel.

### 2. Set up Hugging Face token

Get your HF token from [https://huggingface.co/settings/tokens](https://huggingface.co/settings/tokens)

Then add it to your environment:

```bash
export HF_TOKEN="your_token_here"
```

Rename `.env.example` to `.env` and add your HF token into the `.env` file without the quotation marks:

```bash
HF_TOKEN="your_token_here"
```

## Usage

### Start Jupyter Lab

```bash
make notebook
```

This opens Jupyter Lab on `http://localhost:8888`. Open `codes/demo.ipynb` to run the demo.

### Workflow

1. **Load reports**: Place text files in `reports/` directory
2. **Set up prompts**: Edit `prompts/prompt.txt` with your extraction instructions
3. **Run extraction**: Execute cells in `demo.ipynb` to process reports with LLM
4. **View results**: Extracted data is saved to `predictions/` directory

## Project Structure

- `codes/demo.ipynb` - Main notebook for running LLM extractions
- `codes/utils.py` - Utility functions for loading reports and text files
- `prompts/prompt.txt` - LLM prompt template
- `reports/` - Input text files to process
- `predictions/` - Output CSV files with extracted data

## Commands

Important:
- `make setup` - Create venv and install dependencies
- `make notebook` - Start Jupyter Lab

Optional:
- `make install` - Install dependencies in existing venv
- `make freeze` - Update requirements.txt with current dependencies
- `make clean` - Remove venv and cache files

## Python

The project was built on Python 3.11.