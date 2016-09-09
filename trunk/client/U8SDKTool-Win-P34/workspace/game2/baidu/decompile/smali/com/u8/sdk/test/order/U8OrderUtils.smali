.class public Lcom/u8/sdk/test/order/U8OrderUtils;
.super Ljava/lang/Object;
.source "U8OrderUtils.java"


# static fields
.field public static final ORDER_PRIKEY:Ljava/lang/String; = "MIICdgIBADANBgkqhkiG9w0BAQEFAASCAmAwggJcAgEAAoGBAO0m9rBaOFCEj4ncScPeC+6H63XMHhs4xb08lR2TbthAPKIZV3jZB0cuh91M3XJcpdhlHUGbLhbWlmG5xKgN1Lt8Z+QoebfNEyyKM06I9YeDSykwRyEjhhOUgLjeIVV3NI8T/awhl+tb/0yyld+5aoXJKxOx/pzqolzoDRs0omEzAgMBAAECgYBGzwt5PHb0E6CIGS4tPW9ymULEuV2D4z+ncR9U5WCDUSrJe6eSfbqellYazYiRTPh31DkYDa2FRC1CoKUHSJnrjeNR2TMw0WUBFvNcqYe2qOJZg3iOhyUDhIChhQiWWC9VrzAvqSU6tuyKGMy5rAWbfTneEnL7NHsTgRRDC+0JAQJBAPlRGW6T4TnRBtbOpRcMU+jdCyJAK3zwuRO13alhexDLq105D1osg2uP1d3+XvTQudwCGo1qRfBSp/W72fynz5kCQQDzgmLyxGzO1rugtJNMLQTqsRGg8ZUoUPmsEVGbmnHwRzd2OGHWbT1JuIEEb+ivrZV3PfeEObv7fDAT6qIhyiarAkAcd4ka2iG+U0KfpkqtXgf6r7qEt6T/iBDp0js0CuBdY5P2efxpxGlhD7RQu6ml9Gs0Vr0nZnoD3bw1z7QtKBAJAkBiqBjesqZCxs0NtxtWaYbsbwDta/M6elQtWnbtzA0NhEz8IKvC7E9AZvgejBiB1JoRzZFSiPGYWiBAcXduqTAxAkEAqG24ePhjesKoF1Us2ViqgJC7zDd96v+LI5eausw3TfKjO4jj5oMoQiyc+hZFxHYlkyZRfA6XEraF1Rdgngf65w=="

.field public static final ORDER_PUBKEY:Ljava/lang/String; = "MIGfMA0GCSqGSIb3DQEBAQUAA4GNADCBiQKBgQDtJvawWjhQhI+J3EnD3gvuh+t1zB4bOMW9PJUdk27YQDyiGVd42QdHLofdTN1yXKXYZR1Bmy4W1pZhucSoDdS7fGfkKHm3zRMsijNOiPWHg0spMEchI4YTlIC43iFVdzSPE/2sIZfrW/9MspXfuWqFySsTsf6c6qJc6A0bNKJhMwIDAQAB"

.field public static final SECRET_KEY:Ljava/lang/String; = "7513a2c235647e3213538c6eb329eec9"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static generateSign(Lcom/u8/sdk/verify/UToken;Ljava/lang/String;Lcom/u8/sdk/PayParams;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "userID="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/u8/sdk/verify/UToken;->getUserID()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "&"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "productID="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p2}, Lcom/u8/sdk/PayParams;->getProductId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "&"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "productName="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p2}, Lcom/u8/sdk/PayParams;->getProductName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "&"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "productDesc="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p2}, Lcom/u8/sdk/PayParams;->getProductDesc()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "&"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "money="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p2}, Lcom/u8/sdk/PayParams;->getPrice()I

    move-result v4

    mul-int/lit8 v4, v4, 0x64

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "&"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "roleID="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p2}, Lcom/u8/sdk/PayParams;->getRoleId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "&"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "roleName="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p2}, Lcom/u8/sdk/PayParams;->getRoleName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "&"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "serverID="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p2}, Lcom/u8/sdk/PayParams;->getServerId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "&"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "serverName="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p2}, Lcom/u8/sdk/PayParams;->getServerName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "&"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "extension="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p2}, Lcom/u8/sdk/PayParams;->getExtension()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_0

    const-string v3, "&notifyUrl="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "UTF-8"

    invoke-static {v3, v4}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "U8SDK"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "The encoded getOrderID sign is "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v3, "md5"

    invoke-virtual {v3, p5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-static {v0}, Lcom/u8/sdk/utils/EncryptUtils;->md5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    :goto_0
    return-object v2

    :cond_1
    const-string v3, "MIICdgIBADANBgkqhkiG9w0BAQEFAASCAmAwggJcAgEAAoGBAO0m9rBaOFCEj4ncScPeC+6H63XMHhs4xb08lR2TbthAPKIZV3jZB0cuh91M3XJcpdhlHUGbLhbWlmG5xKgN1Lt8Z+QoebfNEyyKM06I9YeDSykwRyEjhhOUgLjeIVV3NI8T/awhl+tb/0yyld+5aoXJKxOx/pzqolzoDRs0omEzAgMBAAECgYBGzwt5PHb0E6CIGS4tPW9ymULEuV2D4z+ncR9U5WCDUSrJe6eSfbqellYazYiRTPh31DkYDa2FRC1CoKUHSJnrjeNR2TMw0WUBFvNcqYe2qOJZg3iOhyUDhIChhQiWWC9VrzAvqSU6tuyKGMy5rAWbfTneEnL7NHsTgRRDC+0JAQJBAPlRGW6T4TnRBtbOpRcMU+jdCyJAK3zwuRO13alhexDLq105D1osg2uP1d3+XvTQudwCGo1qRfBSp/W72fynz5kCQQDzgmLyxGzO1rugtJNMLQTqsRGg8ZUoUPmsEVGbmnHwRzd2OGHWbT1JuIEEb+ivrZV3PfeEObv7fDAT6qIhyiarAkAcd4ka2iG+U0KfpkqtXgf6r7qEt6T/iBDp0js0CuBdY5P2efxpxGlhD7RQu6ml9Gs0Vr0nZnoD3bw1z7QtKBAJAkBiqBjesqZCxs0NtxtWaYbsbwDta/M6elQtWnbtzA0NhEz8IKvC7E9AZvgejBiB1JoRzZFSiPGYWiBAcXduqTAxAkEAqG24ePhjesKoF1Us2ViqgJC7zDd96v+LI5eausw3TfKjO4jj5oMoQiyc+hZFxHYlkyZRfA6XEraF1Rdgngf65w=="

    const-string v4, "UTF-8"

    const-string v5, "SHA1withRSA"

    invoke-static {v0, v3, v4, v5}, Lcom/u8/sdk/utils/RSAUtils;->sign(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "U8SDK"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "The getOrderID sign is "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static getOrder(Ljava/lang/String;Lcom/u8/sdk/PayParams;)Lcom/u8/sdk/test/order/U8Order;
    .locals 13

    const/4 v10, 0x0

    :try_start_0
    invoke-static {}, Lcom/u8/sdk/U8SDK;->getInstance()Lcom/u8/sdk/U8SDK;

    move-result-object v2

    invoke-virtual {v2}, Lcom/u8/sdk/U8SDK;->getUToken()Lcom/u8/sdk/verify/UToken;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v2, "U8SDK"

    const-string v11, "The user now not logined. the token is null"

    invoke-static {v2, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v2, v10

    :goto_0
    return-object v2

    :cond_0
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    const-string v2, "userID"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/u8/sdk/verify/UToken;->getUserID()I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v8, v2, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "productID"

    invoke-virtual {p1}, Lcom/u8/sdk/PayParams;->getProductId()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v8, v2, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "productName"

    invoke-virtual {p1}, Lcom/u8/sdk/PayParams;->getProductName()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v8, v2, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "productDesc"

    invoke-virtual {p1}, Lcom/u8/sdk/PayParams;->getProductDesc()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v8, v2, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "money"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/u8/sdk/PayParams;->getPrice()I

    move-result v12

    mul-int/lit8 v12, v12, 0x64

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v8, v2, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "roleID"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/u8/sdk/PayParams;->getRoleId()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v8, v2, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "roleName"

    invoke-virtual {p1}, Lcom/u8/sdk/PayParams;->getRoleName()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v8, v2, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "serverID"

    invoke-virtual {p1}, Lcom/u8/sdk/PayParams;->getServerId()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v8, v2, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "serverName"

    invoke-virtual {p1}, Lcom/u8/sdk/PayParams;->getServerName()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v8, v2, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "extension"

    invoke-virtual {p1}, Lcom/u8/sdk/PayParams;->getExtension()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v8, v2, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "http://192.168.18.9:8080/pay/game"

    if-eqz v1, :cond_1

    const-string v2, "notifyUrl"

    invoke-interface {v8, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    invoke-static {}, Lcom/u8/sdk/U8SDK;->getInstance()Lcom/u8/sdk/U8SDK;

    move-result-object v2

    invoke-virtual {v2}, Lcom/u8/sdk/U8SDK;->getContext()Landroid/app/Activity;

    move-result-object v2

    const-string v11, "U8_SECRET_KEY"

    invoke-static {v2, v11}, Lcom/u8/sdk/SDKTools;->getMetaData(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lcom/u8/sdk/U8SDK;->getInstance()Lcom/u8/sdk/U8SDK;

    move-result-object v2

    invoke-virtual {v2}, Lcom/u8/sdk/U8SDK;->getContext()Landroid/app/Activity;

    move-result-object v2

    const-string v11, "U8_PRIVATE_KEY"

    invoke-static {v2, v11}, Lcom/u8/sdk/SDKTools;->getMetaData(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-nez v3, :cond_2

    const-string v3, "7513a2c235647e3213538c6eb329eec9"

    :cond_2
    if-nez v4, :cond_3

    const-string v4, "MIICdgIBADANBgkqhkiG9w0BAQEFAASCAmAwggJcAgEAAoGBAO0m9rBaOFCEj4ncScPeC+6H63XMHhs4xb08lR2TbthAPKIZV3jZB0cuh91M3XJcpdhlHUGbLhbWlmG5xKgN1Lt8Z+QoebfNEyyKM06I9YeDSykwRyEjhhOUgLjeIVV3NI8T/awhl+tb/0yyld+5aoXJKxOx/pzqolzoDRs0omEzAgMBAAECgYBGzwt5PHb0E6CIGS4tPW9ymULEuV2D4z+ncR9U5WCDUSrJe6eSfbqellYazYiRTPh31DkYDa2FRC1CoKUHSJnrjeNR2TMw0WUBFvNcqYe2qOJZg3iOhyUDhIChhQiWWC9VrzAvqSU6tuyKGMy5rAWbfTneEnL7NHsTgRRDC+0JAQJBAPlRGW6T4TnRBtbOpRcMU+jdCyJAK3zwuRO13alhexDLq105D1osg2uP1d3+XvTQudwCGo1qRfBSp/W72fynz5kCQQDzgmLyxGzO1rugtJNMLQTqsRGg8ZUoUPmsEVGbmnHwRzd2OGHWbT1JuIEEb+ivrZV3PfeEObv7fDAT6qIhyiarAkAcd4ka2iG+U0KfpkqtXgf6r7qEt6T/iBDp0js0CuBdY5P2efxpxGlhD7RQu6ml9Gs0Vr0nZnoD3bw1z7QtKBAJAkBiqBjesqZCxs0NtxtWaYbsbwDta/M6elQtWnbtzA0NhEz8IKvC7E9AZvgejBiB1JoRzZFSiPGYWiBAcXduqTAxAkEAqG24ePhjesKoF1Us2ViqgJC7zDd96v+LI5eausw3TfKjO4jj5oMoQiyc+hZFxHYlkyZRfA6XEraF1Rdgngf65w=="

    :cond_3
    invoke-static {}, Lcom/u8/sdk/U8SDK;->getInstance()Lcom/u8/sdk/U8SDK;

    move-result-object v2

    invoke-virtual {v2}, Lcom/u8/sdk/U8SDK;->getContext()Landroid/app/Activity;

    move-result-object v2

    const-string v11, "U8_ORDER_SIGN_TYPE"

    invoke-static {v2, v11}, Lcom/u8/sdk/SDKTools;->getMetaData(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_4

    const-string v5, "md5"

    :cond_4
    const-string v2, "signType"

    invoke-interface {v8, v2, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v2, p1

    invoke-static/range {v0 .. v5}, Lcom/u8/sdk/test/order/U8OrderUtils;->generateSign(Lcom/u8/sdk/verify/UToken;Ljava/lang/String;Lcom/u8/sdk/PayParams;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v2, "sign"

    invoke-interface {v8, v2, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p0, v8}, Lcom/u8/sdk/utils/U8HttpUtils;->httpPost(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v7

    const-string v2, "U8SDK"

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "The order result is "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v2, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v7}, Lcom/u8/sdk/test/order/U8OrderUtils;->parseOrderResult(Ljava/lang/String;)Lcom/u8/sdk/test/order/U8Order;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto/16 :goto_0

    :catch_0
    move-exception v6

    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    move-object v2, v10

    goto/16 :goto_0
.end method

.method private static parseOrderResult(Ljava/lang/String;)Lcom/u8/sdk/test/order/U8Order;
    .locals 8

    const/4 v4, 0x0

    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v5, "state"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    const/4 v5, 0x1

    if-eq v3, v5, :cond_0

    const-string v5, "U8SDK"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "get order failed. the state is "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-object v4

    :cond_0
    const-string v5, "data"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    new-instance v5, Lcom/u8/sdk/test/order/U8Order;

    const-string v6, "orderID"

    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "extension"

    invoke-virtual {v1, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lcom/u8/sdk/test/order/U8Order;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v4, v5

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
