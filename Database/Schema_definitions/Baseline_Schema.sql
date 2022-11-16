CREATE SCHEMA IF NOT EXISTS public;
CREATE TABLE "public"."wfs_sql_sample" ( "ogc_fid" SERIAL, CONSTRAINT "wfs_sql_sample_pk" PRIMARY KEY ("ogc_fid") );
SELECT AddGeometryColumn('public','wfs_sql_sample','wkb_geometry',3059,'MULTIPOLYGON',2);
CREATE INDEX "wfs_sql_sample_wkb_geometry_geom_idx" ON "public"."wfs_sql_sample" USING GIST ("wkb_geometry");
ALTER TABLE "public"."wfs_sql_sample" ADD COLUMN "objectid" NUMERIC(10,0);
ALTER TABLE "public"."wfs_sql_sample" ADD COLUMN "period_code" VARCHAR;
ALTER TABLE "public"."wfs_sql_sample" ADD COLUMN "parcel_id" NUMERIC(10,0);
ALTER TABLE "public"."wfs_sql_sample" ADD COLUMN "product_code" VARCHAR;
ALTER TABLE "public"."wfs_sql_sample" ADD COLUMN "aid_forms" VARCHAR;
ALTER TABLE "public"."wfs_sql_sample" ADD COLUMN "area_declared" FLOAT8;
ALTER TABLE "public"."wfs_sql_sample" ADD COLUMN "data_changed_date" timestamp with time zone;
ALTER TABLE "public"."wfs_sql_sample" ADD COLUMN "product_description" VARCHAR;
ALTER TABLE "public"."wfs_sql_sample" ADD COLUMN "shape.area" FLOAT8;
ALTER TABLE "public"."wfs_sql_sample" ADD COLUMN "shape.len" FLOAT8;

