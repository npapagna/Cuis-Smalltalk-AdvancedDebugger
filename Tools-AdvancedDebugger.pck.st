'From Cuis 5.0 [latest update: #4913] on 11 December 2021 at 1:43:51 pm'!
'Description '!
!provides: 'Tools-AdvancedDebugger' 1 2!
SystemOrganization addCategory: #'Tools-AdvancedDebugger'!
SystemOrganization addCategory: #'Tools-AdvancedDebugger-UI'!


!classDefinition: #TemporaryVariablesInspectorMorph category: #'Tools-AdvancedDebugger-UI'!
LayoutMorph subclass: #TemporaryVariablesInspectorMorph
	instanceVariableNames: 'model'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Tools-AdvancedDebugger-UI'!
!classDefinition: 'TemporaryVariablesInspectorMorph class' category: #'Tools-AdvancedDebugger-UI'!
TemporaryVariablesInspectorMorph class
	instanceVariableNames: ''!

!classDefinition: #AdvancedDebuggerWindow category: #'Tools-AdvancedDebugger-UI'!
DebuggerWindow subclass: #AdvancedDebuggerWindow
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Tools-AdvancedDebugger-UI'!
!classDefinition: 'AdvancedDebuggerWindow class' category: #'Tools-AdvancedDebugger-UI'!
AdvancedDebuggerWindow class
	instanceVariableNames: ''!

!classDefinition: #TemporaryVariable category: #'Tools-AdvancedDebugger'!
Object subclass: #TemporaryVariable
	instanceVariableNames: 'name index context'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Tools-AdvancedDebugger'!
!classDefinition: 'TemporaryVariable class' category: #'Tools-AdvancedDebugger'!
TemporaryVariable class
	instanceVariableNames: ''!


!TemporaryVariable methodsFor: 'accessing' stamp: 'NPM 12/11/2021 13:18:27'!
name

	^ name! !

!TemporaryVariablesInspectorMorph methodsFor: 'initialization' stamp: 'NPM 12/11/2021 13:31:37'!
initializeModel: aContextVariablesInspector

	model _ aContextVariablesInspector.
	model addDependent: self.! !

!TemporaryVariablesInspectorMorph methodsFor: 'rendering' stamp: 'NPM 12/11/2021 13:27:32'!
refreshTemporaryVariables
	
	self removeAllMorphs.
	
	model doItContext tempNames withIndexDo: [ :temporaryVariableName :temporaryVariableIndex |
		| temporaryVariable temporaryVariableMorph |
		temporaryVariable _ TemporaryVariable named: temporaryVariableName at: temporaryVariableIndex in: model doItContext.
		temporaryVariableMorph _ LabelMorph contents: temporaryVariable name, ' ', temporaryVariable value displayStringOrText.
		
		self addMorph: temporaryVariableMorph layoutSpec: (LayoutSpec morphHeightProportionalWidth: 1)
	].! !

!TemporaryVariablesInspectorMorph methodsFor: 'updating' stamp: 'NPM 12/11/2021 13:27:58'!
update: anEvent

	anEvent = #fieldList ifTrue: [  self refreshTemporaryVariables ].! !

!TemporaryVariablesInspectorMorph class methodsFor: 'instance creation' stamp: 'NPM 12/11/2021 13:31:12'!
model: aContextVariablesInspector

	^ self
		newColumn
		initializeModel: aContextVariablesInspector

	! !

!AdvancedDebuggerWindow methodsFor: 'GUI building' stamp: 'NPM 12/11/2021 13:30:59'!
buildMorphicWindow
	"Open a full morphic debugger with the given label"

	| bottomMorph |

	stackList _ PluggableListMorph
		model: model 
		listGetter: #contextStackList
		indexGetter: #contextStackIndex
		indexSetter: #toggleContextStackIndex:
		mainView: self
		menuGetter: #contextStackMenu
		keystrokeAction: #contextStackKey:from:.

	receiverInspector _ PluggableListMorph
			model: model receiverInspector
			listGetter: #fieldList
			indexGetter: #selectionIndex 
			indexSetter: #toggleIndex:
			mainView: self
			menuGetter: #receiverFieldListMenu
			keystrokeAction: #inspectorKey:from:.
	receiverInspector doubleClickSelector: #inspectSelection.
	receiverInspectorText _ (TextModelMorph
			textProvider: model receiverInspector
			textGetter: #acceptedContents 
			textSetter: #accept:
			selectionGetter: #contentsSelection) emptyTextDisplayMessage: 'Receiver scope'.
	"contextVariableInspector _ PluggableListMorph
			model: model contextVariablesInspector 
			listGetter: #fieldList
			indexGetter: #selectionIndex 
			indexSetter: #toggleIndex:
			mainView: self
			menuGetter: #contextFieldListMenu
			keystrokeAction: #inspectorKey:from:.
	contextVariableInspector doubleClickSelector: #inspectSelection.
	contextVariableInspectorText _ (TextModelMorph
			textProvider: model contextVariablesInspector
			textGetter: #acceptedContents 
			textSetter: #accept:
			selectionGetter: #contentsSelection) emptyTextDisplayMessage: 'Context scope'."

	bottomMorph _ LayoutMorph newRow.
	bottomMorph
		addMorph: receiverInspector proportionalWidth: 0.2;
		addAdjusterAndMorph: receiverInspectorText proportionalWidth: 0.3;
		addAdjusterAndMorph: (TemporaryVariablesInspectorMorph model: model contextVariablesInspector) proportionalWidth: 0.5.";
		addAdjusterAndMorph: contextVariableInspector proportionalWidth: 0.2;
		addAdjusterAndMorph: contextVariableInspectorText proportionalWidth: 0.3."

	self layoutMorph
		addMorph: stackList proportionalHeight: 0.25;
		addAdjusterAndMorph: self buildLowerPanes proportionalHeight: 0.55;
		addAdjusterAndMorph: bottomMorph proportionalHeight: 0.2! !

!AdvancedDebuggerWindow methodsFor: 'user interface' stamp: 'NPM 12/11/2021 13:23:19'!
okToChangeCodePane

	| okToLooseChanges |
	
	okToLooseChanges _ self canDiscardEditsOf: codePane.
	okToLooseChanges ifTrue: [
		receiverInspectorText disregardUnacceptedEdits.
		"contextVariableInspectorText disregardUnacceptedEdits" ].
	
	^okToLooseChanges ! !

!TemporaryVariable methodsFor: 'evaluating' stamp: 'NPM 12/11/2021 13:43:23'!
value

	^ context debuggerMap namedTempAt: index in: context! !

!TemporaryVariable methodsFor: 'initialization' stamp: 'NPM 12/11/2021 13:18:15'!
initializeNamed: aName at: anIndex in: aContext 

	name := aName.
	index := anIndex.
	context := aContext.! !

!TemporaryVariable class methodsFor: 'instance creation' stamp: 'NPM 12/11/2021 13:17:51'!
named: aName at: anIndex in: aContext 
	
	^ self
		new
		initializeNamed: aName
		at: anIndex
		in: aContext! !

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
