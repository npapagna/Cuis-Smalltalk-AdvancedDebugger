'From Cuis 5.0 [latest update: #4913] on 11 December 2021 at 12:57:04 am'!
'Description '!
!provides: 'Tools-AdvancedDebugger' 1 1!
SystemOrganization addCategory: 'Tools-AdvancedDebugger'!


!classDefinition: #AdvancedDebuggerWindow category: 'Tools-AdvancedDebugger'!
DebuggerWindow subclass: #AdvancedDebuggerWindow
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Tools-AdvancedDebugger'!
!classDefinition: 'AdvancedDebuggerWindow class' category: 'Tools-AdvancedDebugger'!
AdvancedDebuggerWindow class
	instanceVariableNames: ''!


!Debugger methodsFor: '*Tools-AdvancedDebugger' stamp: 'NPM 12/11/2021 00:53:33'!
openFullAdvancedDebuggerLabeled: aLabelString
	"Open a full morphic debugger with the given label"

	| oldContextStackIndex |
	oldContextStackIndex _ contextStackIndex.
	self expandStack. "Sets contextStackIndex to zero."

	AdvancedDebuggerWindow open: self label: aLabelString.
	self toggleContextStackIndex: oldContextStackIndex! !

!Debugger methodsFor: '*Tools-AdvancedDebugger' stamp: 'NPM 12/11/2021 00:55:33'!
openFullNoSuspendLabel: aString
	"Create and schedule a full debugger with the given label. Do not terminate the current active process."

	self openFullAdvancedDebuggerLabeled: aString.
	interruptedProcessUI _ UISupervisor newProcessIfUI: interruptedProcess! !
