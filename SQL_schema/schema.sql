CREATE DATABASE  IF NOT EXISTS `retaildb` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `retaildb`;
-- MySQL dump 10.13  Distrib 8.0.43, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: retaildb
-- ------------------------------------------------------
-- Server version	8.0.43

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `customers`
--

DROP TABLE IF EXISTS `customers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customers` (
  `CustomerID` text,
  `Name` text,
  `SignupDate` text,
  `Region` text,
  `CustomerSegment` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `products` (
  `ProductID` text,
  `ProductName` text,
  `Category` text,
  `Price` decimal(10,2) DEFAULT NULL,
  `Cost` decimal(10,2) DEFAULT NULL,
  `Stock` bigint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `transactions`
--

DROP TABLE IF EXISTS `transactions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `transactions` (
  `TransactionID` text,
  `CustomerID` text,
  `ProductID` text,
  `Quantity` bigint DEFAULT NULL,
  `TransactionDate` text,
  `PaymentMethod` text,
  `Revenue` decimal(10,2) DEFAULT NULL,
  `Price` double DEFAULT NULL,
  `Cost` decimal(10,2) DEFAULT NULL,
  `Profit` decimal(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Temporary view structure for view `transactions_view`
--

DROP TABLE IF EXISTS `transactions_view`;
/*!50001 DROP VIEW IF EXISTS `transactions_view`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `transactions_view` AS SELECT 
 1 AS `TransactionID`,
 1 AS `CustomerID`,
 1 AS `ProductID`,
 1 AS `Quantity`,
 1 AS `TransactionDate`,
 1 AS `MonthYear`,
 1 AS `MonthYearLabel`,
 1 AS `PaymentMethod`,
 1 AS `Revenue`,
 1 AS `Price`,
 1 AS `Cost`,
 1 AS `Profit`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `vw_customer_revenue`
--

DROP TABLE IF EXISTS `vw_customer_revenue`;
/*!50001 DROP VIEW IF EXISTS `vw_customer_revenue`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vw_customer_revenue` AS SELECT 
 1 AS `CustomerID`,
 1 AS `TotalRevenue`,
 1 AS `TotalProfit`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `vw_daily_revenue`
--

DROP TABLE IF EXISTS `vw_daily_revenue`;
/*!50001 DROP VIEW IF EXISTS `vw_daily_revenue`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vw_daily_revenue` AS SELECT 
 1 AS `TransactionDate`,
 1 AS `TotalRevenue`,
 1 AS `TotalProfit`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `vw_product_performance`
--

DROP TABLE IF EXISTS `vw_product_performance`;
/*!50001 DROP VIEW IF EXISTS `vw_product_performance`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vw_product_performance` AS SELECT 
 1 AS `ProductID`,
 1 AS `TotalSold`,
 1 AS `TotalProfit`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `vw_segment_revenue`
--

DROP TABLE IF EXISTS `vw_segment_revenue`;
/*!50001 DROP VIEW IF EXISTS `vw_segment_revenue`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vw_segment_revenue` AS SELECT 
 1 AS `CustomerSegment`,
 1 AS `SegmentRevenue`,
 1 AS `SegmentProfit`*/;
SET character_set_client = @saved_cs_client;

--
-- Final view structure for view `transactions_view`
--

/*!50001 DROP VIEW IF EXISTS `transactions_view`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `transactions_view` AS select `t`.`TransactionID` AS `TransactionID`,`t`.`CustomerID` AS `CustomerID`,`t`.`ProductID` AS `ProductID`,`t`.`Quantity` AS `Quantity`,`t`.`TransactionDate` AS `TransactionDate`,date_format(str_to_date(`t`.`TransactionDate`,'%d-%m-%Y'),'%Y-%m') AS `MonthYear`,date_format(str_to_date(`t`.`TransactionDate`,'%d-%m-%Y'),'%b %Y') AS `MonthYearLabel`,`t`.`PaymentMethod` AS `PaymentMethod`,`t`.`Revenue` AS `Revenue`,`t`.`Price` AS `Price`,`t`.`Cost` AS `Cost`,`t`.`Profit` AS `Profit` from `transactions` `t` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vw_customer_revenue`
--

/*!50001 DROP VIEW IF EXISTS `vw_customer_revenue`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vw_customer_revenue` AS select `transactions`.`CustomerID` AS `CustomerID`,sum(`transactions`.`Revenue`) AS `TotalRevenue`,sum(`transactions`.`Profit`) AS `TotalProfit` from `transactions` group by `transactions`.`CustomerID` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vw_daily_revenue`
--

/*!50001 DROP VIEW IF EXISTS `vw_daily_revenue`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vw_daily_revenue` AS select `transactions`.`TransactionDate` AS `TransactionDate`,sum(`transactions`.`Revenue`) AS `TotalRevenue`,sum(`transactions`.`Profit`) AS `TotalProfit` from `transactions` group by `transactions`.`TransactionDate` order by `transactions`.`TransactionDate` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vw_product_performance`
--

/*!50001 DROP VIEW IF EXISTS `vw_product_performance`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vw_product_performance` AS select `transactions`.`ProductID` AS `ProductID`,sum(`transactions`.`Quantity`) AS `TotalSold`,sum(`transactions`.`Profit`) AS `TotalProfit` from `transactions` group by `transactions`.`ProductID` order by `TotalProfit` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vw_segment_revenue`
--

/*!50001 DROP VIEW IF EXISTS `vw_segment_revenue`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vw_segment_revenue` AS select `c`.`CustomerSegment` AS `CustomerSegment`,sum(`t`.`Revenue`) AS `SegmentRevenue`,sum(`t`.`Profit`) AS `SegmentProfit` from (`transactions` `t` join `customers` `c` on((`t`.`CustomerID` = `c`.`CustomerID`))) group by `c`.`CustomerSegment` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-09-17 15:59:46
