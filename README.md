jxautorec
=========

Uses erl\_scan to scan records in erlang .hrl files and generates joxa record definitions using joxa-records/defrecord+.

## Building

Please define ````JOXA_DIR```` to point to your joxa installation and then simply

    make

This will build ````jxautorec```` escript executable in the project directory.

## Usage


    ./jxautorec <hrl-file> <tgt-joxa-file> <record_name> <joxify>

The ````record_name```` can be set to ````all```` to extract all records from the ````.hrl```` file and place the definitions into
````<tgt-joxa-file>````, otherwise only the record ````record_name```` will be extracted.

The ````joxify```` flag replaces all underscores with hyphens in all names just like :joxify does in use/require forms.


