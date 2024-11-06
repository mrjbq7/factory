
USING: kernel io.files parser editors sequences ;

IN: factory.load

! !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!

: file-or ( file file -- file ) over exists? [ drop ] [ nip ] if ;

! !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!

: personal-factory-rc ( -- path ) "~/.factory-rc" ;

: system-factory-rc ( -- path ) "resource:extra/factory/factory-rc" ;

: factory-rc ( -- path ) personal-factory-rc system-factory-rc file-or ;

: load-factory-rc ( -- ) factory-rc run-file ;

! !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!

: personal-factory-menus ( -- path ) "~/.factory-menus" ;

: system-factory-menus ( -- path ) "resource:extra/factory/factory-menus" ;

: factory-menus ( -- path )
personal-factory-menus system-factory-menus file-or ;

: load-factory-menus ( -- ) factory-menus run-file ;

: edit-factory-menus ( -- ) factory-menus 0 edit-location ;
