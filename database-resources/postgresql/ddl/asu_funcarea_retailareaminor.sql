/* This DDL is based on data schema version 1.0 */
CREATE TABLE asu_funcarea_retailareaminor (
	featureid uuid not null,
	versiondate date not null,
	versionavailablefromdate timestamp not null,
	versionavailabletodate timestamp,
	changetype varchar(50) not null,
	geometry geometry(Polygon, 27700) not null,
	geometry_area_m2 numeric(15,3) not null,
	theme varchar(40) not null,
	description varchar(25) not null,
	dividingfeature_siteid varchar(36),
	dividingfeature_name1_text varchar(254),
	dividingfeature_name1_language varchar(3),
	dividingfeature_name2_text varchar(254),
	dividingfeature_name2_language varchar(3),
	dividingfeature_name3_text varchar(254),
	dividingfeature_name3_language varchar(3),
	dividingfeature_name4_text varchar(254),
	dividingfeature_name4_language varchar(3),
	oslandusetiera varchar(50),
	addresscount_retail integer not null,
	retailareaaggregatedid varchar(36),
	easting numeric(8,2) not null,
	northing numeric(9,2) not null,
	longitude numeric(9,7) not null,
	latitude numeric(9,7) not null,
	PRIMARY KEY (featureid)
);
CREATE TABLE asu_funcarea_retailareaminor_rltenty (
	relatedentityid uuid not null,
	featuretypeid varchar(36) not null,
	featuretypeversiondate date not null,
	crossreferencefeature varchar(50) not null,
	crossreferenceid varchar(36) not null,
	relationshiptype varchar(30) not null,
	PRIMARY KEY (relatedentityid,featuretypeversiondate)
);
