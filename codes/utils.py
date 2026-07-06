from pathlib import Path
import logging


def logging_setup() -> logging.Logger:
    """Sets up logging configuration for the application."""
    logging.basicConfig(
        level=logging.INFO,
        format="%(asctime)s [%(levelname)s] %(message)s",
        handlers=[logging.StreamHandler()],
    )
    return logging.getLogger(__name__)


def load_text(text_file_path: str) -> str:
    """Loads the content of a text file and returns it as a string."""
    text_path = Path(text_file_path)

    with open(text_path, "r", encoding="utf-8") as f:
        return f.read()


def load_report_directory(report_dir: str, suffix: str = "*.txt") -> dict:
    """Loads all text files in a specified directory and returns a dictionary of
    their contents.
    """
    report_dir = Path(report_dir)

    reports = {}

    for path in report_dir.glob(suffix):
        reports[path.stem] = path.read_text(encoding="utf-8")

    return reports
