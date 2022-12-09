DO
$$
BEGIN
    IF EXISTS (
        SELECT CONSTRAINT_NAME FROM INFORMATION_SCHEMA.TABLE_CONSTRAINTS 
        WHERE TABLE_NAME = 'ir_playbookmember' 
        AND CONSTRAINT_TYPE = 'PRIMARY KEY' 
        AND TABLE_CATALOG = (SELECT CURRENT_DATABASE())
    ) THEN
        ALTER TABLE IR_PlaybookMember DROP CONSTRAINT ir_playbookmember_pkey;
	END IF;
END
$$;
