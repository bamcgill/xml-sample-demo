load data
infile *
append into table XFILES.XFILES_DOCUMENT_STAGING
(
  DEMONSTRATION_OWNER        CHAR(32),
  DEMONSTRATION_NAME         CHAR(64),
  DEMONSTRATION_STEP         CHAR(12),
  DOCUMENT_PATH              CHAR(700),
  SOURCE_PATH         FILLER CHAR(700),
  DOCUMENT_CONTENT           LOBFILE(SOURCE_PATH) terminated by eof
)
BEGINDATA
SCOTT                           repositoryFeatures                                              ImageLoad   /home/SCOTT/ImageLibrary/100 Oracle Parkway.jpg                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             C:\xdb\Demo\11.2.0.1.0\repositoryFeatures\SCOTT\SampleData\ImageLibrary\100 Oracle Parkway.jpg
SCOTT                           repositoryFeatures                                              ImageLoad   /home/SCOTT/ImageLibrary/Concorde.jpg                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       C:\xdb\Demo\11.2.0.1.0\repositoryFeatures\SCOTT\SampleData\ImageLibrary\Concorde.jpg
SCOTT                           repositoryFeatures                                              ImageLoad   /home/SCOTT/ImageLibrary/Copenhagen.jpg                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     C:\xdb\Demo\11.2.0.1.0\repositoryFeatures\SCOTT\SampleData\ImageLibrary\Copenhagen.jpg
SCOTT                           repositoryFeatures                                              ImageLoad   /home/SCOTT/ImageLibrary/Fast Database.jpg                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  C:\xdb\Demo\11.2.0.1.0\repositoryFeatures\SCOTT\SampleData\ImageLibrary\Fast Database.jpg
SCOTT                           repositoryFeatures                                              ImageLoad   /home/SCOTT/ImageLibrary/Florence.jpg                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       C:\xdb\Demo\11.2.0.1.0\repositoryFeatures\SCOTT\SampleData\ImageLibrary\Florence.jpg
SCOTT                           repositoryFeatures                                              ImageLoad   /home/SCOTT/ImageLibrary/Golden Gate Bridge.JPG                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             C:\xdb\Demo\11.2.0.1.0\repositoryFeatures\SCOTT\SampleData\ImageLibrary\Golden Gate Bridge.JPG
SCOTT                           repositoryFeatures                                              ImageLoad   /home/SCOTT/ImageLibrary/Half Dome.jpg                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      C:\xdb\Demo\11.2.0.1.0\repositoryFeatures\SCOTT\SampleData\ImageLibrary\Half Dome.jpg
SCOTT                           repositoryFeatures                                              ImageLoad   /home/SCOTT/ImageLibrary/Half Moon Bay (Bhushan).jpg                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        C:\xdb\Demo\11.2.0.1.0\repositoryFeatures\SCOTT\SampleData\ImageLibrary\Half Moon Bay (Bhushan).jpg
SCOTT                           repositoryFeatures                                              ImageLoad   /home/SCOTT/ImageLibrary/IMG_1542.JPG                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       C:\xdb\Demo\11.2.0.1.0\repositoryFeatures\SCOTT\SampleData\ImageLibrary\IMG_1542.JPG
SCOTT                           repositoryFeatures                                              ImageLoad   /home/SCOTT/ImageLibrary/Matterhorn.jpg                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     C:\xdb\Demo\11.2.0.1.0\repositoryFeatures\SCOTT\SampleData\ImageLibrary\Matterhorn.jpg
SCOTT                           repositoryFeatures                                              ImageLoad   /home/SCOTT/ImageLibrary/Milan.jpg                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          C:\xdb\Demo\11.2.0.1.0\repositoryFeatures\SCOTT\SampleData\ImageLibrary\Milan.jpg
SCOTT                           repositoryFeatures                                              ImageLoad   /home/SCOTT/ImageLibrary/Moonrise over the Alps.jpg                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         C:\xdb\Demo\11.2.0.1.0\repositoryFeatures\SCOTT\SampleData\ImageLibrary\Moonrise over the Alps.jpg
SCOTT                           repositoryFeatures                                              ImageLoad   /home/SCOTT/ImageLibrary/Norwich (1).jpg                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    C:\xdb\Demo\11.2.0.1.0\repositoryFeatures\SCOTT\SampleData\ImageLibrary\Norwich (1).jpg
SCOTT                           repositoryFeatures                                              ImageLoad   /home/SCOTT/ImageLibrary/Norwich (2).jpg                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    C:\xdb\Demo\11.2.0.1.0\repositoryFeatures\SCOTT\SampleData\ImageLibrary\Norwich (2).jpg
SCOTT                           repositoryFeatures                                              ImageLoad   /home/SCOTT/ImageLibrary/Norwich (3).jpg                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    C:\xdb\Demo\11.2.0.1.0\repositoryFeatures\SCOTT\SampleData\ImageLibrary\Norwich (3).jpg
SCOTT                           repositoryFeatures                                              ImageLoad   /home/SCOTT/ImageLibrary/Norwich (4).jpg                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    C:\xdb\Demo\11.2.0.1.0\repositoryFeatures\SCOTT\SampleData\ImageLibrary\Norwich (4).jpg
SCOTT                           repositoryFeatures                                              ImageLoad   /home/SCOTT/ImageLibrary/Nurnberg.jpg                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       C:\xdb\Demo\11.2.0.1.0\repositoryFeatures\SCOTT\SampleData\ImageLibrary\Nurnberg.jpg
SCOTT                           repositoryFeatures                                              ImageLoad   /home/SCOTT/ImageLibrary/Ravi_Japan.jpg                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     C:\xdb\Demo\11.2.0.1.0\repositoryFeatures\SCOTT\SampleData\ImageLibrary\Ravi_Japan.jpg
SCOTT                           repositoryFeatures                                              ImageLoad   /home/SCOTT/ImageLibrary/Redwood Shores.jpg                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 C:\xdb\Demo\11.2.0.1.0\repositoryFeatures\SCOTT\SampleData\ImageLibrary\Redwood Shores.jpg
SCOTT                           repositoryFeatures                                              ImageLoad   /home/SCOTT/ImageLibrary/Shanghai.jpg                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       C:\xdb\Demo\11.2.0.1.0\repositoryFeatures\SCOTT\SampleData\ImageLibrary\Shanghai.jpg
SCOTT                           repositoryFeatures                                              ImageLoad   /home/SCOTT/ImageLibrary/Skiddaw.jpg                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        C:\xdb\Demo\11.2.0.1.0\repositoryFeatures\SCOTT\SampleData\ImageLibrary\Skiddaw.jpg
SCOTT                           repositoryFeatures                                              ImageLoad   /home/SCOTT/ImageLibrary/Solvang.jpg                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        C:\xdb\Demo\11.2.0.1.0\repositoryFeatures\SCOTT\SampleData\ImageLibrary\Solvang.jpg
SCOTT                           repositoryFeatures                                              ImageLoad   /home/SCOTT/ImageLibrary/Sunrise over Twickenham.jpg                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        C:\xdb\Demo\11.2.0.1.0\repositoryFeatures\SCOTT\SampleData\ImageLibrary\Sunrise over Twickenham.jpg
SCOTT                           repositoryFeatures                                              ImageLoad   /home/SCOTT/ImageLibrary/Sunset on Buttermere.jpg                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           C:\xdb\Demo\11.2.0.1.0\repositoryFeatures\SCOTT\SampleData\ImageLibrary\Sunset on Buttermere.jpg
SCOTT                           repositoryFeatures                                              ImageLoad   /home/SCOTT/ImageLibrary/Sunset Over the Langdales.jpg                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      C:\xdb\Demo\11.2.0.1.0\repositoryFeatures\SCOTT\SampleData\ImageLibrary\Sunset Over the Langdales.jpg
SCOTT                           repositoryFeatures                                              ImageLoad   /home/SCOTT/ImageLibrary/Swarthmoor Hall.jpg                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                C:\xdb\Demo\11.2.0.1.0\repositoryFeatures\SCOTT\SampleData\ImageLibrary\Swarthmoor Hall.jpg
SCOTT                           repositoryFeatures                                              ImageLoad   /home/SCOTT/ImageLibrary/Tahoe Moonlight.JPG                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                C:\xdb\Demo\11.2.0.1.0\repositoryFeatures\SCOTT\SampleData\ImageLibrary\Tahoe Moonlight.JPG
SCOTT                           repositoryFeatures                                              ImageLoad   /home/SCOTT/ImageLibrary/Thumbs.db                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          C:\xdb\Demo\11.2.0.1.0\repositoryFeatures\SCOTT\SampleData\ImageLibrary\Thumbs.db
SCOTT                           repositoryFeatures                                              ImageLoad   /home/SCOTT/ImageLibrary/Tokyo.jpg                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          C:\xdb\Demo\11.2.0.1.0\repositoryFeatures\SCOTT\SampleData\ImageLibrary\Tokyo.jpg