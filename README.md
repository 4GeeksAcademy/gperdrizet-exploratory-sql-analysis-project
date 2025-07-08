# Global Institute of Life (GIL): Biodiversity SQL Analysis Project

A hands-on project focused on SQL querying, data exploration, and logical analysis using real-world biodiversity data. This project demonstrates the end-to-end process of extracting insights from a structured database, analyzing patterns in species observations, and communicating findings using SQL.

![Project Preview](assets/preview.png)

## Project Overview
This project places you in the role of a junior data analyst at the fictional Global Institute of Life (GIL). Your mission is to explore a preloaded database containing historical and current biodiversity data, execute SQL queries to answer real-world questions, and communicate your findings using SQL.

**Key topics covered include:**
- SQL querying for data exploration and pattern detection
- Aggregation, filtering, and joining tables
- Best practices for working with professional project structures

## Learning Objectives
### Data Acquisition & Processing
- Explore and understand a real-world biodiversity database
- Write SQL queries to extract, aggregate, and analyze data
- Store and manipulate data using SQLite and SQLAlchemy

## Getting Started
### Using GitHub Codespaces (Recommended)
Launch this project instantly in a fully configured cloud development environment:

1. Click the green "Code" button on the GitHub repository
2. Select the "Codespaces" tab
3. Click "Create codespace on main"
4. Wait for the environment to initialize (all dependencies will be installed automatically)
5. Open `src/app.py` or `src/sql/queries.sql` to start the analysis

GitHub Codespaces provides a complete VS Code environment in your browser with all required extensions and packages pre-installed.

### Local Installation
#### Prerequisites
- Python 3.11+
- Jupyter Notebook or VS Code with Jupyter extension (optional, for further analysis)

#### Steps
Clone the repository:
```bash
git clone https://github.com/4GeeksAcademy/gperdrizet-exploratory-sql-analysis-project.git
cd gperdrizet-exploratory-sql-analysis-project
```
Create a virtual environment (recommended):
```bash
python -m venv .venv
source .venv/bin/activate
```
Install dependencies:
```bash
pip install -r requirements.txt
```
Run the project:
```bash
python src/app.py
```
Or open the notebook files in VS Code with the Jupyter extension for further exploration.

## Project Structure
```
├── assets/                 # Resources and preview images
│   └── preview.png         # Project preview image
├── data/                   # SQLite database and data files
│   └── database.db         # Biodiversity data
├── src/                    # Source code and SQL scripts
│   ├── app.py              # Main script to run and display query results
│   ├── init_db.py          # Database initialization script
│   └── sql/                # SQL scripts
│       ├── create.sql      # Table definitions
│       ├── insert.sql      # Data insertion
│       └── queries.sql     # Your queries go here
├── requirements.txt        # Python dependencies
├── INSTRUCTIONS.md         # Assignment instructions and missions
└── README.md               # Project documentation
```

## Analysis Overview
### Data Exploration
- Examine the structure and contents of the biodiversity database
- Use SELECT, LIMIT, DISTINCT, and WHERE to answer basic questions

### Aggregation & Ordering
- Use GROUP BY, COUNT, ORDER BY, and HAVING to analyze trends and patterns

### Table Relationships
- Use JOINs to combine data from multiple tables and enrich your analysis

### (Optional) Data Manipulation
- Practice INSERT, UPDATE, and DELETE operations for data quality maintenance

## Key Concepts Covered
- SQL querying and best practices
- Professional project structure and workflow

## Sample Data
The project uses real-world biodiversity data based on open datasets from the [GBIF](https://www.gbif.org/) portal, providing up-to-date and relevant insights into species observations and ecosystem monitoring.

## Technologies Used
- Python 3.11: Core programming language
- SQLAlchemy: Database connection and management
- SQLite: Lightweight database for structured storage

## Contributing
This project is designed for educational purposes. Contributions to improve the analysis, add new queries, or enhance explanations are welcome:

1. Fork the repository
2. Create a feature branch
3. Make your improvements
4. Submit a pull request

## Educational Value
This project is ideal for:
- Learners interested in SQL and real-world data analysis
- Data science students seeking hands-on experience
- Anyone wanting to practice data exploration, querying, and reporting in Python

You'll gain practical skills in extracting, transforming, and communicating data, with a focus on best practices and clear communication of insights.

For detailed assignment instructions and missions, see [`INSTRUCTIONS.md`](INSTRUCTIONS.md).
