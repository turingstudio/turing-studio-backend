BEGIN
    DROP TABLE  IF EXISTS app_instance;
    CREATE TABLE app_instance
      SELECT * FROM app WHERE id = 1;

    DROP TABLE  IF EXISTS screen_instance;
    CREATE TABLE screen_instance
      SELECT * FROM screen WHERE app_id = 1;

    DROP TABLE  IF EXISTS form_instance;
    CREATE TABLE form_instance
      SELECT * FROM form WHERE app_id = 1;
END
