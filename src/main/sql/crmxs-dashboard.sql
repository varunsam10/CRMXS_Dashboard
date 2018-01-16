-- MySQL dump 10.13  Distrib 5.6.16, for Win32 (x86)
--
-- Host: localhost    Database: crmxsdashboard
-- ------------------------------------------------------
-- Server version	5.6.16

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `authorities`
--

DROP TABLE IF EXISTS `authorities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `authorities` (
  `username` varchar(50) NOT NULL,
  `authority` varchar(50) NOT NULL,
  UNIQUE KEY `ix_auth_username` (`username`,`authority`),
  CONSTRAINT `fk_authorities_users` FOREIGN KEY (`username`) REFERENCES `users` (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `authorities`
--

LOCK TABLES `authorities` WRITE;
/*!40000 ALTER TABLE `authorities` DISABLE KEYS */;
INSERT INTO `authorities` VALUES ('sree','ROLE_ADMIN'),('sree','ROLE_USER');
/*!40000 ALTER TABLE `authorities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `enabled` tinyint(1) NOT NULL,
  PRIMARY KEY (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES ('sree','secret',1);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2014-02-16 11:02:34


CREATE TABLE `country` (
  `code` char(3) NOT NULL,
  `name` char(52) NOT NULL,
  `continent` char(100) NOT NULL DEFAULT 'Asia',
  `region` char(26) NOT NULL,
  `population` int(11) NOT NULL DEFAULT '0',
  `capital` int(11) DEFAULT NULL,
  PRIMARY KEY (`code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8

-------------------------------------------------------------------------------------------------------------------------
-- Dashboard Table --

-- MySQL dump 10.13  Distrib 5.6.23, for Win64 (x86_64)
--
-- Host: localhost    Database: crmxsdashboard
-- ------------------------------------------------------
-- Server version	5.6.24-log

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `dashboard`
--

DROP TABLE IF EXISTS `dashboard`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dashboard` (
  `dashId` varchar(5) NOT NULL,
  `name` varchar(45) NOT NULL,
  PRIMARY KEY (`dashId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dashboard`
--

LOCK TABLES `dashboard` WRITE;
/*!40000 ALTER TABLE `dashboard` DISABLE KEYS */;
INSERT INTO `dashboard` VALUES ('d0001','Maifest'),('d0002','Tiger Redemptions');
/*!40000 ALTER TABLE `dashboard` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-12-13 17:13:00


------------------------------------------------------------------------------------------------------------------------
-- Widget Table --

-- MySQL dump 10.13  Distrib 5.6.23, for Win64 (x86_64)
--
-- Host: localhost    Database: crmxsdashboard
-- ------------------------------------------------------
-- Server version	5.6.24-log

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `widget`
--

DROP TABLE IF EXISTS `widget`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `widget` (
  `widgetId` varchar(5) NOT NULL,
  `widgetContent` blob NOT NULL,
  `dashId` varchar(45) NOT NULL,
  PRIMARY KEY (`widgetId`),
  KEY `dashId` (`dashId`),
  CONSTRAINT `dashboard_Id` FOREIGN KEY (`dashId`) REFERENCES `dashboard` (`dashId`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `widget`
--

LOCK TABLES `widget` WRITE;
/*!40000 ALTER TABLE `widget` DISABLE KEYS */;
INSERT INTO `widget` VALUES ('w0001','{\n	\"widgetTitle\": \"Day Wise\",\n	\"widgetId\": \"w0001\",\n	\"widgetType\": \"chart\",\n	\"graphType\": \"exploratory\",\n	\"widgetDimension\": \"normal\",\n	\"chartType\": \"column\",\n	\"widgetContent\": {\n		\"data\": [{\n			\"x\": [20, 14, 23, 8, 11, 25, 13, 17, 19, 25, 22, 30],\n			\"y\": [\"Tiger\", \"Desperado\", \"Heiniken\", \"Kingfisher\", \"brand1\", \"brand2\", \"brand3\", \"brand4\", \"brand5\", \"brand6\", \"brand7\", \"brand8\"],\n			\"name\": \"SF Breweries\",\n			\"orientation\": \"h\",\n			\"marker\": {\n				\"color\": \"rgb(55, 83, 109)\",\n				\"opacity\": 0.6\n			},\n			\"type\": \"bar\",\n			\"uid\": \"f65491\"\n		}, {\n			\"x\": [12, 18, 29, 11, 15, 21, 16, 10, 12, 22, 19, 27],\n			\"y\": [\"Tiger\", \"Desperado\", \"Heiniken\", \"Kingfisher\", \"brand1\", \"brand2\", \"brand3\", \"brand4\", \"brand5\", \"brand6\", \"brand7\", \"brand8\"],\n			\"name\": \"LA Breweries\",\n			\"orientation\": \"h\",\n			\"type\": \"bar\",\n			\"marker\": {\n				\"color\": \"rgb(26, 118, 255)\",\n				\"opcacity\": 0.6\n			},\n			\"uid\": \"be7f44\"\n		}],\n		\"layout\": {\n			\"title\": \"Number of records\",\n			\"barmode\": \"group\",\n			\"xaxis\": {\n				\"type\": \"linear\",\n				\"range\": [0, 31.57894736842105],\n				\"autorange\": true\n			},\n			\"yaxis\": {\n				\"type\": \"category\",\n				\"range\": [-0.5, 11.5],\n				\"autorange\": true\n			}\n		},\n		\"config\": {\n			\"modeBarButtonsToRemove\": [\"sendDataToCloud\"],\n			\"displaylogo\": false\n		}\n	}}','d0001'),('w0002','{\n	\"widgetTitle\": \"Hour Wise Redemptions\",\n	\"widgetId\": \"w0002\",\n	\"widgetType\": \"chart\",\n	\"graphType\": \"exploratory\",\n	\"widgetDimension\": \"normal\",\n	\"chartType\": \"barline\",\n	\"widgetContent\": {\n		\"data\": [{\n			\"x\": [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12],\n			\"y\": [1.5, 1, 1.3, 0.7, 0.8, 0.9, 1.1, 1.3, 1.5, 1, 1.4, 0.6, 1.3],\n			\"type\": \"bar\",\n			\"name\": \"SF Brewries\",\n			\"marker\": {\n				\"color\": \"rgb(26, 118, 255)\",\n				\"opacity\": 0.6\n			},\n			\"uid\": \"4158c3\"\n		}, {\n			\"x\": [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12],\n			\"y\": [1, 0.5, 0.7, 1.2, 0.3, 0.4, 0.6, 0.7, 1, 0.5, 0.8, 0.9, 1.3],\n			\"type\": \"scatter\",\n			\"name\": \"LA Brewries\",\n			\"marker\": {\n				\"color\": \"rgb(55, 83, 109)\",\n				\"opacity\": 0.6\n			},\n			\"uid\": \"f9273a\"\n		}],\n		\"layout\": {\n			\"xaxis\": {\n				\"title\": \" \",\n				\"type\": \"linear\",\n				\"range\": [-0.9371980676328502, 12.93719806763285],\n				\"autorange\": true\n			},\n			\"yaxis\": {\n				\"title\": \"Number of redemptions\",\n				\"type\": \"linear\",\n				\"range\": [0, 1.5789473684210527],\n				\"autorange\": true\n			}\n		},\n		\"config\": {\n			\"modeBarButtonsToRemove\": [\"sendDataToCloud\"],\n			\"displaylogo\": false\n		}\n	}\n}','d0001'),('w0003','{\n	\"widgetTitle\": \"Sales Figures\",\n	\"widgetId\": \"w0003\",\n	\"widgetType\": \"chart\",\n	\"graphType\": \"exploratory\",\n	\"widgetDimension\": \"normal\",\n	\"chartType\": \"pie\",\n	\"widgetContent\": {\n		\"data\": [{\n			\"values\": [19, 26, 35, 10, 10],\n			\"labels\": [\"Tiger\", \"Heiniken\", \"Brand1\", \"Brand2\", \"Brand3\"],\n			\"type\": \"pie\",\n			\"marker\": {\n				\"colors\": [\"rgb(69,117,180)\", \"rgb(26, 118, 255)\", \"rgb(49,54,149)\", \"rgb(116,173,209)\", \"rgb(171,217,233)\"],\n				\"opacity\": 0.6\n			},\n			\"uid\": \"fafc87\"\n		}],\n		\"layout\": {\n			\"title\": \"Revenue in US $\",\n			\"autosize\": true\n		},\n		\"config\": {\n			\"modeBarButtonsToRemove\": [\"sendDataToCloud\"],\n			\"displaylogo\": false\n		}\n	}\n}','d0001'),('w0004','{\n	\"widgetTitle\": \"Sales Figures2\",\n	\"widgetId\": \"w0004\",\n	\"widgetType\": \"chart\",\n	\"graphType\": \"exploratory\",\n	\"widgetDimension\": \"normal\",\n	\"chartType\": \"pie\",\n	\"widgetContent\": {\n		\"data\": [{\n			\"values\": [16, 15, 12, 6, 4, 42],\n			\"labels\": [\"US\", \"China\", \"European Union\", \"Russian Federation\", \"India\", \"Rest of World\"],\n			\"domain\": {\n				\"x\": [0, 0.48]\n			},\n			\"name\": \"GHG Emissions\",\n			\"hoverinfo\": \"label+percent+name\",\n			\"hole\": 0.4,\n			\"type\": \"pie\",\n			\"marker\": {\n				\"colors\": [\"rgb(69,117,180)\", \"rgb(26, 118, 255)\", \"rgb(49,54,149)\", \"rgb(116,173,209)\", \"rgb(171,217,233), rgb(36, 55, 57), rgb(34, 53, 101),rgb(55, 83, 109)\"],\n				\"opacity\": 0.6\n			},\n			\"uid\": \"65d098\"\n		}, {\n			\"values\": [27, 11, 25, 8, 3, 25],\n			\"labels\": [\"US\", \"China\", \"European Union\", \"Russian Federation\", \"India\", \"Rest of World\"],\n			\"text\": \"CO2\",\n			\"textposition\": \"inside\",\n			\"domain\": {\n				\"x\": [0.52, 1]\n			},\n			\"name\": \"CO2 Emissions\",\n			\"hoverinfo\": \"label+percent+name\",\n			\"hole\": 0.4,\n			\"type\": \"pie\",\n			\"marker\": {\n				\"colors\": [\"rgb(69,117,180)\", \"rgb(26, 118, 255)\", \"rgb(49,54,149)\", \"rgb(116,173,209)\", \"rgb(171,217,233), rgb(36, 55, 57), rgb(34, 53, 101),rgb(55, 83, 109)\"],\n				\"opacity\": 0.6\n			},\n			\"uid\": \"430543\"\n		}],\n		\"layout\": {\n			\"title\": \"Global Consumption 1990-2011\",\n			\"annotations\": [{\n				\"font\": {\n					\"size\": 12\n				},\n				\"showarrow\": false,\n				\"text\": \"Heineken\",\n				\"x\": 0.17,\n				\"y\": 0.5\n			}, {\n				\"font\": {\n					\"size\": 12\n				},\n				\"showarrow\": false,\n				\"text\": \"Tiger Beer\",\n				\"x\": 0.85,\n				\"y\": 0.5\n			}],\n			\"height\": 600,\n			\"width\": 600\n		},\n		\"config\": {\n			\"modeBarButtonsToRemove\": [\"sendDataToCloud\"],\n			\"displaylogo\": false\n		}\n	}\n}','d0001'),('w0005','{\n	\"widgetTitle\": \"Hour Wise Redemptions\",\n	\"widgetId\": \"w0005\",\n	\"widgetType\": \"chart\",\n	\"graphType\": \"exploratory\",\n	\"widgetDimension\": \"normal\",\n	\"chartType\": \"area\",\n	\"widgetContent\": {\n		\"data\": [{\n			\"x\": [1, 2, 3, 4],\n			\"y\": [0, 2, 3, 5],\n			\"fill\": \"tozeroy\",\n			\"type\": \"scatter\",\n			\"name\": \"SF Brewries\",\n			\"mode\": \"lines\",\n			\"marker\": {\n				\"color\": \"rgb(55, 83, 109)\",\n				\"opacity\": 0.6\n			},\n			\"uid\": \"6a5da4\"\n		}, {\n			\"x\": [1, 2, 3, 4],\n			\"y\": [3, 5, 1, 7],\n			\"fill\": \"tonexty\",\n			\"type\": \"scatter\",\n			\"name\": \"LA Brewries\",\n			\"mode\": \"lines\",\n			\"marker\": {\n				\"color\": \"rgb(26, 118, 255)\",\n				\"opacity\": 0.6\n			},\n			\"uid\": \"7bb4b9\"\n		}],\n		\"layout\": {\n			\"title\": \"Numbers of redemptions\",\n			\"xaxis\": {\n				\"type\": \"linear\",\n				\"range\": [1, 4],\n				\"autorange\": true\n			},\n			\"yaxis\": {\n				\"type\": \"linear\",\n				\"range\": [0, 7.368421052631579],\n				\"autorange\": true\n			}\n		},\n		\"config\": {\n			\"modeBarButtonsToRemove\": [\"sendDataToCloud\"],\n			\"displaylogo\": false\n		}\n	}\n}','d0001'),('w0006','{\n	\"widgetTitle\": \"Revenue by region\",\n	\"widgetId\": \"id006\",\n	\"widgetType\": \"chart\",\n	\"graphType\": \"exploratory\",\n	\"widgetDimension\": \"large\",\n	\"chartType\": \"bubble\",\n	\"widgetContent\": {\n		\"data\": [{\n			\"mode\": \"markers\",\n			\"name\": \"Asia\",\n			\"x\": [\"43.828\", \"75.635\", \"64.062\", \"59.723\", \"72.961\", \"82.208\", \"64.698\", \"70.65\", \"70.964\", \"59.545\", \"80.745\", \"82.603\", \"72.535\", \"67.297\", \"78.623\", \"77.588\", \"71.993\", \"74.241\", \"66.803\", \"62.069\", \"63.785\", \"75.64\", \"65.483\", \"71.688\", \"72.777\", \"79.972\", \"72.396\", \"74.143\", \"78.4\", \"70.616\", \"74.249\", \"73.422\", \"62.698\"],\n			\"y\": [\"974.5803384\", \"29796.04834\", \"1391.253792\", \"1713.778686\", \"4959.114854\", \"39724.97867\", \"2452.210407\", \"3540.651564\", \"11605.71449\", \"4471.061906\", \"25523.2771\", \"31656.06806\", \"4519.461171\", \"1593.06548\", \"23348.13973\", \"47306.98978\", \"10461.05868\", \"12451.6558\", \"3095.772271\", \"944\", \"1091.359778\", \"22316.19287\", \"2605.94758\", \"3190.481016\", \"21654.83194\", \"47143.17964\", \"3970.095407\", \"4184.548089\", \"28718.27684\", \"7458.396327\", \"2441.576404\", \"3025.349798\", \"2280.769906\"],\n			\"text\": [\"Afghanistan\", \"Bahrain\", \"Bangladesh\", \"Cambodia\", \"China\", \"Hong Kong, China\", \"India\", \"Indonesia\", \"Iran\", \"Iraq\", \"Israel\", \"Japan\", \"Jordan\", \"Korea, Dem. Rep.\", \"Korea, Rep.\", \"Kuwait\", \"Lebanon\", \"Malaysia\", \"Mongolia\", \"Myanmar\", \"Nepal\", \"Oman\", \"Pakistan\", \"Philippines\", \"Saudi Arabia\", \"Singapore\", \"Sri Lanka\", \"Syria\", \"Taiwan\", \"Thailand\", \"Vietnam\", \"West Bank and Gaza\", \"Yemen, Rep.\"],\n			\"marker\": {\n				\"sizemode\": \"area\",\n				\"size\": [\"31889923\", \"708573\", \"150448339\", \"14131858\", \"1318683096\", \"6980412\", \"1110396331\", \"223547000\", \"69453570\", \"27499638\", \"6426679\", \"127467972\", \"6053193\", \"23301725\", \"49044790\", \"2505559\", \"3921278\", \"24821286\", \"2874127\", \"47761980\", \"28901790\", \"3204897\", \"169270617\", \"91077287\", \"27601038\", \"4553009\", \"20378239\", \"19314747\", \"23174294\", \"65068149\", \"85262356\", \"4018332\", \"22211743\"],\n				\"sizeref\": 200000\n			},\n			\"uid\": \"1333df\"\n		}, {\n			\"mode\": \"markers\",\n			\"name\": \"Europe\",\n			\"x\": [\"76.423\", \"79.829\", \"79.441\", \"74.852\", \"73.005\", \"75.748\", \"76.486\", \"78.332\", \"79.313\", \"80.657\", \"79.406\", \"79.483\", \"73.338\", \"81.757\", \"78.885\", \"80.546\", \"74.543\", \"79.762\", \"80.196\", \"75.563\", \"78.098\", \"72.476\", \"74.002\", \"74.663\", \"77.926\", \"80.941\", \"80.884\", \"81.701\", \"71.777\", \"79.425\"],\n			\"y\": [\"5937.029526\", \"36126.4927\", \"33692.60508\", \"7446.298803\", \"10680.79282\", \"14619.22272\", \"22833.30851\", \"35278.41874\", \"33207.0844\", \"30470.0167\", \"32170.37442\", \"27538.41188\", \"18008.94444\", \"36180.78919\", \"40675.99635\", \"28569.7197\", \"9253.896111\", \"36797.93332\", \"49357.19017\", \"15389.92468\", \"20509.64777\", \"10808.47561\", \"9786.534714\", \"18678.31435\", \"25768.25759\", \"28821.0637\", \"33859.74835\", \"37506.41907\", \"8458.276384\", \"33203.26128\"],\n			\"text\": [\"Albania\", \"Austria\", \"Belgium\", \"Bosnia and Herzegovina\", \"Bulgaria\", \"Croatia\", \"Czech Republic\", \"Denmark\", \"Finland\", \"France\", \"Germany\", \"Greece\", \"Hungary\", \"Iceland\", \"Ireland\", \"Italy\", \"Montenegro\", \"Netherlands\", \"Norway\", \"Poland\", \"Portugal\", \"Romania\", \"Serbia\", \"Slovak Republic\", \"Slovenia\", \"Spain\", \"Sweden\", \"Switzerland\", \"Turkey\", \"United Kingdom\"],\n			\"marker\": {\n				\"sizemode\": \"area\",\n				\"size\": [\"3600523\", \"8199783\", \"10392226\", \"4552198\", \"7322858\", \"4493312\", \"10228744\", \"5468120\", \"5238460\", \"61083916\", \"82400996\", \"10706290\", \"9956108\", \"301931\", \"4109086\", \"58147733\", \"684736\", \"16570613\", \"4627926\", \"38518241\", \"10642836\", \"22276056\", \"10150265\", \"5447502\", \"2009245\", \"40448191\", \"9031088\", \"7554661\", \"71158647\", \"60776238\"],\n				\"sizeref\": 200000\n			},\n			\"uid\": \"148028\"\n		}, {\n			\"mode\": \"markers\",\n			\"name\": \"Africa\",\n			\"x\": [\"72.301\", \"42.731\", \"56.728\", \"50.728\", \"52.295\", \"49.58\", \"50.43\", \"44.741\", \"50.651\", \"65.152\", \"46.462\", \"55.322\", \"48.328\", \"54.791\", \"71.338\", \"51.579\", \"58.04\", \"52.947\", \"56.735\", \"59.448\", \"60.022\", \"56.007\", \"46.388\", \"54.11\", \"42.592\", \"45.678\", \"73.952\", \"59.443\", \"48.303\", \"54.467\", \"64.164\", \"72.801\", \"71.164\", \"42.082\", \"52.906\", \"56.867\", \"46.859\", \"76.442\", \"46.242\", \"65.528\", \"63.062\", \"42.568\", \"48.159\", \"49.339\", \"58.556\", \"39.613\", \"52.517\", \"58.42\", \"73.923\", \"51.542\", \"42.384\", \"43.487\"],\n			\"y\": [\"6223.367465\", \"4797.231267\", \"1441.284873\", \"12569.85177\", \"1217.032994\", \"430.0706916\", \"2042.09524\", \"706.016537\", \"1704.063724\", \"986.1478792\", \"277.5518587\", \"3632.557798\", \"1544.750112\", \"2082.481567\", \"5581.180998\", \"12154.08975\", \"641.3695236\", \"690.8055759\", \"13206.48452\", \"752.7497265\", \"1327.60891\", \"942.6542111\", \"579.231743\", \"1463.249282\", \"1569.331442\", \"414.5073415\", \"12057.49928\", \"1044.770126\", \"759.3499101\", \"1042.581557\", \"1803.151496\", \"10956.99112\", \"3820.17523\", \"823.6856205\", \"4811.060429\", \"619.6768924\", \"2013.977305\", \"7670.122558\", \"863.0884639\", \"1598.435089\", \"1712.472136\", \"862.5407561\", \"926.1410683\", \"9269.657808\", \"2602.394995\", \"4513.480643\", \"1107.482182\", \"882.9699438\", \"7092.923025\", \"1056.380121\", \"1271.211593\", \"469.7092981\"],\n			\"text\": [\"Algeria\", \"Angola\", \"Benin\", \"Botswana\", \"Burkina Faso\", \"Burundi\", \"Cameroon\", \"Central African Republic\", \"Chad\", \"Comoros\", \"Congo, Dem. Rep.\", \"Congo, Rep.\", \"Cote d\'Ivoire\", \"Djibouti\", \"Egypt\", \"Equatorial Guinea\", \"Eritrea\", \"Ethiopia\", \"Gabon\", \"Gambia\", \"Ghana\", \"Guinea\", \"Guinea-Bissau\", \"Kenya\", \"Lesotho\", \"Liberia\", \"Libya\", \"Madagascar\", \"Malawi\", \"Mali\", \"Mauritania\", \"Mauritius\", \"Morocco\", \"Mozambique\", \"Namibia\", \"Niger\", \"Nigeria\", \"Reunion\", \"Rwanda\", \"Sao Tome and Principe\", \"Senegal\", \"Sierra Leone\", \"Somalia\", \"South Africa\", \"Sudan\", \"Swaziland\", \"Tanzania\", \"Togo\", \"Tunisia\", \"Uganda\", \"Zambia\", \"Zimbabwe\"],\n			\"marker\": {\n				\"sizemode\": \"area\",\n				\"size\": [\"33333216\", \"12420476\", \"8078314\", \"1639131\", \"14326203\", \"8390505\", \"17696293\", \"4369038\", \"10238807\", \"710960\", \"64606759\", \"3800610\", \"18013409\", \"496374\", \"80264543\", \"551201\", \"4906585\", \"76511887\", \"1454867\", \"1688359\", \"22873338\", \"9947814\", \"1472041\", \"35610177\", \"2012649\", \"3193942\", \"6036914\", \"19167654\", \"13327079\", \"12031795\", \"3270065\", \"1250882\", \"33757175\", \"19951656\", \"2055080\", \"12894865\", \"135031164\", \"798094\", \"8860588\", \"199579\", \"12267493\", \"6144562\", \"9118773\", \"43997828\", \"42292929\", \"1133066\", \"38139640\", \"5701579\", \"10276158\", \"29170398\", \"11746035\", \"12311143\"],\n				\"sizeref\": 200000\n			},\n			\"uid\": \"b9abc9\"\n		}, {\n			\"mode\": \"markers\",\n			\"name\": \"Oceania\",\n			\"x\": [\"81.235\", \"80.204\"],\n			\"y\": [\"34435.36744\", \"25185.00911\"],\n			\"text\": [\"Australia\", \"New Zealand\"],\n			\"marker\": {\n				\"sizemode\": \"area\",\n				\"size\": [\"20434176\", \"4115771\"],\n				\"sizeref\": 200000\n			},\n			\"uid\": \"e3853f\"\n		}, {\n			\"mode\": \"markers\",\n			\"name\": \"Americas\",\n			\"x\": [\"75.32\", \"65.554\", \"72.39\", \"80.653\", \"78.553\", \"72.889\", \"78.782\", \"78.273\", \"72.235\", \"74.994\", \"71.878\", \"70.259\", \"60.916\", \"70.198\", \"72.567\", \"76.195\", \"72.899\", \"75.537\", \"71.752\", \"71.421\", \"78.746\", \"69.819\", \"78.242\", \"76.384\", \"73.747\"],\n			\"y\": [\"12779.37964\", \"3822.137084\", \"9065.800825\", \"36319.23501\", \"13171.63885\", \"7006.580419\", \"9645.06142\", \"8948.102923\", \"6025.374752\", \"6873.262326\", \"5728.353514\", \"5186.050003\", \"1201.637154\", \"3548.330846\", \"7320.880262\", \"11977.57496\", \"2749.320965\", \"9809.185636\", \"4172.838464\", \"7408.905561\", \"19328.70901\", \"18008.50924\", \"42951.65309\", \"10611.46299\", \"11415.80569\"],\n			\"text\": [\"Argentina\", \"Bolivia\", \"Brazil\", \"Canada\", \"Chile\", \"Colombia\", \"Costa Rica\", \"Cuba\", \"Dominican Republic\", \"Ecuador\", \"El Salvador\", \"Guatemala\", \"Haiti\", \"Honduras\", \"Jamaica\", \"Mexico\", \"Nicaragua\", \"Panama\", \"Paraguay\", \"Peru\", \"Puerto Rico\", \"Trinidad and Tobago\", \"United States\", \"Uruguay\", \"Venezuela\"],\n			\"marker\": {\n				\"sizemode\": \"area\",\n				\"size\": [\"40301927\", \"9119152\", \"190010647\", \"33390141\", \"16284741\", \"44227550\", \"4133884\", \"11416987\", \"9319622\", \"13755680\", \"6939688\", \"12572928\", \"8502814\", \"7483763\", \"2780132\", \"108700891\", \"5675356\", \"3242173\", \"6667147\", \"28674757\", \"3942491\", \"1056608\", \"301139947\", \"3447496\", \"26084662\"],\n				\"sizeref\": 200000\n			},\n			\"uid\": \"b17962\"\n		}],\n		\"layout\": {\n			\"xaxis\": {\n				\"title\": \" \",\n				\"type\": \"linear\",\n				\"range\": [36.867191024993666, 86.21512534789814],\n				\"autorange\": true\n			},\n			\"yaxis\": {\n				\"title\": \"Revenue in million $\",\n				\"type\": \"log\",\n				\"range\": [2.186300333617661, 5.023516525666786],\n				\"autorange\": true\n			},\n			\"margin\": {\n				\"t\": 20\n			},\n			\"hovermode\": \"closest\"\n		},\n		\"config\": {\n			\"showLink\": false,\n			\"modeBarButtonsToRemove\": [\"sendDataToCloud\"],\n			\"displaylogo\": false\n		}\n	}\n}','d0001'),('w0007','{\n	\"widgetTitle\": \"Revenue\",\n	\"widgetId\": \"w0007\",\n	\"widgetType\": \"chart\",\n	\"graphType\": \"exploratory\",\n	\"widgetDimension\": \"large\",\n	\"chartType\": \"bar\",\n	\"enableRefresh\": true,\n	\"widgetContent\": {\n		\"data\": [{\n			\"x\": [\"Tiger\", \"Desperado\", \"Heiniken\", \"Kingfisher\", \"brand1\", \"brand2\", \"brand3\", \"brand4\", \"brand5\", \"brand9\", \"brand10\", \"brand11\"],\n			\"y\": [20, 14, 23, 25, 34, 36, 78, 44, 43, 47, 55, 32],\n			\"name\": \"SF Breweries\",\n			\"type\": \"bar\",\n			\"marker\": {\n				\"color\": \"rgb(55, 83, 109)\",\n				\"opacity\": 0.6\n			},\n			\"uid\": \"22a951\"\n		}, {\n			\"x\": [\"Tiger\", \"Desperado\", \"Heiniken\", \"Kingfisher\", \"brand1\", \"brand2\", \"brand3\", \"brand4\", \"brand5\", \"brand9\", \"brand10\", \"brand11\"],\n			\"y\": [12, 18, 39, 22, 28, 19, 18, 58, 49, 65, 63, 71],\n			\"name\": \"LA Breweries\",\n			\"type\": \"bar\",\n			\"marker\": {\n				\"color\": \"rgb(26, 118, 255)\",\n				\"opacity\": 0.6\n			},\n			\"uid\": \"39655e\"\n		}, {\n			\"x\": [\"Tiger\", \"Desperado\", \"Heiniken\", \"Kingfisher\", \"brand1\", \"brand2\", \"brand3\", \"brand4\", \"brand5\", \"brand9\", \"brand10\", \"brand11\"],\n			\"y\": [21, 18, 43, 22, 28, 45, 18, 17, 49, 71, 63, 33],\n			\"name\": \"NY Breweries\",\n			\"type\": \"bar\",\n			\"marker\": {\n				\"color\": \"rgb(171,217,233)\",\n				\"opacity\": 0.6\n			},\n			\"uid\": \"1f7960\"\n		}],\n		\"layout\": {\n			\"title\": \"Revenue in US $\",\n			\"xaxis\": {\n				\"title\": \"Brands\",\n				\"titlefont\": {\n					\"family\": \"Courier New, monospace\",\n					\"size\": 18,\n					\"color\": \"#7f7f7f\"\n				},\n				\"type\": \"category\",\n				\"range\": [-0.5, 11.5],\n				\"autorange\": true\n			},\n			\"yaxis\": {\n				\"title\": \"Million $\",\n				\"titlefont\": {\n					\"family\": \"Courier New, monospace\",\n					\"size\": 18,\n					\"color\": \"#7f7f7f\"\n				},\n				\"type\": \"linear\",\n				\"range\": [0, 192.6315789473684],\n				\"autorange\": true\n			},\n			\"barmode\": \"stack\",\n			\"autosize\": true\n		},\n		\"config\": {\n			\"modeBarButtonsToRemove\": [\"sendDataToCloud\"],\n			\"displaylogo\": false\n		}\n	}\n}','d0001'),('w0008','{\n	\"widgetTitle\": \"Items sold\",\n	\"widgetId\": \"w0008\",\n	\"widgetType\": \"chart\",\n	\"graphType\": \"exploratory\",\n	\"widgetDimension\": \"large\",\n	\"chartType\": \"line\",\n	\"getDataBySelection\": true,\n	\"widgetContent\": {\n		\"data\": [{\n			\"x\": [0, 10, 20, 30, 40, 50, 60, 70, 80, 90, 100, 110],\n			\"y\": [8, 13, 74, 12, 15, 70, 38, 16, 38, 20, 16, 38],\n			\"name\": \"Desperado\",\n			\"type\": \"scatter\",\n			\"marker\": {\n				\"color\": \"rgb(55, 83, 109)\",\n				\"opacity\": 0.6\n			},\n			\"uid\": \"883385\"\n		}, {\n			\"x\": [0, 10, 20, 30, 40, 50, 60, 70, 80, 90, 100, 110],\n			\"y\": [10, 15, 60, 22, 25, 80, 28, 36, 48, 18, 26, 48],\n			\"name\": \"Tiger\",\n			\"type\": \"scatter\",\n			\"marker\": {\n				\"color\": \"rgb(26, 118, 255)\",\n				\"opacity\": 0.6\n			},\n			\"uid\": \"37af63\"\n		}],\n		\"layout\": {\n			\"title\": \"How old are they ?\",\n			\"xaxis\": {\n				\"title\": \"Age\",\n				\"titlefont\": {\n					\"family\": \"Courier New, monospace\",\n					\"size\": 18,\n					\"color\": \"#ffffff\"\n				},\n				\"type\": \"linear\",\n				\"range\": [-7.069575471698113, 117.06957547169812],\n				\"autorange\": true\n			},\n			\"yaxis\": {\n				\"title\": \"Number of customers\",\n				\"titlefont\": {\n					\"family\": \"Courier New, monospace\",\n					\"size\": 18,\n					\"color\": \"#7f7f7f\"\n				},\n				\"type\": \"linear\",\n				\"range\": [2.726114649681529, 85.27388535031847],\n				\"autorange\": true\n			},\n			\"autosize\": true\n		},\n		\"config\": {\n			\"modeBarButtonsToRemove\": [\"sendDataToCloud\"],\n			\"displaylogo\": false\n		}\n	}\n}','d0001'),('w0009','{\n	\"widgetTitle\": \" \",\n	\"widgetId\": \"w0009\",\n	\"widgetType\": \"Text\",\n	\"widgetDimension\": \"small\",\n	\"widgetContent\": \"Number of Redemptions: 4,636 Revenue Generated 231,800$\"\n}','d0001'),('w0010','{\n	\"widgetTitle\": \"Table \",\n	\"widgetId\": \"id010\",\n	\"widgetType\": \"table\",\n	\"setJqueryStyle\": true,\n	\"enableRefresh\": true,\n	\"widgetContent\": {\n		\"aaData\": [\n			[\"Trident20\", \"IE8\", \"Win17\"],\n			[\"Trident16\", \"IE12\", \"Win13\"],\n			[\"Trident20\", \"IE18\", \"Win18\"],\n			[\"Trident15\", \"IE5\", \"Win19\"],\n			[\"Trident7\", \"IE11\", \"Win6\"],\n			[\"Trident12\", \"IE18\", \"Win8\"],\n			[\"Trident4\", \"IE2\", \"Win17\"],\n			[\"Trident12\", \"IE2\", \"Win13\"],\n			[\"Trident4\", \"IE13\", \"Win16\"],\n			[\"Trident19\", \"IE9\", \"Win19\"],\n			[\"Trident10\", \"IE16\", \"Win2\"],\n			[\"Trident7\", \"IE11\", \"Win2\"],\n			[\"Trident18\", \"IE3\", \"Win3\"],\n			[\"Trident3\", \"IE8\", \"Win9\"],\n			[\"Trident8\", \"IE16\", \"Win9\"],\n			[\"Trident15\", \"IE9\", \"Win4\"],\n			[\"Trident11\", \"IE18\", \"Win2\"]\n		],\n		\"aoColumns\": [{\n			\"sTitle\": \"Engine\"\n		}, {\n			\"sTitle\": \"Browser\"\n		}, {\n			\"sTitle\": \"Platform\"\n		}],\n		\"iDisplayLength\": 25,\n		\"aLengthMenu\": [\n			[5, 15, 20, -1],\n			[5, 15, 20, \"All\"]\n		],\n		\"bPaginate\": true,\n		\"bLengthChange\": true,\n		\"bAutoWidth\": false\n	}\n}','d0001'),('w0011','{\n	\"widgetTitle\": \"Stats\",\n	\"widgetId\": \"w0011\",\n	\"widgetType\": \"Text\",\n	\"widgetDimension\": \"small\",\n	\"widgetContent\": \"Number of Redemptions: 4,636 Revenue Generated 231,800$\"\n}','d0001');
/*!40000 ALTER TABLE `widget` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-12-13 17:13:00

---------------------------------------------------------------------------------------------------------------------
Redemption table for testing filters
---------------------------------------------------------------------------------------------------------------------

-- MySQL dump 10.13  Distrib 5.6.23, for Win64 (x86_64)
--
-- Host: localhost    Database: crmxsdashboard
-- ------------------------------------------------------
-- Server version	5.6.24-log

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `redemption`
--

DROP TABLE IF EXISTS `redemption`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `redemption` (
  `redId` int(11) NOT NULL,
  `revenue` int(11) NOT NULL,
  `country` varchar(45) NOT NULL,
  `date` date NOT NULL,
  PRIMARY KEY (`redId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `redemption`
--

LOCK TABLES `redemption` WRITE;
/*!40000 ALTER TABLE `redemption` DISABLE KEYS */;
INSERT INTO `redemption` VALUES (1,12,'India','2010-07-02'),(2,22,'US','2010-07-02'),(3,15,'UK','2010-07-02'),(4,16,'UK','2010-02-05'),(5,36,'US','2010-02-05'),(6,23,'India','2010-02-05'),(7,23,'US','2010-05-23'),(8,41,'UK','2010-05-23'),(9,27,'India','2010-05-23'),(13,41,'UK','2011-01-03'),(14,29,'US','2011-06-18'),(15,19,'India','2011-06-18'),(16,23,'UK','2011-06-18'),(17,23,'US','2011-01-03'),(18,31,'India','2011-01-03'),(19,33,'India','2011-09-15'),(20,41,'US','2011-09-15'),(21,26,'UK','2011-09-15'),(22,35,'UK','2011-12-25'),(23,29,'US','2011-12-25'),(24,33,'India','2011-12-25'),(25,28,'US','2012-02-09'),(26,35,'UK','2012-02-09'),(27,49,'India','2012-02-09'),(28,15,'US','2012-05-30'),(29,28,'UK','2012-05-30'),(30,17,'India','2012-05-30'),(31,39,'US','2012-10-26'),(32,20,'UK','2012-10-26'),(33,56,'India','2012-10-26'),(34,23,'US','2012-12-31'),(35,36,'UK','2012-12-31'),(36,38,'India','2012-12-31');
/*!40000 ALTER TABLE `redemption` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-01-16 16:47:36
