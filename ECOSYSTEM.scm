;; SPDX-License-Identifier: AGPL-3.0-or-later
;; ECOSYSTEM.scm - asdf-ui-plugin ecosystem position

(ecosystem
  (version . "1.0.0")
  (name . "asdf-ui-plugin")
  (type . "visual-interface")
  (purpose . "Visual interface for asdf version manager")

  (position-in-ecosystem . "frontend")

  (what-this-is
    "Desktop application for visual asdf management"
    "Plugin browser with search and categories"
    "Version selector with visual comparison"
    "Installation progress and status display"
    "Built with Tauri 2.0+ (Rust backend) or Dioxus (pure Rust)")

  (what-this-is-not
    "Not a replacement for CLI - complements it"
    "Not a web application - native desktop"
    "Not required for asdf usage - optional enhancement")

  (related-projects
    ;; Direct ecosystem relationships
    (("hyperpolymath/asdf-control-tower" . "coordination-hub")
     ("hyperpolymath/asdf-plugin-configurator" . "cli-backend")
     ("hyperpolymath/asdf-metaiconic-plugin" . "metadata-source")
     ("hyperpolymath/asdf-ghjk" . "sibling-tool"))

    ;; Dependencies
    (("asdf-vm/asdf" . "parent-ecosystem")
     ("tauri-apps/tauri" . "ui-framework")
     ("hyperpolymath/mustfile" . "build-tool")))

  (integration-points
    (provides
      "Visual plugin browser"
      "Version selector interface"
      "Installation progress display"
      "System tray integration"
      "Keyboard shortcuts")

    (consumes
      "Plugin metadata from asdf-metaiconic-plugin"
      "CLI operations via asdf-plugin-configurator"
      "Icons and branding from metaiconic registry")))
