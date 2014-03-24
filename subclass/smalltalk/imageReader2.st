    ImageReader class>>readerClassFor: imageStream
    	^self subclasses
            detect: [:eachClass |
                imageStream reset.
                [eachClass canRead: imageStream]
                    ensure: [imageStream reset]]
            ifNone: [nil]
