"
Please describe the package using the class comment of the included manifest class. The manifest class also includes other additional metadata for the package. These meta data are used by other tools such as the SmalllintManifestChecker and the critics Browser
"
Class {
	#name : #ManifestInfinityCore,
	#superclass : #PackageManifest,
	#category : #'Infinity-Core-Manifest'
}

{ #category : #'code-critics' }
ManifestInfinityCore class >> ruleBadMessageRule2V1FalsePositive [
	^ #(#(#(#RGMethodDefinition #(#Infinity #adaptToNumber:andSend: #false)) #'2023-01-22T02:20:26.717307+01:00') )
]

{ #category : #'code-critics' }
ManifestInfinityCore class >> ruleLiteralArrayContainsSuspiciousTrueFalseOrNilRuleV1FalsePositive [
	^ #(#(#(#RGMetaclassDefinition #(#'ManifestInfinityCore class' #ManifestInfinityCore)) #'2023-01-22T02:20:36.320289+01:00') )
]
