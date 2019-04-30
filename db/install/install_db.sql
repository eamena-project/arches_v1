
-- Run all the sql scripts in the dependencies folder
\i '/Users/rjennings/ARCHES_3_PROJECTS/ENV/lib/python2.7/site-packages/arches/db/install/dependencies/batch_index.sql'
\i '/Users/rjennings/ARCHES_3_PROJECTS/ENV/lib/python2.7/site-packages/arches/db/install/dependencies/django_authentication.sql'
\i '/Users/rjennings/ARCHES_3_PROJECTS/ENV/lib/python2.7/site-packages/arches/db/install/dependencies/isstring.sql'
\i '/Users/rjennings/ARCHES_3_PROJECTS/ENV/lib/python2.7/site-packages/arches/db/install/dependencies/postgis_backward_compatibility.sql'
\i '/Users/rjennings/ARCHES_3_PROJECTS/ENV/lib/python2.7/site-packages/arches/db/install/dependencies/uuid-ossp.sql'

-- Reload all managed schemas
\i '/Users/rjennings/ARCHES_3_PROJECTS/ENV/lib/python2.7/site-packages/arches/db/ddl/db_ddl.sql'

-- Add all the data in the dml folder
\i '/Users/rjennings/ARCHES_3_PROJECTS/ENV/lib/python2.7/site-packages/arches/db/dml/db_data.sql'

-- Run all the sql in teh postdeployment folder
\i '/Users/rjennings/ARCHES_3_PROJECTS/ENV/lib/python2.7/site-packages/arches/db/install/postdeployment/django_auth.sql'

-- Spring cleaning
VACUUM ANALYZE;
