drop sequence if exists access_log_seq;
drop sequence if exists civil_voice_seq;
drop sequence if exists civil_voice_comment_seq;
drop sequence if exists converter_job_seq;
drop sequence if exists converter_job_file_seq;
drop sequence if exists data_group_seq;
drop sequence if exists data_info_seq;
drop sequence if exists data_info_origin_seq;
drop sequence if exists data_attribute_file_info_seq;
drop sequence if exists data_attribute_file_parse_log_seq;
drop sequence if exists geopolicy_seq;
drop sequence if exists layer_seq;
drop sequence if exists layer_group_seq;
drop sequence if exists layer_file_info_seq;
drop sequence if exists menu_seq;
drop sequence if exists policy_seq;
drop sequence if exists role_seq;
drop sequence if exists upload_data_seq;
drop sequence if exists upload_data_file_seq;
drop sequence if exists user_data_group_seq;
drop sequence if exists user_group_seq;
drop sequence if exists user_group_role_seq;
drop sequence if exists user_group_menu_seq;
drop sequence if exists user_device_seq;
drop sequence if exists widget_seq;

create sequence access_log_seq increment 1 minvalue 1 maxvalue 9999999999999999 start 1 cache 1;
create sequence civil_voice_seq increment 1 minvalue 1 maxvalue 9999999999999999 start 1 cache 1;
create sequence civil_voice_comment_seq increment 1 minvalue 1 maxvalue 9999999999999999 start 1 cache 1;
create sequence converter_job_seq increment 1 minvalue 1 maxvalue 999999999999 start 1 cache 1;
create sequence converter_job_file_seq increment 1 minvalue 1 maxvalue 999999999999 start 1 cache 1;
create sequence data_group_seq increment 1 minvalue 1 maxvalue 999999999999 start 100 cache 1;
create sequence data_info_seq increment 1 minvalue 1 maxvalue 9999999999999999 start 1 cache 1;
create sequence data_info_origin_seq increment 1 minvalue 1 maxvalue 9999999999999999 start 1 cache 1;
create sequence data_attribute_file_info_seq increment 1 minvalue 1 maxvalue 9999999999999999 start 1 cache 1;
create sequence data_attribute_file_parse_log_seq increment 1 minvalue 1 maxvalue 9999999999999999 start 1 cache 1;
create sequence geopolicy_seq increment 1 minvalue 1 maxvalue 999999999999 start 2 cache 1;
create sequence layer_seq increment 1 minvalue 1 maxvalue 999999999999 start 10000 cache 1;
create sequence layer_group_seq increment 1 minvalue 1 maxvalue 999999999999 start 10000 cache 1;
--create sequence layer_file_info_seq increment 1 minvalue 1 maxvalue 9999999999999999 start 1000 cache 1;
create sequence layer_file_info_seq increment 1 minvalue 1 maxvalue 999999999999 start 1000 cache 1;
create sequence menu_seq increment 1 minvalue 1 maxvalue 999999999999 start 10000 cache 1;
create sequence policy_seq increment 1 minvalue 1 maxvalue 999999999999 start 2 cache 1;
create sequence role_seq increment 1 minvalue 1 maxvalue 999999999999 start 1 cache 1;
create sequence upload_data_seq increment 1 minvalue 1 maxvalue 9999999999999999 start 1 cache 1;
create sequence upload_data_file_seq increment 1 minvalue 1 maxvalue 9999999999999999 start 1 cache 1;
create sequence user_data_group_seq increment 1 minvalue 1 maxvalue 999999999999 start 1 cache 1;
create sequence user_group_seq increment 1 minvalue 1 maxvalue 999999999999 start 100 cache 1;
create sequence user_group_role_seq increment 1 minvalue 1 maxvalue 999999999999 start 1 cache 1;
create sequence user_group_menu_seq increment 1 minvalue 1 maxvalue 999999999999 start 10000 cache 1;
create sequence user_device_seq increment 1 minvalue 1 maxvalue 999999999999 start 1 cache 1;
create sequence widget_seq increment 1 minvalue 1 maxvalue 999999999999 start 1 cache 1;

