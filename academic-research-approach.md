# Academic Research and Writing Workflow in Neovim

This document outlines a powerful, keyboard-centric workflow for academic writing, specifically tailored for a Master's thesis. It leverages Neovim's strengths for managing notes, writing in LaTeX, and handling citations.

## The Core Philosophy

The goal is to separate the stages of research and writing to maximize focus:

1.  **Note-Taking & Idea Generation (Obsidian):** Capture and connect ideas, literature notes, and qualitative data themes in a flexible, linked environment using Markdown.
2.  **Writing & Formatting (LaTeX):** Compose the final, structured document in LaTeX for professional typesetting and formatting.
3.  **Citation Management (Zotero & Telescope):** Maintain a master bibliography in Zotero and effortlessly insert citations into your LaTeX document.

---

## 1. Prerequisite Setup

This workflow assumes you have:

*   **A LaTeX Distribution:** [TeX Live](https://www.tug.org/texlive/) is the standard.
*   **A Reference Manager:** [Zotero](https://www.zotero.org/) is highly recommended.
    *   **Crucial Step:** Install the [Better BibTeX for Zotero](https://retorque.re/zotero-better-bibtex/) plugin. Configure it to **auto-export** your library to a single `.bib` file (e.g., `~/Documents/references.bib`). This file is the bridge between your references and Neovim.
*   **An Obsidian Vault:** Create a folder on your computer (e.g., `~/Documents/ObsidianVault`) and open it as a vault in the [Obsidian](https://obsidian.md) app.

---

## 2. The Workflow in Action

### Step A: Note-Taking and Qualitative Analysis (`obsidian.nvim`)

This is where you'll spend your time thinking, connecting ideas, and analyzing your data.

*   **Open Your Vault:** Use the command `:ObsidianToday` to open your daily note, or `:ObsidianSearch` to find any note.
*   **Create Thematic Notes:** For each theme from your qualitative data, create a new note (e.g., `:ObsidianNew Theme - Coping Mechanisms`).
*   **Link Everything:** The power of this system comes from linking.
    *   If you're writing about a theme and it relates to a paper by Smith (2021), simply type `[[@smith2021]]`.
    *   If it relates to another theme, type `[[Theme - Social Support]]`.
*   **Visualize Your Argument:** Open your vault in the actual Obsidian app to see the **Graph View**. This will show you a visual map of how your themes and sources connect, helping you structure your thesis chapters.

### Step B: Writing the Thesis (`vimtex`)

Once you have a clear argument structured in your notes, you can begin writing the formal document.

*   **Open Your `.tex` File:** When you open a `.tex` file, `vimtex` will activate automatically.
*   **Live Compilation:** Press `\ll` (leader + l + l) to start the compiler. It will run in the background.
*   **View the PDF:** Press `\lv` to open the compiled PDF in Zathura (or your configured viewer). The PDF will auto-update as you save the file.
*   **Navigate:** Use `\lt` to open a table of contents for your document.

### Step C: Citing Sources (`telescope-bibtex`)

This is where the workflow becomes incredibly fast.

*   **Configure Your `.bib` File:** You must tell Telescope where your bibliography is. Add the following to your `init.lua` or a new `config/telescope.lua` file:
    ```lua
    -- In your main telescope config
    require('telescope').setup{
      extensions = {
        bibtex = {
          -- IMPORTANT: UPDATE THIS PATH
          bibfiles = { "~/Documents/references.bib" },
        }
      }
    }
    ```
*   **Find and Insert a Citation:**
    1.  In your `.tex` file, press `<leader>fc` (for "find citation").
    2.  A Telescope window will pop up. Start typing the author, title, or year.
    3.  Once you find the correct entry, press `Enter`. The correctly formatted LaTeX citation command (e.g., `\cite{smith2021}`) will be inserted into your document.

---

## 3. Cheatsheet

| Plugin | Keybinding | Description |
|---|---|---|
| **Vimtex** | `\ll` | **L**ive compile the **L**aTeX file. |
| | `\lv` | **V**iew the compiled PDF. |
| | `\lt` | Show **T**able of Contents. |
| | `\lc` | **C**lean auxiliary files. |
| **Telescope BibTeX** | `<leader>fc` | **F**ind **C**itation from your `.bib` file. |
| **Obsidian.nvim** | `:ObsidianToday` | Open or create your daily note. |
| | `:ObsidianNew {name}` | Create a **N**ew note. |
| | `:ObsidianSearch` | **S**earch all notes in your vault. |
| | `:ObsidianLink` | **L**ink to an existing note. |
| **LTeX LSP** | *(Automatic)* | Provides grammar/style diagnostics as you type. |
| | `<leader>ca` | Show **C**ode **A**ctions for a suggestion. |
