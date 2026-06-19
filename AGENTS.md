# AGENTS

## Project structure

- Read `STRUCTURE.md` for a complete map
- **Keep `STRUCTURE.md` accurate.** When you add, move, or remove files, rename directories, change the build pipeline, or alter the template/content model, update `STRUCTURE.md` to match. An outdated map is worse than no map. of the project directory layout, build pipeline, content model, template architecture, and conventions. This is the single source of truth for understanding the project.

## Package manager

- Always use `pnpm` instead of `npm` for this project.
- Prefer `pnpm install`, `pnpm add`, `pnpm remove`, `pnpm run <script>`, and `pnpm exec <tool>`.
- Do not create or update `package-lock.json`.

## UI components

- Always attempt to use components from DaisyUI when available before building custom UI primitives.
