'From Cuis 5.0 [latest update: #4913] on 16 February 2022 at 3:05:26 am'!
'Description '!
!provides: 'Tools-AdvancedDebugger' 1 16!
SystemOrganization addCategory: #'Tools-AdvancedDebugger'!
SystemOrganization addCategory: #'Tools-AdvancedDebugger-UI'!
SystemOrganization addCategory: 'Tools-AdvancedDebugger-UI-Core'!


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
	instanceVariableNames: 'temporaryVariablesInspector shouldUpdateTemporariesVariablesInspector'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Tools-AdvancedDebugger-UI'!
!classDefinition: 'ContextVariablesInspectorToTemporaryVariablesInspectorAdapter class' category: #'Tools-AdvancedDebugger-UI'!
ContextVariablesInspectorToTemporaryVariablesInspectorAdapter class
	instanceVariableNames: ''!

!classDefinition: #DebuggerExpressionMorph category: #'Tools-AdvancedDebugger-UI'!
LayoutMorph subclass: #DebuggerExpressionMorph
	instanceVariableNames: 'debuggerExpression temporaryVariablesInspector'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Tools-AdvancedDebugger-UI'!
!classDefinition: 'DebuggerExpressionMorph class' category: #'Tools-AdvancedDebugger-UI'!
DebuggerExpressionMorph class
	instanceVariableNames: ''!

!classDefinition: #TemporaryVariableExpressionMorph category: #'Tools-AdvancedDebugger-UI'!
DebuggerExpressionMorph subclass: #TemporaryVariableExpressionMorph
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Tools-AdvancedDebugger-UI'!
!classDefinition: 'TemporaryVariableExpressionMorph class' category: #'Tools-AdvancedDebugger-UI'!
TemporaryVariableExpressionMorph class
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
	instanceVariableNames: 'temporaryVariablesInspector temporaryVariablesMorph container wVariablesMorph'
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

!classDefinition: #ADListMorph category: 'Tools-AdvancedDebugger-UI-Core'!
WidgetMorph subclass: #ADListMorph
	instanceVariableNames: 'firstItemPosition itemSeparatorGap scrollbar'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Tools-AdvancedDebugger-UI-Core'!
!classDefinition: 'ADListMorph class' category: 'Tools-AdvancedDebugger-UI-Core'!
ADListMorph class
	instanceVariableNames: ''!

!classDefinition: #SeparatorMorph category: 'Tools-AdvancedDebugger-UI-Core'!
WidgetMorph subclass: #SeparatorMorph
	instanceVariableNames: 'label'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Tools-AdvancedDebugger-UI-Core'!
!classDefinition: 'SeparatorMorph class' category: 'Tools-AdvancedDebugger-UI-Core'!
SeparatorMorph class
	instanceVariableNames: ''!

!classDefinition: #ADListMorphTest category: 'Tools-AdvancedDebugger-UI-Core'!
TestCase subclass: #ADListMorphTest
	instanceVariableNames: 'list'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Tools-AdvancedDebugger-UI-Core'!
!classDefinition: 'ADListMorphTest class' category: 'Tools-AdvancedDebugger-UI-Core'!
ADListMorphTest class
	instanceVariableNames: ''!

!classDefinition: #SlidingWindowScrollerTest category: 'Tools-AdvancedDebugger-UI-Core'!
TestCase subclass: #SlidingWindowScrollerTest
	instanceVariableNames: 'scroller2'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Tools-AdvancedDebugger-UI-Core'!
!classDefinition: 'SlidingWindowScrollerTest class' category: 'Tools-AdvancedDebugger-UI-Core'!
SlidingWindowScrollerTest class
	instanceVariableNames: ''!

!classDefinition: #DebuggerExpression category: #'Tools-AdvancedDebugger'!
Object subclass: #DebuggerExpression
	instanceVariableNames: 'isPinnedToDebugger'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Tools-AdvancedDebugger'!
!classDefinition: 'DebuggerExpression class' category: #'Tools-AdvancedDebugger'!
DebuggerExpression class
	instanceVariableNames: ''!

!classDefinition: #PseudoVariableDebuggerExpression category: #'Tools-AdvancedDebugger'!
DebuggerExpression subclass: #PseudoVariableDebuggerExpression
	instanceVariableNames: 'name value'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Tools-AdvancedDebugger'!
!classDefinition: 'PseudoVariableDebuggerExpression class' category: #'Tools-AdvancedDebugger'!
PseudoVariableDebuggerExpression class
	instanceVariableNames: ''!

!classDefinition: #VariableDebuggerExpression category: #'Tools-AdvancedDebugger'!
DebuggerExpression subclass: #VariableDebuggerExpression
	instanceVariableNames: 'name context lastReadValue changed'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Tools-AdvancedDebugger'!
!classDefinition: 'VariableDebuggerExpression class' category: #'Tools-AdvancedDebugger'!
VariableDebuggerExpression class
	instanceVariableNames: ''!

!classDefinition: #TemporaryVariable category: #'Tools-AdvancedDebugger'!
VariableDebuggerExpression subclass: #TemporaryVariable
	instanceVariableNames: 'index'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Tools-AdvancedDebugger'!
!classDefinition: 'TemporaryVariable class' category: #'Tools-AdvancedDebugger'!
TemporaryVariable class
	instanceVariableNames: ''!

!classDefinition: #WatchExpression category: #'Tools-AdvancedDebugger'!
VariableDebuggerExpression subclass: #WatchExpression
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

!classDefinition: #SlidingWindowScroller category: 'Tools-AdvancedDebugger-UI-Core'!
Object subclass: #SlidingWindowScroller
	instanceVariableNames: 'windowSize fragmentsToScroll totalHeightToScroll itemSeparationGap'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Tools-AdvancedDebugger-UI-Core'!
!classDefinition: 'SlidingWindowScroller class' category: 'Tools-AdvancedDebugger-UI-Core'!
SlidingWindowScroller class
	instanceVariableNames: ''!


!DebuggerExpression methodsFor: 'accessing' stamp: 'NPM 2/16/2022 01:37:22'!
name

	^ self subclassResponsibility! !

!DebuggerExpression methodsFor: 'printing' stamp: 'NPM 2/16/2022 01:40:35'!
printOn: aStream

	aStream
		nextPut: $<;
		nextPutAll: self name;
		nextPut: $=;
		nextPutAll: self value displayStringOrText;
		nextPut: $>
		! !

!PseudoVariableDebuggerExpression methodsFor: 'accessing' stamp: 'NPM 2/16/2022 01:44:11'!
name

	^ name! !

!VariableDebuggerExpression methodsFor: 'accessing' stamp: 'NPM 1/5/2022 02:20:14'!
name

	^ name! !

!WatchExpressionEditor methodsFor: 'as yet unclassified' stamp: 'NPM 2/16/2022 02:55:41'!
acceptContentsFrom: aTextModelMorph

	| owningWindow |
	owningWindow _ aTextModelMorph owningWindow.
	
	self assert: owningWindow class = WatchExpressionEditorWindow.
	
	owningWindow accept.! !

!WatchExpressionEditor methodsFor: 'as yet unclassified' stamp: 'NPM 2/16/2022 01:47:05'!
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

!ContextVariablesInspectorToTemporaryVariablesInspectorAdapter methodsFor: 'accessing' stamp: 'NPM 2/1/2022 00:21:03'!
object: aMethodContext 

	"I need to set this variable to false before sending #object: to avoid updating temporaryVariablesInspector twice:
	    - Once via super object: (triggers self update which updates temporaryVariablesInspector
	    - Once via temporaryVariablesInspector context:
	
	This is a hack, but it will do the trick for the time being.
	"
	[
		shouldUpdateTemporariesVariablesInspector _ false.
		super object: aMethodContext.
		temporaryVariablesInspector context: aMethodContext
	] ensure: [
		shouldUpdateTemporariesVariablesInspector _ true ]! !

!ContextVariablesInspectorToTemporaryVariablesInspectorAdapter methodsFor: 'accessing' stamp: 'NPM 2/1/2022 00:18:36'!
update
	
	
	super update.
	
	shouldUpdateTemporariesVariablesInspector ifTrue: [ 	temporaryVariablesInspector update ].! !

!ContextVariablesInspectorToTemporaryVariablesInspectorAdapter methodsFor: 'initialization' stamp: 'NPM 2/1/2022 00:21:36'!
initializeFor: aTemporaryVariablesInspector 
	
	temporaryVariablesInspector := aTemporaryVariablesInspector.
	shouldUpdateTemporariesVariablesInspector _ true.! !

!ContextVariablesInspectorToTemporaryVariablesInspectorAdapter methodsFor: 'watches' stamp: 'NPM 2/16/2022 00:40:46'!
addWatchToEvaluate: aSmalltalkExpression 
	
	temporaryVariablesInspector addWatchToEvaluate: aSmalltalkExpression! !

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

!DebuggerExpressionMorph methodsFor: 'initialization' stamp: 'NPM 2/16/2022 00:47:19'!
initializeFor: aDebuggerExpression in: aTemporaryVariablesInspector  

	debuggerExpression _ aDebuggerExpression.
	temporaryVariablesInspector _ aTemporaryVariablesInspector.
	
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

!DebuggerExpressionMorph class methodsFor: 'instance creation' stamp: 'NPM 2/16/2022 00:39:36'!
forTemporaryVariable: aTemporaryVariable in: aTemporaryVariablesInspector  
	
	^ TemporaryVariableExpressionMorph
		for: aTemporaryVariable
		in: aTemporaryVariablesInspector! !

!DebuggerExpressionMorph class methodsFor: 'instance creation' stamp: 'NPM 2/16/2022 00:54:09'!
forWatch: aWatchExpression in: aTemporaryVariablesInspector  
	
	^ WatchExpressionMorph
		for: aWatchExpression
		in: aTemporaryVariablesInspector! !

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

!TemporaryVariableExpressionMorph methodsFor: 'actions' stamp: 'NPM 2/16/2022 00:47:38'!
createWatch
	
	 temporaryVariablesInspector addWatchToEvaluate: debuggerExpression name.! !

!TemporaryVariableExpressionMorph methodsFor: 'context menu' stamp: 'NPM 2/16/2022 00:41:30'!
contextMenu

	^ super contextMenu
		addLine;
		add: 'Add to watches' target: self action: #createWatch;
		yourself! !

!TemporaryVariableExpressionMorph class methodsFor: 'instance creation' stamp: 'NPM 2/16/2022 00:39:28'!
for: aTemporaryVariable in: aTemporaryVariablesInspector  
	
	^ self
		newRow
		initializeFor: aTemporaryVariable
		in: aTemporaryVariablesInspector! !

!WatchExpressionMorph methodsFor: 'actions' stamp: 'NPM 2/16/2022 00:52:04'!
duplicateWatch
	
	temporaryVariablesInspector addWatch: debuggerExpression copy! !

!WatchExpressionMorph methodsFor: 'actions' stamp: 'NPM 1/10/2022 17:23:52'!
edit
	
	WatchExpressionEditorWindow openToEdit: debuggerExpression ! !

!WatchExpressionMorph methodsFor: 'context menu' stamp: 'NPM 2/16/2022 00:50:00'!
contextMenu

	^ super contextMenu
		addLine;
		add: 'Duplicate' target: self action: #duplicateWatch;
		add: 'Edit' target: self action: #edit;
		add: 'Remove' target: debuggerExpression action: #remove;
		yourself! !

!WatchExpressionMorph methodsFor: 'events-registering' stamp: 'NPM 1/30/2022 11:27:13'!
registerToDebuggerExpressionEvents

	super registerToDebuggerExpressionEvents.
	
"	debuggerExpression
		whenRenamedSend: #refresh
		to: self."! !

!WatchExpressionMorph class methodsFor: 'instance creation' stamp: 'NPM 2/16/2022 00:54:53'!
for: aDebuggerExpression in: aTemporaryVariablesInspector  
	
	^ self
		newRow
		initializeFor: aDebuggerExpression
		in: aTemporaryVariablesInspector ! !

!TemporaryVariablesInspectorMorph methodsFor: 'initialization' stamp: 'NPM 2/9/2022 00:43:03'!
initializeOn: aTemporaryVariablesInspector

	temporaryVariablesInspector _ aTemporaryVariablesInspector.
	temporaryVariablesMorph _ ADListMorph new
		separateItemsVerticallyBy: 2.
	
	self
		separation: 4;
		addMorphUseAll: temporaryVariablesMorph;
		registerToTemporaryVariablesInspectorEvents.! !

!TemporaryVariablesInspectorMorph methodsFor: 'events-registering' stamp: 'NPM 12/30/2021 14:34:07'!
registerToTemporaryVariablesInspectorEvents

	temporaryVariablesInspector
		whenContextChangesSend: #reloadTemporaryVariables
		to: self! !

!TemporaryVariablesInspectorMorph methodsFor: 'updating' stamp: 'NPM 2/16/2022 01:32:51'!
reloadTemporaryVariables
		
	temporaryVariablesMorph removeAllItems.
	
	temporaryVariablesInspector watchExpressions ifNotEmpty: [
		temporaryVariablesMorph addItem: (SeparatorMorph labeled: 'WATCHES').
		temporaryVariablesInspector watchExpressions
			do: [ :watchExpression |
				temporaryVariablesMorph addItem: (DebuggerExpressionMorph
					forWatch: watchExpression
					in: temporaryVariablesInspector ) ].
		temporaryVariablesMorph addItem: (KernelMorph new morphHeight: 10; color: Color transparent)
	].

	temporaryVariablesMorph addItem: (SeparatorMorph labeled: 'TEMPORARIES').
	temporaryVariablesMorph addItem: (DebuggerExpressionMorph
							forTemporaryVariable: temporaryVariablesInspector thisContextVariable
							in: temporaryVariablesInspector).
							
	(temporaryVariablesInspector pinnedTemporaryVariables, temporaryVariablesInspector temporaryVariables)
		do: [ :temporaryVariable |
			temporaryVariablesMorph
				addItem: (DebuggerExpressionMorph
							forTemporaryVariable: temporaryVariable
							in: temporaryVariablesInspector) ].
			
	
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

!TemporaryVariablesInspectorMorph methodsFor: 'as yet unclassified' stamp: 'NPM 2/16/2022 01:47:12'!
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

!WatchExpressionEditorWindow methodsFor: 'GUI building' stamp: 'NPM 2/16/2022 02:57:36'!
buildMorphicCodePane

	^ (TextModelMorph withModel: model)
		askBeforeDiscardingEdits: false;
		"NPM: Refresh actual contents because model always have an expression (either a template or an actual expression if an existing watch is being edited).
		 If I don't do this, code will not be sytled the first time the window is opened."
		updateActualContents;
		hasUnacceptedEdits: true;
		escAction: [ self cancel ]! !

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

!ADListMorph methodsFor: 'asserting' stamp: 'NPM 2/10/2022 10:40:39'!
verticalItemSeparationCannotBeNegativeErrorMessage
	
	^ 'Vertical items separation cannot be negative'! !

!ADListMorph methodsFor: 'drawing' stamp: 'NPM 2/8/2022 02:37:33'!
drawOn: aCanvas

	"NPM: do nothing"! !

!ADListMorph methodsFor: 'event handling testing' stamp: 'NPM 2/14/2022 19:27:10'!
handlesMouseScroll: aMouseScrollEvent
	
	^ self isScrollingEnabled and: [ aMouseScrollEvent isDirectionVertical ]! !

!ADListMorph methodsFor: 'events' stamp: 'NPM 2/14/2022 12:46:41'!
mouseScroll: aMouseEvent localPosition: localEventPosition

	aMouseEvent direction = #up
		ifTrue: [ ^ scrollbar scrollUp: 1 ].
	
	aMouseEvent direction = #down
		ifTrue: [ ^ scrollbar scrollDown: 1 ].! !

!ADListMorph methodsFor: 'geometry testing' stamp: 'NPM 2/4/2022 01:18:04'!
clipsSubmorphs

	^ true! !

!ADListMorph methodsFor: 'initialization' stamp: 'NPM 2/11/2022 19:54:41'!
initialize

	super initialize.
	
	firstItemPosition _ 0@0.
	itemSeparatorGap _ 0@0.
	
	self initializeScrollbar.
! !

!ADListMorph methodsFor: 'initialization' stamp: 'NPM 2/14/2022 19:44:33'!
initializeScrollbar

	scrollbar _ ScrollBar new
		model: self
		setValueSelector: #scrollBarValueChangedTo:.
		
	self addMorph: scrollbar.
	
	scrollbar hide.
	! !

!ADListMorph methodsFor: 'items' stamp: 'NPM 2/11/2022 11:11:34'!
addItem: anItem 
	
	self
		addMorphBack: anItem;
		updateScrollbar.! !

!ADListMorph methodsFor: 'items' stamp: 'NPM 2/14/2022 12:45:09'!
items

	^ submorphs copyWithout: scrollbar! !

!ADListMorph methodsFor: 'items' stamp: 'NPM 2/14/2022 12:46:00'!
removeAllItems
	
	self removeAllMorphsIn: self items! !

!ADListMorph methodsFor: 'items' stamp: 'NPM 2/16/2022 03:04:18'!
updateScrollbar
	
	| scrollSteps scroller |
	scroller _ self createScroller.
	scrollSteps _ scroller steps.

	scrollSteps strictlyPositive
		ifFalse: [ scrollbar hide ]
		ifTrue: [
			scrollbar interval: scroller percentageOfItemsVisible.
			scrollbar scrollDelta: 1/scrollSteps pageDelta: 1/scrollSteps.
			scrollbar show ].
	! !

!ADListMorph methodsFor: 'layout' stamp: 'NPM 2/14/2022 19:37:38'!
assertItemSeparationIsPositive: pixels

	^ pixels negative
		ifTrue: [ self error: self verticalItemSeparationCannotBeNegativeErrorMessage ]! !

!ADListMorph methodsFor: 'layout' stamp: 'NPM 2/14/2022 19:24:21'!
isScrollingEnabled

	^ scrollbar visible! !

!ADListMorph methodsFor: 'layout' stamp: 'NPM 2/14/2022 19:24:15'!
itemWidth

	^ self isScrollingEnabled
		ifTrue: [ scrollbar morphPosition x ]
		ifFalse: [ self morphWidth ] ! !

!ADListMorph methodsFor: 'layout' stamp: 'NPM 2/11/2022 11:14:53'!
layout: anItem in: aPosition

	"Layout anItem and return the position where the next item should be placed"
	
	anItem
		morphPosition: aPosition;
		morphWidth: self itemWidth;
		visible: anItem isWithinOwnerBounds.
	
	^ aPosition + (0@anItem morphHeight)! !

!ADListMorph methodsFor: 'layout' stamp: 'NPM 2/10/2022 02:17:23'!
layoutItems

	| nextItemPosition |
	nextItemPosition _ firstItemPosition.
	
	self items
		do: [ :item |  nextItemPosition _ self layout: item in: nextItemPosition ]
		separatedBy: [ nextItemPosition _ nextItemPosition + itemSeparatorGap ].! !

!ADListMorph methodsFor: 'layout' stamp: 'NPM 2/14/2022 12:46:36'!
layoutScrollbar

	scrollbar
		morphPosition: (self morphWidth - scrollbar morphWidth)@0;
		morphHeight: self morphHeight
		! !

!ADListMorph methodsFor: 'layout' stamp: 'NPM 2/11/2022 11:11:48'!
layoutSubmorphs

	
	self
		layoutScrollbar;
		layoutItems;
		layoutNeeded: false.! !

!ADListMorph methodsFor: 'layout' stamp: 'NPM 2/14/2022 19:37:23'!
separateItemsVerticallyBy: pixels 

	self assertItemSeparationIsPositive: pixels.
	
	itemSeparatorGap _ 0@pixels.

	self layoutSubmorphs ! !

!ADListMorph methodsFor: 'scrolling' stamp: 'NPM 2/14/2022 19:35:33'!
createScroller
	
	| scroller |
	scroller _ SlidingWindowScroller windowSize: self morphHeight.
	
	scroller separateItemsBy: itemSeparatorGap y.
	
	self items do: [ :item | scroller addItemToScroll:item morphHeight ].
	
	^ scroller! !

!ADListMorph methodsFor: 'scrolling' stamp: 'NPM 2/14/2022 19:35:04'!
scrollBarValueChangedTo: scrollPercentage 
	
	| requestedNumberOfScrollSteps offset |
	requestedNumberOfScrollSteps _ scrollbar numberOfScrollStepsFrom: scrollPercentage.

	offset _ self
		createScroller
		offsetUpTo: requestedNumberOfScrollSteps .
	
	firstItemPosition _ 0@(offset negated).

	self layoutSubmorphs ! !

!SeparatorMorph methodsFor: 'drawing' stamp: 'NPM 2/9/2022 00:57:46'!
drawOn: aCanvas

	| lineHeight |
	lineHeight _ label morphHeight / 2.
	
	aCanvas
		line: label morphWidth@lineHeight
		to: (self morphWidth@lineHeight)
		width: 1
		color: Color veryLightGray! !

!SeparatorMorph methodsFor: 'initialization' stamp: 'NPM 2/9/2022 00:56:46'!
initializeLabelWith: aTitle

	label _ (LabelMorph contents: aTitle, ' ')
		color: Color gray;
		font: (FontFamily defaultFamilyPointSize: 8)! !

!SeparatorMorph methodsFor: 'initialization' stamp: 'NPM 2/9/2022 00:58:27'!
initializeLabeled: aTitle
	
	super initialize.
	
	self initializeLabelWith: aTitle.
	self addMorph: label.
	self morphHeight: label morphHeight.
	! !

!SeparatorMorph class methodsFor: 'as yet unclassified' stamp: 'NPM 2/9/2022 00:58:27'!
labeled: aTitle
	
	^ self
		new
		initializeLabeled: aTitle! !

!ADListMorphTest methodsFor: 'assertions' stamp: 'NPM 2/9/2022 00:45:58'!
assert: anItem isVisible: isVisible at: aPosition 
	
	self assert: isVisible equals: anItem visible.
	self assert: aPosition equals: anItem morphPosition.! !

!ADListMorphTest methodsFor: 'assertions' stamp: 'NPM 2/9/2022 00:46:34'!
assert: anItem isVisibleAt: aPosition 
	
	self
		assert: anItem
		isVisible: true
		at: aPosition! !

!ADListMorphTest methodsFor: 'assertions' stamp: 'NPM 2/10/2022 10:48:46'!
assertHandlesMouseScrollEventGoing: aDirection 
	
	self
		assertHandlesMouseScrollGoing: aDirection
		equals: true.! !

!ADListMorphTest methodsFor: 'assertions' stamp: 'NPM 2/10/2022 10:48:46'!
assertHandlesMouseScrollGoing: aDirection equals: aBoolean 
	
	| mouseScrollEvent |
	mouseScrollEvent _ self createMouseScrollEventGoing: aDirection.
	
	self
		assert: aBoolean
		equals: (list handlesMouseScroll: mouseScrollEvent).! !

!ADListMorphTest methodsFor: 'assertions' stamp: 'NPM 2/9/2022 00:46:47'!
deny: anItem isVisibleAt: aPosition 
	
	self
		assert: anItem
		isVisible: false
		at: aPosition! !

!ADListMorphTest methodsFor: 'assertions' stamp: 'NPM 2/10/2022 10:48:46'!
denyHandlesMouseScrollEventGoing: aDirection 
	
	self
		assertHandlesMouseScrollGoing: aDirection
		equals: false.! !

!ADListMorphTest methodsFor: 'exercising' stamp: 'NPM 2/9/2022 00:49:53'!
addItemWithExtent: anExtent 
	
	| newItem |
	newItem _ self createItemWithExtent: anExtent.
	
	list addItem: newItem.
	
	^ newItem.! !

!ADListMorphTest methodsFor: 'exercising' stamp: 'NPM 2/9/2022 00:50:00'!
handleMouseScrollEventGoing: aDirection 
	
	list
		mouseScroll:  (self createMouseScrollEventGoing: aDirection)
		localPosition: nil.! !

!ADListMorphTest methodsFor: 'exercising' stamp: 'NPM 2/14/2022 19:47:29'!
simulateMouseScrollDownEvent
	
	self simulateMouseScrollEventGoing: #down! !

!ADListMorphTest methodsFor: 'exercising' stamp: 'NPM 2/14/2022 19:47:04'!
simulateMouseScrollEventGoing: aDirection
	
	| mouseScrollEvent |
	mouseScrollEvent _ self createMouseScrollEventGoing: aDirection.
	
	(list handlesMouseScroll: mouseScrollEvent)
		ifTrue: [ list mouseScroll: mouseScrollEvent localPosition: nil ]! !

!ADListMorphTest methodsFor: 'exercising' stamp: 'NPM 2/14/2022 19:47:17'!
simulateMouseScrollUpEvent
	
	self simulateMouseScrollEventGoing: #up! !

!ADListMorphTest methodsFor: 'setUp/tearDown' stamp: 'NPM 2/7/2022 09:24:45'!
setUp
	
	super setUp.

	list _ ADListMorph new.
! !

!ADListMorphTest methodsFor: 'test objects' stamp: 'NPM 2/9/2022 00:49:53'!
createItemWithExtent: anExtent

	^ KernelMorph new morphExtent: anExtent; color: Color random! !

!ADListMorphTest methodsFor: 'test objects' stamp: 'NPM 2/9/2022 00:50:34'!
createListWithExtent: anExtent

	list _ ADListMorph new.
	list morphExtent: anExtent! !

!ADListMorphTest methodsFor: 'test objects' stamp: 'NPM 2/9/2022 00:50:00'!
createMouseScrollEventGoing: aDirection

	^ MouseScrollEvent new
		setType: nil
		position: nil
		direction: aDirection
		buttons: nil
		hand: nil
		stamp: nil! !

!ADListMorphTest methodsFor: 'tests' stamp: 'NPM 2/7/2022 09:24:45'!
test001_ClipsSubmorphs

	self assert: list clipsSubmorphs.! !

!ADListMorphTest methodsFor: 'tests' stamp: 'NPM 2/9/2022 00:50:30'!
test002_StacksItems

	| item1 item2 item3 |
	self createListWithExtent: 50@50.
	item1 _ self addItemWithExtent: 10@10.
	item2 _ self addItemWithExtent: 10@10.
	item3 _ self addItemWithExtent: 10@10.

	list layoutSubmorphs .
	
	self assert: item1 isVisibleAt: 0@0.
	self assert: item2 isVisibleAt: 0@10.
	self assert: item3 isVisibleAt: 0@20.! !

!ADListMorphTest methodsFor: 'tests' stamp: 'NPM 2/9/2022 00:50:30'!
test003_DisplaysAllItemsWhenTheyFitPerfectlyIntheList

	| item1 item2 item3 |
	self createListWithExtent: 50@30.
	item1 _ self addItemWithExtent: 10@10.
	item2 _ self addItemWithExtent: 10@10.
	item3 _ self addItemWithExtent: 10@10.

	list layoutSubmorphs .
	
	self assert: item1 isVisibleAt: 0@0.
	self assert: item2 isVisibleAt: 0@10.
	self assert: item3 isVisibleAt: 0@20.! !

!ADListMorphTest methodsFor: 'tests' stamp: 'NPM 2/9/2022 00:50:30'!
test004_HidesItemsThatCannotBeDisplayed

	| item1 item2 item3 |
	self createListWithExtent: 50@20.
	item1 _ self addItemWithExtent: 10@10.
	item2 _ self addItemWithExtent: 10@10.
	item3 _ self addItemWithExtent: 10@10.

	list layoutSubmorphs .
	
	self assert: item1 isVisibleAt: 0@0.
	self assert: item2 isVisibleAt: 0@10.
	self deny: item3 isVisibleAt: 0@20.! !

!ADListMorphTest methodsFor: 'tests' stamp: 'NPM 2/9/2022 00:50:30'!
test005_DisplaysItemsThatArePartiallyVisible

	| item1 |
	self createListWithExtent: 50@5.
	item1 _ self addItemWithExtent: 10@10.

	list layoutSubmorphs .
	
	self assert: item1 isVisibleAt: 0@0.! !

!ADListMorphTest methodsFor: 'tests' stamp: 'NPM 2/11/2022 11:21:27'!
test006_AdjustsItemWidthsToFitTheList

	| item1 |
	self createListWithExtent: 50@10.
	item1 _ self addItemWithExtent: 10@10.

	list layoutSubmorphs.
	
	self assert: 50 equals: item1 morphWidth.! !

!ADListMorphTest methodsFor: 'tests' stamp: 'NPM 2/10/2022 10:30:58'!
test007_DoesNotNeedLayoutAfterLayingOutSubmorphs

	self createListWithExtent: 50@40.
	
	list layoutSubmorphs.
	
	self deny: list isLayoutNeeded ! !

!ADListMorphTest methodsFor: 'tests' stamp: 'NPM 2/11/2022 11:00:20'!
test008_SupportsSpecifyingAnItemSeparator

	| item1 item2 item3 |
	self createListWithExtent: 50@40.
	list separateItemsVerticallyBy: 5.
	item1 _ self addItemWithExtent: 10@10.
	item2 _ self addItemWithExtent: 10@10.
	item3 _ self addItemWithExtent: 10@10.

	list layoutSubmorphs .
	
	self assert: item1 isVisibleAt: 0@0.
	self assert: item2 isVisibleAt: 0@15.
	self assert: item3 isVisibleAt: 0@30! !

!ADListMorphTest methodsFor: 'tests' stamp: 'NPM 2/11/2022 11:00:49'!
test009_AppliesTheItemSeparatorAfterTheyWereLayedOut

	| item1 item2 item3 |
	self createListWithExtent: 50@40.
	item1 _ self addItemWithExtent: 10@10.
	item2 _ self addItemWithExtent: 10@10.
	item3 _ self addItemWithExtent: 10@10.
	list layoutSubmorphs.
	
	list separateItemsVerticallyBy: 5.

	
	self assert: item1 isVisibleAt: 0@0.
	self assert: item2 isVisibleAt: 0@15.
	self assert: item3 isVisibleAt: 0@30! !

!ADListMorphTest methodsFor: 'tests' stamp: 'NPM 2/11/2022 11:01:11'!
test010_ItemSeparatorCannotBeNegative

	| item1 item2 item3 |
	self createListWithExtent: 50@30.
	item1 _ self addItemWithExtent: 10@10.
	item2 _ self addItemWithExtent: 10@10.
	item3 _ self addItemWithExtent: 10@10.
	list layoutSubmorphs.
	
	self
		should: [ list separateItemsVerticallyBy: -1 ]
		raise: Error
		withMessageText: list verticalItemSeparationCannotBeNegativeErrorMessage.
	
	self assert: item1 isVisibleAt: 0@0.
	self assert: item2 isVisibleAt: 0@10.
	self assert: item3 isVisibleAt: 0@20! !

!ADListMorphTest methodsFor: 'tests' stamp: 'NPM 2/14/2022 19:46:30'!
test011a_HandlesUpAndDownScrollEventsWhenItemsShouldBeScrolled

	self createListWithExtent: 10@10.
	self addItemWithExtent: 10@10.
	self addItemWithExtent: 10@10.
	
	self assertHandlesMouseScrollEventGoing: #up.
	self assertHandlesMouseScrollEventGoing: #down.
	self denyHandlesMouseScrollEventGoing: #left.
	self denyHandlesMouseScrollEventGoing: #right.! !

!ADListMorphTest methodsFor: 'tests' stamp: 'NPM 2/14/2022 19:46:10'!
test011b_DoesNotHandleScrollEventsWhenItemsShouldNotBeScrolled

	self createListWithExtent: 10@10.
	
	self denyHandlesMouseScrollEventGoing: #up.
	self denyHandlesMouseScrollEventGoing: #down.
	self denyHandlesMouseScrollEventGoing: #left.
	self denyHandlesMouseScrollEventGoing: #right.! !

!ADListMorphTest methodsFor: 'tests' stamp: 'NPM 2/11/2022 11:01:35'!
test012_MovesItemsUpOnePlaceWhenScrollingDown

	| item1 item2 item3 |
	self createListWithExtent: 50@10.
	item1 _ self addItemWithExtent: 10@10.
	item2 _ self addItemWithExtent: 10@10.
	item3 _ self addItemWithExtent: 10@10.
	list layoutSubmorphs.
	
	self simulateMouseScrollDownEvent.
	
	self deny: item1 isVisibleAt: 0@-10.
	self assert: item2 isVisibleAt: 0@0.
	self deny: item3 isVisibleAt: 0@10.
	! !

!ADListMorphTest methodsFor: 'tests' stamp: 'NPM 2/11/2022 11:02:04'!
test013_ScrollingDownUsesTheFirstVisibleItemHeightAsTheOffsetToMoveItems

	| item1 item2 item3 |
	self createListWithExtent: 50@10.
	item1 _ self addItemWithExtent: 10@10.
	item2 _ self addItemWithExtent: 10@5.
	item3 _ self addItemWithExtent: 10@10.
	list layoutSubmorphs.
	
	self simulateMouseScrollDownEvent.
	self simulateMouseScrollDownEvent.
	
	self deny: item1 isVisibleAt: 0@-15.
	self deny: item2 isVisibleAt: 0@-5.
	self assert: item3 isVisibleAt: 0@0.
	! !

!ADListMorphTest methodsFor: 'tests' stamp: 'NPM 2/11/2022 11:02:32'!
test015_ScrollsDownItemsThatAreTallerThanTheListHeight

	| item1 |
	self createListWithExtent: 50@10.
	item1 _ self addItemWithExtent: 10@30.
	list layoutSubmorphs.
	
	self simulateMouseScrollDownEvent.
	self simulateMouseScrollDownEvent.
	
	self assert: item1 isVisibleAt: 0@-20.
	! !

!ADListMorphTest methodsFor: 'tests' stamp: 'NPM 2/11/2022 11:03:09'!
test016_ScrollingDownAnEmptyListDoesNotChangeTheItemsOffset

	| item1 |
	self createListWithExtent: 50@10.
	self simulateMouseScrollDownEvent.
	
	item1 _ self addItemWithExtent: 10@10.
	list layoutSubmorphs.
	
	self assert: item1 isVisibleAt: 0@0.
	! !

!ADListMorphTest methodsFor: 'tests' stamp: 'NPM 2/11/2022 11:03:37'!
test017_DoesNotScrollPastTheLastItem

	| item1 item2 |
	self createListWithExtent: 50@10.
	item1 _ self addItemWithExtent: 10@10.
	item2 _ self addItemWithExtent: 10@10.
	list layoutSubmorphs.
	
	self simulateMouseScrollDownEvent.
	self simulateMouseScrollDownEvent.
	
	self deny: item1 isVisibleAt: 0@-10.
	self assert: item2 isVisibleAt: 0@0.
	! !

!ADListMorphTest methodsFor: 'tests' stamp: 'NPM 2/14/2022 19:43:18'!
test018_MovesItemsDownOnePlaceWhenScrollingUp

	| item1 item2 item3 |
	self createListWithExtent: 50@10.
	item1 _ self addItemWithExtent: 10@10.
	item2 _ self addItemWithExtent: 10@10.
	item3 _ self addItemWithExtent: 10@10.
	list layoutSubmorphs.
	self simulateMouseScrollDownEvent.
	self simulateMouseScrollDownEvent.	
	
	self simulateMouseScrollUpEvent.	
	
	self deny: item1 isVisibleAt: 0@-10.
	self assert: item2 isVisibleAt: 0@0.
	self deny: item3 isVisibleAt: 0@10.
	! !

!ADListMorphTest methodsFor: 'tests' stamp: 'NPM 2/11/2022 11:06:10'!
test019_ScrollingUpUsesTheFirstVisibleItemHeightAsTheOffsetToMoveItems

	| item1 item2 item3 |
	self createListWithExtent: 50@10.
	item1 _ self addItemWithExtent: 10@10.
	item2 _ self addItemWithExtent: 10@5.
	item3 _ self addItemWithExtent: 10@10.
	list layoutSubmorphs.
	self simulateMouseScrollDownEvent.
	self simulateMouseScrollDownEvent.
	
	self simulateMouseScrollUpEvent.
	self simulateMouseScrollUpEvent.
	
	self assert: item1 isVisibleAt: 0@0.
	self deny: item2 isVisibleAt: 0@10.
	self deny: item3 isVisibleAt: 0@15.
	! !

!ADListMorphTest methodsFor: 'tests' stamp: 'NPM 2/11/2022 11:07:05'!
test020_ScrollsUpItemsThatAreTallerThanTheListHeight

	| item1 |
	self createListWithExtent: 50@10.
	item1 _ self addItemWithExtent: 10@30.
	list layoutSubmorphs.
	self simulateMouseScrollDownEvent.
	self simulateMouseScrollDownEvent.
	
	self simulateMouseScrollUpEvent.
	self simulateMouseScrollUpEvent.
	
	self assert: item1 isVisibleAt: 0@0.
	! !

!ADListMorphTest methodsFor: 'tests' stamp: 'NPM 2/11/2022 11:07:30'!
test021_ScrollingUpAnEmptyListDoesNotChangeTheItemsOffset

	| item1 |
	self createListWithExtent: 50@10.
	self simulateMouseScrollUpEvent.
	
	item1 _ self addItemWithExtent: 10@10.
	list layoutSubmorphs.
	
	self assert: item1 isVisibleAt: 0@0.
	! !

!ADListMorphTest methodsFor: 'tests' stamp: 'NPM 2/11/2022 11:08:01'!
test022_DoesNotScrollPastTheFirsttem

	| item1 |
	self createListWithExtent: 50@10.
	item1 _ self addItemWithExtent: 10@10.
	list layoutSubmorphs.
	
	self simulateMouseScrollUpEvent.
	
	self assert: item1 isVisibleAt: 0@0.
	! !

!SlidingWindowScrollerTest methodsFor: 'tests - offsets' stamp: 'NPM 2/14/2022 12:20:47'!
test100_WhenThereIsNothingToScroll_DoesNotAllowToCalculateTheOffset

	| scroller |
	scroller _ SlidingWindowScroller windowSize: 10.
	
	self
		should: [ scroller offsetUpTo: 1 ]
		raise: Error
		withMessageText: scroller nothingToScrollErrorMessage! !

!SlidingWindowScrollerTest methodsFor: 'tests - offsets' stamp: 'NPM 2/14/2022 12:20:47'!
test101_WhenStepIsZero_OffsetIsZero

	| scroller offset |
	scroller _ SlidingWindowScroller windowSize: 10.
	scroller addItemToScroll: 5.
	
	offset _ scroller offsetUpTo: 0.
	
	self assert: 0 equals: offset.! !

!SlidingWindowScrollerTest methodsFor: 'tests - offsets' stamp: 'NPM 2/14/2022 12:20:47'!
test102_OffsetCannotBeNegative

	| scroller |
	scroller _ SlidingWindowScroller windowSize: 10.
	scroller addItemToScroll: 10.
	
	self assertRaisesStepError: [ scroller offsetUpTo: -1 ].! !

!SlidingWindowScrollerTest methodsFor: 'tests - offsets' stamp: 'NPM 2/14/2022 12:20:47'!
test103_OffsetCannotBeLargerThanTheNumberOfSteps

	| scroller |
	scroller _ SlidingWindowScroller windowSize: 10.
	scroller addItemToScroll: 10.
	
	self assertRaisesStepError: [ scroller offsetUpTo: 2 ].! !

!SlidingWindowScrollerTest methodsFor: 'tests - offsets' stamp: 'NPM 2/14/2022 12:20:47'!
test105_OffsetIsTheTotalItemsHeightToBeScrolledAfterTheSpecifiedSteps

	| scroller offset |
	scroller _ SlidingWindowScroller windowSize: 10.
	scroller addItemToScroll: 10.
	scroller addItemToScroll: 10.
	scroller addItemToScroll: 10.
	
	offset _ scroller offsetUpTo: 2.
	
	self assert: 20 equals: offset.! !

!SlidingWindowScrollerTest methodsFor: 'tests - offsets' stamp: 'NPM 2/14/2022 12:20:47'!
test106_OffsetEnsuresAnItemsEndIsAlignedWithTheWindowBottom


	"TODO(NPM): Improve this tests, it is not clear what the title means.
	I'm leaving it as-is atm"

	| scroller offset |
	scroller _ SlidingWindowScroller windowSize: 10.
	scroller addItemToScroll: 25.
	
	offset _ scroller offsetUpTo: 2.
	
	self assert: 15 equals: offset.! !

!SlidingWindowScrollerTest methodsFor: 'tests - steps' stamp: 'NPM 2/13/2022 12:35:57'!
test001_WhenTheTotalItemsSizeIsZero_NoStepsAreNeededToScrollThem

	| scroller |
	scroller _ SlidingWindowScroller windowSize: 10.
	
	self assert: 0 equals: scroller steps.! !

!SlidingWindowScrollerTest methodsFor: 'tests - steps' stamp: 'NPM 2/13/2022 12:28:49'!
test002_WhenTheFirstItemsSizeIsGreaterThanTheWindowSize_StepsIsOneLessThatTheNumberOfWindowsNeededToScrollIt

	| scroller |
	scroller _ SlidingWindowScroller windowSize: 10.
	
	scroller addItemToScroll: 29.
	
	self assert: 2 equals: scroller steps.! !

!SlidingWindowScrollerTest methodsFor: 'tests - steps' stamp: 'NPM 2/13/2022 12:29:32'!
test003_WhenTheFirstItemsSizeIsLessThanTheWindowSize_NoStepsAreNeededToScrollIt

	| scroller |
	scroller _ SlidingWindowScroller windowSize: 10.
	
	scroller addItemToScroll: 5.
	
	self assert: 0 equals: scroller steps.! !

!SlidingWindowScrollerTest methodsFor: 'tests - steps' stamp: 'NPM 2/13/2022 12:29:48'!
test004_WhenTheFirstItemsSizeIsEqualToTheWindowSize_NoStepsAreNeededToScrollIt

	| scroller |
	scroller _ SlidingWindowScroller windowSize: 10.
	
	scroller addItemToScroll: 10.
	
	self assert: 0 equals: scroller steps.! !

!SlidingWindowScrollerTest methodsFor: 'tests - steps' stamp: 'NPM 2/13/2022 12:32:26'!
test006_WhenTheTotalItemsSizeIsLessThanTheWindowSize_NoStepsAreNeededToScrollThem

	| scroller |
	scroller _ SlidingWindowScroller windowSize: 10.
	
	scroller addItemToScroll: 2.
	scroller addItemToScroll: 3.
	
	self assert: 0 equals: scroller steps.! !

!SlidingWindowScrollerTest methodsFor: 'tests - steps' stamp: 'NPM 2/13/2022 12:33:22'!
test007_WhenTheTotalItemsSizeIsEqualToTheWindowSize_NoStepsAreNeededToScrollThem

	| scroller |
	scroller _ SlidingWindowScroller windowSize: 10.
	
	scroller addItemToScroll: 5.
	scroller addItemToScroll: 5.
	
	self assert: 0 equals: scroller steps.! !

!SlidingWindowScrollerTest methodsFor: 'tests - steps' stamp: 'NPM 2/13/2022 12:35:01'!
test008_WhenTheTotalItemsSizeIsGreaterThanTheWindowSize_StepsIsTheNumberOfWindowsNeededToScrollThem

	| scroller |
	scroller _ SlidingWindowScroller windowSize: 10.
	
	scroller addItemToScroll: 10.
	scroller addItemToScroll: 10.
	scroller addItemToScroll: 9.
	
	self assert: 2 equals: scroller steps.! !

!SlidingWindowScrollerTest methodsFor: 'assertions' stamp: 'NPM 2/13/2022 16:58:45'!
assertRaisesStepError: aBlock 
	
	self
		should: aBlock
		raise: Error
		withMessageText: (SlidingWindowScroller windowSize: 1) stepErrorMessage! !

!DebuggerExpression methodsFor: 'accessing' stamp: 'NPM 2/16/2022 01:36:00'!
kind
	
	self subclassResponsibility! !

!DebuggerExpression methodsFor: 'evaluating' stamp: 'NPM 2/16/2022 01:37:14'!
value

	self subclassResponsibility! !

!DebuggerExpression methodsFor: 'events-registering' stamp: 'NPM 2/16/2022 01:36:00'!
changedEventName

	^ #changed! !

!DebuggerExpression methodsFor: 'events-registering' stamp: 'NPM 2/16/2022 01:36:00'!
triggerChangedEvent
	
	self triggerEvent: self changedEventName! !

!DebuggerExpression methodsFor: 'events-registering' stamp: 'NPM 2/16/2022 01:36:00'!
whenChangesSend: aMessageSelector to: anObject 
	
	self
		when: self changedEventName
		send: aMessageSelector
		to: anObject! !

!DebuggerExpression methodsFor: 'initialization' stamp: 'NPM 2/16/2022 01:36:47'!
initialize

	super initialize. 
	
	isPinnedToDebugger _ false.! !

!DebuggerExpression methodsFor: 'pinning to debugger' stamp: 'NPM 2/16/2022 01:36:00'!
isPinnedToDebugger
	
	^ isPinnedToDebugger ! !

!DebuggerExpression methodsFor: 'pinning to debugger' stamp: 'NPM 2/16/2022 01:36:00'!
togglePinnedToDebugger

	isPinnedToDebugger _ isPinnedToDebugger not.
	
	self triggerChangedEvent.! !

!DebuggerExpression methodsFor: 'testing' stamp: 'NPM 2/16/2022 01:44:56'!
ifChanged: changedBlock ifNotChanged: notChangedBlock 
	
	self subclassResponsibility! !

!DebuggerExpression methodsFor: 'testing' stamp: 'NPM 2/16/2022 01:36:13'!
isNamed: aName

	^ self name = aName! !

!DebuggerExpression class methodsFor: 'instance creation' stamp: 'NPM 2/16/2022 01:43:08'!
pseudoVariableNamed: aName valued: aValue
	
	^ PseudoVariableDebuggerExpression
		named: aName
		valued: aValue! !

!DebuggerExpression class methodsFor: 'instance creation' stamp: 'NPM 2/16/2022 01:36:00'!
temporaryVariablesDefinedIn: aContext 
	
	^ TemporaryVariable allDefinedIn: aContext! !

!DebuggerExpression class methodsFor: 'instance creation' stamp: 'NPM 2/16/2022 01:36:00'!
watchNamed: aName toEvaluate: aBlock in: aContext  
	
	^ WatchExpression named: aName toEvaluate: aBlock in: aContext! !

!DebuggerExpression class methodsFor: 'instance creation' stamp: 'NPM 2/16/2022 01:36:00'!
watchTemplateFor: aContext

	^ WatchExpression templateFor: aContext! !

!PseudoVariableDebuggerExpression methodsFor: 'accessing' stamp: 'NPM 2/16/2022 01:45:40'!
kind
	
	^ 'Pseudo-variable'! !

!PseudoVariableDebuggerExpression methodsFor: 'evaluating' stamp: 'NPM 2/16/2022 01:44:20'!
value

	^ value! !

!PseudoVariableDebuggerExpression methodsFor: 'initialization' stamp: 'NPM 2/16/2022 01:44:03'!
initializeNamed: aName valued: aValue 

	super initialize.
	
	name := aName.
	value := aValue.! !

!PseudoVariableDebuggerExpression methodsFor: 'testing' stamp: 'NPM 2/16/2022 01:45:19'!
ifChanged: changedBlock ifNotChanged: notChangedBlock 
	
	^ notChangedBlock value! !

!PseudoVariableDebuggerExpression class methodsFor: 'instance creation' stamp: 'NPM 2/16/2022 01:43:47'!
named: aName valued: aValue

	^ self
		new
		initializeNamed: aName
		valued: aValue! !

!VariableDebuggerExpression methodsFor: 'evaluating' stamp: 'NPM 1/5/2022 02:35:21'!
read

	self subclassResponsibility ! !

!VariableDebuggerExpression methodsFor: 'evaluating' stamp: 'NPM 1/5/2022 02:20:14'!
refresh
	
	| previousValue |
	previousValue _ lastReadValue.
	
	changed _ previousValue ~= self value.
	
	self triggerChangedEvent.
	
	! !

!VariableDebuggerExpression methodsFor: 'evaluating' stamp: 'NPM 1/5/2022 02:35:21'!
value

	lastReadValue _ self read.
	
	^ lastReadValue! !

!VariableDebuggerExpression methodsFor: 'initialization' stamp: 'NPM 2/16/2022 01:41:12'!
initializeNamed: aName definedIn: aContext

	super initialize.

	name _ aName.
	context _ aContext.
	changed _ false.! !

!VariableDebuggerExpression methodsFor: 'testing' stamp: 'NPM 2/1/2022 00:17:50'!
ifChanged: changedBlock ifNotChanged: notChangedBlock 
	
	^ changed 
		ifTrue: changedBlock
		ifFalse: notChangedBlock! !

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

!WatchExpression methodsFor: 'as yet unclassified' stamp: 'NPM 2/16/2022 00:52:39'!
copy

	^ self class
		named: name
		toEvaluate: expression
		in: context! !

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

!TemporaryVariablesInspector methodsFor: 'temporary variables' stamp: 'NPM 2/16/2022 01:47:23'!
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

!TemporaryVariablesInspector methodsFor: 'watches' stamp: 'NPM 1/5/2022 13:38:50'!
addWatch: aWatch 
	
	watches add: aWatch.
	aWatch whenRemovedSend: #removeWatch: to: self.
	self triggerContextChangedEvent! !

!TemporaryVariablesInspector methodsFor: 'watches' stamp: 'NPM 2/16/2022 01:47:18'!
addWatchToEvaluate: aSmalltalkExpression 
	
	| watch |
	watch _ DebuggerExpression
		watchNamed: aSmalltalkExpression
		toEvaluate: aSmalltalkExpression
		in: context.
		
	self addWatch: watch! !

!TemporaryVariablesInspector methodsFor: 'watches' stamp: 'NPM 1/4/2022 11:58:06'!
context

	^ context! !

!TemporaryVariablesInspector methodsFor: 'watches' stamp: 'NPM 1/5/2022 02:55:20'!
refreshAllExpressions
	
	self
		refreshPinnedTemporaryVariables;
		refreshTemporaryVariables;
		refreshWatches! !

!TemporaryVariablesInspector methodsFor: 'watches' stamp: 'NPM 1/5/2022 02:55:30'!
refreshWatches
	
	watches do: [ :temporaryVariable | temporaryVariable refresh ].! !

!TemporaryVariablesInspector methodsFor: 'watches' stamp: 'NPM 1/5/2022 13:40:19'!
removeWatch: aWatchExpression 
	
	watches remove: aWatchExpression.
	self triggerContextChangedEvent ! !

!TemporaryVariablesInspector methodsFor: 'watches' stamp: 'NPM 1/5/2022 02:55:30'!
watchExpressions

	^ watches! !

!TemporaryVariablesInspector methodsFor: 'as yet unclassified' stamp: 'NPM 2/16/2022 01:42:39'!
thisContextVariable
	
	^ DebuggerExpression
		pseudoVariableNamed: 'thisContext'
		valued: context! !

!SlidingWindowScroller methodsFor: 'initialization' stamp: 'NPM 2/14/2022 12:37:20'!
initializeWindowSize: aSize 
	
	windowSize := aSize.
	totalHeightToScroll _ 0.
	itemSeparationGap _ 0.
	fragmentsToScroll _ OrderedCollection new.! !

!SlidingWindowScroller methodsFor: 'as yet unclassified' stamp: 'NPM 2/14/2022 19:40:51'!
addItemToScroll: itemSize 
	
	| numberOfFullWindowsNeeded remainingSizeToScroll |
	"test"
	fragmentsToScroll ifNotEmpty: [
		itemSeparationGap strictlyPositive ifTrue: [ fragmentsToScroll add: itemSeparationGap ] ].
	
	
	numberOfFullWindowsNeeded _ itemSize div: windowSize.
	numberOfFullWindowsNeeded timesRepeat: [ fragmentsToScroll add: windowSize ].
	
	remainingSizeToScroll _ itemSize mod: windowSize.
	remainingSizeToScroll strictlyPositive ifTrue: [ 
		
		numberOfFullWindowsNeeded strictlyPositive
			ifTrue: [ fragmentsToScroll add: remainingSizeToScroll beforeIndex: fragmentsToScroll size]
			ifFalse: [ fragmentsToScroll add: remainingSizeToScroll ] ]
	
	! !

!SlidingWindowScroller methodsFor: 'as yet unclassified' stamp: 'NPM 2/14/2022 12:21:03'!
assertIsValidScrollStep: aScrollStep

	^ (aScrollStep between: 0 and: self steps)
		ifFalse: [ self error: self stepErrorMessage ]! !

!SlidingWindowScroller methodsFor: 'as yet unclassified' stamp: 'NPM 2/14/2022 12:19:44'!
assertThereIsContentToScroll

	^ fragmentsToScroll ifEmpty: [ self error: self nothingToScrollErrorMessage ]! !

!SlidingWindowScroller methodsFor: 'as yet unclassified' stamp: 'NPM 2/11/2022 19:30:54'!
nothingToScrollErrorMessage
	
	^ 'There is nothing to scroll'! !

!SlidingWindowScroller methodsFor: 'as yet unclassified' stamp: 'NPM 2/14/2022 12:21:17'!
offsetUpTo: aScrollStep

	self assertThereIsContentToScroll.
	self assertIsValidScrollStep: aScrollStep.
	
	^ (1 to: aScrollStep) inject: 0 into: [ :offset :step | offset + (fragmentsToScroll at: step) ]! !

!SlidingWindowScroller methodsFor: 'as yet unclassified' stamp: 'NPM 2/16/2022 03:04:47'!
percentageOfItemsVisible
	
	^ windowSize / self totalSizeToScroll! !

!SlidingWindowScroller methodsFor: 'as yet unclassified' stamp: 'NPM 2/14/2022 12:38:29'!
separateItemsBy: numberOfPixels 
	
	itemSeparationGap  _ numberOfPixels ! !

!SlidingWindowScroller methodsFor: 'as yet unclassified' stamp: 'NPM 2/11/2022 19:46:13'!
stepErrorMessage
	
	^'stepErrorMessage'! !

!SlidingWindowScroller methodsFor: 'as yet unclassified' stamp: 'NPM 2/11/2022 19:05:41'!
steps
	
	| numberOfScrollStepsNeeded remainingSizeToScroll |
	
	numberOfScrollStepsNeeded _ 0.
	remainingSizeToScroll _ self totalSizeToScroll.
	
	fragmentsToScroll do: [ :size | 
		remainingSizeToScroll > windowSize 
			ifTrue: [
				remainingSizeToScroll _ remainingSizeToScroll - size.
				numberOfScrollStepsNeeded _ numberOfScrollStepsNeeded + 1 ]].
		
	^ numberOfScrollStepsNeeded! !

!SlidingWindowScroller methodsFor: 'as yet unclassified' stamp: 'NPM 2/11/2022 19:05:41'!
totalSizeToScroll

	^ fragmentsToScroll sum: [ :size | size ] ifEmpty: [ 0 ]! !

!SlidingWindowScroller class methodsFor: 'instance creation' stamp: 'NPM 2/11/2022 18:28:03'!
windowSize: aHeight 
	
	^ self
		new
		initializeWindowSize: aHeight ! !

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

!Morph methodsFor: '*Tools-AdvancedDebugger-UI-Core' stamp: 'NPM 2/9/2022 01:22:45'!
isWithinOwnerBounds
	
	^ self fullBoundsInOwner intersects: self owner morphLocalBounds! !

!ScrollBar methodsFor: '*Tools-AdvancedDebugger-UI-Core' stamp: 'NPM 2/16/2022 00:18:14'!
numberOfScrollStepsFrom: aScrollValue

	^ (aScrollValue / scrollDelta) rounded.! !

!DynamicMenuBuilder methodsFor: '*Tools-AdvancedDebugger' stamp: 'NPM 12/30/2021 18:28:41'!
collectMenuOptions

	items := OrderedCollection new.
	self classesProvidingMenuOptions do: [ :aClass | items addAll: (aClass soleInstance perform: menuOptionsSelector withPossiblyWrongSizedArguments: {defaultTarget}) ].
	! !
