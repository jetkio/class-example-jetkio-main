<h1> CMSC 331 – Environment Setup Guide </h1>

This guide walks you through setting up your development environment for CMSC 331.

- [Software Configuration](#software-configuration)
  - [1. GitHub Setup](#1-github-setup)
  - [2 Install Visual Studio Code (VS Code)](#2-install-visual-studio-code-vs-code)
    - [2.1. Sign In to GitHub from VS Code](#21-sign-in-to-github-from-vs-code)
    - [2.2. VS Code Extensions](#22-vs-code-extensions)
  - [3. Install Docker Desktop](#3-install-docker-desktop)
  - [4. Install Git](#4-install-git)
- [Running the program](#running-the-program)
  - [1. Clone the Class Example Repository](#1-clone-the-class-example-repository)
  - [2. Building and Running with Docker](#2-building-and-running-with-docker)
    - [2.1 Open VS Code Terminal](#21-open-vs-code-terminal)
    - [2.2 Pull and run the image ✅](#22-pull-and-run-the-image-)
    - [2.3 Build the Docker Image: might take time⁉️](#23-build-the-docker-image-might-take-time️)
    - [2.4 Run the Docker Container](#24-run-the-docker-container)
  - [3. Useful Commands](#3-useful-commands)
    - [3.1 Running Flex/Bison Programs](#31-running-flexbison-programs)
    - [3.3 Fixing Docker Issues](#33-fixing-docker-issues)
  - [4. Notes](#4-notes)
- [Working with GitHub in VS Code](#working-with-github-in-vs-code)
    - [1 Committing and Pushing Your Work](#1-committing-and-pushing-your-work)
    - [2 Pulling Updates from Instructor](#2-pulling-updates-from-instructor)
    - [3 Sync After Pulling](#3-sync-after-pulling)
      - [Tip for Students:](#tip-for-students)

# Software Configuration

## 1. GitHub Setup

1. **Sign up for GitHub**  
   - If you do not already have an account, create one using your **UMBC email**:  
     [https://github.com/join](https://github.com/join)

2. **Accept the Class Example Assignment**  
   - Use the **GitHub Classroom link** provided by your instructor to accept the assignment.  
   - This will create a private repository for you.

3. **Check the README in Your Repository**  
   - Your repository may contain a `README.md` file with project-specific instructions—make sure to read it carefully.


## 2 Install Visual Studio Code (VS Code)
- [Download VS Code](https://code.visualstudio.com/) and Install it
- Open VS Code after installation.


### 2.1. Sign In to GitHub from VS Code

- Sign in to GitHub in VS Code:
  - Click the **account icon** in the **bottom-left corner** of VS Code.
  - Choose **"Sign in with GitHub"** and follow the prompts.

### 2.2. VS Code Extensions 

Click the window like icon, <span style="font-size: 3rem;">⊞</span>,on the left, search and install the following extensions:

- **Magic Racket** – Racket syntax highlighting language support  
- **vscode-scheme** – Scheme syntax highlightinglanguage support 
- **Flex/Bison – Yash** – Syntax highlighting and tools for Flex and Bison  
- **SWI-Prolog** – Prolog syntax highlighting language support  
- **Markdown Preview GitHub Styling** – GitHub-style markdown preview  
- **vscode-icons** – File and folder icons


## 3. Install Docker Desktop 
- [Download Docker Desktop](https://www.docker.com/products/docker-desktop/) and Install it
- Install it and **make sure it is running** before building or running containers.
  - **You may also be required to sign up for Docker**
    - Use your UMBC email and signup
  - Also make sure Docker does not take too much of your machince resource
    - If it does, go to settings and change the config

## 4. Install Git
- [Download Git](https://git-scm.com/downloads) and Install it
- Verify installation:
  ```bash
  git --version
  ```

# Running the program

## 1. Clone the Class Example Repository

1. Open the **Command Palette** (`Ctrl + Shift + P` / `Cmd + Shift + P`)
2. Type `Git Clone` and select **Remote Resources**.
3. Search for your project and click it.
4. Choose a folder where you want your projects stored.
5. When prompted, click **Trust the Authors**.
6. Repeat the cloning process for other projects as needed.

## 2. Building and Running with Docker

### 2.1 Open VS Code Terminal
- From your cloned project folder, open the terminal:
  - **Windows/Linux:** `Ctrl + ~`  
  - **macOS:** `Cmd + ~`

**Make sure the terminal indicated you current working folder**

### 2.2 Pull and run the image ✅
> ✳️ This is the easiest to do. From the project directory:
```bash
docker run -it --rm -v "$PWD/lecture:/lecture" zizutg:cmsc331
```

‼️OR‼️
### 2.3 Build the Docker Image: might take time⁉️
Run **one** of the following commands:
```bash
docker build --no-cache -t cmsc331 .
```
or
```bash
docker build -t cmsc331 .
```

### 2.4 Run the Docker Container
From the project directory:
```bash
docker run -it --rm -v "$PWD/lecture:/lecture" cmsc331
```
- Change to `samples` directory and `run` a couple of sample programs `via terminal` to ensure correct setup and use 
  - `racket factorial.rkt` 
    - [Racket Cheatsheet](https://docs.racket-lang.org/racket-cheat/index.html)
  - `python test.py` or
  - `swipl family.pl` inside the container to run programs.


## 3. Useful Commands

### 3.1 Running Flex/Bison Programs
```bash
bison -d expr.y        # Generates expr.tab.c and expr.tab.h
flex expr.l            # Generates lex.yy.c
gcc -o calc expr.tab.c lex.yy.c -lfl
./calc
```


### 3.3 Fixing Docker Issues
```bash
docker system prune -af --volumes
docker builder prune -af
docker system df
```

## 4. Notes
- Always make sure **Docker Desktop is running** before using `docker build` or `docker run`.
- Use **VS Code's integrated terminal** so that file paths match your workspace.
- If something doesn’t work, double-check:
  - You are in the correct directory.
  - You have built the image before running it.
  - You have the correct project files.
- **Remember to always commit and push after you change your project**
  - Use the <span style="font-size: 3rem;">⑂</span> icon or integrated terminal to do this
- If nothing is working [book an appointment](https://calendar.app.google/pqKQoujw8e643Sn66
) and let's solve it together
  - I accept walk in visits during office hours. However, priorities are given for scheduled appointments

# Working with GitHub in VS Code

All Git tasks for this course will be done **using the Source Control icon in VS Code**

### 1 Committing and Pushing Your Work

1. Open your project folder in VS Code.
2. Click the **Source Control icon** (branch icon on the left sidebar).
3. You will see a list of changed files:
   - Hover over each file and click the **+** button to **Stage Changes**.
   - Or click the **Stage All Changes** button at the top.
4. Type a short message in the **message box** at the top (e.g., `Finish Lab 2 exercises`).
5. From the the **Commit** button, click the d**own arrow** ⬇️.
6. Then select **Commit & Sync** or **Commit & Push**
   1. The sync option will also get update from your repo, if there is any

### 2 Pulling Updates from Instructor

When your instructor pushes updates, you need to bring them into your fork and local copy:

1. Click the **Source Control icon**.
2. At the top, click the **... menu** (three dots).
3. Select **Pull**: to simply get update from the origin
   1. You can also use **Pull from ...** 
   
4. VS Code will fetch changes and attempt to merge automatically.
5. If there are conflicts, VS Code will highlight them:
   - Buttons will appear above each conflict: 
     - **Accept Current**, 
     - **Accept Incoming**, or 
     - **Accept Both**.
   - After resolving, click **✔ Commit** to finish the merge.

### 3 Sync After Pulling

Once you’ve pulled instructor updates and resolved any conflicts:

1. Click the **Sync Changes** (↕ icon) again.
2. This will **push** the updated work back to your fork so it matches the instructor’s repository.

   - Setting Up Git Username and Email
     - Before committing code in Git, you need to configure your identity.
     - One-Time Global Setup
       - This applies to all repositories on your computer.
   - ***`THIS IS DONE ON THE SYSTEM TERMINAL NOT IN LINUX MACHINE`***

```bash
    git config --global user.name "Your Name"
    git config --global user.email "your_email@example.com"
```
#### Tip for Students:  
- Always **Commit + Push** your work before class ends.  
- Always **Pull instructor updates** before starting new work.  