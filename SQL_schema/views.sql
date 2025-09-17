# Customer Revenue View

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vw_customer_revenue` AS select `transactions`.`CustomerID` AS `CustomerID`,sum(`transactions`.`Revenue`) AS `TotalRevenue`,sum(`transactions`.`Profit`) AS `TotalProfit` from `transactions` group by `transactions`.`CustomerID`


# Daily Revenue View 

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vw_daily_revenue` AS select `transactions`.`TransactionDate` AS `TransactionDate`,sum(`transactions`.`Revenue`) AS `TotalRevenue`,sum(`transactions`.`Profit`) AS `TotalProfit` from `transactions` group by `transactions`.`TransactionDate` order by `transactions`.`TransactionDate`


# Product Performance View

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vw_product_performance` AS select `transactions`.`ProductID` AS `ProductID`,sum(`transactions`.`Quantity`) AS `TotalSold`,sum(`transactions`.`Profit`) AS `TotalProfit` from `transactions` group by `transactions`.`ProductID` order by `TotalProfit` desc


# Segment Revenue View 

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vw_segment_revenue` AS select `c`.`CustomerSegment` AS `CustomerSegment`,sum(`t`.`Revenue`) AS `SegmentRevenue`,sum(`t`.`Profit`) AS `SegmentProfit` from (`transactions` `t` join `customers` `c` on((`t`.`CustomerID` = `c`.`CustomerID`))) group by `c`.`CustomerSegment`


# Transactions View

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `transactions_view` AS select `t`.`TransactionID` AS `TransactionID`,`t`.`CustomerID` AS `CustomerID`,`t`.`ProductID` AS `ProductID`,`t`.`Quantity` AS `Quantity`,`t`.`TransactionDate` AS `TransactionDate`,date_format(str_to_date(`t`.`TransactionDate`,'%d-%m-%Y'),'%Y-%m') AS `MonthYear`,date_format(str_to_date(`t`.`TransactionDate`,'%d-%m-%Y'),'%b %Y') AS `MonthYearLabel`,`t`.`PaymentMethod` AS `PaymentMethod`,`t`.`Revenue` AS `Revenue`,`t`.`Price` AS `Price`,`t`.`Cost` AS `Cost`,`t`.`Profit` AS `Profit` from `transactions` `t`