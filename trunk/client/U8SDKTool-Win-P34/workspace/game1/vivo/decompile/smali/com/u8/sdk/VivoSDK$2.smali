.class Lcom/u8/sdk/VivoSDK$2;
.super Ljava/lang/Object;
.source "VivoSDK.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/u8/sdk/VivoSDK;->pay(Lcom/u8/sdk/PayParams;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/u8/sdk/VivoSDK;

.field private final synthetic val$params:Lcom/u8/sdk/PayParams;


# direct methods
.method constructor <init>(Lcom/u8/sdk/VivoSDK;Lcom/u8/sdk/PayParams;)V
    .registers 3

    .prologue
    .line 1
    iput-object p1, p0, Lcom/u8/sdk/VivoSDK$2;->this$0:Lcom/u8/sdk/VivoSDK;

    iput-object p2, p0, Lcom/u8/sdk/VivoSDK$2;->val$params:Lcom/u8/sdk/PayParams;

    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 19

    .prologue
    .line 111
    :try_start_0
    # getter for: Lcom/u8/sdk/VivoSDK;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/u8/sdk/VivoSDK;->access$3()Ljava/lang/String;

    move-result-object v12

    const-string v13, "pay request.."

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    new-instance v3, Ljava/text/SimpleDateFormat;

    const-string v12, "yyyyMMddHHmmss"

    invoke-direct {v3, v12}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 113
    .local v3, "format":Ljava/text/SimpleDateFormat;
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v12

    invoke-virtual {v12}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v12

    const-string v13, "-"

    const-string v14, ""

    invoke-virtual {v12, v13, v14}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 114
    .local v9, "orderNum":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/u8/sdk/VivoSDK$2;->val$params:Lcom/u8/sdk/PayParams;

    invoke-virtual {v12}, Lcom/u8/sdk/PayParams;->getOrderID()Ljava/lang/String;

    move-result-object v12

    if-eqz v12, :cond_40

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/u8/sdk/VivoSDK$2;->val$params:Lcom/u8/sdk/PayParams;

    invoke-virtual {v12}, Lcom/u8/sdk/PayParams;->getOrderID()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->isEmpty()Z

    move-result v12

    if-nez v12, :cond_40

    .line 115
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/u8/sdk/VivoSDK$2;->val$params:Lcom/u8/sdk/PayParams;

    invoke-virtual {v12}, Lcom/u8/sdk/PayParams;->getOrderID()Ljava/lang/String;

    move-result-object v9

    .line 116
    :cond_40
    new-instance v2, Ljava/text/DecimalFormat;

    const-string v12, "#.00"

    invoke-direct {v2, v12}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 117
    .local v2, "doubleFormat":Ljava/text/DecimalFormat;
    const/16 v12, 0xb

    new-array v8, v12, [Lorg/apache/http/NameValuePair;

    .line 118
    .local v8, "nameValuePairs":[Lorg/apache/http/NameValuePair;
    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    .line 119
    .local v10, "param_map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v12, "notifyUrl"

    .line 120
    const-string v13, "http://113.98.231.125:8051/vcoin/notifyStubAction"

    .line 119
    invoke-interface {v10, v12, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    const-string v12, "orderAmount"

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/u8/sdk/VivoSDK$2;->val$params:Lcom/u8/sdk/PayParams;

    invoke-virtual {v13}, Lcom/u8/sdk/PayParams;->getPrice()I

    move-result v13

    int-to-double v14, v13

    const-wide/high16 v16, 0x4059000000000000L    # 100.0

    div-double v14, v14, v16

    invoke-virtual {v2, v14, v15}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v13

    invoke-interface {v10, v12, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    const-string v12, "orderDesc"

    .line 123
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/u8/sdk/VivoSDK$2;->val$params:Lcom/u8/sdk/PayParams;

    invoke-virtual {v13}, Lcom/u8/sdk/PayParams;->getProductDesc()Ljava/lang/String;

    move-result-object v13

    .line 122
    invoke-interface {v10, v12, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    const-string v12, "orderTitle"

    .line 125
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/u8/sdk/VivoSDK$2;->val$params:Lcom/u8/sdk/PayParams;

    invoke-virtual {v13}, Lcom/u8/sdk/PayParams;->getProductName()Ljava/lang/String;

    move-result-object v13

    .line 124
    invoke-interface {v10, v12, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    const-string v12, "orderTime"

    new-instance v13, Ljava/util/Date;

    invoke-direct {v13}, Ljava/util/Date;-><init>()V

    invoke-virtual {v3, v13}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v13

    invoke-interface {v10, v12, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    const-string v12, "storeId"

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/u8/sdk/VivoSDK$2;->this$0:Lcom/u8/sdk/VivoSDK;

    # getter for: Lcom/u8/sdk/VivoSDK;->STORE_ID:Ljava/lang/String;
    invoke-static {v13}, Lcom/u8/sdk/VivoSDK;->access$6(Lcom/u8/sdk/VivoSDK;)Ljava/lang/String;

    move-result-object v13

    invoke-interface {v10, v12, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    const-string v12, "appId"

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/u8/sdk/VivoSDK$2;->this$0:Lcom/u8/sdk/VivoSDK;

    # getter for: Lcom/u8/sdk/VivoSDK;->APP_ID:Ljava/lang/String;
    invoke-static {v13}, Lcom/u8/sdk/VivoSDK;->access$7(Lcom/u8/sdk/VivoSDK;)Ljava/lang/String;

    move-result-object v13

    invoke-interface {v10, v12, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    const-string v12, "storeOrder"

    invoke-interface {v10, v12, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    const-string v12, "version"

    const-string v13, "1.0"

    invoke-interface {v10, v12, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/u8/sdk/VivoSDK$2;->this$0:Lcom/u8/sdk/VivoSDK;

    # invokes: Lcom/u8/sdk/VivoSDK;->generateSignature(Ljava/util/Map;)Ljava/lang/String;
    invoke-static {v12, v10}, Lcom/u8/sdk/VivoSDK;->access$8(Lcom/u8/sdk/VivoSDK;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v11

    .line 133
    .local v11, "signature":Ljava/lang/String;
    const/4 v4, 0x0

    .line 134
    .local v4, "i":I
    add-int/lit8 v5, v4, 0x1

    .end local v4    # "i":I
    .local v5, "i":I
    new-instance v12, Lorg/apache/http/message/BasicNameValuePair;

    .line 135
    const-string v13, "notifyUrl"

    .line 136
    const-string v14, "http://113.98.231.125:8051/vcoin/notifyStubAction"

    invoke-direct {v12, v13, v14}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    aput-object v12, v8, v4

    .line 137
    add-int/lit8 v4, v5, 0x1

    .end local v5    # "i":I
    .restart local v4    # "i":I
    new-instance v12, Lorg/apache/http/message/BasicNameValuePair;

    .line 138
    const-string v13, "orderAmount"

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/u8/sdk/VivoSDK$2;->val$params:Lcom/u8/sdk/PayParams;

    invoke-virtual {v14}, Lcom/u8/sdk/PayParams;->getPrice()I

    move-result v14

    int-to-double v14, v14

    const-wide/high16 v16, 0x4059000000000000L    # 100.0

    div-double v14, v14, v16

    invoke-virtual {v2, v14, v15}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v14

    invoke-direct {v12, v13, v14}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    aput-object v12, v8, v5

    .line 139
    add-int/lit8 v5, v4, 0x1

    .end local v4    # "i":I
    .restart local v5    # "i":I
    new-instance v12, Lorg/apache/http/message/BasicNameValuePair;

    .line 140
    const-string v13, "orderDesc"

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/u8/sdk/VivoSDK$2;->val$params:Lcom/u8/sdk/PayParams;

    invoke-virtual {v14}, Lcom/u8/sdk/PayParams;->getProductDesc()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v12, v13, v14}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    aput-object v12, v8, v4

    .line 141
    add-int/lit8 v4, v5, 0x1

    .end local v5    # "i":I
    .restart local v4    # "i":I
    new-instance v12, Lorg/apache/http/message/BasicNameValuePair;

    .line 142
    const-string v13, "orderTitle"

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/u8/sdk/VivoSDK$2;->val$params:Lcom/u8/sdk/PayParams;

    invoke-virtual {v14}, Lcom/u8/sdk/PayParams;->getProductName()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v12, v13, v14}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    aput-object v12, v8, v5

    .line 143
    add-int/lit8 v5, v4, 0x1

    .end local v4    # "i":I
    .restart local v5    # "i":I
    new-instance v12, Lorg/apache/http/message/BasicNameValuePair;

    .line 144
    const-string v13, "orderTime"

    new-instance v14, Ljava/util/Date;

    invoke-direct {v14}, Ljava/util/Date;-><init>()V

    invoke-virtual {v3, v14}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v14

    invoke-direct {v12, v13, v14}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    aput-object v12, v8, v4

    .line 145
    add-int/lit8 v4, v5, 0x1

    .end local v5    # "i":I
    .restart local v4    # "i":I
    new-instance v12, Lorg/apache/http/message/BasicNameValuePair;

    .line 146
    const-string v13, "signature"

    invoke-direct {v12, v13, v11}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    aput-object v12, v8, v5

    .line 147
    add-int/lit8 v5, v4, 0x1

    .end local v4    # "i":I
    .restart local v5    # "i":I
    new-instance v12, Lorg/apache/http/message/BasicNameValuePair;

    .line 148
    const-string v13, "signMethod"

    const-string v14, "MD5"

    invoke-direct {v12, v13, v14}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    aput-object v12, v8, v4

    .line 149
    add-int/lit8 v4, v5, 0x1

    .end local v5    # "i":I
    .restart local v4    # "i":I
    new-instance v12, Lorg/apache/http/message/BasicNameValuePair;

    .line 150
    const-string v13, "storeId"

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/u8/sdk/VivoSDK$2;->this$0:Lcom/u8/sdk/VivoSDK;

    # getter for: Lcom/u8/sdk/VivoSDK;->STORE_ID:Ljava/lang/String;
    invoke-static {v14}, Lcom/u8/sdk/VivoSDK;->access$6(Lcom/u8/sdk/VivoSDK;)Ljava/lang/String;

    move-result-object v14

    invoke-direct {v12, v13, v14}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    aput-object v12, v8, v5

    .line 151
    add-int/lit8 v5, v4, 0x1

    .end local v4    # "i":I
    .restart local v5    # "i":I
    new-instance v12, Lorg/apache/http/message/BasicNameValuePair;

    .line 152
    const-string v13, "appId"

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/u8/sdk/VivoSDK$2;->this$0:Lcom/u8/sdk/VivoSDK;

    # getter for: Lcom/u8/sdk/VivoSDK;->APP_ID:Ljava/lang/String;
    invoke-static {v14}, Lcom/u8/sdk/VivoSDK;->access$7(Lcom/u8/sdk/VivoSDK;)Ljava/lang/String;

    move-result-object v14

    invoke-direct {v12, v13, v14}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    aput-object v12, v8, v4

    .line 153
    add-int/lit8 v4, v5, 0x1

    .end local v5    # "i":I
    .restart local v4    # "i":I
    new-instance v12, Lorg/apache/http/message/BasicNameValuePair;

    .line 154
    const-string v13, "storeOrder"

    invoke-direct {v12, v13, v9}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    aput-object v12, v8, v5

    .line 155
    add-int/lit8 v5, v4, 0x1

    .end local v4    # "i":I
    .restart local v5    # "i":I
    new-instance v12, Lorg/apache/http/message/BasicNameValuePair;

    .line 156
    const-string v13, "version"

    const-string v14, "1.0"

    invoke-direct {v12, v13, v14}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    aput-object v12, v8, v4

    .line 157
    const/4 v7, 0x0

    .local v7, "j":I
    :goto_17e
    array-length v12, v8

    if-lt v7, v12, :cond_192

    .line 161
    new-instance v6, Lcom/u8/sdk/VivoSDK$InitialPayTask;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/u8/sdk/VivoSDK$2;->this$0:Lcom/u8/sdk/VivoSDK;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/u8/sdk/VivoSDK$2;->val$params:Lcom/u8/sdk/PayParams;

    invoke-direct {v6, v12, v13}, Lcom/u8/sdk/VivoSDK$InitialPayTask;-><init>(Lcom/u8/sdk/VivoSDK;Lcom/u8/sdk/PayParams;)V

    .line 162
    .local v6, "initialPayTask":Lcom/u8/sdk/VivoSDK$InitialPayTask;
    invoke-virtual {v6, v8}, Lcom/u8/sdk/VivoSDK$InitialPayTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 166
    .end local v2    # "doubleFormat":Ljava/text/DecimalFormat;
    .end local v3    # "format":Ljava/text/SimpleDateFormat;
    .end local v5    # "i":I
    .end local v6    # "initialPayTask":Lcom/u8/sdk/VivoSDK$InitialPayTask;
    .end local v7    # "j":I
    .end local v8    # "nameValuePairs":[Lorg/apache/http/NameValuePair;
    .end local v9    # "orderNum":Ljava/lang/String;
    .end local v10    # "param_map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v11    # "signature":Ljava/lang/String;
    :goto_191
    return-void

    .line 158
    .restart local v2    # "doubleFormat":Ljava/text/DecimalFormat;
    .restart local v3    # "format":Ljava/text/SimpleDateFormat;
    .restart local v5    # "i":I
    .restart local v7    # "j":I
    .restart local v8    # "nameValuePairs":[Lorg/apache/http/NameValuePair;
    .restart local v9    # "orderNum":Ljava/lang/String;
    .restart local v10    # "param_map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v11    # "signature":Ljava/lang/String;
    :cond_192
    const-string v12, "Vivopay"

    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "nameValuePairs"

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    .line 159
    aget-object v14, v8, v7

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 158
    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1b2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1b2} :catch_1b5

    .line 157
    add-int/lit8 v7, v7, 0x1

    goto :goto_17e

    .line 163
    .end local v2    # "doubleFormat":Ljava/text/DecimalFormat;
    .end local v3    # "format":Ljava/text/SimpleDateFormat;
    .end local v5    # "i":I
    .end local v7    # "j":I
    .end local v8    # "nameValuePairs":[Lorg/apache/http/NameValuePair;
    .end local v9    # "orderNum":Ljava/lang/String;
    .end local v10    # "param_map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v11    # "signature":Ljava/lang/String;
    :catch_1b5
    move-exception v12

    goto :goto_191
.end method
