# Skill Management Protocol: The Manifest-First Strategy

> [!IMPORTANT]
> **Goal:** Manage skills from a single point (`skills_manifest.json`) and eliminate the burden of "Double Work".
> **Reality:** Although the system technically feeds from `.md` files, we will accept the Manifest as "Master" and `.md` files as "Slave" in the management layer.

---

## 🏗️ Procedure for Adding a New Skill

1.  **Open Record in Manifest (Stage 1)**
    *   Open the `skills_manifest.json` file.
    *   Add the new skill ID and trigger words under the relevant Kit (e.g. `FullStackKit` or `DevOpsKit`).
    *   *Example:*
        ```json
        "core_skills": [ ..., "super_new_skill" ]
        ```

2.  **Create SKILL.md File (Stage 2)**
    *   Create your file using the template at `%USERPROFILE%\.skillport\skills\super_new_skill\SKILL.md`.
    *   **CRITICAL:** You MUST include the keywords/tags you determined in the Manifest in the YAML metadata section at the beginning of the file.
    *   *Example:*
        ```markdown
        ---
        name: super_new_skill
        router_kit: DevOpsKit
        description: ...
        metadata:
          skillport:
            tags:
              - keyword1
              - keyword2
              - synonym3
        ---
        ```

3.  **Sync & Restart (Stage 3)**
    *   Run the **"Auto-Sync Script"** if available. (If not, check manually).
    *   Restart VS Code / Terminal (Skillport Cache Cleanup).

---

## 🛠️ Procedure for Updating an Existing Skill

**Rule:** Never ever go directly into `SKILL.md` and add random keywords.
1.  Check `skills_manifest.json` first: Which Kit should this word belong to?
2.  Add to Manifest (For documentation).
3.  Then add to `SKILL.md` metadata section (For technical search).
4.  Restart.

---

## 🧹 Procedure for Removing/Deleting a Skill

1.  Delete the ID from the `core_skills` list in the Manifest.
2.  Delete the directory from the Skills folder (`rm -rf ...`).
3.  Restart.

---

## 🤖 Automation Goal (To-Do)

A script (`sync_skills.py`) is planned to be written to speed up this process. This script will:
1.  Read the `skills_manifest.json` file.
2.  Find the `SKILL.md` file for each skill.
3.  Inject the `auto_triggers` list from the Manifest into the `SKILL.md` metadata section.
4.  Thus, only updating the Manifest will be sufficient.

---

## 🤖 Agent and User Collaboration (The Pact)

> [!TIP]
> **User Declaration:** "If there is a skill to be added, I will ask you to add it, you do the necessary arrangement."

**Agent Responsibility:**
When the user wants a new skill added or a word to be included in the scope, the Agent does the following **manually but with discipline**:
1.  Updates the `skills_manifest.json` file (Dictionary entry).
2.  Finds the relevant `SKILL.md` file and updates the metadata section (Technical implementation).
3.  Warns the user "Restart Required".

In this process, the user does not deal with technical details (JSON/YAML format), only indicates the intention.
