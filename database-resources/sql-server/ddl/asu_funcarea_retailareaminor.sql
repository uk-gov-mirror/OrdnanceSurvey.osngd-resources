/* This DDL is based on data schema version 1.0 */
CREATE TABLE asu_funcarea_retailareaminor (
	featureid uniqueidentifier not null,
	versiondate date not null,
	versionavailablefromdate datetime not null,
	versionavailabletodate datetime,
	changetype nvarchar(50) not null,
	geometry geometry not null,
	geometry_area_m2 numeric(15,3) not null,
	theme nvarchar(40) not null,
	description nvarchar(25) not null,
	dividingfeature_siteid nvarchar(36),
	dividingfeature_name1_text nvarchar(254),
	dividingfeature_name1_language nvarchar(3),
	dividingfeature_name2_text nvarchar(254),
	dividingfeature_name2_language nvarchar(3),
	dividingfeature_name3_text nvarchar(254),
	dividingfeature_name3_language nvarchar(3),
	dividingfeature_name4_text nvarchar(254),
	dividingfeature_name4_language nvarchar(3),
	oslandusetiera nvarchar(50),
	addresscount_retail integer not null,
	retailareaaggregatedid nvarchar(36),
	easting numeric(8,2) not null,
	northing numeric(9,2) not null,
	longitude numeric(9,7) not null,
	latitude numeric(9,7) not null,
	PRIMARY KEY (featureid)
);
CREATE TABLE asu_funcarea_retailareaminor_rltenty (
	relatedentityid uniqueidentifier not null,
	featuretypeid nvarchar(36) not null,
	featuretypeversiondate date not null,
	crossreferencefeature nvarchar(50) not null,
	crossreferenceid nvarchar(36) not null,
	relationshiptype nvarchar(30) not null,
	PRIMARY KEY (relatedentityid,featuretypeversiondate)
);
