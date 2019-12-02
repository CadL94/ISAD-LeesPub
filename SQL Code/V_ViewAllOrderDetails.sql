-- Creates a view that gets all order details

CREATE VIEW dbo.V_ViewAllOrderDetails
AS
SELECT OrderDetails.*, Orders.TableID, Orders.OrderDate
FROM dbo.OrderDetails, dbo.Orders
WHERE OrderDetails.OrderStatus = 1