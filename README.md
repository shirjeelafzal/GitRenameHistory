# GitRenameHistory

## Overview

GitRenameHistory is a tool and guide designed to help streamline the process of renaming git commit history. This repository provides step-by-step instructions and scripts to effectively manage and modify commit history in Git repositories.

## Features

- **Commit History Renaming:** Easily rename commits to update author information, correct typos, or restructure commit messages.
- **Guided Process:** Detailed instructions and scripts to guide you through the history modification process.
- **Usage Instructions:** Clear documentation on how to use the provided tools and scripts effectively.

## Getting Started

To get started with renaming your git commit history using GitRenameHistory, follow these steps:

### Clone this repository to your local machine:

```bash
git clone <repository-url>
```

### Navigate to the cloned repository:

```bash
cd <repository-folder-name>
```

### Install git-filter-repo package:

```bash
pip install git-filter-repo
```

### Run the filter-repo-replace.sh file:

```bash
sh filter-repo-replace.sh
```

### Add remote URL again:

```bash
git remote add origin <repository-url>
```

### Push changes with --force flag:

```bash
git push origin main --force
```
