'From Cuis 5.0 [latest update: #4913] on 30 January 2022 at 11:41:50 am'!
'Description '!
!provides: 'Tools-AdvancedDebugger' 1 9!
SystemOrganization addCategory: #'Tools-AdvancedDebugger'!
SystemOrganization addCategory: #'Tools-AdvancedDebugger-UI'!


!classDefinition: #WatchExpressionEditor category: #'Tools-AdvancedDebugger'!
Workspace subclass: #WatchExpressionEditor
	instanceVariableNames: 'context acceptedWatchExpression acceptedWatchName'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Tools-AdvancedDebugger'!
!classDefinition: 'WatchExpressionEditor class' category: #'Tools-AdvancedDebugger'!
WatchExpressionEditor class
	instanceVariableNames: ''!

!classDefinition: #ContextVariablesInspectorToTemporaryVariablesInspectorAdapter category: #'Tools-AdvancedDebugger-UI'!
ContextVariablesInspector subclass: #ContextVariablesInspectorToTemporaryVariablesInspectorAdapter
	instanceVariableNames: 'temporaryVariablesInspector'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Tools-AdvancedDebugger-UI'!
!classDefinition: 'ContextVariablesInspectorToTemporaryVariablesInspectorAdapter class' category: #'Tools-AdvancedDebugger-UI'!
ContextVariablesInspectorToTemporaryVariablesInspectorAdapter class
	instanceVariableNames: ''!

!classDefinition: #DebuggerExpressionMorph category: #'Tools-AdvancedDebugger-UI'!
LayoutMorph subclass: #DebuggerExpressionMorph
	instanceVariableNames: 'debuggerExpression'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Tools-AdvancedDebugger-UI'!
!classDefinition: 'DebuggerExpressionMorph class' category: #'Tools-AdvancedDebugger-UI'!
DebuggerExpressionMorph class
	instanceVariableNames: ''!

!classDefinition: #WatchExpressionMorph category: #'Tools-AdvancedDebugger-UI'!
DebuggerExpressionMorph subclass: #WatchExpressionMorph
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Tools-AdvancedDebugger-UI'!
!classDefinition: 'WatchExpressionMorph class' category: #'Tools-AdvancedDebugger-UI'!
WatchExpressionMorph class
	instanceVariableNames: ''!

!classDefinition: #TemporaryVariablesInspectorMorph category: #'Tools-AdvancedDebugger-UI'!
LayoutMorph subclass: #TemporaryVariablesInspectorMorph
	instanceVariableNames: 'temporaryVariablesInspector temporaryVariablesMorph'
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

!classDefinition: #WatchExpressionEditorWindow category: #'Tools-AdvancedDebugger-UI'!
SystemWindow subclass: #WatchExpressionEditorWindow
	instanceVariableNames: 'acceptBlock resultLabel nameInput'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Tools-AdvancedDebugger-UI'!
!classDefinition: 'WatchExpressionEditorWindow class' category: #'Tools-AdvancedDebugger-UI'!
WatchExpressionEditorWindow class
	instanceVariableNames: ''!

!classDefinition: #DebuggerExpression category: #'Tools-AdvancedDebugger'!
Object subclass: #DebuggerExpression
	instanceVariableNames: 'name context lastReadValue changed isPinnedToDebugger'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Tools-AdvancedDebugger'!
!classDefinition: 'DebuggerExpression class' category: #'Tools-AdvancedDebugger'!
DebuggerExpression class
	instanceVariableNames: ''!

!classDefinition: #TemporaryVariable category: #'Tools-AdvancedDebugger'!
DebuggerExpression subclass: #TemporaryVariable
	instanceVariableNames: 'index'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Tools-AdvancedDebugger'!
!classDefinition: 'TemporaryVariable class' category: #'Tools-AdvancedDebugger'!
TemporaryVariable class
	instanceVariableNames: ''!

!classDefinition: #WatchExpression category: #'Tools-AdvancedDebugger'!
DebuggerExpression subclass: #WatchExpression
	instanceVariableNames: 'expressionBlock expression'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Tools-AdvancedDebugger'!
!classDefinition: 'WatchExpression class' category: #'Tools-AdvancedDebugger'!
WatchExpression class
	instanceVariableNames: ''!

!classDefinition: #TemporaryVariablesInspector category: #'Tools-AdvancedDebugger'!
Object subclass: #TemporaryVariablesInspector
	instanceVariableNames: 'context a pinnedTemporaryVariables watches'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Tools-AdvancedDebugger'!
!classDefinition: 'TemporaryVariablesInspector class' category: #'Tools-AdvancedDebugger'!
TemporaryVariablesInspector class
	instanceVariableNames: ''!


!DebuggerExpression methodsFor: 'accessing' stamp: 'NPM 1/5/2022 02:20:14'!
name

	^ name! !

!DebuggerExpression methodsFor: 'printing' stamp: 'NPM 1/5/2022 02:20:14'!
printOn: aStream

	aStream
		nextPut: $<;
		nextPutAll: name;
		nextPut: $=;
		nextPutAll: self value displayStringOrText;
		nextPut: $>
		! !

!WatchExpressionEditor methodsFor: 'as yet unclassified' stamp: 'NPM 1/7/2022 22:19:32'!
actualWatchExpression

	^ DebuggerExpression
		watchNamed: acceptedWatchName
		toEvaluate: self actualContents
		in: context! !

!WatchExpressionEditor methodsFor: 'as yet unclassified' stamp: 'NPM 1/7/2022 22:19:41'!
applyEdits
	
	acceptedWatchExpression
		renameTo: acceptedWatchName
		andChangeExpressionTo: self actualContents .! !

!WatchExpressionEditor methodsFor: 'as yet unclassified' stamp: 'NPM 1/30/2022 11:24:48'!
context: aMethodContext 

	context _ aMethodContext.

	aMethodContext tempNames withIndexDo: [ :temporaryName :temporaryIndex| 
		bindings
			at: temporaryName
			put: (aMethodContext debuggerMap namedTempAt: temporaryIndex in: aMethodContext) ]! !

!WatchExpressionEditor methodsFor: 'as yet unclassified' stamp: 'NPM 1/1/2022 12:49:38'!
doItContext
	"Answer the object that should be informed of the result of evaluating a
	text selection."

	^ context ! !

!WatchExpressionEditor methodsFor: 'as yet unclassified' stamp: 'NPM 1/4/2022 11:40:10'!
doItReceiver
	"Answer the object that should be informed of the result of evaluating a
	text selection."

	^ context receiver! !

!WatchExpressionEditor methodsFor: 'as yet unclassified' stamp: 'NPM 1/10/2022 17:19:40'!
renameWatch: newName 
	
	acceptedWatchName _ newName.! !

!WatchExpressionEditor methodsFor: 'as yet unclassified' stamp: 'NPM 1/7/2022 22:19:48'!
watchExpression: aWatchExpression 
	
	
	acceptedWatchExpression _ aWatchExpression.
	acceptedWatchName _ acceptedWatchExpression name.
	
	self context: aWatchExpression context.
	self actualContents: aWatchExpression expression.! !

!WatchExpressionEditor methodsFor: 'as yet unclassified' stamp: 'NPM 1/7/2022 22:19:32'!
watchName
	
	^ acceptedWatchName! !

!ContextVariablesInspectorToTemporaryVariablesInspectorAdapter methodsFor: 'accessing' stamp: 'NPM 1/7/2022 22:05:37'!
object: aMethodContext 
	
	super object: aMethodContext.
	
	temporaryVariablesInspector context: aMethodContext.! !

!ContextVariablesInspectorToTemporaryVariablesInspectorAdapter methodsFor: 'accessing' stamp: 'NPM 1/7/2022 22:05:37'!
update
	
	super update.
	
	temporaryVariablesInspector update! !

!ContextVariablesInspectorToTemporaryVariablesInspectorAdapter methodsFor: 'initialization' stamp: 'NPM 1/10/2022 17:30:05'!
initializeFor: aTemporaryVariablesInspector 
	
	temporaryVariablesInspector := aTemporaryVariablesInspector.! !

!ContextVariablesInspectorToTemporaryVariablesInspectorAdapter methodsFor: 'watches' stamp: 'NPM 1/7/2022 22:05:37'!
addWatchToEvaluate: aSmalltalkExpression 
	
	| watch |
	watch _ DebuggerExpression
		watchNamed: aSmalltalkExpression
		toEvaluate: aSmalltalkExpression
		in: temporaryVariablesInspector context.
		
	temporaryVariablesInspector addWatch: watch! !

!ContextVariablesInspectorToTemporaryVariablesInspectorAdapter class methodsFor: 'instance creation' stamp: 'NPM 12/30/2021 14:39:53'!
for: aTemporaryVariablesInspector 
	
	^ self
		new
		initializeFor: aTemporaryVariablesInspector ! !

!DebuggerExpressionMorph methodsFor: 'context menu' stamp: 'NPM 1/5/2022 13:30:09'!
contextMenu
		
	^ (DynamicMenuBuilder
		buildTitled: debuggerExpression kind, ': ', debuggerExpression name
		targeting: debuggerExpression
		collectingMenuOptionsWith: #debuggerExpressionMenuFor:)
		addStayUpIcons;
		yourself
		
! !

!DebuggerExpressionMorph methodsFor: 'event handling' stamp: 'NPM 12/30/2021 18:15:06'!
mouseButton2Activity

	self contextMenu popUpInWorld: self world.! !

!DebuggerExpressionMorph methodsFor: 'event handling testing' stamp: 'NPM 12/30/2021 15:41:33'!
handlesMouseDown: aMouseButtonEvent

	^ true! !

!DebuggerExpressionMorph methodsFor: 'events-registering' stamp: 'NPM 1/5/2022 13:29:24'!
registerToDebuggerExpressionEvents
	
	debuggerExpression
		whenChangesSend: #refresh
		to: self! !

!DebuggerExpressionMorph methodsFor: 'initialization' stamp: 'NPM 12/30/2021 12:24:30'!
defaultColor

	^ Color transparent! !

!DebuggerExpressionMorph methodsFor: 'initialization' stamp: 'NPM 1/5/2022 13:29:24'!
initializeFor: aDebuggerExpression 

	debuggerExpression _ aDebuggerExpression.
	
	self
		initializeSubmorphs;
		registerToDebuggerExpressionEvents;
		refresh.! !

!DebuggerExpressionMorph methodsFor: 'initialization' stamp: 'NPM 12/30/2021 12:25:58'!
initializeSubmorphs

	self
		addMorph: (LabelMorph contents: '')
		layoutSpec: (LayoutSpec morphHeightProportionalWidth: 1)! !

!DebuggerExpressionMorph methodsFor: 'updating' stamp: 'NPM 1/5/2022 13:29:09'!
highlightColor

	^ debuggerExpression
		ifChanged: [ Color blue ]
		ifNotChanged: [ Color black ]! !

!DebuggerExpressionMorph methodsFor: 'updating' stamp: 'NPM 1/5/2022 13:29:09'!
pinLabel
	
	^ debuggerExpression isPinnedToDebugger
		ifTrue: [ '[pinned]' ]
		ifFalse: [ '' ]! !

!DebuggerExpressionMorph methodsFor: 'updating' stamp: 'NPM 1/5/2022 13:29:09'!
refresh
	
	self firstSubmorph 
		contents: (self pinLabel, ' ', debuggerExpression name, ' ', debuggerExpression value displayStringOrText);
		color: self highlightColor.
		
	self morphExtent: self firstSubmorph morphExtent! !

!DebuggerExpressionMorph class methodsFor: 'instance creation' stamp: 'NPM 1/5/2022 13:28:57'!
for: aDebuggerExpression 
	
	^ self
		newRow
		initializeFor: aDebuggerExpression ! !

!DebuggerExpressionMorph class methodsFor: 'context menu' stamp: 'NPM 1/5/2022 13:30:01'!
debuggerExpressionMenuFor: aTemporaryVariable
	
	^ {
		{
			#itemGroup 	 	-> 		1.
			#itemOrder  	 	-> 		1.
			#label  			-> 	(aTemporaryVariable isPinnedToDebugger ifTrue: [ 'Unpin' ] ifFalse: [ 'Pin' ]).
			#selector       		-> 		#togglePinnedToDebugger.
		} asDictionary.
			
	   }! !

!DebuggerExpressionMorph class methodsFor: 'as yet unclassified' stamp: 'NPM 1/5/2022 13:33:14'!
forWatch: aWatchExpression 
	
	^ WatchExpressionMorph for: aWatchExpression! !

!WatchExpressionMorph methodsFor: 'actions' stamp: 'NPM 1/10/2022 17:23:52'!
edit
	
	WatchExpressionEditorWindow openToEdit: debuggerExpression ! !

!WatchExpressionMorph methodsFor: 'context menu' stamp: 'NPM 1/7/2022 17:57:22'!
contextMenu

	^ super contextMenu
		addLine;
		add: 'Edit' target: self action: #edit;
		add: 'Remove' target: debuggerExpression action: #remove;
		yourself! !

!WatchExpressionMorph methodsFor: 'events-registering' stamp: 'NPM 1/30/2022 11:27:13'!
registerToDebuggerExpressionEvents

	super registerToDebuggerExpressionEvents.
	
"	debuggerExpression
		whenRenamedSend: #refresh
		to: self."! !

!TemporaryVariablesInspectorMorph methodsFor: 'events-registering' stamp: 'NPM 12/30/2021 14:34:07'!
registerToTemporaryVariablesInspectorEvents

	temporaryVariablesInspector
		whenContextChangesSend: #reloadTemporaryVariables
		to: self! !

!TemporaryVariablesInspectorMorph methodsFor: 'initialization' stamp: 'NPM 1/6/2022 20:22:21'!
initializeOn: aTemporaryVariablesInspector

	temporaryVariablesInspector _ aTemporaryVariablesInspector.
	temporaryVariablesMorph _ LayoutMorph newColumn.
	
	self
		addMorphUseAll: temporaryVariablesMorph;
		registerToTemporaryVariablesInspectorEvents.! !

!TemporaryVariablesInspectorMorph methodsFor: 'updating' stamp: 'NPM 1/5/2022 13:31:47'!
reloadTemporaryVariables
		
	temporaryVariablesMorph removeAllMorphs.

	(temporaryVariablesInspector pinnedTemporaryVariables, temporaryVariablesInspector temporaryVariables)
		do: [ :temporaryVariable |
			temporaryVariablesMorph
				addMorph: (DebuggerExpressionMorph for: temporaryVariable)
				layoutSpec: (LayoutSpec morphHeightProportionalWidth: 1) ].
			
	temporaryVariablesInspector watchExpressions
		do: [ :watchExpression |
			temporaryVariablesMorph
				addMorph: (DebuggerExpressionMorph forWatch: watchExpression)
				layoutSpec: (LayoutSpec morphHeightProportionalWidth: 1) ].

	! !

!TemporaryVariablesInspectorMorph methodsFor: 'as yet unclassified' stamp: 'NPM 1/6/2022 20:24:56'!
contextMenu
	
	^ (DynamicMenuBuilder
		buildTitled: 'Temporary variables'
		targeting: self
		collectingMenuOptionsWith: #temporaryVariablesInspectorContextMenuFor:)
		addStayUpIcons;
		yourself
		! !

!TemporaryVariablesInspectorMorph methodsFor: 'as yet unclassified' stamp: 'NPM 1/10/2022 17:24:03'!
createWatchExpression
	
	| newWatchExpression editor |
	newWatchExpression _ DebuggerExpression watchTemplateFor: temporaryVariablesInspector context.
	
	editor _ WatchExpressionEditorWindow
		openToAdd: newWatchExpression
		onAcceptDo: [ temporaryVariablesInspector addWatch: newWatchExpression ].
		
	editor openInWorld! !

!TemporaryVariablesInspectorMorph methodsFor: 'as yet unclassified' stamp: 'NPM 1/6/2022 20:22:55'!
handlesMouseDown: aMouseButtonEvent

	^ true! !

!TemporaryVariablesInspectorMorph methodsFor: 'as yet unclassified' stamp: 'NPM 1/6/2022 20:23:24'!
mouseButton2Activity

	self contextMenu popUpInWorld: self world.! !

!TemporaryVariablesInspectorMorph class methodsFor: 'instance creation' stamp: 'NPM 12/30/2021 14:34:28'!
on: aTemporaryVariablesInspector

	^ self
		newColumn
		initializeOn: aTemporaryVariablesInspector

	! !

!TemporaryVariablesInspectorMorph class methodsFor: 'instance creation' stamp: 'NPM 1/6/2022 20:26:16'!
temporaryVariablesInspectorContextMenuFor: aTemporaryVariablesInspectorMorph

	^ {
		{
			#itemGroup 	 	-> 		1.
			#itemOrder  	 	-> 		1.
			#label  			-> 	'Add watch...'.
			#selector       		-> 		#createWatchExpression.
		} asDictionary.
			
	   }! !

!AdvancedDebuggerWindow methodsFor: 'GUI building' stamp: 'NPM 12/30/2021 14:41:55'!
buildMorphicWindow
	"Open a full morphic debugger with the given label"

	| bottomMorph temporaryVariablesInspector |
	
	temporaryVariablesInspector _ TemporaryVariablesInspector new.
	model contextVariablesInspector become: (ContextVariablesInspectorToTemporaryVariablesInspectorAdapter for: temporaryVariablesInspector).

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
	contextVariableInspector doubleClickSelector: #inspectSelection."
	contextVariableInspectorText _ (TextModelMorph
			textProvider: model contextVariablesInspector
			textGetter: #acceptedContents 
			textSetter: #accept:
			selectionGetter: #contentsSelection) emptyTextDisplayMessage: 'Context scope'.

	bottomMorph _ LayoutMorph newRow.
	bottomMorph
		addMorph: receiverInspector proportionalWidth: 0.2;
		addAdjusterAndMorph: receiverInspectorText proportionalWidth: 0.3;
		addAdjusterAndMorph: (TemporaryVariablesInspectorMorph on: temporaryVariablesInspector) proportionalWidth: 0.5.
		"addAdjusterAndMorph: contextVariableInspector proportionalWidth: 0.2;
		addAdjusterAndMorph: contextVariableInspectorText proportionalWidth: 0.3."

	self layoutMorph
		addMorph: stackList proportionalHeight: 0.25;
		addAdjusterAndMorph: self buildLowerPanes proportionalHeight: 0.55;
		addAdjusterAndMorph: bottomMorph proportionalHeight: 0.2! !

!WatchExpressionEditorWindow methodsFor: 'GUI building' stamp: 'NPM 1/6/2022 20:17:35'!
buildAcceptButton

	^ PluggableButtonMorph model: self action: #accept label: 'Accept'! !

!WatchExpressionEditorWindow methodsFor: 'GUI building' stamp: 'NPM 1/6/2022 20:17:42'!
buildCancelButton

	^ PluggableButtonMorph model: self action: #cancel label: 'Cancel'! !

!WatchExpressionEditorWindow methodsFor: 'GUI building' stamp: 'NPM 1/6/2022 21:05:14'!
buildLabel: aLabel

	^ (LabelMorph contents: aLabel) emphasis: 1! !

!WatchExpressionEditorWindow methodsFor: 'GUI building' stamp: 'NPM 1/30/2022 11:19:00'!
buildMorphicCodePane

	^ (TextModelMorph withModel: model)
		askBeforeDiscardingEdits: false;
		"NPM: Refresh actual contents because model always have an expression (either a template or an actual expression if an existing watch is being edited).
		 If I don't do this, code will not be sytled the first time the window is opened."
		updateActualContents ! !

!WatchExpressionEditorWindow methodsFor: 'GUI building' stamp: 'NPM 1/6/2022 21:23:16'!
buildMorphicWindow

	resultLabel _ LabelMorph contents: ''.

	self layoutMorph
		addMorphKeepMorphHeight: (self buildLabel:  'Name');
		addMorph: self buildNameInput fixedHeight: self defaultButtonPaneHeight;
		addMorphKeepMorphHeight: (self buildLabel:  'Expression');
		addMorphUseAll: self buildMorphicCodePane;
		addMorphKeepMorphHeight: (self buildLabel:  'Result (live updated)');
		addMorph: resultLabel fixedHeight: (self defaultButtonPaneHeight * 2);
		addMorph: self buildToolbar fixedHeight: self defaultButtonPaneHeight.
		
	! !

!WatchExpressionEditorWindow methodsFor: 'GUI building' stamp: 'NPM 1/7/2022 17:46:34'!
buildNameInput

	^ nameInput _ (TextModelMorph textProvider: model textGetter: #watchName textSetter: #renameWatch:) askBeforeDiscardingEdits: false! !

!WatchExpressionEditorWindow methodsFor: 'GUI building' stamp: 'NPM 1/6/2022 20:32:30'!
buildToolbar
	
	^ LayoutMorph newRow
		addMorph: self buildAcceptButton;
		addMorph: self buildCancelButton! !

!WatchExpressionEditorWindow methodsFor: 'actions' stamp: 'NPM 1/10/2022 17:28:57'!
accept
	
	nameInput editor acceptContents.
	model applyEdits.
	acceptBlock value.
	
	self closeBoxHit.
! !

!WatchExpressionEditorWindow methodsFor: 'actions' stamp: 'NPM 1/4/2022 10:48:28'!
cancel

	 self closeBoxHit! !

!WatchExpressionEditorWindow methodsFor: 'initialization' stamp: 'NPM 1/10/2022 17:28:33'!
acceptBlock: aBlock 
	
	acceptBlock _ aBlock ! !

!WatchExpressionEditorWindow methodsFor: 'stepping' stamp: 'NPM 1/7/2022 22:18:32'!
stepAt: millisecondSinceLast

	| result |
	result _ [ 
		[ model actualWatchExpression value displayStringOrText ]
			valueWithin: 500 milliSeconds
			onTimeout: [  'evaluation timed out' ] ]
		on: Error
		do: [ 'evaluation failed' ].
		
	resultLabel contents: result 
	
	! !

!WatchExpressionEditorWindow methodsFor: 'stepping' stamp: 'NPM 1/6/2022 21:22:24'!
stepTime

	^ 150 "milliseconds"! !

!WatchExpressionEditorWindow methodsFor: 'stepping' stamp: 'NPM 1/6/2022 21:15:00'!
wantsSteps
	"Return true if the receiver wants to its #step or #stepAt: methods be run ALL THE TIME.
	Morphs that send #startStepping and #stopStepping at appropriate times (i.e. when they are already in the world!!) don't need to answer true to this message"

	^true! !

!WatchExpressionEditorWindow class methodsFor: 'instance creation' stamp: 'NPM 1/10/2022 17:25:35'!
open: aWatchExpression label: aLabel onAcceptDo: acceptBlock
	
	^ (self open: (WatchExpressionEditor new watchExpression: aWatchExpression) label: aLabel)
		acceptBlock: acceptBlock! !

!WatchExpressionEditorWindow class methodsFor: 'instance creation' stamp: 'NPM 1/10/2022 17:25:30'!
openToAdd: aWatchExpression onAcceptDo: acceptBlock

	^ self
		open: aWatchExpression
		label:  'Add Watch Expression'
		onAcceptDo: acceptBlock! !

!WatchExpressionEditorWindow class methodsFor: 'instance creation' stamp: 'NPM 1/10/2022 17:25:17'!
openToEdit: aWatchExpression

	^ self
		open: aWatchExpression
		label:  'Edit Watch Expression'
		onAcceptDo: []! !

!WatchExpressionEditorWindow class methodsFor: 'menu' stamp: 'NPM 1/6/2022 20:11:38'!
smalltalkEditorMenuOptions

	^`{
			{
				#itemGroup 		-> 		11.
				#itemOrder 		-> 		11.
				#label 			-> 		'Add to watches'.
				#selector 		-> 		#addWatchFromSelection.
			} asDictionary.
			
		}`! !

!DebuggerExpression methodsFor: 'accessing' stamp: 'NPM 1/5/2022 11:30:05'!
kind
	
	self subclassResponsibility! !

!DebuggerExpression methodsFor: 'evaluating' stamp: 'NPM 1/5/2022 02:35:21'!
read

	self subclassResponsibility ! !

!DebuggerExpression methodsFor: 'evaluating' stamp: 'NPM 1/5/2022 02:20:14'!
refresh
	
	| previousValue |
	previousValue _ lastReadValue.
	
	changed _ previousValue ~= self value.
	
	self triggerChangedEvent.
	
	! !

!DebuggerExpression methodsFor: 'evaluating' stamp: 'NPM 1/5/2022 02:35:21'!
value

	lastReadValue _ self read.
	
	^ lastReadValue! !

!DebuggerExpression methodsFor: 'events-registering' stamp: 'NPM 1/5/2022 02:20:14'!
changedEventName

	^ #changed! !

!DebuggerExpression methodsFor: 'events-registering' stamp: 'NPM 1/5/2022 02:20:14'!
triggerChangedEvent
	
	self triggerEvent: self changedEventName! !

!DebuggerExpression methodsFor: 'events-registering' stamp: 'NPM 1/5/2022 02:20:14'!
whenChangesSend: aMessageSelector to: anObject 
	
	self
		when: self changedEventName
		send: aMessageSelector
		to: anObject! !

!DebuggerExpression methodsFor: 'initialization' stamp: 'NPM 1/7/2022 22:06:39'!
initializeNamed: aName definedIn: aContext 

	name _ aName.
	context _ aContext.
	changed _ false.
	isPinnedToDebugger _ false.! !

!DebuggerExpression methodsFor: 'pinning to debugger' stamp: 'NPM 1/5/2022 02:20:14'!
isPinnedToDebugger
	
	^ isPinnedToDebugger ! !

!DebuggerExpression methodsFor: 'pinning to debugger' stamp: 'NPM 1/5/2022 02:20:14'!
togglePinnedToDebugger

	isPinnedToDebugger _ isPinnedToDebugger not.
	
	self triggerChangedEvent.! !

!DebuggerExpression methodsFor: 'testing' stamp: 'NPM 1/5/2022 02:20:14'!
ifChanged: changedBlock ifNotChanged: notChangedBlock 
	
	^ changed 
		ifTrue: changedBlock
		ifFalse: notChangedBlock! !

!DebuggerExpression methodsFor: 'testing' stamp: 'NPM 1/5/2022 02:20:14'!
isNamed: aName

	^ name = aName! !

!DebuggerExpression class methodsFor: 'instance creation' stamp: 'NPM 1/5/2022 02:44:44'!
temporaryVariablesDefinedIn: aContext 
	
	^ TemporaryVariable allDefinedIn: aContext! !

!DebuggerExpression class methodsFor: 'instance creation' stamp: 'NPM 1/5/2022 18:00:12'!
watchNamed: aName toEvaluate: aBlock in: aContext  
	
	^ WatchExpression named: aName toEvaluate: aBlock in: aContext! !

!DebuggerExpression class methodsFor: 'instance creation' stamp: 'NPM 1/7/2022 22:08:24'!
watchTemplateFor: aContext

	^ WatchExpression templateFor: aContext! !

!TemporaryVariable methodsFor: 'evaluating' stamp: 'NPM 1/5/2022 02:35:21'!
read

	^ context debuggerMap namedTempAt: index in: context.! !

!TemporaryVariable methodsFor: 'initialization' stamp: 'NPM 1/5/2022 02:21:02'!
initializeIndex

	index _ context tempNames indexOf: name! !

!TemporaryVariable methodsFor: 'initialization' stamp: 'NPM 1/5/2022 17:47:09'!
initializeNamed: aName definedIn: aContext 

	super initializeNamed: aName definedIn: aContext.
	
	self initializeIndex.! !

!TemporaryVariable methodsFor: 'testing' stamp: 'NPM 1/5/2022 02:37:11'!
isDefinedIn: aContext 
	
	^ context = aContext! !

!TemporaryVariable methodsFor: 'as yet unclassified' stamp: 'NPM 1/5/2022 11:30:24'!
kind
	
	^ 'Temporary variable'! !

!TemporaryVariable class methodsFor: 'instance creation' stamp: 'NPM 1/5/2022 02:44:29'!
allDefinedIn: aContext 

	| definingContexstByTemporaryNames |
	definingContexstByTemporaryNames _ aContext definingContextsByTemporaryNames.
	
	^ aContext tempNames collect: [ :temporaryName |
		self
			findOrCreateNamed: temporaryName
			definedIn: (definingContexstByTemporaryNames at: temporaryName) ].! !

!TemporaryVariable class methodsFor: 'instance creation' stamp: 'NPM 1/5/2022 02:43:50'!
findNamed: aName definedIn: aContext ifNone: noneBlock

	^ self allInstances
		detect: [ :temporaryVariable | (temporaryVariable isNamed: aName) and: [ temporaryVariable isDefinedIn: aContext ] ]
		ifNone: noneBlock
	
	! !

!TemporaryVariable class methodsFor: 'instance creation' stamp: 'NPM 1/5/2022 02:43:14'!
findOrCreateNamed: aName definedIn: aContext 

	^ TemporaryVariable
		findNamed: aName
		definedIn: aContext
		ifNone: [ TemporaryVariable named: aName definedIn: aContext ] 
	
	! !

!TemporaryVariable class methodsFor: 'instance creation' stamp: 'NPM 1/5/2022 02:44:07'!
named: aName definedIn: aContext 

	^ self
		new
		initializeNamed: aName
		definedIn: aContext! !

!WatchExpression methodsFor: 'accessing' stamp: 'NPM 1/6/2022 10:02:35'!
context
	
	^ context! !

!WatchExpression methodsFor: 'accessing' stamp: 'NPM 1/6/2022 10:30:21'!
expression
	
	^ expression copy! !

!WatchExpression methodsFor: 'accessing' stamp: 'NPM 1/5/2022 11:30:57'!
kind
	
	^ 'Watch expression'! !

!WatchExpression methodsFor: 'editing' stamp: 'NPM 1/7/2022 17:41:25'!
changeExpressionTo: anExpression  
	
	expression = anExpression ifTrue: [ ^ self ].
	expression _ anExpression.
	self initializeExpressionBlock.
	
	self triggerChangedEvent.
	
	! !

!WatchExpression methodsFor: 'editing' stamp: 'NPM 1/7/2022 17:49:01'!
renameTo: newName andChangeExpressionTo: aNewExpression  
	
	(name = newName and: [ expression = aNewExpression ])
		ifTrue: [ ^ self ].
	
	name _ newName.
	expression _ aNewExpression.

	self
		initializeExpressionBlock;	
		triggerChangedEvent.
	
	! !

!WatchExpression methodsFor: 'evaluating' stamp: 'NPM 1/5/2022 02:47:48'!
read
	
	^  [ lastReadValue _ expressionBlock value. 
		
		lastReadValue.
	] on: Error do: [ :error | 
	lastReadValue _ 'evaluation failed'.
		^ 'evaluation failed'
	]! !

!WatchExpression methodsFor: 'events-registering' stamp: 'NPM 1/30/2022 11:29:29'!
whenRemovedSend: aSelector to: anObject 
	
	self
		when: self removedEventName
		send: aSelector
		to: anObject
		with: self! !

!WatchExpression methodsFor: 'events-triggering' stamp: 'NPM 1/30/2022 11:29:29'!
remove
	
	self triggerEvent: self removedEventName! !

!WatchExpression methodsFor: 'events-triggering' stamp: 'NPM 1/30/2022 11:29:29'!
removedEventName

	^ #removed! !

!WatchExpression methodsFor: 'initialization' stamp: 'NPM 1/6/2022 10:56:12'!
initializeExpressionBlock
	
	| compiler method methodNode sourceCode |
	sourceCode _ String streamContents: [ :stream |
		Scanner selectionDoItSourceCodeHeaderWithContext: context notNil into: stream.
		stream nextPutAll: expression ].
	
	methodNode _ [
		compiler _ Compiler new.
		compiler		
			compileDoIt: sourceCode
			in: context receiver class
			context: context
			notifying: nil
			ifFail: [ self halt. ]]
		on: OutOfScopeNotification
		do: [ :ex | ex resume: true ].

	methodNode block returnLast.
	method _ methodNode generate.
	method methodNode: methodNode.
	
	
	expressionBlock _ [ compiler
		evaluateMethod: method
		to: context receiver
		logged: true
		profiled: false. ]! !

!WatchExpression methodsFor: 'initialization' stamp: 'NPM 1/7/2022 17:41:25'!
initializeNamed: aName toEvaluate: anExpressionBlock in: aContext  

	super initializeNamed: aName definedIn: aContext.

	self changeExpressionTo: anExpressionBlock ! !

!WatchExpression methodsFor: 'testing' stamp: 'NPM 1/7/2022 17:51:18'!
renameTo: newName
	
	name = newName ifTrue: [ ^ self ].
	
	name _ newName.

	self triggerRenamedEvent.
	
	! !

!WatchExpression class methodsFor: 'instance creation' stamp: 'NPM 1/5/2022 17:59:51'!
named: aName toEvaluate: anExpressionBlock in: aContext  
	
	
	^ self
		new
		initializeNamed: aName
		toEvaluate: anExpressionBlock
		in: aContext ! !

!WatchExpression class methodsFor: 'as yet unclassified' stamp: 'NPM 1/30/2022 11:13:41'!
templateFor: aContext 

	| expression |
	expression  _ '"Enter watch expression here"',
		String newLineString,
		String newLineString,
		'nil'.

	^ WatchExpression
		named: 'New watch'
		toEvaluate: expression
		in: aContext! !

!TemporaryVariablesInspector methodsFor: 'accessing' stamp: 'NPM 1/5/2022 02:52:44'!
context: aMethodContext 
	
	context = aMethodContext
		ifTrue: [ self refreshAllExpressions ]
		ifFalse: [ self loadTemporaryVariablesFrom: aMethodContext ].! !

!TemporaryVariablesInspector methodsFor: 'accessing' stamp: 'NPM 1/5/2022 02:55:30'!
initialize

	super initialize.
	
	pinnedTemporaryVariables _ OrderedCollection new.
	watches _ OrderedCollection new.! !

!TemporaryVariablesInspector methodsFor: 'accessing' stamp: 'NPM 1/5/2022 02:55:20'!
update
	
	self
		refreshTemporaryVariables;
		refreshWatches
	! !

!TemporaryVariablesInspector methodsFor: 'events-registering' stamp: 'NPM 12/28/2021 10:49:12'!
whenContextChangesSend: aMessageSelector to: anObject 
	
	self
		when: self contextChangedEventName
		send: aMessageSelector
		to: anObject! !

!TemporaryVariablesInspector methodsFor: 'events-triggering' stamp: 'NPM 12/27/2021 16:18:56'!
contextChangedEventName

	^ #contextChanged! !

!TemporaryVariablesInspector methodsFor: 'events-triggering' stamp: 'NPM 12/30/2021 18:33:47'!
refreshTemporaryVariables

	self temporaryVariables do: [ :temporaryVariable | temporaryVariable refresh ].! !

!TemporaryVariablesInspector methodsFor: 'events-triggering' stamp: 'NPM 12/27/2021 16:18:59'!
triggerContextChangedEvent

	self triggerEvent: self contextChangedEventName! !

!TemporaryVariablesInspector methodsFor: 'temporary variables' stamp: 'NPM 1/6/2022 14:11:07'!
loadTemporaryVariablesFrom: aMethodContext

	self initializePinnedTemporaryVariables.
	
	context _ aMethodContext.
	self refreshWatches; triggerContextChangedEvent! !

!TemporaryVariablesInspector methodsFor: 'temporary variables' stamp: 'NPM 1/5/2022 02:41:36'!
temporaryVariables
	
	context ifNil: [ ^ OrderedCollection new ].
	
	^ DebuggerExpression temporaryVariablesDefinedIn: context! !

!TemporaryVariablesInspector methodsFor: 'temporary variables - pinned' stamp: 'NPM 12/30/2021 18:21:45'!
initializePinnedTemporaryVariables

	pinnedTemporaryVariables _ self temporaryVariables
		select: [ :temporaryVariable | temporaryVariable isPinnedToDebugger ].
	
	self refreshPinnedTemporaryVariables! !

!TemporaryVariablesInspector methodsFor: 'temporary variables - pinned' stamp: 'NPM 12/30/2021 17:51:45'!
pinnedTemporaryVariables
	
	^ pinnedTemporaryVariables difference: self temporaryVariables! !

!TemporaryVariablesInspector methodsFor: 'temporary variables - pinned' stamp: 'NPM 12/30/2021 18:07:57'!
refreshPinnedTemporaryVariables
	
	pinnedTemporaryVariables do: [ :temporaryVariable | temporaryVariable refresh ]! !

!TemporaryVariablesInspector methodsFor: 'as yet unclassified' stamp: 'NPM 1/5/2022 13:38:50'!
addWatch: aWatch 
	
	watches add: aWatch.
	aWatch whenRemovedSend: #removeWatch: to: self.
	self triggerContextChangedEvent! !

!TemporaryVariablesInspector methodsFor: 'as yet unclassified' stamp: 'NPM 1/6/2022 19:54:41'!
addWatchToEvaluate: anSmalltalkExpression 
	self shouldBeImplemented.! !

!TemporaryVariablesInspector methodsFor: 'as yet unclassified' stamp: 'NPM 1/4/2022 11:58:06'!
context

	^ context! !

!TemporaryVariablesInspector methodsFor: 'as yet unclassified' stamp: 'NPM 1/5/2022 02:55:20'!
refreshAllExpressions
	
	self
		refreshPinnedTemporaryVariables;
		refreshTemporaryVariables;
		refreshWatches! !

!TemporaryVariablesInspector methodsFor: 'as yet unclassified' stamp: 'NPM 1/5/2022 02:55:30'!
refreshWatches
	
	watches do: [ :temporaryVariable | temporaryVariable refresh ].! !

!TemporaryVariablesInspector methodsFor: 'as yet unclassified' stamp: 'NPM 1/5/2022 13:40:19'!
removeWatch: aWatchExpression 
	
	watches remove: aWatchExpression.
	self triggerContextChangedEvent ! !

!TemporaryVariablesInspector methodsFor: 'as yet unclassified' stamp: 'NPM 1/5/2022 02:55:30'!
watchExpressions

	^ watches! !

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

!MethodContext methodsFor: '*Tools-AdvancedDebugger' stamp: 'NPM 12/13/2021 19:26:11'!
definingContextsByTemporaryNames
	
	| contextx |
	contextx _ OrderedCollection new.
	self outerContextsDo: [ :ctx | contextx addFirst: ctx ].
	
	^ contextx inject: Dictionary new into: [ :d :ctx |
		
		ctx tempNames do: [ :n | 
			
			
			d at: n ifAbsentPut: ctx.
			
			
			].
		
		
		d
		
		
		
		
		].
	
	! !

!SmalltalkEditor methodsFor: '*Tools-AdvancedDebugger' stamp: 'NPM 1/30/2022 11:41:33'!
addWatchFromSelection

	| textProvider |
	(model isKindOf: PluggableTextModel)
		ifFalse:  [ ^ self inform: 'Watches can only be added from the Debugger' ].
	
	textProvider _ model textProvider.
	
	(textProvider isKindOf: Debugger)
		ifFalse:  [ ^ self inform: 'Watches can only be added from the Debugger' ].
	
	textProvider
		contextVariablesInspector
		addWatchToEvaluate: self selection! !

!DynamicMenuBuilder methodsFor: '*Tools-AdvancedDebugger' stamp: 'NPM 12/30/2021 18:28:41'!
collectMenuOptions

	items := OrderedCollection new.
	self classesProvidingMenuOptions do: [ :aClass | items addAll: (aClass soleInstance perform: menuOptionsSelector withPossiblyWrongSizedArguments: {defaultTarget}) ].
	! !
