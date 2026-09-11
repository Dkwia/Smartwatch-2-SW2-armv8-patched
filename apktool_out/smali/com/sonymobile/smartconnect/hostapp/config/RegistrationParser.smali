.class public Lcom/sonymobile/smartconnect/hostapp/config/RegistrationParser;
.super Ljava/lang/Object;
.source "RegistrationParser.java"


# instance fields
.field private final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/sonymobile/smartconnect/hostapp/config/RegistrationParser;->mContext:Landroid/content/Context;

    .line 35
    return-void
.end method

.method private continueParseDevice(Lorg/xmlpull/v1/XmlPullParser;Lcom/sonymobile/smartconnect/hostapp/HostAppAefConfig$Device;)V
    .locals 4
    .param p1, "xpp"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "device"    # Lcom/sonymobile/smartconnect/hostapp/HostAppAefConfig$Device;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x2

    .line 226
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    .line 227
    .local v0, "eventType":I
    :goto_0
    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 228
    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "device"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 245
    :cond_0
    return-void

    .line 231
    :cond_1
    if-ne v0, v3, :cond_2

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "displays"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 232
    invoke-direct {p0, p1, p2}, Lcom/sonymobile/smartconnect/hostapp/config/RegistrationParser;->parseDisplays(Lorg/xmlpull/v1/XmlPullParser;Lcom/sonymobile/smartconnect/hostapp/HostAppAefConfig$Device;)V

    .line 234
    :cond_2
    if-ne v0, v3, :cond_3

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "leds"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 235
    invoke-direct {p0, p1, p2}, Lcom/sonymobile/smartconnect/hostapp/config/RegistrationParser;->parseLeds(Lorg/xmlpull/v1/XmlPullParser;Lcom/sonymobile/smartconnect/hostapp/HostAppAefConfig$Device;)V

    .line 237
    :cond_3
    if-ne v0, v3, :cond_4

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "sensors"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 238
    invoke-direct {p0, p1, p2}, Lcom/sonymobile/smartconnect/hostapp/config/RegistrationParser;->parseSensors(Lorg/xmlpull/v1/XmlPullParser;Lcom/sonymobile/smartconnect/hostapp/HostAppAefConfig$Device;)V

    .line 240
    :cond_4
    if-ne v0, v3, :cond_5

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "input"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 241
    invoke-direct {p0, p1, p2}, Lcom/sonymobile/smartconnect/hostapp/config/RegistrationParser;->parseInputs(Lorg/xmlpull/v1/XmlPullParser;Lcom/sonymobile/smartconnect/hostapp/HostAppAefConfig$Device;)V

    .line 243
    :cond_5
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    goto :goto_0
.end method

.method private continueParseDisplay(Lorg/xmlpull/v1/XmlPullParser;Lcom/sonymobile/smartconnect/hostapp/HostAppAefConfig$Device$Display;)V
    .locals 3
    .param p1, "xpp"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "display"    # Lcom/sonymobile/smartconnect/hostapp/HostAppAefConfig$Device$Display;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 343
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    .line 344
    .local v0, "eventType":I
    :goto_0
    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 345
    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "display"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 353
    :cond_0
    return-void

    .line 348
    :cond_1
    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "widgets"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 349
    invoke-direct {p0, p1, p2}, Lcom/sonymobile/smartconnect/hostapp/config/RegistrationParser;->parseWidgets(Lorg/xmlpull/v1/XmlPullParser;Lcom/sonymobile/smartconnect/hostapp/HostAppAefConfig$Device$Display;)V

    .line 351
    :cond_2
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    goto :goto_0
.end method

.method private parse(Lcom/sonymobile/smartconnect/hostapp/HostAppAefConfig;Landroid/content/res/Resources;ILjava/lang/String;)Lcom/sonymobile/smartconnect/hostapp/HostAppAefConfig;
    .locals 9
    .param p1, "hostApp"    # Lcom/sonymobile/smartconnect/hostapp/HostAppAefConfig;
    .param p2, "resources"    # Landroid/content/res/Resources;
    .param p3, "id"    # I
    .param p4, "hostAppName"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x1

    const/4 v5, 0x0

    .line 52
    :try_start_0
    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v3

    .line 53
    .local v3, "is":Ljava/io/InputStream;
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v2

    .line 54
    .local v2, "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    const/4 v6, 0x1

    invoke-virtual {v2, v6}, Lorg/xmlpull/v1/XmlPullParserFactory;->setNamespaceAware(Z)V

    .line 55
    invoke-virtual {v2}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v4

    .line 56
    .local v4, "xpp":Lorg/xmlpull/v1/XmlPullParser;
    const-string v6, "utf-8"

    invoke-interface {v4, v3, v6}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 57
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v1

    .line 58
    .local v1, "eventType":I
    :goto_0
    if-eq v1, v8, :cond_1

    .line 59
    const/4 v6, 0x2

    if-ne v1, v6, :cond_0

    .line 60
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "host_app"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 61
    invoke-direct {p0, v4, p4}, Lcom/sonymobile/smartconnect/hostapp/config/RegistrationParser;->parseHostApp(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Lcom/sonymobile/smartconnect/hostapp/HostAppAefConfig;

    move-result-object p1

    .line 64
    :cond_0
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->next()I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_2

    move-result v1

    goto :goto_0

    .line 66
    .end local v1    # "eventType":I
    .end local v2    # "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    .end local v3    # "is":Ljava/io/InputStream;
    .end local v4    # "xpp":Lorg/xmlpull/v1/XmlPullParser;
    :catch_0
    move-exception v0

    .line 67
    .local v0, "e":Ljava/io/IOException;
    invoke-static {}, Lcom/sonymobile/smartconnect/hostapp/analytics/Analytics;->getInstance()Lcom/sonymobile/smartconnect/hostapp/analytics/Analytics;

    move-result-object v6

    invoke-virtual {v6, v0}, Lcom/sonymobile/smartconnect/hostapp/analytics/Analytics;->sendCaughtException(Ljava/lang/Exception;)V

    .line 76
    .end local v0    # "e":Ljava/io/IOException;
    :goto_1
    return-object v5

    .line 69
    :catch_1
    move-exception v0

    .line 70
    .local v0, "e":Lorg/xmlpull/v1/XmlPullParserException;
    invoke-static {}, Lcom/sonymobile/smartconnect/hostapp/analytics/Analytics;->getInstance()Lcom/sonymobile/smartconnect/hostapp/analytics/Analytics;

    move-result-object v6

    invoke-virtual {v6, v0}, Lcom/sonymobile/smartconnect/hostapp/analytics/Analytics;->sendCaughtException(Ljava/lang/Exception;)V

    goto :goto_1

    .line 72
    .end local v0    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :catch_2
    move-exception v0

    .line 73
    .local v0, "e":Landroid/content/res/Resources$NotFoundException;
    invoke-static {}, Lcom/sonymobile/smartconnect/hostapp/analytics/Analytics;->getInstance()Lcom/sonymobile/smartconnect/hostapp/analytics/Analytics;

    move-result-object v6

    invoke-virtual {v6, v0}, Lcom/sonymobile/smartconnect/hostapp/analytics/Analytics;->sendCaughtException(Ljava/lang/Exception;)V

    goto :goto_1

    .end local v0    # "e":Landroid/content/res/Resources$NotFoundException;
    .restart local v1    # "eventType":I
    .restart local v2    # "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    .restart local v3    # "is":Ljava/io/InputStream;
    .restart local v4    # "xpp":Lorg/xmlpull/v1/XmlPullParser;
    :cond_1
    move-object v5, p1

    .line 76
    goto :goto_1
.end method

.method private parseDevice(Lorg/xmlpull/v1/XmlPullParser;Lcom/sonymobile/smartconnect/hostapp/HostAppAefConfig;)V
    .locals 17
    .param p1, "xpp"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "hostApp"    # Lcom/sonymobile/smartconnect/hostapp/HostAppAefConfig;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 164
    const/4 v3, 0x0

    .line 165
    .local v3, "model":Ljava/lang/String;
    const/4 v4, 0x0

    .line 166
    .local v4, "type":Ljava/lang/String;
    const/4 v5, 0x0

    .line 167
    .local v5, "subtype":Ljava/lang/String;
    const/4 v6, 0x0

    .line 168
    .local v6, "marketingName":Ljava/lang/String;
    const/4 v7, 0x0

    .line 169
    .local v7, "vendor":Ljava/lang/String;
    const/4 v8, 0x0

    .line 170
    .local v8, "firmwareVersion":I
    const/4 v9, 0x0

    .line 171
    .local v9, "widgetImageHeight":I
    const/4 v10, 0x0

    .line 172
    .local v10, "widgetImageWidth":I
    const/4 v11, 0x0

    .line 173
    .local v11, "vibrator":Z
    const/4 v12, 0x0

    .line 175
    .local v12, "layoutSupport":I
    const/16 v16, 0x0

    .local v16, "i":I
    :goto_0
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v2

    move/from16 v0, v16

    if-ge v0, v2, :cond_b

    .line 176
    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v13

    .line 177
    .local v13, "attr":Ljava/lang/String;
    const-string v2, "model"

    invoke-virtual {v13, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 178
    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v3

    .line 175
    :cond_0
    :goto_1
    add-int/lit8 v16, v16, 0x1

    goto :goto_0

    .line 179
    :cond_1
    const-string v2, "type"

    invoke-virtual {v13, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 180
    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    .line 181
    :cond_2
    const-string v2, "subtype"

    invoke-virtual {v13, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 182
    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    .line 183
    :cond_3
    const-string v2, "marketing_name"

    invoke-virtual {v13, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 184
    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v6

    goto :goto_1

    .line 185
    :cond_4
    const-string v2, "vendor"

    invoke-virtual {v13, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 186
    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v7

    goto :goto_1

    .line 187
    :cond_5
    const-string v2, "firmware_version"

    invoke-virtual {v13, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 189
    :try_start_0
    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v8

    goto :goto_1

    .line 190
    :catch_0
    move-exception v15

    .line 191
    .local v15, "e":Ljava/lang/NumberFormatException;
    invoke-static {}, Lcom/sonymobile/smartconnect/hostapp/analytics/Analytics;->getInstance()Lcom/sonymobile/smartconnect/hostapp/analytics/Analytics;

    move-result-object v2

    invoke-virtual {v2, v15}, Lcom/sonymobile/smartconnect/hostapp/analytics/Analytics;->sendCaughtException(Ljava/lang/Exception;)V

    goto :goto_1

    .line 193
    .end local v15    # "e":Ljava/lang/NumberFormatException;
    :cond_6
    const-string v2, "widget_image_height"

    invoke-virtual {v13, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 195
    :try_start_1
    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v9

    goto :goto_1

    .line 196
    :catch_1
    move-exception v15

    .line 197
    .restart local v15    # "e":Ljava/lang/NumberFormatException;
    invoke-static {}, Lcom/sonymobile/smartconnect/hostapp/analytics/Analytics;->getInstance()Lcom/sonymobile/smartconnect/hostapp/analytics/Analytics;

    move-result-object v2

    invoke-virtual {v2, v15}, Lcom/sonymobile/smartconnect/hostapp/analytics/Analytics;->sendCaughtException(Ljava/lang/Exception;)V

    goto/16 :goto_1

    .line 199
    .end local v15    # "e":Ljava/lang/NumberFormatException;
    :cond_7
    const-string v2, "widget_image_width"

    invoke-virtual {v13, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 201
    :try_start_2
    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_2

    move-result v10

    goto/16 :goto_1

    .line 202
    :catch_2
    move-exception v15

    .line 203
    .restart local v15    # "e":Ljava/lang/NumberFormatException;
    invoke-static {}, Lcom/sonymobile/smartconnect/hostapp/analytics/Analytics;->getInstance()Lcom/sonymobile/smartconnect/hostapp/analytics/Analytics;

    move-result-object v2

    invoke-virtual {v2, v15}, Lcom/sonymobile/smartconnect/hostapp/analytics/Analytics;->sendCaughtException(Ljava/lang/Exception;)V

    goto/16 :goto_1

    .line 205
    .end local v15    # "e":Ljava/lang/NumberFormatException;
    :cond_8
    const-string v2, "vibrator"

    invoke-virtual {v13, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 207
    :try_start_3
    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_3

    move-result v2

    if-nez v2, :cond_9

    const/4 v11, 0x0

    :goto_2
    goto/16 :goto_1

    :cond_9
    const/4 v11, 0x1

    goto :goto_2

    .line 208
    :catch_3
    move-exception v15

    .line 209
    .restart local v15    # "e":Ljava/lang/NumberFormatException;
    invoke-static {}, Lcom/sonymobile/smartconnect/hostapp/analytics/Analytics;->getInstance()Lcom/sonymobile/smartconnect/hostapp/analytics/Analytics;

    move-result-object v2

    invoke-virtual {v2, v15}, Lcom/sonymobile/smartconnect/hostapp/analytics/Analytics;->sendCaughtException(Ljava/lang/Exception;)V

    goto/16 :goto_1

    .line 211
    .end local v15    # "e":Ljava/lang/NumberFormatException;
    :cond_a
    const-string v2, "layout_support"

    invoke-virtual {v13, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 213
    :try_start_4
    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_4} :catch_4

    move-result v12

    goto/16 :goto_1

    .line 214
    :catch_4
    move-exception v15

    .line 215
    .restart local v15    # "e":Ljava/lang/NumberFormatException;
    invoke-static {}, Lcom/sonymobile/smartconnect/hostapp/analytics/Analytics;->getInstance()Lcom/sonymobile/smartconnect/hostapp/analytics/Analytics;

    move-result-object v2

    invoke-virtual {v2, v15}, Lcom/sonymobile/smartconnect/hostapp/analytics/Analytics;->sendCaughtException(Ljava/lang/Exception;)V

    goto/16 :goto_1

    .end local v13    # "attr":Ljava/lang/String;
    .end local v15    # "e":Ljava/lang/NumberFormatException;
    :cond_b
    move-object/from16 v2, p2

    .line 220
    invoke-virtual/range {v2 .. v12}, Lcom/sonymobile/smartconnect/hostapp/HostAppAefConfig;->addDevice(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIZI)Lcom/sonymobile/smartconnect/hostapp/HostAppAefConfig$Device;

    move-result-object v14

    .line 222
    .local v14, "device":Lcom/sonymobile/smartconnect/hostapp/HostAppAefConfig$Device;
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v14}, Lcom/sonymobile/smartconnect/hostapp/config/RegistrationParser;->continueParseDevice(Lorg/xmlpull/v1/XmlPullParser;Lcom/sonymobile/smartconnect/hostapp/HostAppAefConfig$Device;)V

    .line 223
    return-void
.end method

.method private parseDevices(Lorg/xmlpull/v1/XmlPullParser;Lcom/sonymobile/smartconnect/hostapp/HostAppAefConfig;)V
    .locals 3
    .param p1, "xpp"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "hostApp"    # Lcom/sonymobile/smartconnect/hostapp/HostAppAefConfig;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 151
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    .line 152
    .local v0, "eventType":I
    :goto_0
    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 153
    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "devices"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 161
    :cond_0
    return-void

    .line 156
    :cond_1
    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "device"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 157
    invoke-direct {p0, p1, p2}, Lcom/sonymobile/smartconnect/hostapp/config/RegistrationParser;->parseDevice(Lorg/xmlpull/v1/XmlPullParser;Lcom/sonymobile/smartconnect/hostapp/HostAppAefConfig;)V

    .line 159
    :cond_2
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    goto :goto_0
.end method

.method private parseDisplay(Lorg/xmlpull/v1/XmlPullParser;Lcom/sonymobile/smartconnect/hostapp/HostAppAefConfig$Device;)V
    .locals 17
    .param p1, "xpp"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "device"    # Lcom/sonymobile/smartconnect/hostapp/HostAppAefConfig$Device;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 261
    const/4 v3, 0x0

    .line 262
    .local v3, "displayWidth":I
    const/4 v4, 0x0

    .line 263
    .local v4, "displayHeight":I
    const/4 v5, 0x0

    .line 264
    .local v5, "colors":I
    const/4 v6, 0x0

    .line 265
    .local v6, "refreshRate":I
    const/4 v7, 0x0

    .line 266
    .local v7, "latency":I
    const/4 v12, 0x0

    .line 267
    .local v12, "supportsLowPower":Z
    const/4 v8, 0x0

    .line 268
    .local v8, "tapTouch":Z
    const/4 v9, 0x0

    .line 269
    .local v9, "motionTouch":Z
    const/4 v10, 0x0

    .line 270
    .local v10, "isEmulated":Z
    const/4 v11, 0x0

    .line 271
    .local v11, "menuItems":I
    const/16 v16, 0x0

    .local v16, "i":I
    :goto_0
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v2

    move/from16 v0, v16

    if-ge v0, v2, :cond_e

    .line 272
    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v13

    .line 273
    .local v13, "attr":Ljava/lang/String;
    const-string v2, "display_width"

    invoke-virtual {v13, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 275
    :try_start_0
    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 271
    :cond_0
    :goto_1
    add-int/lit8 v16, v16, 0x1

    goto :goto_0

    .line 276
    :catch_0
    move-exception v15

    .line 277
    .local v15, "e":Ljava/lang/NumberFormatException;
    invoke-static {}, Lcom/sonymobile/smartconnect/hostapp/analytics/Analytics;->getInstance()Lcom/sonymobile/smartconnect/hostapp/analytics/Analytics;

    move-result-object v2

    invoke-virtual {v2, v15}, Lcom/sonymobile/smartconnect/hostapp/analytics/Analytics;->sendCaughtException(Ljava/lang/Exception;)V

    goto :goto_1

    .line 279
    .end local v15    # "e":Ljava/lang/NumberFormatException;
    :cond_1
    const-string v2, "display_height"

    invoke-virtual {v13, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 281
    :try_start_1
    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v4

    goto :goto_1

    .line 282
    :catch_1
    move-exception v15

    .line 283
    .restart local v15    # "e":Ljava/lang/NumberFormatException;
    invoke-static {}, Lcom/sonymobile/smartconnect/hostapp/analytics/Analytics;->getInstance()Lcom/sonymobile/smartconnect/hostapp/analytics/Analytics;

    move-result-object v2

    invoke-virtual {v2, v15}, Lcom/sonymobile/smartconnect/hostapp/analytics/Analytics;->sendCaughtException(Ljava/lang/Exception;)V

    goto :goto_1

    .line 285
    .end local v15    # "e":Ljava/lang/NumberFormatException;
    :cond_2
    const-string v2, "colors"

    invoke-virtual {v13, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 287
    :try_start_2
    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_2

    move-result v5

    goto :goto_1

    .line 288
    :catch_2
    move-exception v15

    .line 289
    .restart local v15    # "e":Ljava/lang/NumberFormatException;
    invoke-static {}, Lcom/sonymobile/smartconnect/hostapp/analytics/Analytics;->getInstance()Lcom/sonymobile/smartconnect/hostapp/analytics/Analytics;

    move-result-object v2

    invoke-virtual {v2, v15}, Lcom/sonymobile/smartconnect/hostapp/analytics/Analytics;->sendCaughtException(Ljava/lang/Exception;)V

    goto :goto_1

    .line 291
    .end local v15    # "e":Ljava/lang/NumberFormatException;
    :cond_3
    const-string v2, "refresh_rate"

    invoke-virtual {v13, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 293
    :try_start_3
    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_3

    move-result v6

    goto :goto_1

    .line 294
    :catch_3
    move-exception v15

    .line 295
    .restart local v15    # "e":Ljava/lang/NumberFormatException;
    invoke-static {}, Lcom/sonymobile/smartconnect/hostapp/analytics/Analytics;->getInstance()Lcom/sonymobile/smartconnect/hostapp/analytics/Analytics;

    move-result-object v2

    invoke-virtual {v2, v15}, Lcom/sonymobile/smartconnect/hostapp/analytics/Analytics;->sendCaughtException(Ljava/lang/Exception;)V

    goto :goto_1

    .line 297
    .end local v15    # "e":Ljava/lang/NumberFormatException;
    :cond_4
    const-string v2, "latency"

    invoke-virtual {v13, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 299
    :try_start_4
    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_4} :catch_4

    move-result v7

    goto :goto_1

    .line 300
    :catch_4
    move-exception v15

    .line 301
    .restart local v15    # "e":Ljava/lang/NumberFormatException;
    invoke-static {}, Lcom/sonymobile/smartconnect/hostapp/analytics/Analytics;->getInstance()Lcom/sonymobile/smartconnect/hostapp/analytics/Analytics;

    move-result-object v2

    invoke-virtual {v2, v15}, Lcom/sonymobile/smartconnect/hostapp/analytics/Analytics;->sendCaughtException(Ljava/lang/Exception;)V

    goto/16 :goto_1

    .line 303
    .end local v15    # "e":Ljava/lang/NumberFormatException;
    :cond_5
    const-string v2, "tap_touch"

    invoke-virtual {v13, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 305
    :try_start_5
    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_5
    .catch Ljava/lang/NumberFormatException; {:try_start_5 .. :try_end_5} :catch_5

    move-result v2

    if-nez v2, :cond_6

    const/4 v8, 0x0

    :goto_2
    goto/16 :goto_1

    :cond_6
    const/4 v8, 0x1

    goto :goto_2

    .line 306
    :catch_5
    move-exception v15

    .line 307
    .restart local v15    # "e":Ljava/lang/NumberFormatException;
    invoke-static {}, Lcom/sonymobile/smartconnect/hostapp/analytics/Analytics;->getInstance()Lcom/sonymobile/smartconnect/hostapp/analytics/Analytics;

    move-result-object v2

    invoke-virtual {v2, v15}, Lcom/sonymobile/smartconnect/hostapp/analytics/Analytics;->sendCaughtException(Ljava/lang/Exception;)V

    goto/16 :goto_1

    .line 309
    .end local v15    # "e":Ljava/lang/NumberFormatException;
    :cond_7
    const-string v2, "motion_touch"

    invoke-virtual {v13, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 311
    :try_start_6
    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_6
    .catch Ljava/lang/NumberFormatException; {:try_start_6 .. :try_end_6} :catch_6

    move-result v2

    if-nez v2, :cond_8

    const/4 v9, 0x0

    :goto_3
    goto/16 :goto_1

    :cond_8
    const/4 v9, 0x1

    goto :goto_3

    .line 312
    :catch_6
    move-exception v15

    .line 313
    .restart local v15    # "e":Ljava/lang/NumberFormatException;
    invoke-static {}, Lcom/sonymobile/smartconnect/hostapp/analytics/Analytics;->getInstance()Lcom/sonymobile/smartconnect/hostapp/analytics/Analytics;

    move-result-object v2

    invoke-virtual {v2, v15}, Lcom/sonymobile/smartconnect/hostapp/analytics/Analytics;->sendCaughtException(Ljava/lang/Exception;)V

    goto/16 :goto_1

    .line 315
    .end local v15    # "e":Ljava/lang/NumberFormatException;
    :cond_9
    const-string v2, "is_emulated"

    invoke-virtual {v13, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 317
    :try_start_7
    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_7
    .catch Ljava/lang/NumberFormatException; {:try_start_7 .. :try_end_7} :catch_7

    move-result v2

    if-nez v2, :cond_a

    const/4 v10, 0x0

    :goto_4
    goto/16 :goto_1

    :cond_a
    const/4 v10, 0x1

    goto :goto_4

    .line 318
    :catch_7
    move-exception v15

    .line 319
    .restart local v15    # "e":Ljava/lang/NumberFormatException;
    invoke-static {}, Lcom/sonymobile/smartconnect/hostapp/analytics/Analytics;->getInstance()Lcom/sonymobile/smartconnect/hostapp/analytics/Analytics;

    move-result-object v2

    invoke-virtual {v2, v15}, Lcom/sonymobile/smartconnect/hostapp/analytics/Analytics;->sendCaughtException(Ljava/lang/Exception;)V

    goto/16 :goto_1

    .line 321
    .end local v15    # "e":Ljava/lang/NumberFormatException;
    :cond_b
    if-nez v10, :cond_c

    const-string v2, "menu_items"

    invoke-virtual {v13, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 323
    :try_start_8
    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_8
    .catch Ljava/lang/NumberFormatException; {:try_start_8 .. :try_end_8} :catch_8

    move-result v11

    goto/16 :goto_1

    .line 324
    :catch_8
    move-exception v15

    .line 325
    .restart local v15    # "e":Ljava/lang/NumberFormatException;
    invoke-static {}, Lcom/sonymobile/smartconnect/hostapp/analytics/Analytics;->getInstance()Lcom/sonymobile/smartconnect/hostapp/analytics/Analytics;

    move-result-object v2

    invoke-virtual {v2, v15}, Lcom/sonymobile/smartconnect/hostapp/analytics/Analytics;->sendCaughtException(Ljava/lang/Exception;)V

    goto/16 :goto_1

    .line 327
    .end local v15    # "e":Ljava/lang/NumberFormatException;
    :cond_c
    const-string v2, "supports_low_power"

    invoke-virtual {v13, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 329
    :try_start_9
    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_9
    .catch Ljava/lang/NumberFormatException; {:try_start_9 .. :try_end_9} :catch_9

    move-result v2

    if-nez v2, :cond_d

    const/4 v12, 0x0

    :goto_5
    goto/16 :goto_1

    :cond_d
    const/4 v12, 0x1

    goto :goto_5

    .line 331
    :catch_9
    move-exception v15

    .line 332
    .restart local v15    # "e":Ljava/lang/NumberFormatException;
    invoke-static {}, Lcom/sonymobile/smartconnect/hostapp/analytics/Analytics;->getInstance()Lcom/sonymobile/smartconnect/hostapp/analytics/Analytics;

    move-result-object v2

    invoke-virtual {v2, v15}, Lcom/sonymobile/smartconnect/hostapp/analytics/Analytics;->sendCaughtException(Ljava/lang/Exception;)V

    goto/16 :goto_1

    .end local v13    # "attr":Ljava/lang/String;
    .end local v15    # "e":Ljava/lang/NumberFormatException;
    :cond_e
    move-object/from16 v2, p2

    .line 336
    invoke-virtual/range {v2 .. v12}, Lcom/sonymobile/smartconnect/hostapp/HostAppAefConfig$Device;->addDisplay(IIIIIZZZIZ)Lcom/sonymobile/smartconnect/hostapp/HostAppAefConfig$Device$Display;

    move-result-object v14

    .line 339
    .local v14, "display":Lcom/sonymobile/smartconnect/hostapp/HostAppAefConfig$Device$Display;
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v14}, Lcom/sonymobile/smartconnect/hostapp/config/RegistrationParser;->continueParseDisplay(Lorg/xmlpull/v1/XmlPullParser;Lcom/sonymobile/smartconnect/hostapp/HostAppAefConfig$Device$Display;)V

    .line 340
    return-void
.end method

.method private parseDisplays(Lorg/xmlpull/v1/XmlPullParser;Lcom/sonymobile/smartconnect/hostapp/HostAppAefConfig$Device;)V
    .locals 3
    .param p1, "xpp"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "device"    # Lcom/sonymobile/smartconnect/hostapp/HostAppAefConfig$Device;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 248
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    .line 249
    .local v0, "eventType":I
    :goto_0
    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 250
    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "displays"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 258
    :cond_0
    return-void

    .line 253
    :cond_1
    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "display"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 254
    invoke-direct {p0, p1, p2}, Lcom/sonymobile/smartconnect/hostapp/config/RegistrationParser;->parseDisplay(Lorg/xmlpull/v1/XmlPullParser;Lcom/sonymobile/smartconnect/hostapp/HostAppAefConfig$Device;)V

    .line 256
    :cond_2
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    goto :goto_0
.end method

.method private parseHostApp(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Lcom/sonymobile/smartconnect/hostapp/HostAppAefConfig;
    .locals 13
    .param p1, "xpp"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "hostAppName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 80
    const/4 v3, 0x0

    .line 81
    .local v3, "version":Ljava/lang/String;
    const/4 v4, 0x0

    .line 82
    .local v4, "widgetApiVersion":I
    const/4 v5, 0x0

    .line 83
    .local v5, "controlApiVersion":I
    const/4 v6, 0x0

    .line 84
    .local v6, "sensorApiVersion":I
    const/4 v7, 0x0

    .line 85
    .local v7, "notificationApiVersion":I
    const/4 v8, 0x0

    .line 86
    .local v8, "widgetRefreshRate":I
    iget-object v1, p0, Lcom/sonymobile/smartconnect/hostapp/config/RegistrationParser;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 88
    .local v2, "packageName":Ljava/lang/String;
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v1

    if-ge v12, v1, :cond_6

    .line 89
    invoke-interface {p1, v12}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v9

    .line 90
    .local v9, "attr":Ljava/lang/String;
    const-string v1, "version"

    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 91
    invoke-interface {p1, v12}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v10

    .line 92
    .local v10, "attributeValue":Ljava/lang/String;
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 93
    move-object v3, v10

    .line 88
    .end local v10    # "attributeValue":Ljava/lang/String;
    :cond_0
    :goto_1
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    .line 95
    :cond_1
    const-string v1, "widget_api_version"

    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 96
    invoke-interface {p1, v12}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v10

    .line 97
    .restart local v10    # "attributeValue":Ljava/lang/String;
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 99
    :try_start_0
    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    goto :goto_1

    .line 100
    :catch_0
    move-exception v11

    .line 101
    .local v11, "e":Ljava/lang/NumberFormatException;
    invoke-static {}, Lcom/sonymobile/smartconnect/hostapp/analytics/Analytics;->getInstance()Lcom/sonymobile/smartconnect/hostapp/analytics/Analytics;

    move-result-object v1

    invoke-virtual {v1, v11}, Lcom/sonymobile/smartconnect/hostapp/analytics/Analytics;->sendCaughtException(Ljava/lang/Exception;)V

    goto :goto_1

    .line 104
    .end local v10    # "attributeValue":Ljava/lang/String;
    .end local v11    # "e":Ljava/lang/NumberFormatException;
    :cond_2
    const-string v1, "control_api_version"

    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 105
    invoke-interface {p1, v12}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v10

    .line 106
    .restart local v10    # "attributeValue":Ljava/lang/String;
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 108
    :try_start_1
    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v5

    goto :goto_1

    .line 109
    :catch_1
    move-exception v11

    .line 110
    .restart local v11    # "e":Ljava/lang/NumberFormatException;
    invoke-static {}, Lcom/sonymobile/smartconnect/hostapp/analytics/Analytics;->getInstance()Lcom/sonymobile/smartconnect/hostapp/analytics/Analytics;

    move-result-object v1

    invoke-virtual {v1, v11}, Lcom/sonymobile/smartconnect/hostapp/analytics/Analytics;->sendCaughtException(Ljava/lang/Exception;)V

    goto :goto_1

    .line 113
    .end local v10    # "attributeValue":Ljava/lang/String;
    .end local v11    # "e":Ljava/lang/NumberFormatException;
    :cond_3
    const-string v1, "sensor_api_version"

    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 114
    invoke-interface {p1, v12}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v10

    .line 115
    .restart local v10    # "attributeValue":Ljava/lang/String;
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 117
    :try_start_2
    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_2

    move-result v6

    goto :goto_1

    .line 118
    :catch_2
    move-exception v11

    .line 119
    .restart local v11    # "e":Ljava/lang/NumberFormatException;
    invoke-static {}, Lcom/sonymobile/smartconnect/hostapp/analytics/Analytics;->getInstance()Lcom/sonymobile/smartconnect/hostapp/analytics/Analytics;

    move-result-object v1

    invoke-virtual {v1, v11}, Lcom/sonymobile/smartconnect/hostapp/analytics/Analytics;->sendCaughtException(Ljava/lang/Exception;)V

    goto :goto_1

    .line 122
    .end local v10    # "attributeValue":Ljava/lang/String;
    .end local v11    # "e":Ljava/lang/NumberFormatException;
    :cond_4
    const-string v1, "notification_api_version"

    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 123
    invoke-interface {p1, v12}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v10

    .line 124
    .restart local v10    # "attributeValue":Ljava/lang/String;
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 126
    :try_start_3
    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_3

    move-result v7

    goto :goto_1

    .line 127
    :catch_3
    move-exception v11

    .line 128
    .restart local v11    # "e":Ljava/lang/NumberFormatException;
    invoke-static {}, Lcom/sonymobile/smartconnect/hostapp/analytics/Analytics;->getInstance()Lcom/sonymobile/smartconnect/hostapp/analytics/Analytics;

    move-result-object v1

    invoke-virtual {v1, v11}, Lcom/sonymobile/smartconnect/hostapp/analytics/Analytics;->sendCaughtException(Ljava/lang/Exception;)V

    goto/16 :goto_1

    .line 131
    .end local v10    # "attributeValue":Ljava/lang/String;
    .end local v11    # "e":Ljava/lang/NumberFormatException;
    :cond_5
    const-string v1, "widget_refresh_rate"

    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 132
    invoke-interface {p1, v12}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v10

    .line 133
    .restart local v10    # "attributeValue":Ljava/lang/String;
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 135
    :try_start_4
    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_4} :catch_4

    move-result v8

    goto/16 :goto_1

    .line 136
    :catch_4
    move-exception v11

    .line 137
    .restart local v11    # "e":Ljava/lang/NumberFormatException;
    invoke-static {}, Lcom/sonymobile/smartconnect/hostapp/analytics/Analytics;->getInstance()Lcom/sonymobile/smartconnect/hostapp/analytics/Analytics;

    move-result-object v1

    invoke-virtual {v1, v11}, Lcom/sonymobile/smartconnect/hostapp/analytics/Analytics;->sendCaughtException(Ljava/lang/Exception;)V

    goto/16 :goto_1

    .line 142
    .end local v9    # "attr":Ljava/lang/String;
    .end local v10    # "attributeValue":Ljava/lang/String;
    .end local v11    # "e":Ljava/lang/NumberFormatException;
    :cond_6
    new-instance v0, Lcom/sonymobile/smartconnect/hostapp/HostAppAefConfig;

    const/4 v1, 0x0

    invoke-direct/range {v0 .. v8}, Lcom/sonymobile/smartconnect/hostapp/HostAppAefConfig;-><init>(ILjava/lang/String;Ljava/lang/String;IIIII)V

    .line 145
    .local v0, "hostApp":Lcom/sonymobile/smartconnect/hostapp/HostAppAefConfig;
    invoke-direct {p0, p1, v0}, Lcom/sonymobile/smartconnect/hostapp/config/RegistrationParser;->parseDevices(Lorg/xmlpull/v1/XmlPullParser;Lcom/sonymobile/smartconnect/hostapp/HostAppAefConfig;)V

    .line 147
    return-object v0
.end method

.method private parseInput(Lorg/xmlpull/v1/XmlPullParser;Lcom/sonymobile/smartconnect/hostapp/HostAppAefConfig$Device;)V
    .locals 6
    .param p1, "xpp"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "device"    # Lcom/sonymobile/smartconnect/hostapp/HostAppAefConfig$Device;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 512
    const/4 v4, 0x0

    .line 513
    .local v4, "keypadId":Ljava/lang/String;
    const/4 v3, 0x0

    .line 514
    .local v3, "isEnabled":Z
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v5

    if-ge v2, v5, :cond_3

    .line 515
    invoke-interface {p1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v0

    .line 516
    .local v0, "attr":Ljava/lang/String;
    const-string v5, "type"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 518
    :try_start_0
    invoke-interface {p1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 514
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 519
    :catch_0
    move-exception v1

    .line 520
    .local v1, "e":Ljava/lang/NumberFormatException;
    invoke-static {}, Lcom/sonymobile/smartconnect/hostapp/analytics/Analytics;->getInstance()Lcom/sonymobile/smartconnect/hostapp/analytics/Analytics;

    move-result-object v5

    invoke-virtual {v5, v1}, Lcom/sonymobile/smartconnect/hostapp/analytics/Analytics;->sendCaughtException(Ljava/lang/Exception;)V

    goto :goto_1

    .line 522
    .end local v1    # "e":Ljava/lang/NumberFormatException;
    :cond_1
    const-string v5, "is_enabled"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 524
    :try_start_1
    invoke-interface {p1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v5

    if-lez v5, :cond_2

    const/4 v3, 0x1

    :goto_2
    goto :goto_1

    :cond_2
    const/4 v3, 0x0

    goto :goto_2

    .line 525
    :catch_1
    move-exception v1

    .line 526
    .restart local v1    # "e":Ljava/lang/NumberFormatException;
    invoke-static {}, Lcom/sonymobile/smartconnect/hostapp/analytics/Analytics;->getInstance()Lcom/sonymobile/smartconnect/hostapp/analytics/Analytics;

    move-result-object v5

    invoke-virtual {v5, v1}, Lcom/sonymobile/smartconnect/hostapp/analytics/Analytics;->sendCaughtException(Ljava/lang/Exception;)V

    goto :goto_1

    .line 529
    .end local v0    # "attr":Ljava/lang/String;
    .end local v1    # "e":Ljava/lang/NumberFormatException;
    :cond_3
    invoke-virtual {p2, v4, v3}, Lcom/sonymobile/smartconnect/hostapp/HostAppAefConfig$Device;->addInput(Ljava/lang/String;Z)Lcom/sonymobile/smartconnect/hostapp/HostAppAefConfig$Device$Input;

    .line 530
    return-void
.end method

.method private parseInputs(Lorg/xmlpull/v1/XmlPullParser;Lcom/sonymobile/smartconnect/hostapp/HostAppAefConfig$Device;)V
    .locals 3
    .param p1, "xpp"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "device"    # Lcom/sonymobile/smartconnect/hostapp/HostAppAefConfig$Device;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 499
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    .line 500
    .local v0, "eventType":I
    :goto_0
    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 501
    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "input"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 509
    :cond_0
    return-void

    .line 504
    :cond_1
    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "keypad"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 505
    invoke-direct {p0, p1, p2}, Lcom/sonymobile/smartconnect/hostapp/config/RegistrationParser;->parseInput(Lorg/xmlpull/v1/XmlPullParser;Lcom/sonymobile/smartconnect/hostapp/HostAppAefConfig$Device;)V

    .line 507
    :cond_2
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    goto :goto_0
.end method

.method private parseInt(Lorg/xmlpull/v1/XmlPullParser;II)I
    .locals 2
    .param p1, "xpp"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "i"    # I
    .param p3, "defaultValue"    # I

    .prologue
    .line 397
    :try_start_0
    invoke-interface {p1, p2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result p3

    .line 401
    .end local p3    # "defaultValue":I
    :goto_0
    return p3

    .line 398
    .restart local p3    # "defaultValue":I
    :catch_0
    move-exception v0

    .line 399
    .local v0, "e":Ljava/lang/NumberFormatException;
    invoke-static {}, Lcom/sonymobile/smartconnect/hostapp/analytics/Analytics;->getInstance()Lcom/sonymobile/smartconnect/hostapp/analytics/Analytics;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/sonymobile/smartconnect/hostapp/analytics/Analytics;->sendCaughtException(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method private parseLed(Lorg/xmlpull/v1/XmlPullParser;Lcom/sonymobile/smartconnect/hostapp/HostAppAefConfig$Device;)V
    .locals 5
    .param p1, "xpp"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "device"    # Lcom/sonymobile/smartconnect/hostapp/HostAppAefConfig$Device;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 418
    const/4 v1, 0x0

    .line 419
    .local v1, "colors":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v4

    if-ge v3, v4, :cond_1

    .line 420
    invoke-interface {p1, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v0

    .line 421
    .local v0, "attr":Ljava/lang/String;
    const-string v4, "colors"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 423
    :try_start_0
    invoke-interface {p1, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 419
    :cond_0
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 424
    :catch_0
    move-exception v2

    .line 425
    .local v2, "e":Ljava/lang/NumberFormatException;
    invoke-static {}, Lcom/sonymobile/smartconnect/hostapp/analytics/Analytics;->getInstance()Lcom/sonymobile/smartconnect/hostapp/analytics/Analytics;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/sonymobile/smartconnect/hostapp/analytics/Analytics;->sendCaughtException(Ljava/lang/Exception;)V

    goto :goto_1

    .line 429
    .end local v0    # "attr":Ljava/lang/String;
    .end local v2    # "e":Ljava/lang/NumberFormatException;
    :cond_1
    invoke-virtual {p2, v1}, Lcom/sonymobile/smartconnect/hostapp/HostAppAefConfig$Device;->addLed(I)Lcom/sonymobile/smartconnect/hostapp/HostAppAefConfig$Device$Led;

    .line 430
    return-void
.end method

.method private parseLeds(Lorg/xmlpull/v1/XmlPullParser;Lcom/sonymobile/smartconnect/hostapp/HostAppAefConfig$Device;)V
    .locals 3
    .param p1, "xpp"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "device"    # Lcom/sonymobile/smartconnect/hostapp/HostAppAefConfig$Device;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 405
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    .line 406
    .local v0, "eventType":I
    :goto_0
    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 407
    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "leds"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 415
    :cond_0
    return-void

    .line 410
    :cond_1
    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "led"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 411
    invoke-direct {p0, p1, p2}, Lcom/sonymobile/smartconnect/hostapp/config/RegistrationParser;->parseLed(Lorg/xmlpull/v1/XmlPullParser;Lcom/sonymobile/smartconnect/hostapp/HostAppAefConfig$Device;)V

    .line 413
    :cond_2
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    goto :goto_0
.end method

.method private parseSensor(Lorg/xmlpull/v1/XmlPullParser;Lcom/sonymobile/smartconnect/hostapp/HostAppAefConfig$Device;)V
    .locals 13
    .param p1, "xpp"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "device"    # Lcom/sonymobile/smartconnect/hostapp/HostAppAefConfig$Device;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 446
    const/4 v1, 0x0

    .line 447
    .local v1, "sensorType":Ljava/lang/String;
    const-wide/16 v2, 0x0

    .line 448
    .local v2, "resolution":D
    const/4 v4, 0x0

    .line 449
    .local v4, "minimumDelay":I
    const-wide/16 v5, 0x0

    .line 450
    .local v5, "maximumRange":D
    const/4 v7, 0x0

    .line 451
    .local v7, "name":Ljava/lang/String;
    const/4 v8, 0x0

    .line 452
    .local v8, "sensorId":I
    const/4 v9, 0x0

    .line 453
    .local v9, "sensorInterrupt":Z
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v0

    if-ge v12, v0, :cond_8

    .line 454
    invoke-interface {p1, v12}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v10

    .line 455
    .local v10, "attr":Ljava/lang/String;
    const-string v0, "sensor_type"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 457
    :try_start_0
    invoke-interface {p1, v12}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 453
    :cond_0
    :goto_1
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    .line 458
    :catch_0
    move-exception v11

    .line 459
    .local v11, "e":Ljava/lang/NumberFormatException;
    invoke-static {}, Lcom/sonymobile/smartconnect/hostapp/analytics/Analytics;->getInstance()Lcom/sonymobile/smartconnect/hostapp/analytics/Analytics;

    move-result-object v0

    invoke-virtual {v0, v11}, Lcom/sonymobile/smartconnect/hostapp/analytics/Analytics;->sendCaughtException(Ljava/lang/Exception;)V

    goto :goto_1

    .line 461
    .end local v11    # "e":Ljava/lang/NumberFormatException;
    :cond_1
    const-string v0, "resolution"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 463
    :try_start_1
    invoke-interface {p1, v12}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-wide v2

    goto :goto_1

    .line 464
    :catch_1
    move-exception v11

    .line 465
    .restart local v11    # "e":Ljava/lang/NumberFormatException;
    invoke-static {}, Lcom/sonymobile/smartconnect/hostapp/analytics/Analytics;->getInstance()Lcom/sonymobile/smartconnect/hostapp/analytics/Analytics;

    move-result-object v0

    invoke-virtual {v0, v11}, Lcom/sonymobile/smartconnect/hostapp/analytics/Analytics;->sendCaughtException(Ljava/lang/Exception;)V

    goto :goto_1

    .line 467
    .end local v11    # "e":Ljava/lang/NumberFormatException;
    :cond_2
    const-string v0, "minimum_delay"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 469
    :try_start_2
    invoke-interface {p1, v12}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_2

    move-result v4

    goto :goto_1

    .line 470
    :catch_2
    move-exception v11

    .line 471
    .restart local v11    # "e":Ljava/lang/NumberFormatException;
    invoke-static {}, Lcom/sonymobile/smartconnect/hostapp/analytics/Analytics;->getInstance()Lcom/sonymobile/smartconnect/hostapp/analytics/Analytics;

    move-result-object v0

    invoke-virtual {v0, v11}, Lcom/sonymobile/smartconnect/hostapp/analytics/Analytics;->sendCaughtException(Ljava/lang/Exception;)V

    goto :goto_1

    .line 473
    .end local v11    # "e":Ljava/lang/NumberFormatException;
    :cond_3
    const-string v0, "maximum_range"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 475
    :try_start_3
    invoke-interface {p1, v12}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_3

    move-result-wide v5

    goto :goto_1

    .line 476
    :catch_3
    move-exception v11

    .line 477
    .restart local v11    # "e":Ljava/lang/NumberFormatException;
    invoke-static {}, Lcom/sonymobile/smartconnect/hostapp/analytics/Analytics;->getInstance()Lcom/sonymobile/smartconnect/hostapp/analytics/Analytics;

    move-result-object v0

    invoke-virtual {v0, v11}, Lcom/sonymobile/smartconnect/hostapp/analytics/Analytics;->sendCaughtException(Ljava/lang/Exception;)V

    goto :goto_1

    .line 479
    .end local v11    # "e":Ljava/lang/NumberFormatException;
    :cond_4
    const-string v0, "name"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 480
    invoke-interface {p1, v12}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v7

    goto :goto_1

    .line 481
    :cond_5
    const-string v0, "sensor_id"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 483
    :try_start_4
    invoke-interface {p1, v12}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_4} :catch_4

    move-result v8

    goto :goto_1

    .line 484
    :catch_4
    move-exception v11

    .line 485
    .restart local v11    # "e":Ljava/lang/NumberFormatException;
    invoke-static {}, Lcom/sonymobile/smartconnect/hostapp/analytics/Analytics;->getInstance()Lcom/sonymobile/smartconnect/hostapp/analytics/Analytics;

    move-result-object v0

    invoke-virtual {v0, v11}, Lcom/sonymobile/smartconnect/hostapp/analytics/Analytics;->sendCaughtException(Ljava/lang/Exception;)V

    goto :goto_1

    .line 487
    .end local v11    # "e":Ljava/lang/NumberFormatException;
    :cond_6
    const-string v0, "sensor_interrupt"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 489
    :try_start_5
    invoke-interface {p1, v12}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_5
    .catch Ljava/lang/NumberFormatException; {:try_start_5 .. :try_end_5} :catch_5

    move-result v0

    if-nez v0, :cond_7

    const/4 v9, 0x0

    :goto_2
    goto/16 :goto_1

    :cond_7
    const/4 v9, 0x1

    goto :goto_2

    .line 490
    :catch_5
    move-exception v11

    .line 491
    .restart local v11    # "e":Ljava/lang/NumberFormatException;
    invoke-static {}, Lcom/sonymobile/smartconnect/hostapp/analytics/Analytics;->getInstance()Lcom/sonymobile/smartconnect/hostapp/analytics/Analytics;

    move-result-object v0

    invoke-virtual {v0, v11}, Lcom/sonymobile/smartconnect/hostapp/analytics/Analytics;->sendCaughtException(Ljava/lang/Exception;)V

    goto/16 :goto_1

    .end local v10    # "attr":Ljava/lang/String;
    .end local v11    # "e":Ljava/lang/NumberFormatException;
    :cond_8
    move-object v0, p2

    .line 495
    invoke-virtual/range {v0 .. v9}, Lcom/sonymobile/smartconnect/hostapp/HostAppAefConfig$Device;->addSensor(Ljava/lang/String;DIDLjava/lang/String;IZ)Lcom/sonymobile/smartconnect/hostapp/HostAppAefConfig$Device$Sensor;

    .line 497
    return-void
.end method

.method private parseSensors(Lorg/xmlpull/v1/XmlPullParser;Lcom/sonymobile/smartconnect/hostapp/HostAppAefConfig$Device;)V
    .locals 3
    .param p1, "xpp"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "device"    # Lcom/sonymobile/smartconnect/hostapp/HostAppAefConfig$Device;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 433
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    .line 434
    .local v0, "eventType":I
    :goto_0
    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 435
    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "sensors"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 443
    :cond_0
    return-void

    .line 438
    :cond_1
    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "sensor"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 439
    invoke-direct {p0, p1, p2}, Lcom/sonymobile/smartconnect/hostapp/config/RegistrationParser;->parseSensor(Lorg/xmlpull/v1/XmlPullParser;Lcom/sonymobile/smartconnect/hostapp/HostAppAefConfig$Device;)V

    .line 441
    :cond_2
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    goto :goto_0
.end method

.method private parseWidget(Lorg/xmlpull/v1/XmlPullParser;Lcom/sonymobile/smartconnect/hostapp/HostAppAefConfig$Device$Display;)V
    .locals 9
    .param p1, "xpp"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "display"    # Lcom/sonymobile/smartconnect/hostapp/HostAppAefConfig$Device$Display;

    .prologue
    .line 369
    const/4 v1, 0x0

    .line 370
    .local v1, "cellWidth":I
    const/4 v2, 0x0

    .line 371
    .local v2, "cellHeight":I
    const/4 v3, 0x0

    .line 372
    .local v3, "maxWidth":I
    const/4 v4, 0x0

    .line 373
    .local v4, "maxHeight":I
    const/4 v5, 0x0

    .line 374
    .local v5, "displayMode":I
    const-string v6, "Undefined type"

    .line 376
    .local v6, "type":Ljava/lang/String;
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v0

    if-ge v8, v0, :cond_6

    .line 377
    invoke-interface {p1, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v7

    .line 378
    .local v7, "attr":Ljava/lang/String;
    const-string v0, "cell_width"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 379
    invoke-direct {p0, p1, v8, v1}, Lcom/sonymobile/smartconnect/hostapp/config/RegistrationParser;->parseInt(Lorg/xmlpull/v1/XmlPullParser;II)I

    move-result v1

    .line 376
    :cond_0
    :goto_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 380
    :cond_1
    const-string v0, "cell_height"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 381
    invoke-direct {p0, p1, v8, v2}, Lcom/sonymobile/smartconnect/hostapp/config/RegistrationParser;->parseInt(Lorg/xmlpull/v1/XmlPullParser;II)I

    move-result v2

    goto :goto_1

    .line 382
    :cond_2
    const-string v0, "max_width"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 383
    invoke-direct {p0, p1, v8, v3}, Lcom/sonymobile/smartconnect/hostapp/config/RegistrationParser;->parseInt(Lorg/xmlpull/v1/XmlPullParser;II)I

    move-result v3

    goto :goto_1

    .line 384
    :cond_3
    const-string v0, "max_height"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 385
    invoke-direct {p0, p1, v8, v4}, Lcom/sonymobile/smartconnect/hostapp/config/RegistrationParser;->parseInt(Lorg/xmlpull/v1/XmlPullParser;II)I

    move-result v4

    goto :goto_1

    .line 386
    :cond_4
    const-string v0, "display_mode"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 387
    invoke-direct {p0, p1, v8, v5}, Lcom/sonymobile/smartconnect/hostapp/config/RegistrationParser;->parseInt(Lorg/xmlpull/v1/XmlPullParser;II)I

    move-result v5

    goto :goto_1

    .line 388
    :cond_5
    const-string v0, "type"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 389
    invoke-interface {p1, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v6

    goto :goto_1

    .end local v7    # "attr":Ljava/lang/String;
    :cond_6
    move-object v0, p2

    .line 392
    invoke-virtual/range {v0 .. v6}, Lcom/sonymobile/smartconnect/hostapp/HostAppAefConfig$Device$Display;->addWidget(IIIIILjava/lang/String;)Lcom/sonymobile/smartconnect/hostapp/HostAppAefConfig$Device$Display$Widget;

    .line 393
    return-void
.end method

.method private parseWidgets(Lorg/xmlpull/v1/XmlPullParser;Lcom/sonymobile/smartconnect/hostapp/HostAppAefConfig$Device$Display;)V
    .locals 3
    .param p1, "xpp"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "display"    # Lcom/sonymobile/smartconnect/hostapp/HostAppAefConfig$Device$Display;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 356
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    .line 357
    .local v0, "eventType":I
    :goto_0
    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 358
    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "widgets"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 366
    :cond_0
    return-void

    .line 361
    :cond_1
    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "widget"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 362
    invoke-direct {p0, p1, p2}, Lcom/sonymobile/smartconnect/hostapp/config/RegistrationParser;->parseWidget(Lorg/xmlpull/v1/XmlPullParser;Lcom/sonymobile/smartconnect/hostapp/HostAppAefConfig$Device$Display;)V

    .line 364
    :cond_2
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    goto :goto_0
.end method


# virtual methods
.method public declared-synchronized parse(Ljava/lang/String;)Lcom/sonymobile/smartconnect/hostapp/HostAppAefConfig;
    .locals 5
    .param p1, "hostAppName"    # Ljava/lang/String;

    .prologue
    .line 38
    monitor-enter p0

    :try_start_0
    iget-object v3, p0, Lcom/sonymobile/smartconnect/hostapp/config/RegistrationParser;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 39
    .local v2, "resources":Landroid/content/res/Resources;
    const-string v3, "raw"

    iget-object v4, p0, Lcom/sonymobile/smartconnect/hostapp/config/RegistrationParser;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, p1, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    .line 40
    .local v1, "id":I
    if-nez v1, :cond_0

    .line 41
    const/4 v0, 0x0

    .line 46
    :goto_0
    monitor-exit p0

    return-object v0

    .line 43
    :cond_0
    :try_start_1
    iget-object v3, p0, Lcom/sonymobile/smartconnect/hostapp/config/RegistrationParser;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/sonymobile/smartconnect/hostapp/HostAppAefConfig;->initData(Landroid/content/Context;)V

    .line 44
    const/4 v0, 0x0

    .line 45
    .local v0, "hostApp":Lcom/sonymobile/smartconnect/hostapp/HostAppAefConfig;
    invoke-direct {p0, v0, v2, v1, p1}, Lcom/sonymobile/smartconnect/hostapp/config/RegistrationParser;->parse(Lcom/sonymobile/smartconnect/hostapp/HostAppAefConfig;Landroid/content/res/Resources;ILjava/lang/String;)Lcom/sonymobile/smartconnect/hostapp/HostAppAefConfig;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    .line 46
    goto :goto_0

    .line 38
    .end local v0    # "hostApp":Lcom/sonymobile/smartconnect/hostapp/HostAppAefConfig;
    .end local v1    # "id":I
    .end local v2    # "resources":Landroid/content/res/Resources;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method
