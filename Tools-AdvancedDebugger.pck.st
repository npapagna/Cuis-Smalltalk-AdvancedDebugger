'From Cuis 5.0 [latest update: #4913] on 30 December 2021 at 6:38:04 pm'!
'Description '!
!provides: 'Tools-AdvancedDebugger' 1 5!
SystemOrganization addCategory: #'Tools-AdvancedDebugger'!
SystemOrganization addCategory: #'Tools-AdvancedDebugger-UI'!


!classDefinition: #ContextVariablesInspectorToTemporaryVariablesInspectorAdapter category: #'Tools-AdvancedDebugger-UI'!
ContextVariablesInspector subclass: #ContextVariablesInspectorToTemporaryVariablesInspectorAdapter
	instanceVariableNames: 'aDContextVariablesInspector'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Tools-AdvancedDebugger-UI'!
!classDefinition: 'ContextVariablesInspectorToTemporaryVariablesInspectorAdapter class' category: #'Tools-AdvancedDebugger-UI'!
ContextVariablesInspectorToTemporaryVariablesInspectorAdapter class
	instanceVariableNames: ''!

!classDefinition: #TemporaryVariableMorph category: #'Tools-AdvancedDebugger-UI'!
LayoutMorph subclass: #TemporaryVariableMorph
	instanceVariableNames: 'temporaryVariable'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Tools-AdvancedDebugger-UI'!
!classDefinition: 'TemporaryVariableMorph class' category: #'Tools-AdvancedDebugger-UI'!
TemporaryVariableMorph class
	instanceVariableNames: ''!

!classDefinition: #TemporaryVariablesInspectorMorph category: #'Tools-AdvancedDebugger-UI'!
LayoutMorph subclass: #TemporaryVariablesInspectorMorph
	instanceVariableNames: 'temporaryVariablesInspector'
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
	instanceVariableNames: 'name index context lastReadValue changed isPinnedToDebugger'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Tools-AdvancedDebugger'!
!classDefinition: 'TemporaryVariable class' category: #'Tools-AdvancedDebugger'!
TemporaryVariable class
	instanceVariableNames: ''!

!classDefinition: #TemporaryVariablesInspector category: #'Tools-AdvancedDebugger'!
Object subclass: #TemporaryVariablesInspector
	instanceVariableNames: 'context a pinnedTemporaryVariables'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Tools-AdvancedDebugger'!
!classDefinition: 'TemporaryVariablesInspector class' category: #'Tools-AdvancedDebugger'!
TemporaryVariablesInspector class
	instanceVariableNames: ''!


!TemporaryVariable methodsFor: 'accessing' stamp: 'NPM 12/11/2021 13:18:27'!
name

	^ name! !

!TemporaryVariable methodsFor: 'printing' stamp: 'NPM 12/30/2021 12:46:55'!
printOn: aStream

	aStream
		nextPut: $<;
		nextPutAll: name;
		nextPut: $=;
		nextPutAll: self value displayStringOrText;
		nextPut: $>
		! !

!ContextVariablesInspectorToTemporaryVariablesInspectorAdapter methodsFor: 'accessing' stamp: 'NPM 12/30/2021 14:38:24'!
object: aMethodContext 
	
	super object: aMethodContext.
	
	aDContextVariablesInspector context: aMethodContext.! !

!ContextVariablesInspectorToTemporaryVariablesInspectorAdapter methodsFor: 'accessing' stamp: 'NPM 12/30/2021 14:38:05'!
update
	
	super update.
	
	aDContextVariablesInspector update! !

!ContextVariablesInspectorToTemporaryVariablesInspectorAdapter methodsFor: 'initialization' stamp: 'NPM 12/28/2021 10:51:17'!
initializeFor: anADContextVariablesInspector 
	
	aDContextVariablesInspector := anADContextVariablesInspector.! !

!ContextVariablesInspectorToTemporaryVariablesInspectorAdapter class methodsFor: 'instance creation' stamp: 'NPM 12/30/2021 14:39:53'!
for: aTemporaryVariablesInspector 
	
	^ self
		new
		initializeFor: aTemporaryVariablesInspector ! !

!TemporaryVariableMorph methodsFor: 'context menu' stamp: 'NPM 12/30/2021 18:31:50'!
contextMenu
		
	^ (DynamicMenuBuilder
		buildTitled: temporaryVariable name
		targeting: temporaryVariable
		collectingMenuOptionsWith: #temporaryVariableDebuggerMenuFor:)
		addStayUpIcons;
		yourself
		
! !

!TemporaryVariableMorph methodsFor: 'event handling' stamp: 'NPM 12/30/2021 18:15:06'!
mouseButton2Activity

	self contextMenu popUpInWorld: self world.! !

!TemporaryVariableMorph methodsFor: 'event handling testing' stamp: 'NPM 12/30/2021 15:41:33'!
handlesMouseDown: aMouseButtonEvent

	^ true! !

!TemporaryVariableMorph methodsFor: 'events-registering' stamp: 'NPM 12/30/2021 12:51:08'!
registerToTemporaryVariableEvents
	
	temporaryVariable
		whenChangesSend: #refresh
		to: self! !

!TemporaryVariableMorph methodsFor: 'initialization' stamp: 'NPM 12/30/2021 12:24:30'!
defaultColor

	^ Color transparent! !

!TemporaryVariableMorph methodsFor: 'initialization' stamp: 'NPM 12/30/2021 12:51:08'!
initializeFor: aTemporaryVariable 

	temporaryVariable _ aTemporaryVariable.
	
	self
		initializeSubmorphs;
		registerToTemporaryVariableEvents;
		refresh.! !

!TemporaryVariableMorph methodsFor: 'initialization' stamp: 'NPM 12/30/2021 12:25:58'!
initializeSubmorphs

	self
		addMorph: (LabelMorph contents: '')
		layoutSpec: (LayoutSpec morphHeightProportionalWidth: 1)! !

!TemporaryVariableMorph methodsFor: 'updating' stamp: 'NPM 12/30/2021 14:29:24'!
highlightColor

	^ temporaryVariable
		ifChanged: [ Color blue ]
		ifNotChanged: [ Color black ]! !

!TemporaryVariableMorph methodsFor: 'updating' stamp: 'NPM 12/30/2021 15:51:42'!
pinLabel
	
	^ temporaryVariable isPinnedToDebugger
		ifTrue: [ '[pinned]' ]
		ifFalse: [ '' ]! !

!TemporaryVariableMorph methodsFor: 'updating' stamp: 'NPM 12/30/2021 15:47:09'!
refresh
	
	self firstSubmorph 
		contents: (self pinLabel, ' ', temporaryVariable name, ' ', temporaryVariable value displayStringOrText);
		color: self highlightColor.
		
	self morphExtent: self firstSubmorph morphExtent! !

!TemporaryVariableMorph class methodsFor: 'instance creation' stamp: 'NPM 12/30/2021 12:15:37'!
for: aTemporaryVariable 
	
	^ self
		newRow
		initializeFor: aTemporaryVariable ! !

!TemporaryVariableMorph class methodsFor: 'context menu' stamp: 'NPM 12/30/2021 18:31:39'!
temporaryVariableDebuggerMenuFor: aTemporaryVariable
	
	^ {
		{
			#itemGroup 	 	-> 		1.
			#itemOrder  	 	-> 		1.
			#label  			-> 	(aTemporaryVariable isPinnedToDebugger ifTrue: [ 'Unpin' ] ifFalse: [ 'Pin' ]).
			#selector       		-> 		#togglePinnedToDebugger.
		} asDictionary.
			
	   }! !

!TemporaryVariablesInspectorMorph methodsFor: 'events-registering' stamp: 'NPM 12/30/2021 14:34:07'!
registerToTemporaryVariablesInspectorEvents

	temporaryVariablesInspector
		whenContextChangesSend: #reloadTemporaryVariables
		to: self! !

!TemporaryVariablesInspectorMorph methodsFor: 'initialization' stamp: 'NPM 12/30/2021 14:34:07'!
initializeOn: aTemporaryVariablesInspector

	temporaryVariablesInspector _ aTemporaryVariablesInspector.
	
	self registerToTemporaryVariablesInspectorEvents.! !

!TemporaryVariablesInspectorMorph methodsFor: 'updating' stamp: 'NPM 12/30/2021 18:23:18'!
reloadTemporaryVariables
		
	self removeAllMorphs.
	
	(temporaryVariablesInspector pinnedTemporaryVariables, temporaryVariablesInspector temporaryVariables)
		do: [ :temporaryVariable |
			self
				addMorph: (TemporaryVariableMorph for: temporaryVariable)
				layoutSpec: (LayoutSpec morphHeightProportionalWidth: 1) ].
! !

!TemporaryVariablesInspectorMorph class methodsFor: 'instance creation' stamp: 'NPM 12/30/2021 14:34:28'!
on: aTemporaryVariablesInspector

	^ self
		newColumn
		initializeOn: aTemporaryVariablesInspector

	! !

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

!TemporaryVariable methodsFor: 'evaluating' stamp: 'NPM 12/30/2021 18:10:40'!
refresh
	
	| previousValue |
	previousValue _ lastReadValue.
	
	changed _ previousValue ~= self value.
	
	self triggerChangedEvent.
	
	! !

!TemporaryVariable methodsFor: 'evaluating' stamp: 'NPM 12/30/2021 12:48:27'!
value

	lastReadValue _ context debuggerMap namedTempAt: index in: context.
	
	^ lastReadValue! !

!TemporaryVariable methodsFor: 'events-registering' stamp: 'NPM 12/30/2021 12:44:08'!
changedEventName

	^ #changed! !

!TemporaryVariable methodsFor: 'events-registering' stamp: 'NPM 12/30/2021 12:44:08'!
triggerChangedEvent
	
	self triggerEvent: self changedEventName! !

!TemporaryVariable methodsFor: 'events-registering' stamp: 'NPM 12/30/2021 12:44:08'!
whenChangesSend: aMessageSelector to: anObject 
	
	self
		when: self changedEventName
		send: aMessageSelector
		to: anObject! !

!TemporaryVariable methodsFor: 'initialization' stamp: 'NPM 12/30/2021 12:49:38'!
initializeIndex

	index _ context tempNames indexOf: name! !

!TemporaryVariable methodsFor: 'initialization' stamp: 'NPM 12/30/2021 18:14:28'!
initializeNamed: aName definedIn: aContext 

	name _ aName.
	context _ aContext.
	changed _ false.
	isPinnedToDebugger _ false.
	
	self initializeIndex.! !

!TemporaryVariable methodsFor: 'testing' stamp: 'NPM 12/30/2021 12:43:48'!
ifChanged: changedBlock ifNotChanged: notChangedBlock 
	
	^ changed 
		ifTrue: changedBlock
		ifFalse: notChangedBlock! !

!TemporaryVariable methodsFor: 'testing' stamp: 'NPM 12/13/2021 15:50:50'!
isDefinedIn: aContext 
	
	^ context = aContext! !

!TemporaryVariable methodsFor: 'testing' stamp: 'NPM 12/13/2021 15:50:31'!
isNamed: aName

	^ name = aName! !

!TemporaryVariable methodsFor: 'as yet unclassified' stamp: 'NPM 12/30/2021 17:58:05'!
isPinnedToDebugger
	
	^ isPinnedToDebugger ! !

!TemporaryVariable methodsFor: 'as yet unclassified' stamp: 'NPM 12/30/2021 17:58:05'!
togglePinnedToDebugger

	isPinnedToDebugger _ isPinnedToDebugger not.
	
	self triggerChangedEvent.! !

!TemporaryVariable class methodsFor: 'instance creation' stamp: 'NPM 12/13/2021 19:29:20'!
allDefinedIn: aContext 
	
	| definingContexstByTemporaryNames |
	definingContexstByTemporaryNames _ aContext definingContextsByTemporaryNames.
	
	^ aContext tempNames collect: [ :temporaryName |
		self
			findOrCreateNamed: temporaryName
			definedIn: (definingContexstByTemporaryNames at: temporaryName) ].! !

!TemporaryVariable class methodsFor: 'instance creation' stamp: 'NPM 12/13/2021 19:14:47'!
findNamed: aName definedIn: aContext ifNone: noneBlock

	^ self allInstances
		detect: [ :temporaryVariable | (temporaryVariable isNamed: aName) and: [ temporaryVariable isDefinedIn: aContext ] ]
		ifNone: noneBlock
	
	! !

!TemporaryVariable class methodsFor: 'instance creation' stamp: 'NPM 12/13/2021 19:31:02'!
findOrCreateNamed: aName definedIn: aContext 

	^ self
		findNamed: aName
		definedIn: aContext
		ifNone: [ self named: aName definedIn: aContext ] 
	
	! !

!TemporaryVariable class methodsFor: 'instance creation' stamp: 'NPM 12/27/2021 15:52:25'!
named: aName definedIn: aContext 

	^ self
		new
		initializeNamed: aName
		definedIn: aContext! !

!TemporaryVariablesInspector methodsFor: 'accessing' stamp: 'NPM 12/30/2021 18:33:34'!
context: aMethodContext 
	
	context = aMethodContext
		ifTrue: [ self refreshAllTemporaryVariables ]
		ifFalse: [ self loadTemporaryVariablesFrom: aMethodContext ].! !

!TemporaryVariablesInspector methodsFor: 'accessing' stamp: 'NPM 12/30/2021 15:55:38'!
initialize

	super initialize.
	
	pinnedTemporaryVariables _ OrderedCollection new.! !

!TemporaryVariablesInspector methodsFor: 'accessing' stamp: 'NPM 12/30/2021 12:53:59'!
update
	
	self refreshTemporaryVariables
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

!TemporaryVariablesInspector methodsFor: 'temporary variables' stamp: 'NPM 12/30/2021 18:21:35'!
loadTemporaryVariablesFrom: aMethodContext

	self initializePinnedTemporaryVariables.
	
	context _ aMethodContext.
	self triggerContextChangedEvent! !

!TemporaryVariablesInspector methodsFor: 'temporary variables' stamp: 'NPM 12/30/2021 18:20:42'!
temporaryVariables
	
	context ifNil: [ ^ OrderedCollection new ].
	
	^ TemporaryVariable allDefinedIn: context! !

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

!TemporaryVariablesInspector methodsFor: 'as yet unclassified' stamp: 'NPM 12/30/2021 18:34:09'!
refreshAllTemporaryVariables
	
	self
		refreshPinnedTemporaryVariables;
		refreshTemporaryVariables! !

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
