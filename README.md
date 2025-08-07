# Global Institute of Life (GIL): Biodiversity SQL Analysis Project

[![Codespaces Prebuilds](https://github.com/4GeeksAcademy/gperdrizet-exploratory-sql-analysis-project/actions/workflows/codespaces/create_codespaces_prebuilds/badge.svg)](https://github.com/4GeeksAcademy/gperdrizet-exploratory-sql-analysis-project/actions/workflows/codespaces/create_codespaces_prebuilds)

A hands-on project focused on SQL querying, data exploration, and logical analysis using real-world biodiversity data. This project demonstrates the end-to-end process of extracting insights from a structured database, analyzing patterns in species observations, and communicating findings using SQL.

![Project Preview](assets/preview.png)

## Project Overview
This project places you in the role of a junior data analyst at the fictional Global Institute of Life (GIL). Your mission is to explore a preloaded database containing historical and current biodiversity data, execute SQL queries to answer real-world questions, and communicate your findings using SQL.

**Key topics covered include:**
- SQL querying for data exploration and pattern detection
- Aggregation, filtering, and joining tables
- Best practices for working with professional project structures

For detailed assignment instructions and objectives, see [`INSTRUCTIONS.md`](INSTRUCTIONS.md).


## Getting Started

### Option 1: GitHub Codespaces (Recommended)

1. **Fork the Repository**
   - Click the "Fork" button on the top right of the GitHub repository page
   - 4Geeks students: set 4GeeksAcademy as the owner - 4Geeks pays for your codespace usage. All others, set yourself as the owner
   - Give the fork a descriptive name. 4Geeks students: I recommend including your GitHub username to help in finding the fork if you loose the link
   - Click "Create fork"
   - 4Geeks students: bookmark or otherwise save the link to your fork

2. **Create a GitHub Codespace**
   - On your forked repository, click the "Code" button
   - Select "Create codespace on main"
   - If the "Create codespace on main" option is grayed out - go to your codespaces list from the three-bar menu at the upper left and delete an old codespace
   - Wait for the environment to load (dependencies are pre-installed)

3. **Start Working**
   - Write the SQL queries requested in `src/sql/queries.sql`
   - Run queries with the command `python src/app.py`


### Option 2: Local Development

1. **Prerequisites**
   - Git
   - Python >= 3.10

2. **Fork the repository**
   - Click the "Fork" button on the top right of the GitHub repository page
   - Optional: give the fork a new name and/or description
   - Click "Create fork"

3. **Clone the repository**
   - From your fork of the repository, click the green "Code" button at the upper right
   - From the "Local" tab, select HTTPS and copy the link
   - Run the following commands on your machine, replacing `<LINK>` and `<REPO_NAME>`

   ```bash   ```bash
   jupyter notebook notebooks/assignment.ipynb
   ```
   git clone <LINK>
   cd <REPO_NAME>
   ```

4. **Set Up Environment**

   ```bash
   python -m venv venv
   source venv/bin/activate
   pip install -r requirements.txt
   ```

5. **Initialize the database and complete the assignment**
   - Populate the database with the command: `python src/init_db.py`
   - Write the SQL queries requested in `src/sql/queries.sql`
   - Run queries with the command: `python src/app.py`


## Project Structure
```
├── .devcontainer/         # Codespace/development container configuration
├── assets/                # Resources and preview images
│   └── preview.png        # Project preview image
│
├── data/                  # SQLite database and data files
│   └── database.db        # Biodiversity data
│
├── src/                   # Source code and SQL scripts
│   ├── app.py             # Main script to run and display query results
│   ├── init_db.py         # Database initialization script
│   └── sql/               # SQL scripts
│       ├── create.sql     # Table definitions
│       ├── insert.sql     # Data insertion
│       ├── queries.sql    # Your queries go here
│       └── solution.sql   # Your queries go here
│
├── .gitignore             # Files/directories not tracked by git
├── requirements.txt       # Python dependencies
├── INSTRUCTIONS.md        # Assignment instructions and missions
└── README.md              # Project documentation
```


## Sample Data
The project uses real-world biodiversity data based on open datasets from the [GBIF](https://www.gbif.org/) portal, providing up-to-date and relevant insights into species observations and ecosystem monitoring.


## Learning Objectives

### Data Acquisition & Processing
- Explore and understand a real-world biodiversity database
- Write SQL queries to extract, aggregate, and analyze data
- Store and manipulate data using SQLite and SQLAlchemy


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
