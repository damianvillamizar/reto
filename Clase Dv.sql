CREATE DATABASE IF NOT EXISTS mydb;
USE mydb;

CREATE TABLE departamento (
    dept_id INT NOT NULL AUTO_INCREMENT,
    nombredepto VARCHAR(45) NULL,
    ubicacion VARCHAR(45) NULL,
    PRIMARY KEY (dept_id)
);

CREATE TABLE empleado (
    emp_id INT NOT NULL AUTO_INCREMENT,
    nombre VARCHAR(45) NULL,
    apellido VARCHAR(45) NULL,
    correo VARCHAR(45) NULL,
    salario VARCHAR(45) NULL,
    jefe_id VARCHAR(45) NULL,
    departamento_dept_id INT NOT NULL,
    PRIMARY KEY (emp_id),
    INDEX fk_empleado_departamento_idx (departamento_dept_id ASC),
    CONSTRAINT fk_empleado_departamento
        FOREIGN KEY (departamento_dept_id)
        REFERENCES departamento (dept_id)
        ON DELETE NO ACTION
        ON UPDATE NO ACTION
);