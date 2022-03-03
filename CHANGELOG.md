# Changelog
This file follows the [Keep a Changelog](https://keepachangelog.com/en/1.0.0/) format.

Due to the way [Cuis Smalltalk](https://github.com/Cuis-Smalltalk/Cuis-Smalltalk-Dev) manages package versions, this
project does not follow [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## [Unreleased]

## Added
* New temporary variables inspector.
* Temporary variables refresh when restarting contexts, stepping into/over message sends, or stepping through blocks.
* Highlight temporary variables when they change.
* Support for pinning temporary variables (accessed through the temporary variable context menu).
* Watch expressions. They can be added from the debugger in two ways: `right-clicking on the temporaries panel > Add watch...` or selecting a collaboration in the code editor and `right-click > Add to watches`. 
* Group watches and temporaries in the temporary variable's inspector.
* Support for adding watch expressions from the temporary variable's context menu.
* Support for duplicating watches.
* `thisContext` pseudo-variable to the temporary variables inspector.
* Watch editor shortcuts: `meta + s` to accept and `esc` to cancel the dialog.
* Context menu item and shortcut (double-click) for inspecting temporaries/watches values. 
* Context menu item and shortcut (shift + double-click) for editing watches.
* Support for evaluating expressions in the debugger's context. It is available via the temporary variable's inspector context menu > `Evaluate expression...`.
* Support for live evaluating expressions from a selection in the debugger.
* Context status (either Executing or Terminated) to the watch expression editor.

## Changed
* Uses the new `AdvancedDebuggerWindow` instead of the built-in `DebuggerWindow` for opening the debugger.  
  `AdvancedDebuggerWindow` does not have any new behavior yet. 
