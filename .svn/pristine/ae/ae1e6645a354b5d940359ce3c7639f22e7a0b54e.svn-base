.class public Lcom/gionee/gsp/GnOrderInfo;
.super Ljava/lang/Object;
.source "GnOrderInfo.java"


# instance fields
.field private apiKey:Ljava/lang/String;

.field private outOrderNo:Ljava/lang/String;

.field private submitTime:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p1, "outOrderNo"    # Ljava/lang/String;
    .param p2, "submitTime"    # Ljava/lang/String;

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    sget-object v0, Lcom/gionee/gsp/common/GnCommonConfig;->sAppId:Ljava/lang/String;

    iput-object v0, p0, Lcom/gionee/gsp/GnOrderInfo;->apiKey:Ljava/lang/String;

    .line 14
    iput-object p1, p0, Lcom/gionee/gsp/GnOrderInfo;->outOrderNo:Ljava/lang/String;

    .line 15
    iput-object p2, p0, Lcom/gionee/gsp/GnOrderInfo;->submitTime:Ljava/lang/String;

    .line 16
    return-void
.end method


# virtual methods
.method public getOrderInfo()Ljava/lang/String;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 35
    iget-object v1, p0, Lcom/gionee/gsp/GnOrderInfo;->apiKey:Ljava/lang/String;

    invoke-static {v1}, Lcom/gionee/gsp/util/GnCommonUtil;->isNull(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 37
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "\u521b\u5efa\u8ba2\u5355\u65f6\u5019\u6ca1\u6709\u83b7\u53d6\u5230apiKey\uff0c\u8bf7\u5148\u8c03\u7528init\u63a5\u53e3\u3002"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 39
    :cond_10
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 40
    .local v0, "jsonObject":Lorg/json/JSONObject;
    const-string v1, "out_order_no"

    iget-object v2, p0, Lcom/gionee/gsp/GnOrderInfo;->outOrderNo:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 41
    const-string v1, "api_key"

    iget-object v2, p0, Lcom/gionee/gsp/GnOrderInfo;->apiKey:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 42
    const-string v1, "submit_time"

    iget-object v2, p0, Lcom/gionee/gsp/GnOrderInfo;->submitTime:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 43
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public toString()Ljava/lang/String;
    .registers 9

    .prologue
    .line 48
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    .line 50
    .local v4, "sb":Ljava/lang/StringBuffer;
    :try_start_5
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    .line 51
    .local v5, "t":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v5}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v2

    .line 52
    .local v2, "fields":[Ljava/lang/reflect/Field;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_e
    array-length v6, v2
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_f} :catch_54

    if-lt v3, v6, :cond_16

    .line 77
    .end local v2    # "fields":[Ljava/lang/reflect/Field;
    .end local v3    # "i":I
    .end local v5    # "t":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_11
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    return-object v6

    .line 53
    .restart local v2    # "fields":[Ljava/lang/reflect/Field;
    .restart local v3    # "i":I
    .restart local v5    # "t":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_16
    :try_start_16
    aget-object v1, v2, v3

    .line 54
    .local v1, "field":Ljava/lang/reflect/Field;
    const/4 v6, 0x1

    invoke-virtual {v1, v6}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 55
    const-string v6, "{"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 56
    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 57
    const-string v6, ":"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 58
    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v6

    const-class v7, Ljava/lang/Integer;

    if-ne v6, v7, :cond_44

    .line 59
    invoke-virtual {v1, p0}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 72
    :goto_3c
    const-string v6, "}"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 52
    add-int/lit8 v3, v3, 0x1

    goto :goto_e

    .line 60
    :cond_44
    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v6

    const-class v7, Ljava/lang/Long;

    if-ne v6, v7, :cond_59

    .line 61
    invoke-virtual {v1, p0}, Ljava/lang/reflect/Field;->getLong(Ljava/lang/Object;)J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;
    :try_end_53
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_53} :catch_54

    goto :goto_3c

    .line 74
    .end local v1    # "field":Ljava/lang/reflect/Field;
    .end local v2    # "fields":[Ljava/lang/reflect/Field;
    .end local v3    # "i":I
    .end local v5    # "t":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catch_54
    move-exception v0

    .line 75
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_11

    .line 62
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v1    # "field":Ljava/lang/reflect/Field;
    .restart local v2    # "fields":[Ljava/lang/reflect/Field;
    .restart local v3    # "i":I
    .restart local v5    # "t":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_59
    :try_start_59
    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v6

    const-class v7, Ljava/lang/Boolean;

    if-ne v6, v7, :cond_69

    .line 63
    invoke-virtual {v1, p0}, Ljava/lang/reflect/Field;->getBoolean(Ljava/lang/Object;)Z

    move-result v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    goto :goto_3c

    .line 64
    :cond_69
    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v6

    sget-object v7, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    if-ne v6, v7, :cond_79

    .line 65
    invoke-virtual {v1, p0}, Ljava/lang/reflect/Field;->getChar(Ljava/lang/Object;)C

    move-result v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_3c

    .line 66
    :cond_79
    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v6

    const-class v7, Ljava/lang/Double;

    if-ne v6, v7, :cond_89

    .line 67
    invoke-virtual {v1, p0}, Ljava/lang/reflect/Field;->getDouble(Ljava/lang/Object;)D

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuffer;->append(D)Ljava/lang/StringBuffer;

    goto :goto_3c

    .line 68
    :cond_89
    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v6

    const-class v7, Ljava/lang/Float;

    if-ne v6, v7, :cond_99

    .line 69
    invoke-virtual {v1, p0}, Ljava/lang/reflect/Field;->getFloat(Ljava/lang/Object;)F

    move-result v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuffer;->append(F)Ljava/lang/StringBuffer;

    goto :goto_3c

    .line 71
    :cond_99
    invoke-virtual {v1, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;
    :try_end_a0
    .catch Ljava/lang/Exception; {:try_start_59 .. :try_end_a0} :catch_54

    goto :goto_3c
.end method
