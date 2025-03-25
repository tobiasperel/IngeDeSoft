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

!II class methodsFor: '-- all --' stamp: 'tp 3/25/2025 18:16:54'!
* multiplier  
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

!II class methodsFor: '-- all --' stamp: 'tp 3/25/2025 18:11:15'!
/ dividend
|resultado|
 
((self asString size) < (dividend asString size)) ifTrue: [^I].

resultado := (self - dividend) / dividend.
^resultado + I.




! !

!II class methodsFor: '--** private fileout/in **--' stamp: 'tp 3/25/2025 18:39:22'!
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


!II class methodsFor: '--** private fileout/in **--' stamp: 'tp 3/25/2025 18:39:22'!
initializeCollaboratorsFromFile
	"Auto generated method for loading purposes - Do not modify it"

	prev := I.! !


!classDefinition: #IIIIII category: #'Ej 4'!
DenotativeObject subclass: #IIIIII
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Ej 4'!

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'IIIIII class' category: #'Ej 4'!
IIIIII class
	instanceVariableNames: 'prev'!

!IIIIII class methodsFor: '-- all --' stamp: 'tp 3/25/2025 18:14:45'!
* multiplier 
  
  (multiplier asString = 'I') ifTrue: [^self].
 
  ^self + (self * multiplier previous).! !

!IIIIII class methodsFor: '-- all --' stamp: 'tp 3/25/2025 18:14:45'!
+ anAdder 

^self previous + anAdder next. ! !

!IIIIII class methodsFor: '-- all --' stamp: 'tp 3/25/2025 18:14:45'!
- aNumber 
((self asString size) <= (aNumber asString size)) ifTrue: [self error: 'Te fuiste pa'].
aNumber = I  ifTrue: [^self previous]. 

^ self previous - aNumber previous.   


! !

!IIIIII class methodsFor: '-- all --' stamp: 'tp 3/25/2025 18:14:45'!
/ dividend
|resultado|
 
((self asString size) < (dividend asString size)) ifTrue: [^I].

resultado := (self - dividend) / dividend.
^resultado + I.




! !

!IIIIII class methodsFor: '--** private fileout/in **--' stamp: 'tp 3/25/2025 18:39:22'!
initializeCollaboratorsFromFile
	"Auto generated method for loading purposes - Do not modify it"

	prev := AnObsoleteIIIII.! !

!IIIIII class methodsFor: '-- all --' stamp: 'tp 3/25/2025 18:14:45'!
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

!IIIIII class methodsFor: '-- all --' stamp: 'tp 3/25/2025 18:14:45'!
previous 

^self instVarNamed: 'prev'. ! !


!IIIIII class methodsFor: '--** private fileout/in **--' stamp: 'tp 3/25/2025 18:39:22'!
initializeCollaboratorsFromFile
	"Auto generated method for loading purposes - Do not modify it"

	prev := AnObsoleteIIIII.! !


!classDefinition: #IIIIIII category: #'Ej 4'!
DenotativeObject subclass: #IIIIIII
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Ej 4'!

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'IIIIIII class' category: #'Ej 4'!
IIIIIII class
	instanceVariableNames: 'prev'!

!IIIIIII class methodsFor: '-- all --' stamp: 'tp 3/25/2025 18:15:07'!
* multiplier 
  
  (multiplier asString = 'I') ifTrue: [^self].
 
  ^self + (self * multiplier previous).! !

!IIIIIII class methodsFor: '-- all --' stamp: 'tp 3/25/2025 18:15:07'!
+ anAdder 

^self previous + anAdder next. ! !

!IIIIIII class methodsFor: '-- all --' stamp: 'tp 3/25/2025 18:15:07'!
- aNumber 
((self asString size) <= (aNumber asString size)) ifTrue: [self error: 'Te fuiste pa'].
aNumber = I  ifTrue: [^self previous]. 

^ self previous - aNumber previous.   


! !

!IIIIIII class methodsFor: '-- all --' stamp: 'tp 3/25/2025 18:15:07'!
/ dividend
|resultado|
 
((self asString size) < (dividend asString size)) ifTrue: [^I].

resultado := (self - dividend) / dividend.
^resultado + I.




! !

!IIIIIII class methodsFor: '--** private fileout/in **--' stamp: 'tp 3/25/2025 18:39:22'!
initializeCollaboratorsFromFile
	"Auto generated method for loading purposes - Do not modify it"

	prev := IIIIII.! !

!IIIIIII class methodsFor: '-- all --' stamp: 'tp 3/25/2025 18:15:07'!
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

!IIIIIII class methodsFor: '-- all --' stamp: 'tp 3/25/2025 18:15:07'!
previous 

^self instVarNamed: 'prev'. ! !


!IIIIIII class methodsFor: '--** private fileout/in **--' stamp: 'tp 3/25/2025 18:39:22'!
initializeCollaboratorsFromFile
	"Auto generated method for loading purposes - Do not modify it"

	prev := IIIIII.! !


!classDefinition: #IIIIIIII category: #'Ej 4'!
DenotativeObject subclass: #IIIIIIII
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Ej 4'!

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'IIIIIIII class' category: #'Ej 4'!
IIIIIIII class
	instanceVariableNames: 'prev'!

!IIIIIIII class methodsFor: '-- all --' stamp: 'tp 3/25/2025 18:17:04'!
* multiplier 
  
  (multiplier asString = 'I') ifTrue: [^self].
 
  ^self + (self * multiplier previous).! !

!IIIIIIII class methodsFor: '-- all --' stamp: 'tp 3/25/2025 18:17:04'!
+ anAdder 

^self previous + anAdder next. ! !

!IIIIIIII class methodsFor: '-- all --' stamp: 'tp 3/25/2025 18:17:04'!
- aNumber 
((self asString size) <= (aNumber asString size)) ifTrue: [self error: 'Te fuiste pa'].
aNumber = I  ifTrue: [^self previous]. 

^ self previous - aNumber previous.   


! !

!IIIIIIII class methodsFor: '-- all --' stamp: 'tp 3/25/2025 18:17:04'!
/ dividend
|resultado|
 
((self asString size) < (dividend asString size)) ifTrue: [^I].

resultado := (self - dividend) / dividend.
^resultado + I.




! !

!IIIIIIII class methodsFor: '--** private fileout/in **--' stamp: 'tp 3/25/2025 18:39:22'!
initializeCollaboratorsFromFile
	"Auto generated method for loading purposes - Do not modify it"

	prev := IIIIIII.! !

!IIIIIIII class methodsFor: '-- all --' stamp: 'tp 3/25/2025 18:17:04'!
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

!IIIIIIII class methodsFor: '-- all --' stamp: 'tp 3/25/2025 18:17:04'!
previous 

^self instVarNamed: 'prev'. ! !


!IIIIIIII class methodsFor: '--** private fileout/in **--' stamp: 'tp 3/25/2025 18:39:22'!
initializeCollaboratorsFromFile
	"Auto generated method for loading purposes - Do not modify it"

	prev := IIIIIII.! !

II initializeAfterFileIn!
IIIIII initializeAfterFileIn!
IIIIIII initializeAfterFileIn!
IIIIIIII initializeAfterFileIn!