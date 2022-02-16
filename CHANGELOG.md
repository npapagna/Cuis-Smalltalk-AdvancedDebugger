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
* Support adding watch expressions from the temporary variable's context menu.

## Changed
* Uses the new `AdvancedDebuggerWindow` instead of the built-in `DebuggerWindow` for opening the debugger.  
  `AdvancedDebuggerWindow` does not have any new behavior yet. 
