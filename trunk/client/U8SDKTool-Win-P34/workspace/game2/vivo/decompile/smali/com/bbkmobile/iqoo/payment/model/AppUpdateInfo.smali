.class public Lcom/bbkmobile/iqoo/payment/model/AppUpdateInfo;
.super Ljava/lang/Object;


# instance fields
.field private a:I

.field private b:I

.field private c:Ljava/lang/String;

.field private d:I

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private k:I

.field private l:Ljava/lang/String;

.field private m:I

.field private n:Ljava/lang/String;

.field private o:Ljava/lang/String;

.field private p:I

.field private q:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 5

    const/4 v2, -0x1

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v2, p0, Lcom/bbkmobile/iqoo/payment/model/AppUpdateInfo;->a:I

    iput v2, p0, Lcom/bbkmobile/iqoo/payment/model/AppUpdateInfo;->b:I

    iput-object v1, p0, Lcom/bbkmobile/iqoo/payment/model/AppUpdateInfo;->c:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Lcom/bbkmobile/iqoo/payment/model/AppUpdateInfo;->d:I

    iput-object v1, p0, Lcom/bbkmobile/iqoo/payment/model/AppUpdateInfo;->e:Ljava/lang/String;

    iput-object v1, p0, Lcom/bbkmobile/iqoo/payment/model/AppUpdateInfo;->f:Ljava/lang/String;

    iput-object v1, p0, Lcom/bbkmobile/iqoo/payment/model/AppUpdateInfo;->g:Ljava/lang/String;

    iput-object v1, p0, Lcom/bbkmobile/iqoo/payment/model/AppUpdateInfo;->h:Ljava/lang/String;

    iput-object v1, p0, Lcom/bbkmobile/iqoo/payment/model/AppUpdateInfo;->i:Ljava/lang/String;

    iput-object v1, p0, Lcom/bbkmobile/iqoo/payment/model/AppUpdateInfo;->j:Ljava/lang/String;

    iput v2, p0, Lcom/bbkmobile/iqoo/payment/model/AppUpdateInfo;->k:I

    iput-object v1, p0, Lcom/bbkmobile/iqoo/payment/model/AppUpdateInfo;->l:Ljava/lang/String;

    iput v2, p0, Lcom/bbkmobile/iqoo/payment/model/AppUpdateInfo;->m:I

    iput-object v1, p0, Lcom/bbkmobile/iqoo/payment/model/AppUpdateInfo;->n:Ljava/lang/String;

    iput-object v1, p0, Lcom/bbkmobile/iqoo/payment/model/AppUpdateInfo;->o:Ljava/lang/String;

    iput v2, p0, Lcom/bbkmobile/iqoo/payment/model/AppUpdateInfo;->p:I

    iput-object v1, p0, Lcom/bbkmobile/iqoo/payment/model/AppUpdateInfo;->q:Ljava/lang/String;

    invoke-static {p1}, Lcom/bbkmobile/iqoo/payment/util/UtilTool;->checkStringNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2f

    :goto_2e
    return-void

    :cond_2f
    :try_start_2f
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v1, "stat"

    invoke-virtual {p0, v1, v0}, Lcom/bbkmobile/iqoo/payment/model/AppUpdateInfo;->getInt(Ljava/lang/String;Lorg/json/JSONObject;)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/bbkmobile/iqoo/payment/model/AppUpdateInfo;->setStat(I)V

    const-string v1, "size"

    invoke-virtual {p0, v1, v0}, Lcom/bbkmobile/iqoo/payment/model/AppUpdateInfo;->getInt(Ljava/lang/String;Lorg/json/JSONObject;)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/bbkmobile/iqoo/payment/model/AppUpdateInfo;->setSize(I)V

    const-string v1, "msg"

    invoke-virtual {p0, v1, v0}, Lcom/bbkmobile/iqoo/payment/model/AppUpdateInfo;->getRawString(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/bbkmobile/iqoo/payment/model/AppUpdateInfo;->setMsg(Ljava/lang/String;)V

    const-string v1, "md5"

    invoke-virtual {p0, v1, v0}, Lcom/bbkmobile/iqoo/payment/model/AppUpdateInfo;->getRawString(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/bbkmobile/iqoo/payment/model/AppUpdateInfo;->setMd5(Ljava/lang/String;)V

    const-string v1, "version"

    invoke-virtual {p0, v1, v0}, Lcom/bbkmobile/iqoo/payment/model/AppUpdateInfo;->getRawString(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/bbkmobile/iqoo/payment/model/AppUpdateInfo;->setVersion(Ljava/lang/String;)V

    const-string v1, "vercode"

    invoke-virtual {p0, v1, v0}, Lcom/bbkmobile/iqoo/payment/model/AppUpdateInfo;->getInt(Ljava/lang/String;Lorg/json/JSONObject;)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/bbkmobile/iqoo/payment/model/AppUpdateInfo;->setVerCode(I)V

    const-string v1, "filename"

    invoke-virtual {p0, v1, v0}, Lcom/bbkmobile/iqoo/payment/model/AppUpdateInfo;->getRawString(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/bbkmobile/iqoo/payment/model/AppUpdateInfo;->setFileName(Ljava/lang/String;)V

    const-string v1, "addTime"

    invoke-virtual {p0, v1, v0}, Lcom/bbkmobile/iqoo/payment/model/AppUpdateInfo;->getRawString(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/bbkmobile/iqoo/payment/model/AppUpdateInfo;->setAddTime(Ljava/lang/String;)V

    const-string v1, "description"

    invoke-virtual {p0, v1, v0}, Lcom/bbkmobile/iqoo/payment/model/AppUpdateInfo;->getRawString(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/bbkmobile/iqoo/payment/model/AppUpdateInfo;->setDescription(Ljava/lang/String;)V

    const-string v1, "durl"

    invoke-virtual {p0, v1, v0}, Lcom/bbkmobile/iqoo/payment/model/AppUpdateInfo;->getRawString(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/bbkmobile/iqoo/payment/model/AppUpdateInfo;->setDurl(Ljava/lang/String;)V

    const-string v1, "level"

    invoke-virtual {p0, v1, v0}, Lcom/bbkmobile/iqoo/payment/model/AppUpdateInfo;->getInt(Ljava/lang/String;Lorg/json/JSONObject;)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/bbkmobile/iqoo/payment/model/AppUpdateInfo;->setLevel(I)V

    iget v1, p0, Lcom/bbkmobile/iqoo/payment/model/AppUpdateInfo;->k:I

    if-ne v2, v1, :cond_9f

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/bbkmobile/iqoo/payment/model/AppUpdateInfo;->setLevel(I)V

    :cond_9f
    const-string v1, "lowMd5"

    invoke-virtual {p0, v1, v0}, Lcom/bbkmobile/iqoo/payment/model/AppUpdateInfo;->getRawString(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/bbkmobile/iqoo/payment/model/AppUpdateInfo;->setLowMd5(Ljava/lang/String;)V

    const-string v1, "mode"

    invoke-virtual {p0, v1, v0}, Lcom/bbkmobile/iqoo/payment/model/AppUpdateInfo;->getInt(Ljava/lang/String;Lorg/json/JSONObject;)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/bbkmobile/iqoo/payment/model/AppUpdateInfo;->setMode(I)V

    const-string v1, "patchMd5"

    invoke-virtual {p0, v1, v0}, Lcom/bbkmobile/iqoo/payment/model/AppUpdateInfo;->getRawString(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/bbkmobile/iqoo/payment/model/AppUpdateInfo;->setPatchMd5(Ljava/lang/String;)V

    const-string v1, "patchSize"

    invoke-virtual {p0, v1, v0}, Lcom/bbkmobile/iqoo/payment/model/AppUpdateInfo;->getInt(Ljava/lang/String;Lorg/json/JSONObject;)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/bbkmobile/iqoo/payment/model/AppUpdateInfo;->setPatchSize(I)V

    const-string v1, "patchUrl"

    invoke-virtual {p0, v1, v0}, Lcom/bbkmobile/iqoo/payment/model/AppUpdateInfo;->getRawString(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/bbkmobile/iqoo/payment/model/AppUpdateInfo;->setPatchUrl(Ljava/lang/String;)V

    const-string v1, "patchFilename"

    invoke-virtual {p0, v1, v0}, Lcom/bbkmobile/iqoo/payment/model/AppUpdateInfo;->getRawString(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/bbkmobile/iqoo/payment/model/AppUpdateInfo;->setPatchFileName(Ljava/lang/String;)V
    :try_end_d5
    .catch Lorg/json/JSONException; {:try_start_2f .. :try_end_d5} :catch_d7

    goto/16 :goto_2e

    :catch_d7
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto/16 :goto_2e
.end method


# virtual methods
.method public getAddTime()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/bbkmobile/iqoo/payment/model/AppUpdateInfo;->g:Ljava/lang/String;

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/bbkmobile/iqoo/payment/model/AppUpdateInfo;->h:Ljava/lang/String;

    return-object v0
.end method

.method public getDurl()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/bbkmobile/iqoo/payment/model/AppUpdateInfo;->i:Ljava/lang/String;

    return-object v0
.end method

.method public getFileName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/bbkmobile/iqoo/payment/model/AppUpdateInfo;->j:Ljava/lang/String;

    return-object v0
.end method

.method public getInt(Ljava/lang/String;)I
    .registers 4

    const/4 v0, 0x0

    if-eqz p1, :cond_13

    const-string v1, ""

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_13

    const-string v1, "null"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_14

    :cond_13
    :goto_13
    return v0

    :cond_14
    :try_start_14
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I
    :try_end_1b
    .catch Ljava/lang/NumberFormatException; {:try_start_14 .. :try_end_1b} :catch_1d

    move-result v0

    goto :goto_13

    :catch_1d
    move-exception v1

    goto :goto_13
.end method

.method public getInt(Ljava/lang/String;Lorg/json/JSONObject;)I
    .registers 4

    invoke-virtual {p0, p1, p2}, Lcom/bbkmobile/iqoo/payment/model/AppUpdateInfo;->getRawString(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/bbkmobile/iqoo/payment/model/AppUpdateInfo;->getInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getLevel()I
    .registers 2

    iget v0, p0, Lcom/bbkmobile/iqoo/payment/model/AppUpdateInfo;->k:I

    return v0
.end method

.method public getLowMd5()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/bbkmobile/iqoo/payment/model/AppUpdateInfo;->l:Ljava/lang/String;

    return-object v0
.end method

.method public getMd5()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/bbkmobile/iqoo/payment/model/AppUpdateInfo;->f:Ljava/lang/String;

    return-object v0
.end method

.method public getMode()I
    .registers 2

    iget v0, p0, Lcom/bbkmobile/iqoo/payment/model/AppUpdateInfo;->m:I

    return v0
.end method

.method public getMsg()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/bbkmobile/iqoo/payment/model/AppUpdateInfo;->e:Ljava/lang/String;

    return-object v0
.end method

.method public getPatchFileName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/bbkmobile/iqoo/payment/model/AppUpdateInfo;->n:Ljava/lang/String;

    return-object v0
.end method

.method public getPatchMd5()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/bbkmobile/iqoo/payment/model/AppUpdateInfo;->o:Ljava/lang/String;

    return-object v0
.end method

.method public getPatchSize()I
    .registers 2

    iget v0, p0, Lcom/bbkmobile/iqoo/payment/model/AppUpdateInfo;->p:I

    return v0
.end method

.method public getPatchUrl()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/bbkmobile/iqoo/payment/model/AppUpdateInfo;->q:Ljava/lang/String;

    return-object v0
.end method

.method public getRawString(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;
    .registers 5

    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {p2, p1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    :goto_7
    return-object v0

    :cond_8
    invoke-virtual {p2, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_b
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_b} :catch_d

    move-result-object v0

    goto :goto_7

    :catch_d
    move-exception v1

    goto :goto_7
.end method

.method public getSize()I
    .registers 2

    iget v0, p0, Lcom/bbkmobile/iqoo/payment/model/AppUpdateInfo;->b:I

    return v0
.end method

.method public getStat()I
    .registers 2

    iget v0, p0, Lcom/bbkmobile/iqoo/payment/model/AppUpdateInfo;->a:I

    return v0
.end method

.method public getVerCode()I
    .registers 2

    iget v0, p0, Lcom/bbkmobile/iqoo/payment/model/AppUpdateInfo;->d:I

    return v0
.end method

.method public getVersion()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/bbkmobile/iqoo/payment/model/AppUpdateInfo;->c:Ljava/lang/String;

    return-object v0
.end method

.method public setAddTime(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/bbkmobile/iqoo/payment/model/AppUpdateInfo;->g:Ljava/lang/String;

    return-void
.end method

.method public setDescription(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/bbkmobile/iqoo/payment/model/AppUpdateInfo;->h:Ljava/lang/String;

    return-void
.end method

.method public setDurl(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/bbkmobile/iqoo/payment/model/AppUpdateInfo;->i:Ljava/lang/String;

    return-void
.end method

.method public setFileName(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/bbkmobile/iqoo/payment/model/AppUpdateInfo;->j:Ljava/lang/String;

    return-void
.end method

.method public setLevel(I)V
    .registers 2

    iput p1, p0, Lcom/bbkmobile/iqoo/payment/model/AppUpdateInfo;->k:I

    return-void
.end method

.method public setLowMd5(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/bbkmobile/iqoo/payment/model/AppUpdateInfo;->l:Ljava/lang/String;

    return-void
.end method

.method public setMd5(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/bbkmobile/iqoo/payment/model/AppUpdateInfo;->f:Ljava/lang/String;

    return-void
.end method

.method public setMode(I)V
    .registers 2

    iput p1, p0, Lcom/bbkmobile/iqoo/payment/model/AppUpdateInfo;->m:I

    return-void
.end method

.method public setMsg(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/bbkmobile/iqoo/payment/model/AppUpdateInfo;->e:Ljava/lang/String;

    return-void
.end method

.method public setPatchFileName(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/bbkmobile/iqoo/payment/model/AppUpdateInfo;->n:Ljava/lang/String;

    return-void
.end method

.method public setPatchMd5(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/bbkmobile/iqoo/payment/model/AppUpdateInfo;->o:Ljava/lang/String;

    return-void
.end method

.method public setPatchSize(I)V
    .registers 2

    iput p1, p0, Lcom/bbkmobile/iqoo/payment/model/AppUpdateInfo;->p:I

    return-void
.end method

.method public setPatchUrl(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/bbkmobile/iqoo/payment/model/AppUpdateInfo;->q:Ljava/lang/String;

    return-void
.end method

.method public setSize(I)V
    .registers 2

    iput p1, p0, Lcom/bbkmobile/iqoo/payment/model/AppUpdateInfo;->b:I

    return-void
.end method

.method public setStat(I)V
    .registers 2

    iput p1, p0, Lcom/bbkmobile/iqoo/payment/model/AppUpdateInfo;->a:I

    return-void
.end method

.method public setVerCode(I)V
    .registers 2

    iput p1, p0, Lcom/bbkmobile/iqoo/payment/model/AppUpdateInfo;->d:I

    return-void
.end method

.method public setVersion(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/bbkmobile/iqoo/payment/model/AppUpdateInfo;->c:Ljava/lang/String;

    return-void
.end method
