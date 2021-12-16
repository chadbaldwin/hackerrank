------------------------------------------------------------------------------
-- Input data
------------------------------------------------------------------------------
	IF OBJECT_ID('tempdb..#rawdata','U') IS NOT NULL DROP TABLE #rawdata; --SELECT * FROM #rawdata
	CREATE TABLE #rawdata (ID int IDENTITY, Val varchar(20) NOT NULL);

	DECLARE @UseSampleData bit = 0;

	IF (@UseSampleData = 1)
	BEGIN;
		RAISERROR('Sample data',0,1) WITH NOWAIT;
		INSERT INTO #rawdata (Val) VALUES
			('forward 5'),('down 5'),('forward 8'),('up 3'),('down 8'),('forward 2');
	END;
	ELSE
	BEGIN;
		RAISERROR('Real data',0,1) WITH NOWAIT;
		INSERT INTO #rawdata (Val) VALUES
			('forward 8'),('down 9'),('up 4'),('down 8'),('down 3'),('down 3'),('down 2'),('forward 1'),('forward 4'),('down 5'),('up 7'),('forward 1'),('down 1'),('down 6'),('down 9'),('down 5'),('forward 5'),('forward 6'),('forward 4'),('down 2'),('down 8'),('forward 3'),('down 5'),('forward 6'),('up 7'),('up 2'),('forward 2'),('forward 4'),('forward 1'),('up 8'),('up 9'),('down 8'),('up 8'),('up 6'),('up 2'),('down 7'),('up 3'),('forward 8'),('forward 5'),('down 8'),('down 8'),('forward 5'),('down 3'),('down 4'),('down 5'),('down 2'),('up 7'),('down 1'),('forward 9'),('forward 9'),('up 6'),('down 5'),('up 1'),('down 8'),('up 1'),('forward 2'),('down 4'),('down 5'),('down 2'),('up 7'),('forward 9'),('up 8'),('down 3'),('up 6'),('down 2'),('up 2'),('forward 3'),('up 1'),('up 1'),('forward 9'),('down 3'),('down 5'),('up 7'),('down 1'),('up 5'),('up 5'),('up 7'),('down 9'),('down 3'),('up 3'),('forward 9'),('forward 7'),('up 9'),('down 3'),('down 2'),('up 8'),('forward 5'),('forward 9'),('down 5'),('down 2'),('down 9'),('down 6'),('down 6'),('up 3'),('forward 3'),('up 6'),('forward 9'),('down 3'),('down 2'),('forward 6'),
			('down 7'),('down 2'),('down 8'),('forward 2'),('forward 8'),('forward 4'),('forward 1'),('up 6'),('forward 2'),('forward 8'),('forward 5'),('forward 4'),('up 1'),('down 8'),('up 3'),('forward 8'),('forward 4'),('up 6'),('down 2'),('forward 6'),('forward 9'),('down 2'),('up 3'),('forward 8'),('down 6'),('up 4'),('down 7'),('up 3'),('forward 4'),('down 8'),('forward 5'),('forward 1'),('down 3'),('forward 1'),('forward 8'),('down 3'),('forward 4'),('forward 2'),('up 7'),('forward 6'),('forward 8'),('forward 6'),('down 5'),('down 2'),('down 8'),('down 2'),('down 9'),('down 5'),('down 3'),('down 8'),('up 1'),('forward 1'),('up 5'),('up 1'),('up 6'),('up 3'),('up 2'),('forward 5'),('forward 6'),('down 4'),('up 3'),('up 9'),('down 1'),('forward 1'),('forward 6'),('down 9'),('forward 5'),('forward 3'),('forward 2'),('down 7'),('down 5'),('down 8'),('forward 9'),('forward 4'),('down 2'),('up 9'),('down 1'),('forward 5'),('forward 1'),('forward 9'),('down 8'),('forward 5'),('down 8'),('forward 3'),('up 4'),('down 7'),('down 9'),('forward 3'),('forward 7'),('down 9'),('up 5'),('up 7'),('forward 8'),('down 3'),('down 9'),('down 1'),('forward 3'),('down 1'),('up 9'),('forward 6'),
			('down 9'),('forward 1'),('forward 5'),('down 6'),('up 7'),('forward 9'),('down 9'),('forward 6'),('down 3'),('up 6'),('up 2'),('up 1'),('up 9'),('down 9'),('forward 4'),('forward 6'),('up 7'),('forward 2'),('down 5'),('forward 7'),('down 5'),('forward 4'),('down 8'),('up 3'),('down 1'),('forward 5'),('down 5'),('up 6'),('down 6'),('forward 4'),('down 8'),('down 6'),('down 7'),('down 9'),('down 4'),('forward 5'),('down 8'),('down 7'),('forward 3'),('forward 5'),('up 8'),('down 4'),('down 1'),('up 6'),('up 9'),('down 2'),('down 2'),('up 1'),('up 7'),('forward 1'),('down 1'),('down 4'),('down 8'),('forward 1'),('forward 3'),('down 8'),('up 9'),('forward 1'),('down 6'),('forward 3'),('down 9'),('down 2'),('up 8'),('forward 5'),('up 1'),('forward 9'),('down 4'),('forward 3'),('up 6'),('up 4'),('down 9'),('down 8'),('down 3'),('forward 6'),('forward 6'),('down 1'),('down 2'),('down 2'),('down 2'),('up 7'),('down 2'),('forward 9'),('down 3'),('up 5'),('forward 9'),('up 5'),('forward 1'),('down 1'),('forward 7'),('down 8'),('down 9'),('down 1'),('forward 8'),('up 1'),('forward 8'),('down 1'),('forward 9'),('down 8'),('down 2'),('forward 4'),
			('up 2'),('down 7'),('forward 6'),('forward 6'),('forward 4'),('up 8'),('up 2'),('down 8'),('up 7'),('forward 2'),('forward 6'),('forward 3'),('up 5'),('forward 9'),('down 9'),('forward 6'),('up 2'),('down 6'),('forward 4'),('forward 5'),('down 3'),('up 2'),('forward 3'),('forward 2'),('up 7'),('down 1'),('up 1'),('up 8'),('down 4'),('forward 7'),('forward 2'),('up 2'),('down 4'),('forward 4'),('forward 2'),('forward 2'),('down 8'),('down 2'),('down 2'),('forward 6'),('up 2'),('up 9'),('down 1'),('down 7'),('forward 9'),('forward 4'),('up 8'),('forward 2'),('forward 5'),('down 3'),('down 6'),('down 4'),('forward 7'),('up 1'),('forward 7'),('down 8'),('up 2'),('down 8'),('forward 6'),('down 3'),('up 9'),('up 6'),('up 6'),('forward 5'),('forward 1'),('forward 3'),('forward 3'),('down 7'),('down 3'),('forward 8'),('forward 2'),('down 7'),('down 1'),('up 4'),('forward 2'),('forward 1'),('up 6'),('forward 9'),('up 4'),('forward 5'),('up 4'),('forward 3'),('down 1'),('forward 6'),('forward 2'),('down 3'),('down 7'),('forward 7'),('down 4'),('forward 6'),('down 8'),('forward 5'),('up 9'),('up 9'),('forward 4'),('forward 8'),('down 6'),('down 7'),('forward 1'),('up 4'),
			('forward 9'),('forward 7'),('forward 2'),('forward 6'),('up 4'),('forward 4'),('down 3'),('down 2'),('up 4'),('forward 4'),('forward 3'),('up 8'),('forward 8'),('down 9'),('forward 4'),('forward 6'),('forward 7'),('down 5'),('forward 6'),('down 3'),('up 2'),('down 4'),('forward 1'),('up 3'),('forward 4'),('down 7'),('down 9'),('down 6'),('up 7'),('down 2'),('down 5'),('forward 7'),('up 6'),('down 2'),('forward 4'),('down 9'),('up 8'),('forward 6'),('down 4'),('down 3'),('up 9'),('down 6'),('down 9'),('up 3'),('down 2'),('forward 3'),('down 1'),('forward 1'),('forward 5'),('down 7'),('forward 2'),('down 8'),('down 8'),('down 7'),('forward 5'),('forward 9'),('forward 9'),('forward 2'),('up 5'),('down 2'),('forward 3'),('down 2'),('forward 9'),('up 1'),('forward 1'),('up 6'),('down 1'),('forward 4'),('down 5'),('forward 2'),('up 7'),('up 4'),('up 3'),('forward 6'),('down 5'),('forward 6'),('down 6'),('forward 6'),('down 2'),('down 8'),('up 9'),('forward 2'),('down 4'),('forward 4'),('forward 9'),('up 9'),('down 4'),('up 7'),('down 6'),('up 2'),('up 7'),('down 5'),('down 6'),('down 8'),('down 1'),('forward 6'),('forward 6'),('forward 7'),('down 3'),('forward 3'),
			('forward 8'),('forward 1'),('forward 2'),('down 8'),('forward 6'),('down 6'),('forward 8'),('forward 3'),('forward 6'),('down 4'),('down 2'),('forward 4'),('forward 6'),('forward 8'),('down 3'),('down 3'),('down 4'),('up 1'),('forward 3'),('down 2'),('down 3'),('down 9'),('down 3'),('down 8'),('down 1'),('down 6'),('forward 5'),('down 5'),('down 7'),('up 3'),('forward 5'),('down 7'),('down 7'),('forward 6'),('down 6'),('up 6'),('forward 2'),('up 9'),('down 3'),('forward 3'),('forward 4'),('up 6'),('down 7'),('forward 1'),('up 8'),('forward 3'),('down 1'),('forward 6'),('forward 7'),('down 5'),('down 6'),('down 8'),('up 6'),('down 4'),('down 5'),('down 1'),('up 1'),('up 9'),('up 4'),('forward 2'),('down 5'),('down 7'),('forward 5'),('forward 2'),('up 1'),('down 7'),('up 6'),('forward 5'),('down 5'),('down 9'),('up 4'),('down 6'),('forward 8'),('down 5'),('forward 6'),('forward 1'),('forward 5'),('forward 4'),('down 2'),('down 7'),('up 7'),('down 9'),('down 7'),('up 4'),('down 3'),('up 9'),('forward 3'),('up 1'),('up 7'),('forward 4'),('forward 6'),('up 2'),('forward 2'),('forward 4'),('down 6'),('forward 4'),('forward 6'),('forward 9'),('forward 4'),('forward 8'),
			('up 9'),('up 4'),('forward 1'),('forward 3'),('down 5'),('down 4'),('up 6'),('up 2'),('forward 9'),('up 9'),('up 2'),('forward 6'),('down 5'),('up 7'),('forward 3'),('forward 4'),('down 5'),('up 8'),('forward 7'),('forward 3'),('up 5'),('down 7'),('down 6'),('forward 9'),('up 2'),('forward 5'),('down 2'),('down 9'),('forward 1'),('down 4'),('forward 3'),('up 9'),('down 2'),('up 5'),('down 8'),('forward 1'),('up 9'),('up 7'),('up 1'),('forward 7'),('forward 1'),('forward 7'),('down 2'),('up 6'),('forward 6'),('down 1'),('forward 1'),('down 7'),('down 9'),('forward 9'),('up 3'),('forward 3'),('down 1'),('forward 1'),('forward 9'),('down 7'),('forward 2'),('down 7'),('forward 2'),('forward 4'),('down 5'),('down 5'),('forward 5'),('down 9'),('down 4'),('forward 3'),('down 4'),('down 3'),('down 3'),('down 2'),('forward 1'),('up 8'),('forward 1'),('forward 5'),('forward 1'),('forward 2'),('forward 4'),('forward 6'),('forward 8'),('forward 7'),('down 5'),('up 6'),('forward 8'),('down 9'),('up 3'),('up 2'),('down 4'),('up 1'),('forward 6'),('up 6'),('forward 9'),('forward 3'),('down 3'),('down 5'),('forward 6'),('down 6'),('down 4'),('up 6'),('forward 4'),('up 8'),
			('down 4'),('down 8'),('down 3'),('down 1'),('down 6'),('down 7'),('down 8'),('down 2'),('down 5'),('forward 4'),('forward 6'),('forward 7'),('down 1'),('down 5'),('forward 9'),('down 6'),('forward 6'),('forward 7'),('forward 4'),('forward 2'),('forward 2'),('up 6'),('forward 9'),('up 6'),('down 1'),('forward 4'),('down 2'),('up 3'),('forward 5'),('up 1'),('forward 4'),('forward 4'),('up 4'),('down 7'),('down 5'),('up 4'),('forward 5'),('up 8'),('up 4'),('up 2'),('up 8'),('forward 6'),('down 9'),('down 8'),('down 4'),('down 4'),('up 9'),('forward 4'),('forward 5'),('forward 4'),('forward 9'),('down 7'),('down 4'),('down 3'),('down 7'),('forward 3'),('forward 1'),('down 1'),('forward 5'),('forward 6'),('down 1'),('forward 3'),('down 7'),('up 4'),('forward 4'),('forward 7'),('up 1'),('up 9'),('down 7'),('down 5'),('up 8'),('forward 3'),('forward 5'),('forward 3'),('down 6'),('down 1'),('down 9'),('up 9'),('forward 5'),('down 1'),('down 1'),('down 8'),('forward 8'),('up 2'),('down 1'),('down 2'),('down 6'),('down 3'),('forward 7'),('forward 1'),('down 4'),('up 9'),('down 7'),('down 6'),('down 9'),('forward 5'),('forward 4'),('forward 9'),('up 7'),('forward 5'),
			('down 6'),('forward 9'),('forward 2'),('forward 8'),('up 9'),('forward 2'),('down 8'),('up 8'),('down 8'),('down 8'),('forward 2'),('down 1'),('forward 5'),('down 4'),('up 2'),('forward 8'),('up 4'),('up 8'),('forward 4'),('forward 6'),('forward 6'),('forward 3'),('forward 5'),('forward 4'),('down 6'),('up 6'),('forward 7'),('up 3'),('down 1'),('down 1'),('down 9'),('forward 6'),('down 9'),('forward 2'),('down 7'),('down 2'),('down 5'),('forward 3'),('down 4'),('down 8'),('down 3'),('forward 6'),('up 9'),('forward 1'),('forward 4'),('forward 8'),('up 9'),('down 5'),('up 5'),('up 9'),('forward 6'),('up 2'),('forward 7'),('up 5'),('forward 8'),('forward 6'),('down 2'),('down 7'),('up 8'),('up 3'),('forward 4'),('forward 1'),('down 8'),('down 4'),('forward 6'),('forward 6'),('up 6'),('up 3'),('up 7'),('forward 6'),('up 2'),('down 8'),('forward 1'),('forward 3'),('down 3'),('forward 8'),('forward 5'),('forward 3'),('forward 9'),('down 6'),('forward 9'),('up 7'),('down 3'),('down 8'),('forward 4'),('down 9'),('up 8'),('up 1'),('forward 2'),('down 2'),('forward 1'),('down 8'),('forward 7'),('up 4'),('down 1'),('forward 8'),('down 2'),('forward 3'),('forward 9'),('down 7'),
			('up 4'),('up 2'),('forward 1'),('down 2'),('up 8'),('forward 4'),('down 1'),('forward 5'),('forward 1'),('down 5'),('forward 1'),('up 2'),('forward 6'),('down 5'),('down 8'),('down 3'),('down 2'),('forward 1'),('forward 5'),('down 8'),('down 1'),('forward 5'),('down 7'),('down 4'),('forward 5'),('down 1'),('down 1'),('forward 9'),('down 7'),('up 9'),('down 6'),('forward 4'),('up 8'),('forward 6'),('forward 1'),('up 6'),('forward 3'),('down 3'),('up 6'),('forward 2'),('down 2'),('forward 3'),('down 2'),('up 4'),('down 6'),('forward 4'),('down 6'),('down 4'),('up 2'),('down 2'),('up 5'),('up 2'),('down 9'),('down 5'),('forward 1'),('down 6'),('forward 4'),('forward 9'),('down 1'),('down 9'),('forward 3'),('forward 8'),('forward 9'),('down 4'),('down 1'),('up 1'),('up 7'),('down 5'),('down 3'),('down 2'),('down 8'),('forward 5'),('up 1'),('down 4'),('down 8'),('down 8'),('forward 1'),('down 5'),('forward 7'),('forward 9'),('forward 5'),('forward 2'),('down 9'),('up 1'),('down 6'),('down 5'),('forward 4'),('forward 3'),('down 4'),('down 3'),('down 8'),('forward 6'),('down 2'),('forward 7'),('down 7'),('forward 8'),('forward 1'),('forward 7'),('forward 8'),('forward 6');
	END;

	-- Parse the values out to columns
	IF OBJECT_ID('tempdb..#data','U') IS NOT NULL DROP TABLE #data; --SELECT * FROM #data
	SELECT d.ID
		, Direction	= CASE x.Direction WHEN 'up' THEN 'V' WHEN 'down' THEN 'V' WHEN 'forward' THEN 'H' ELSE NULL END
		, Distance	= IIF(x.Direction = 'up', -1, 1) * x.Distance
	INTO #data
	FROM #rawdata d
		CROSS APPLY (
			SELECT Direction = SUBSTRING(d.Val, 1, CHARINDEX(' ', d.Val)-1)
				, Distance = CONVERT(int, SUBSTRING(d.Val, CHARINDEX(' ', d.Val)+1, 10))
		) x;
------------------------------------------------------------------------------

------------------------------------------------------------------------------
-- Part 1
------------------------------------------------------------------------------
	SELECT Answer = SUM(IIF(d.Direction = 'V', d.Distance, NULL)) * SUM(IIF(d.Direction = 'H', d.Distance, NULL))
	FROM #data d;
------------------------------------------------------------------------------

------------------------------------------------------------------------------
-- Part 2
------------------------------------------------------------------------------
	-- Horizontal Position (sum of "forward")
	-- Aim (sum of "up" + "down")

	SELECT Answer = MAX(x.HPos) * SUM(IIF(x.Direction = 'H', x.Distance * x.Aim, 0))
	FROM (
		SELECT d.ID, d.Direction, d.Distance
			, Aim = SUM(IIF(d.Direction = 'V', d.Distance, 0)) OVER (ORDER BY d.ID)
			, HPos = SUM(IIF(d.Direction = 'H', d.Distance, 0)) OVER (ORDER BY d.ID)
		FROM #data d
	) x;

	-- Alternative solution - discovered after using first solution to find answer
	SELECT Answer = SUM(IIF(x.Direction = 'H', x.Distance, 0)) * SUM(IIF(x.Direction = 'H', x.Distance * x.Aim, 0))
	FROM (
		SELECT d.Direction, d.Distance
			, Aim = SUM(IIF(d.Direction = 'V', d.Distance, 0)) OVER (ORDER BY d.ID)
		FROM #data d
	) x;
------------------------------------------------------------------------------

------------------------------------------------------------------------------