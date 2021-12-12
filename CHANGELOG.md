# Changelog
This file follows the [Keep a Changelog](https://keepachangelog.com/en/1.0.0/) format.

Due to the way [Cuis Smalltalk](https://github.com/Cuis-Smalltalk/Cuis-Smalltalk-Dev) manages package versions, this
project does not follow [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## [Unreleased]

## Added
* First implementation of `TemporaryVariablesInspectorMorph` displaying temporary variable names and
  their values as string.
* Temporary variables refresh when restarting contexts, stepping into/over message sends, or stepping through blocks.

## Changed
* Uses the new `AdvancedDebuggerWindow` instead of the built-in `DebuggerWindow` for opening the debugger.  
  `AdvancedDebuggerWindow` does not have any new behavior yet. 
