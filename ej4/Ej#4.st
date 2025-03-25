!classDefinition: #I category: #'Ej 4'!
DenotativeObject subclass: #I
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Ej 4'!

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'I class' category: #'Ej 4'!
I class
	instanceVariableNames: ''!

!I class methodsFor: '-- all --' stamp: 'TM 3/23/2025 12:20:18'!
* aNumber 

^aNumber. ! !

!I class methodsFor: '-- all --' stamp: 'TM 3/23/2025 12:18:44'!
+ anAdder 

^anAdder next.! !

!I class methodsFor: '-- all --' stamp: 'TM 3/23/2025 12:19:38'!
- sustrahend 

^ self error: 'Error, te vas de los naturales, querido'.! !

!I class methodsFor: '-- all --' stamp: 'TM 3/23/2025 14:24:44'!
/ dividend ! !

!I class methodsFor: '-- all --' stamp: 'TM 3/23/2025 13:03:21'!
next  
| classname newClone existingObject |
  classname := (self asString, 'I').
  
  existingObject := Smalltalk at: classname asSymbol ifAbsent: [nil].
  
  existingObject ifNotNil: [
    ^existingObject
  ] ifNil: [
    newClone := self cloneNamed: classname.
    newClone instVarNamed: 'prev' put: self.
    ^newClone
  ].
 ! !

!I class methodsFor: '-- all --' stamp: 'TM 3/23/2025 12:15:20'!
previous! !


!classDefinition: #II category: #'Ej 4'!
DenotativeObject subclass: #II
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Ej 4'!

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'II class' category: #'Ej 4'!
II class
	instanceVariableNames: 'prev'!

!II class methodsFor: '-- all --' stamp: 'TM 3/23/2025 13:26:53'!
* multiplier 
  
  (multiplier asString = 'I') ifTrue: [^self].
 
  ^self + (self * multiplier previous).! !

!II class methodsFor: '-- all --' stamp: 'TM 3/23/2025 12:21:03'!
+ anAdder 

^self previous + anAdder next. ! !

!II class methodsFor: '-- all --' stamp: 'TM 3/23/2025 14:18:52'!
- aNumber 
((self asString size) <= (aNumber asString size)) ifTrue: [self error: 'Te fuiste pa'].
aNumber = I  ifTrue: [^self previous]. 

^ self previous - aNumber previous.   


! !

!II class methodsFor: '-- all --' stamp: 'TM 3/23/2025 14:36:26'!
/ dividend
|resultado|
 
((self asString size) < (dividend asString size)) ifTrue: [I].

resultado := (self - dividend) / dividend.
^resultado + I.




! !

!II class methodsFor: '--** private fileout/in **--' stamp: 'TM 3/23/2025 14:38:34'!
initializeCollaboratorsFromFile
	"Auto generated method for loading purposes - Do not modify it"

	prev := I.! !

!II class methodsFor: '-- all --' stamp: 'TM 3/23/2025 13:02:17'!
next  
| classname newClone existingObject |
  classname := (self asString, 'I').
  
  existingObject := Smalltalk at: classname asSymbol ifAbsent: [nil].
  
  existingObject ifNotNil: [
    ^existingObject
  ] ifNil: [
    newClone := self cloneNamed: classname.
    newClone instVarNamed: 'prev' put: self.
    ^newClone
  ].
 ! !

!II class methodsFor: '-- all --' stamp: 'TM 3/23/2025 12:56:10'!
previous 

^self instVarNamed: 'prev'. ! !


!II class methodsFor: '--** private fileout/in **--' stamp: 'TM 3/23/2025 14:38:34'!
initializeCollaboratorsFromFile
	"Auto generated method for loading purposes - Do not modify it"

	prev := I.! !


!classDefinition: #III category: #'Ej 4'!
DenotativeObject subclass: #III
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Ej 4'!

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'III class' category: #'Ej 4'!
III class
	instanceVariableNames: 'prev'!

!III class methodsFor: '-- all --' stamp: 'TM 3/23/2025 14:19:10'!
* multiplier 
  
  (multiplier asString = 'I') ifTrue: [^self].
 
  ^self + (self * multiplier previous).! !

!III class methodsFor: '-- all --' stamp: 'TM 3/23/2025 14:19:10'!
+ anAdder 

^self previous + anAdder next. ! !

!III class methodsFor: '-- all --' stamp: 'TM 3/23/2025 14:19:10'!
- aNumber 
((self asString size) <= (aNumber asString size)) ifTrue: [self error: 'Te fuiste pa'].
aNumber = I  ifTrue: [^self previous]. 

^ self previous - aNumber previous.   


! !

!III class methodsFor: '-- all --' stamp: 'TM 3/23/2025 14:19:10'!
/ dividend 



! !

!III class methodsFor: '--** private fileout/in **--' stamp: 'TM 3/23/2025 14:38:34'!
initializeCollaboratorsFromFile
	"Auto generated method for loading purposes - Do not modify it"

	prev := II.! !

!III class methodsFor: '-- all --' stamp: 'TM 3/23/2025 14:19:10'!
next  
| classname newClone existingObject |
  classname := (self asString, 'I').
  
  existingObject := Smalltalk at: classname asSymbol ifAbsent: [nil].
  
  existingObject ifNotNil: [
    ^existingObject
  ] ifNil: [
    newClone := self cloneNamed: classname.
    newClone instVarNamed: 'prev' put: self.
    ^newClone
  ].
 ! !

!III class methodsFor: '-- all --' stamp: 'TM 3/23/2025 14:19:10'!
previous 

^self instVarNamed: 'prev'. ! !


!III class methodsFor: '--** private fileout/in **--' stamp: 'TM 3/23/2025 14:38:34'!
initializeCollaboratorsFromFile
	"Auto generated method for loading purposes - Do not modify it"

	prev := II.! !


!classDefinition: #IIII category: #'Ej 4'!
DenotativeObject subclass: #IIII
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Ej 4'!

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'IIII class' category: #'Ej 4'!
IIII class
	instanceVariableNames: 'prev'!

!IIII class methodsFor: '-- all --' stamp: 'TM 3/23/2025 14:31:44'!
* multiplier 
  
  (multiplier asString = 'I') ifTrue: [^self].
 
  ^self + (self * multiplier previous).! !

!IIII class methodsFor: '-- all --' stamp: 'TM 3/23/2025 14:31:44'!
+ anAdder 

^self previous + anAdder next. ! !

!IIII class methodsFor: '-- all --' stamp: 'TM 3/23/2025 14:31:44'!
- aNumber 
((self asString size) <= (aNumber asString size)) ifTrue: [self error: 'Te fuiste pa'].
aNumber = I  ifTrue: [^self previous]. 

^ self previous - aNumber previous.   


! !

!IIII class methodsFor: '-- all --' stamp: 'TM 3/23/2025 14:31:44'!
/ dividend 



! !

!IIII class methodsFor: '--** private fileout/in **--' stamp: 'TM 3/23/2025 14:38:34'!
initializeCollaboratorsFromFile
	"Auto generated method for loading purposes - Do not modify it"

	prev := III.! !

!IIII class methodsFor: '-- all --' stamp: 'TM 3/23/2025 14:31:44'!
next  
| classname newClone existingObject |
  classname := (self asString, 'I').
  
  existingObject := Smalltalk at: classname asSymbol ifAbsent: [nil].
  
  existingObject ifNotNil: [
    ^existingObject
  ] ifNil: [
    newClone := self cloneNamed: classname.
    newClone instVarNamed: 'prev' put: self.
    ^newClone
  ].
 ! !

!IIII class methodsFor: '-- all --' stamp: 'TM 3/23/2025 14:31:44'!
previous 

^self instVarNamed: 'prev'. ! !


!IIII class methodsFor: '--** private fileout/in **--' stamp: 'TM 3/23/2025 14:38:34'!
initializeCollaboratorsFromFile
	"Auto generated method for loading purposes - Do not modify it"

	prev := III.! !

II initializeAfterFileIn!
III initializeAfterFileIn!
IIII initializeAfterFileIn!