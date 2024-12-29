USE ISP_System;

INSERT INTO [dbo].[Users] ([UserType], [FullName], [Email], [Password], [Phone], [Address], [SignupDate])
VALUES 
('Admin', 'Ali Reza', 'ali.reza@example.com', 'password123', '912345678', 'Tehran, Iran', '2024-01-01'),
('Customer', 'Sara Ahmadi', 'sara.ahmadi@example.com', 'password123', '912345679', 'Mashhad, Iran', '2024-01-02'),
('Customer', 'Reza Hosseini', 'reza.hosseini@example.com', 'password123', '912345680', 'Isfahan, Iran', '2024-01-03'),
('Customer', 'Maryam Karimi', 'maryam.karimi@example.com', 'password123', '912345681', 'Shiraz, Iran', '2024-01-04'),
('Customer', 'Mohammad Jafari', 'mohammad.jafari@example.com', 'password123', '912345682', 'Tabriz, Iran', '2024-01-05');

INSERT INTO [dbo].[Services] ([ServiceName], [Description], [MonthlyCost])
VALUES 
('Internet', 'High-speed internet service', 50.00),
('Phone', 'Unlimited calling service', 30.00),
('TV', 'Cable TV service', 40.00),
('Mobile', 'Mobile phone service', 20.00),
('VoIP', 'Voice over IP service', 25.00);

INSERT INTO [dbo].[InternetPackages] ([PackageName], [Speed], [DataLimit], [MonthlyCost])
VALUES 
('Basic', '10 Mbps', '100 GB', 20.00),
('Standard', '50 Mbps', '500 GB', 40.00),
('Premium', '100 Mbps', '1 TB', 60.00),
('Ultra', '200 Mbps', '2 TB', 80.00),
('Unlimited', '500 Mbps', 'Unlimited', 100.00);

INSERT INTO [dbo].[ChargePackages] ([UserID], [PackageID], [Amount], [ChargeDateTime])
VALUES 
(1, 1, 20.00, '2024-01-01 10:00:00'),
(2, 2, 40.00, '2024-01-02 11:00:00'),
(3, 3, 60.00, '2024-01-03 12:00:00'),
(4, 4, 80.00, '2024-01-04 13:00:00'),
(5, 5, 100.00, '2024-01-05 14:00:00');

INSERT INTO [dbo].[Subscriptions] ([UserID], [ServiceID], [SubscriptionDate], [ExpirationDate], [Roaming], [Voicemail], [CallerTune], [FreeUsage], [SMS_Notification])
VALUES 
(1, 1, '2024-01-01', '2025-01-01', 1, 0, 0, 0, 1),
(2, 2, '2024-01-02', '2025-01-02', 1, 0, 0, 0, 1),
(3, 3, '2024-01-03', '2025-01-03', 1, 0, 0, 0, 1),
(4, 4, '2024-01-04', '2025-01-04', 1, 0, 0, 0, 1),
(5, 5, '2024-01-05', '2025-01-05', 1, 0, 0, 0, 1);

INSERT INTO [dbo].[Invoices] ([UserID], [SubscriptionID], [PackageID], [ChargeID], [Amount], [InvoiceDate], [DueDateTime], [DueDate], [Paid])
VALUES 
(1, 1, 1, 1, 20.00, '2024-01-01 10:00:00', '2024-01-10 10:00:00', '2024-01-10', 0),
(2, 2, 2, 2, 40.00, '2024-01-02 11:00:00', '2024-01-11 11:00:00', '2024-01-11', 0),
(3, 3, 3, 3, 60.00, '2024-01-03 12:00:00', '2024-01-12 12:00:00', '2024-01-12', 0),
(4, 4, 4, 4, 80.00, '2024-01-04 13:00:00', '2024-01-13 13:00:00', '2024-01-13', 0),
(5, 5, 5, 5, 100.00, '2024-01-05 14:00:00', '2024-01-14 14:00:00', '2024-01-14', 0);

INSERT INTO [dbo].[Payments] ([InvoiceID], [PaymentDate], [Amount])
VALUES 
(1, '2024-01-10', 20.00),
(2, '2024-01-11', 40.00),
(3, '2024-01-12', 60.00),
(4, '2024-01-13', 80.00),
(5, '2024-01-14', 100.00);

INSERT INTO [dbo].[UsageReports] ([UserID], [ServiceID], [UsageData], [ReportDate])
VALUES 
(1, 1, '100 GB used', '2024-01-01'),
(2, 2, '200 minutes used', '2024-01-02'),
(3, 3, '50 channels watched', '2024-01-03'),
(4, 4, '500 MB data used', '2024-01-04'),
(5, 5, '1000 MB data used', '2024-01-05');

INSERT INTO [dbo].[SupportTickets] ([UserID], [Subject], [Description], [Status], [CreatedDate], [UpdatedDate])
VALUES 
(1, 'Internet Issue', 'Slow internet speed', 'Open', '2024-01-01', '2024-01-01'),
(2, 'Phone Issue', 'Call drop issue', 'Open', '2024-01-02', '2024-01-02'),
(3, 'TV Issue', 'No signal', 'Open', '2024-01-03', '2024-01-03'),
(4, 'Mobile Issue', 'No network', 'Open', '2024-01-04', '2024-01-04'),
(5, 'VoIP Issue', 'Poor call quality', 'Open', '2024-01-05', '2024-01-05');

INSERT INTO [dbo].[Complaints] ([UserID], [ComplaintSubject], [ComplaintDetails], [ComplaintDate], [Status], [ResolutionDate])
VALUES 
(1, 'Billing Issue', 'Incorrect bill amount', '2024-01-01', 'Pending', NULL),
(2, 'Service Issue', 'Service not available', '2024-01-02', 'Pending', NULL),
(3, 'Technical Issue', 'Frequent disconnections', '2024-01-03', 'Pending', NULL),
(4, 'Customer Service Issue', 'Rude behavior', '2024-01-04', 'Pending', NULL),
(5, 'Quality Issue', 'Poor service quality', '2024-01-05', 'Pending', NULL);

INSERT INTO [dbo].[DiscountPlans] ([DiscountType], [DiscountCode], [PlanName], [Description], [DiscountPercentage], [StartDate], [EndDate])
VALUES 
('Seasonal', 'WINTER20', 'Winter Discount', '20% off on all services', 20.00, '2024-01-01', '2024-03-01'),
('Seasonal', 'SUMMER15', 'Summer Discount', '15% off on all services', 15.00, '2024-06-01', '2024-08-01'),
('Promotional', 'NEWUSER10', 'New User Discount', '10% off for new users', 10.00, '2024-01-01', '2024-12-31'),
('Loyalty', 'LOYAL5', 'Loyalty Discount', '5% off for loyal customers', 5.00, '2024-01-01', '2024-12-31'),
('Referral', 'REFER25', 'Referral Discount', '25% off for referrals', 25.00, '2024-01-01', '2024-12-31');

INSERT INTO [dbo].[UserDiscounts] ([UserID], [DiscountID], [PackageID], [AssignedDate])
VALUES 
(1, 1, 1, '2024-01-01'),
(2, 2, 2, '2024-01-02'),
(3, 3, 3, '2024-01-03'),
(4, 4, 4, '2024-01-04'),
(5, 5, 5, '2024-01-05');

INSERT INTO [dbo].[UserEquipment] ([UserID], [EquipmentType], [SerialNumber], [InstallationDate], [Status])
VALUES 
(1, 'Router', 'SN123456', '2024-01-01', 'Active'),
(2, 'Modem', 'SN123457', '2024-01-02', 'Active'),
(3, 'Set-Top Box', 'SN123458', '2024-01-03', 'Active'),
(4, 'Mobile Phone', 'SN123459', '2024-01-04', 'Active'),
(5, 'VoIP Adapter', 'SN123460', '2024-01-05', 'Active');

INSERT INTO [dbo].[CallHistory] ([UserID], [ContactNumber], [CallDateTime], [Duration], [Resolution])
VALUES 
(1, '912345678', '2024-01-01 10:00:00', '00:10:00', 'Resolved'),
(2, '912345679', '2024-01-02 11:00:00', '00:15:00', 'Resolved'),
(3, '912345680', '2024-01-03 12:00:00', '00:20:00', 'Resolved'),
(4, '912345681', '2024-01-04 13:00:00', '00:25:00', 'Resolved'),
(5, '912345682', '2024-01-05 14:00:00', '00:30:00', 'Resolved');

INSERT INTO [dbo].[SentMessages] ([UserID], [RecipientID], [MessageContext], [SentDateTime])
VALUES 
(1, 2, 'Hello, how are you?', '2024-01-01 10:00:00'),
(2, 3, 'Meeting at 3 PM', '2024-01-02 11:00:00'),
(3, 4, 'Project update', '2024-01-03 12:00:00'),
(4, 5, 'Happy New Year!', '2024-01-04 13:00:00'),
(5, 1, 'Reminder for payment', '2024-01-05 14:00:00');

INSERT INTO [dbo].[ReceivedMessages] ([UserID], [SenderID], [MessageContext], [ReceivedDateTime])
VALUES 
(1, 2, 'I am fine, thank you!', '2024-01-01 10:05:00'),
(2, 3, 'Got it, see you then', '2024-01-02 11:05:00'),
(3, 4, 'Thanks for the update', '2024-01-03 12:05:00'),
(4, 5, 'Happy New Year to you too!', '2024-01-04 13:05:00'),
(5, 1, 'Payment reminder received', '2024-01-05 14:05:00');

INSERT INTO [dbo].[NotificationMessages] ([UserID], [MessageContext])
VALUES 
(1, 'Your internet package will expire soon.'),
(2, 'Your payment is due in 3 days.'),
(3, 'New service available: VoIP.'),
(4, 'Your subscription has been renewed.'),
(5, 'Discount applied to your account.');