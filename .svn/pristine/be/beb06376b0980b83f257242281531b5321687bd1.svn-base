.class public Lcom/vivo/upgrade/SystemUpdateInfo;
.super Ljava/lang/Object;
.source "SystemUpdateInfo.java"


# instance fields
.field private appName:Ljava/lang/String;

.field private instruction:Ljava/lang/String;

.field private stateCode:I

.field private url:Ljava/lang/String;

.field private verCode:I

.field private verName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 6
    .param p1, "info"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iput v3, p0, Lcom/vivo/upgrade/SystemUpdateInfo;->stateCode:I

    .line 9
    iput-object v2, p0, Lcom/vivo/upgrade/SystemUpdateInfo;->appName:Ljava/lang/String;

    .line 10
    iput-object v2, p0, Lcom/vivo/upgrade/SystemUpdateInfo;->verName:Ljava/lang/String;

    .line 11
    iput v3, p0, Lcom/vivo/upgrade/SystemUpdateInfo;->verCode:I

    .line 12
    iput-object v2, p0, Lcom/vivo/upgrade/SystemUpdateInfo;->instruction:Ljava/lang/String;

    .line 13
    iput-object v2, p0, Lcom/vivo/upgrade/SystemUpdateInfo;->url:Ljava/lang/String;

    .line 20
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_18

    .line 35
    :goto_17
    return-void

    .line 25
    :cond_18
    :try_start_18
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 26
    .local v1, "json":Lorg/json/JSONObject;
    const-string v2, "stat"

    invoke-virtual {p0, v2, v1}, Lcom/vivo/upgrade/SystemUpdateInfo;->getInt(Ljava/lang/String;Lorg/json/JSONObject;)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/vivo/upgrade/SystemUpdateInfo;->setStateCode(I)V

    .line 27
    const-string v2, "appName"

    invoke-virtual {p0, v2, v1}, Lcom/vivo/upgrade/SystemUpdateInfo;->getRawString(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/vivo/upgrade/SystemUpdateInfo;->setAppName(Ljava/lang/String;)V

    .line 28
    const-string v2, "verName"

    invoke-virtual {p0, v2, v1}, Lcom/vivo/upgrade/SystemUpdateInfo;->getRawString(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/vivo/upgrade/SystemUpdateInfo;->setVerName(Ljava/lang/String;)V

    .line 29
    const-string v2, "verCode"

    invoke-virtual {p0, v2, v1}, Lcom/vivo/upgrade/SystemUpdateInfo;->getInt(Ljava/lang/String;Lorg/json/JSONObject;)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/vivo/upgrade/SystemUpdateInfo;->setVerCode(I)V

    .line 30
    const-string v2, "instruction"

    invoke-virtual {p0, v2, v1}, Lcom/vivo/upgrade/SystemUpdateInfo;->getRawString(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/vivo/upgrade/SystemUpdateInfo;->setInstruction(Ljava/lang/String;)V

    .line 31
    const-string v2, "url"

    invoke-virtual {p0, v2, v1}, Lcom/vivo/upgrade/SystemUpdateInfo;->getRawString(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/vivo/upgrade/SystemUpdateInfo;->setUrl(Ljava/lang/String;)V
    :try_end_53
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_53} :catch_54

    goto :goto_17

    .line 32
    .end local v1    # "json":Lorg/json/JSONObject;
    :catch_54
    move-exception v0

    .line 33
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_17
.end method


# virtual methods
.method public getAppName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 79
    iget-object v0, p0, Lcom/vivo/upgrade/SystemUpdateInfo;->appName:Ljava/lang/String;

    return-object v0
.end method

.method public getInstruction()Ljava/lang/String;
    .registers 2

    .prologue
    .line 130
    iget-object v0, p0, Lcom/vivo/upgrade/SystemUpdateInfo;->instruction:Ljava/lang/String;

    return-object v0
.end method

.method public getInt(Ljava/lang/String;)I
    .registers 5
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 63
    if-eqz p1, :cond_13

    const-string v2, ""

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_13

    const-string v2, "null"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_14

    .line 69
    :cond_13
    :goto_13
    return v1

    .line 67
    :cond_14
    :try_start_14
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I
    :try_end_1b
    .catch Ljava/lang/NumberFormatException; {:try_start_14 .. :try_end_1b} :catch_1d

    move-result v1

    goto :goto_13

    .line 68
    :catch_1d
    move-exception v0

    .line 69
    .local v0, "nfe":Ljava/lang/NumberFormatException;
    goto :goto_13
.end method

.method public getInt(Ljava/lang/String;Lorg/json/JSONObject;)I
    .registers 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "json"    # Lorg/json/JSONObject;

    .prologue
    .line 56
    invoke-virtual {p0, p1, p2}, Lcom/vivo/upgrade/SystemUpdateInfo;->getRawString(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/vivo/upgrade/SystemUpdateInfo;->getInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getRawString(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;
    .registers 6
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "json"    # Lorg/json/JSONObject;

    .prologue
    const/4 v1, 0x0

    .line 42
    :try_start_1
    invoke-virtual {p2, p1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 48
    :goto_7
    return-object v1

    .line 45
    :cond_8
    invoke-virtual {p2, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_b} :catch_d

    move-result-object v1

    goto :goto_7

    .line 47
    :catch_d
    move-exception v0

    .line 48
    .local v0, "jsone":Ljava/lang/Exception;
    goto :goto_7
.end method

.method public getStateCode()I
    .registers 2

    .prologue
    .line 160
    iget v0, p0, Lcom/vivo/upgrade/SystemUpdateInfo;->stateCode:I

    return v0
.end method

.method public getUrl()Ljava/lang/String;
    .registers 2

    .prologue
    .line 146
    iget-object v0, p0, Lcom/vivo/upgrade/SystemUpdateInfo;->url:Ljava/lang/String;

    return-object v0
.end method

.method public getVerCode()I
    .registers 2

    .prologue
    .line 113
    iget v0, p0, Lcom/vivo/upgrade/SystemUpdateInfo;->verCode:I

    return v0
.end method

.method public getVerName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 96
    iget-object v0, p0, Lcom/vivo/upgrade/SystemUpdateInfo;->verName:Ljava/lang/String;

    return-object v0
.end method

.method public setAppName(Ljava/lang/String;)V
    .registers 2
    .param p1, "appName"    # Ljava/lang/String;

    .prologue
    .line 88
    iput-object p1, p0, Lcom/vivo/upgrade/SystemUpdateInfo;->appName:Ljava/lang/String;

    .line 89
    return-void
.end method

.method public setInstruction(Ljava/lang/String;)V
    .registers 2
    .param p1, "instruction"    # Ljava/lang/String;

    .prologue
    .line 139
    iput-object p1, p0, Lcom/vivo/upgrade/SystemUpdateInfo;->instruction:Ljava/lang/String;

    .line 140
    return-void
.end method

.method public setStateCode(I)V
    .registers 2
    .param p1, "stateCode"    # I

    .prologue
    .line 167
    iput p1, p0, Lcom/vivo/upgrade/SystemUpdateInfo;->stateCode:I

    .line 168
    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .registers 2
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 153
    iput-object p1, p0, Lcom/vivo/upgrade/SystemUpdateInfo;->url:Ljava/lang/String;

    .line 154
    return-void
.end method

.method public setVerCode(I)V
    .registers 2
    .param p1, "verCode"    # I

    .prologue
    .line 122
    iput p1, p0, Lcom/vivo/upgrade/SystemUpdateInfo;->verCode:I

    .line 123
    return-void
.end method

.method public setVerName(Ljava/lang/String;)V
    .registers 2
    .param p1, "verName"    # Ljava/lang/String;

    .prologue
    .line 105
    iput-object p1, p0, Lcom/vivo/upgrade/SystemUpdateInfo;->verName:Ljava/lang/String;

    .line 106
    return-void
.end method
