create table job_titles
(job_title_id number(5)    not null,
 job_title    varchar2(50) not null);

alter table job_titles 
add (constraint pk_job_title primary key (job_title_id),
     constraint uq_job_title unique (job_title));
