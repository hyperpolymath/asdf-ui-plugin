# asdf-ui-plugin Roadmap

## Project Overview

asdf-ui-plugin is a UI plugin for [asdf](https://asdf-vm.com/), the extensible version manager. This project follows a security-first approach with multi-platform SCM mirroring to GitLab, Codeberg, and Bitbucket.

## Current Status (v0.1.0 - Foundation)

### Completed
- [x] Hub-and-spoke SCM mirroring workflow
- [x] Security hardening of CI/CD pipeline
  - [x] SHA-pinned GitHub Actions (v4.3.0 checkout, v0.9.1 ssh-agent)
  - [x] SSH known_hosts verification for all mirror targets
  - [x] Read-only workflow permissions (least privilege)
  - [x] Conditional execution via repository variables
  - [x] Job timeouts (10 minutes per job)
  - [x] Concurrency controls to prevent race conditions
  - [x] Pinned Ubuntu runner version (24.04)
- [x] AGPL-3.0-or-later licensing

---

## Phase 1: Core Infrastructure

### 1.1 Documentation Setup
- [ ] Create README.md with project description and usage
- [ ] Add CONTRIBUTING.md with contribution guidelines
- [ ] Add CODE_OF_CONDUCT.md
- [ ] Create SECURITY.md with vulnerability reporting process

### 1.2 Development Environment
- [ ] Add .gitignore for common development artifacts
- [ ] Create .editorconfig for consistent code style
- [ ] Set up pre-commit hooks for linting

### 1.3 CI/CD Enhancements
- [ ] Add lint/format checking workflow
- [ ] Add test runner workflow
- [ ] Add release automation workflow
- [ ] Add Dependabot configuration for dependency updates

---

## Phase 2: Plugin Foundation

### 2.1 asdf Plugin Structure
- [ ] Create `bin/list-all` - List all available versions
- [ ] Create `bin/list-legacy-filenames` - Legacy version file support
- [ ] Create `bin/download` - Download version to download path
- [ ] Create `bin/install` - Install version to install path
- [ ] Create `bin/latest-stable` - Return latest stable version

### 2.2 Plugin Configuration
- [ ] Define supported platforms (Linux, macOS, Windows)
- [ ] Define supported architectures (x86_64, arm64)
- [ ] Create version resolution logic
- [ ] Add checksum verification for downloads

---

## Phase 3: UI Component Development

### 3.1 Terminal UI Framework Selection
- [ ] Evaluate TUI frameworks (Bubble Tea, Ratatui, etc.)
- [ ] Select and integrate chosen framework
- [ ] Create basic terminal UI scaffold

### 3.2 Core UI Features
- [ ] Version list view with selection
- [ ] Search/filter functionality
- [ ] Version installation progress display
- [ ] Status indicators for installed versions
- [ ] Keyboard navigation

### 3.3 Advanced UI Features
- [ ] Multi-version comparison view
- [ ] Dependency visualization
- [ ] Configuration editor
- [ ] Help/documentation viewer

---

## Phase 4: Integration & Polish

### 4.1 asdf Integration
- [ ] Hook into asdf plugin ecosystem
- [ ] Support `.tool-versions` file management
- [ ] Global vs local version management UI
- [ ] Plugin update notifications

### 4.2 User Experience
- [ ] Theme support (light/dark)
- [ ] Customizable keybindings
- [ ] Configuration persistence
- [ ] Shell completion support

### 4.3 Testing & Quality
- [ ] Unit tests for core functionality
- [ ] Integration tests for asdf interaction
- [ ] End-to-end UI tests
- [ ] Cross-platform testing matrix

---

## Phase 5: Release & Distribution

### 5.1 Packaging
- [ ] Binary releases for major platforms
- [ ] Homebrew formula
- [ ] AUR package
- [ ] Nix package

### 5.2 Documentation
- [ ] User guide with screenshots
- [ ] API documentation (if applicable)
- [ ] Video walkthrough/demo

### 5.3 Community
- [ ] Submit to asdf plugin registry
- [ ] Create project website
- [ ] Set up discussion forums/Discord

---

## Security Considerations

### Ongoing Security Tasks
- [ ] Regular dependency audits
- [ ] Action version monitoring (GitHub Actions)
- [ ] SSH key rotation reminders
- [ ] Security advisory monitoring for dependencies

### Security Best Practices Implemented
- SHA-pinned actions to prevent supply chain attacks
- SSH host key verification to prevent MITM attacks
- Least privilege permissions model
- Conditional execution for controlled deployments
- No secrets in code (all via GitHub Secrets)

---

## Contributing

See [CONTRIBUTING.md](CONTRIBUTING.md) for how to contribute to this project.

## License

AGPL-3.0-or-later - See [LICENSE](LICENSE) for details.
