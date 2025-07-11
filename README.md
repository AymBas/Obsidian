---
tags: ['knowledge-vault', 'obsidian', 'documentation']
---

# Obsidian Knowledge Vault

*A lightweight, cross-domain Obsidian vault for “101-level” reference notes, runnable snippets, and quick diagrams.*

---

## Why this vault exists 🧭

- **Evergreen, not exhaustive** – Each note captures just enough to jog your memory or onboard someone new. Deep dives belong in linked resources, not in the vault itself.  
- **Idea-first** – Concepts (Architecture, Testing, Security, …) live separate from the tools that implement them. A single idea can link to many tools, languages, or domains.  
- **Atomic notes** – Every note answers one question: “What is X, why does it matter, and where do I go next?”  
- **Backlinks over hierarchy** – Folders keep things tidy, but discovery happens via `[[wikilinks]]`, tags, and Obsidian’s Graph view.

---

### Quick conventions

| Element            | Convention & Purpose                                                     |
|--------------------|--------------------------------------------------------------------------|
| **Tags**           | `tags:` array in YAML front-matter. Keep them broad (`testing`, `react`).|
| **Aliases**        | Add common synonyms so ⌘-O/Quick-Switcher is forgiving.                  |
| **Code snippets**  | Tiny, runnable examples (`.bash`, `python`, `tsx`, etc.).                |
| **Diagrams**       | Use Mermaid (` ```mermaid `) for simple flows; store complex images in `/media`.|
| **Backlinks**      | Always link “up” (*concept → tool*) and “sideways” (*unit-test → pytest*).|

---

## Using the vault 🚀

1. **Open in Obsidian.**  
2. Skim the *Graph* to see how concepts and tools interconnect.  
3. Jump to any note and explore the *Backlinks* pane for context.  
4. Expand a note by appending references, deeper examples, or external links.  
   - Keep new material concise; link out to articles, RFCs, or docs for full details.  
5. When adding tools, drop the note in the appropriate bucket (`Tools/python-packages`, `Tools/platforms`, etc.).  
6. Commit and push—you’re done!

---