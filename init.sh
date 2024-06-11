#!/bin/bash

# init="init.sql"
dim="tablas_dim.sql"
diot="tablas_diot.sql"
nepe="tablas_nepe.sql"

# $(dbaccess - $init)
$(dbaccess - $dim)
$(dbaccess - $diot)
$(dbaccess - $nepe)

