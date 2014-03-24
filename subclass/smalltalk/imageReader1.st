    ImageReader class>>fromFile: aFilename
    	| readerClass imageStream reader |

        imageStream := aFilename readStream binary.
        [readerClass := self readerClassFor: imageStream.
         readerClass ifNil:
             [^self error: 'Unknown image type: ',
                 aFilename asString].
    	 reader := readerClass on: imageStream]
    	 		 ensure: [imageStream close].
    	^reader
