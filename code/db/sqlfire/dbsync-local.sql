SET SCHEMA SQLFDEMO;

CREATE ASYNCEVENTLISTENER DEMOLISTENER (
	LISTENERCLASS 'com.vmware.sqlfire.callbacks.DBSynchronizer' 
	INITPARAMS 'com.mysql.jdbc.Driver,jdbc:mysql://localhost:3306/SQLFDEMO?user=sqlfdemo&password=sqlfdemo'
) SERVER GROUPS (DBSYNC);

ALTER TABLE REQUESTS SET ASYNCEVENTLISTENER (DEMOLISTENER);

  
CALL SYS.START_ASYNC_EVENT_LISTENER('DEMOLISTENER');

