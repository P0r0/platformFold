.class public Lcom/vivo/upgrade/utils/JsonParserUtils;
.super Ljava/lang/Object;
.source "JsonParserUtils.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getBoolean(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/Boolean;
    .registers 5
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "json"    # Lorg/json/JSONObject;

    .prologue
    const/4 v2, 0x0

    .line 41
    :try_start_1
    invoke-virtual {p1, p0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 42
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 48
    :goto_c
    return-object v1

    .line 44
    :cond_d
    invoke-virtual {p1, p0}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_14} :catch_16

    move-result-object v1

    goto :goto_c

    .line 46
    :catch_16
    move-exception v0

    .line 48
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    goto :goto_c
.end method

.method private static getFloat(Ljava/lang/String;)F
    .registers 4
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 124
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 130
    :goto_7
    return v1

    .line 128
    :cond_8
    :try_start_8
    invoke-static {p0}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F
    :try_end_f
    .catch Ljava/lang/NumberFormatException; {:try_start_8 .. :try_end_f} :catch_11

    move-result v1

    goto :goto_7

    .line 129
    :catch_11
    move-exception v0

    .line 130
    .local v0, "nfe":Ljava/lang/NumberFormatException;
    goto :goto_7
.end method

.method public static getFloat(Ljava/lang/String;Lorg/json/JSONObject;)F
    .registers 3
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "json"    # Lorg/json/JSONObject;

    .prologue
    .line 120
    invoke-static {p0, p1}, Lcom/vivo/upgrade/utils/JsonParserUtils;->getRawString(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/vivo/upgrade/utils/JsonParserUtils;->getFloat(Ljava/lang/String;)F

    move-result v0

    return v0
.end method

.method private static getInt(Ljava/lang/String;)I
    .registers 4
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 71
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 77
    :goto_7
    return v1

    .line 75
    :cond_8
    :try_start_8
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I
    :try_end_f
    .catch Ljava/lang/NumberFormatException; {:try_start_8 .. :try_end_f} :catch_11

    move-result v1

    goto :goto_7

    .line 76
    :catch_11
    move-exception v0

    .line 77
    .local v0, "nfe":Ljava/lang/NumberFormatException;
    goto :goto_7
.end method

.method public static getInt(Ljava/lang/String;Lorg/json/JSONObject;)I
    .registers 3
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "json"    # Lorg/json/JSONObject;

    .prologue
    .line 67
    invoke-static {p0, p1}, Lcom/vivo/upgrade/utils/JsonParserUtils;->getRawString(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/vivo/upgrade/utils/JsonParserUtils;->getInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static getInt(Lorg/json/JSONObject;Ljava/lang/String;)I
    .registers 6
    .param p0, "json"    # Lorg/json/JSONObject;
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    const/4 v2, -0x1

    .line 90
    invoke-static {p1, p0}, Lcom/vivo/upgrade/utils/JsonParserUtils;->getRawString(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v1

    .line 92
    .local v1, "str":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 98
    :goto_b
    return v2

    .line 96
    :cond_c
    :try_start_c
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I
    :try_end_13
    .catch Ljava/lang/NumberFormatException; {:try_start_c .. :try_end_13} :catch_15

    move-result v2

    goto :goto_b

    .line 97
    :catch_15
    move-exception v0

    .line 98
    .local v0, "nfe":Ljava/lang/NumberFormatException;
    goto :goto_b
.end method

.method public static getJSONArray(Ljava/lang/String;Lorg/json/JSONObject;)Lorg/json/JSONArray;
    .registers 5
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "json"    # Lorg/json/JSONObject;

    .prologue
    const/4 v1, 0x0

    .line 29
    if-eqz p0, :cond_b

    if-eqz p1, :cond_b

    :try_start_5
    invoke-virtual {p1, p0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 35
    :cond_b
    :goto_b
    return-object v1

    .line 32
    :cond_c
    invoke-virtual {p1, p0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_f} :catch_11

    move-result-object v1

    goto :goto_b

    .line 34
    :catch_11
    move-exception v0

    .line 35
    .local v0, "jsone":Ljava/lang/Exception;
    goto :goto_b
.end method

.method private static getLong(Ljava/lang/String;)J
    .registers 5
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    const-wide/16 v2, 0x0

    .line 108
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 114
    :goto_8
    return-wide v2

    .line 112
    :cond_9
    :try_start_9
    invoke-static {p0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J
    :try_end_10
    .catch Ljava/lang/NumberFormatException; {:try_start_9 .. :try_end_10} :catch_12

    move-result-wide v2

    goto :goto_8

    .line 113
    :catch_12
    move-exception v0

    .line 114
    .local v0, "nfe":Ljava/lang/NumberFormatException;
    goto :goto_8
.end method

.method public static getLong(Ljava/lang/String;Lorg/json/JSONObject;)J
    .registers 4
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "json"    # Lorg/json/JSONObject;

    .prologue
    .line 104
    invoke-static {p0, p1}, Lcom/vivo/upgrade/utils/JsonParserUtils;->getRawString(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/vivo/upgrade/utils/JsonParserUtils;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getObject(Ljava/lang/String;Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .registers 5
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "json"    # Lorg/json/JSONObject;

    .prologue
    const/4 v1, 0x0

    .line 55
    :try_start_1
    invoke-virtual {p1, p0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 62
    :goto_7
    return-object v1

    .line 58
    :cond_8
    invoke-virtual {p1, p0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_b} :catch_d

    move-result-object v1

    goto :goto_7

    .line 60
    :catch_d
    move-exception v0

    .line 62
    .local v0, "e":Ljava/lang/Exception;
    goto :goto_7
.end method

.method public static getRawString(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;
    .registers 5
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "json"    # Lorg/json/JSONObject;

    .prologue
    const/4 v1, 0x0

    .line 17
    :try_start_1
    invoke-virtual {p1, p0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 23
    :goto_7
    return-object v1

    .line 20
    :cond_8
    invoke-virtual {p1, p0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_b} :catch_d

    move-result-object v1

    goto :goto_7

    .line 22
    :catch_d
    move-exception v0

    .line 23
    .local v0, "jsone":Ljava/lang/Exception;
    goto :goto_7
.end method
