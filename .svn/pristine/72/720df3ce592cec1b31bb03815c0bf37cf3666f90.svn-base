.class public Lcom/gionee/gsp/data/GnLogInfo;
.super Ljava/lang/Object;
.source "GnLogInfo.java"


# instance fields
.field public appId:Ljava/lang/String;

.field public dataTime:Ljava/lang/String;

.field public imsi:Ljava/lang/String;

.field public operatorType:I


# direct methods
.method public constructor <init>(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "operatorType"    # I
    .param p3, "adId"    # Ljava/lang/String;
    .param p4, "achievementId"    # Ljava/lang/String;

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    const-string v0, ""

    iput-object v0, p0, Lcom/gionee/gsp/data/GnLogInfo;->dataTime:Ljava/lang/String;

    .line 25
    const-string v0, ""

    iput-object v0, p0, Lcom/gionee/gsp/data/GnLogInfo;->appId:Ljava/lang/String;

    .line 28
    const-string v0, ""

    iput-object v0, p0, Lcom/gionee/gsp/data/GnLogInfo;->imsi:Ljava/lang/String;

    .line 37
    iput p2, p0, Lcom/gionee/gsp/data/GnLogInfo;->operatorType:I

    .line 38
    invoke-static {}, Lcom/gionee/gsp/util/GnOperatorLogInfoUtil;->getDateTime()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/gionee/gsp/data/GnLogInfo;->dataTime:Ljava/lang/String;

    .line 39
    sget-object v0, Lcom/gionee/gsp/common/GnCommonConfig;->sGnAppId:Ljava/lang/String;

    iput-object v0, p0, Lcom/gionee/gsp/data/GnLogInfo;->appId:Ljava/lang/String;

    .line 40
    invoke-static {p1}, Lcom/gionee/gsp/util/GnCommonUtil;->getSimSerialNumber(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/gionee/gsp/data/GnLogInfo;->imsi:Ljava/lang/String;

    .line 41
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Z)V
    .registers 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "operatorType"    # I
    .param p3, "adId"    # Ljava/lang/String;
    .param p4, "errorInfo"    # Ljava/lang/String;
    .param p5, "flag"    # Z

    .prologue
    const/16 v1, 0x384

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    const-string v0, ""

    iput-object v0, p0, Lcom/gionee/gsp/data/GnLogInfo;->dataTime:Ljava/lang/String;

    .line 25
    const-string v0, ""

    iput-object v0, p0, Lcom/gionee/gsp/data/GnLogInfo;->appId:Ljava/lang/String;

    .line 28
    const-string v0, ""

    iput-object v0, p0, Lcom/gionee/gsp/data/GnLogInfo;->imsi:Ljava/lang/String;

    .line 51
    iput p2, p0, Lcom/gionee/gsp/data/GnLogInfo;->operatorType:I

    .line 52
    invoke-static {}, Lcom/gionee/gsp/util/GnOperatorLogInfoUtil;->getDateTime()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/gionee/gsp/data/GnLogInfo;->dataTime:Ljava/lang/String;

    .line 53
    sget-object v0, Lcom/gionee/gsp/common/GnCommonConfig;->sGnAppId:Ljava/lang/String;

    iput-object v0, p0, Lcom/gionee/gsp/data/GnLogInfo;->appId:Ljava/lang/String;

    .line 55
    invoke-static {p4}, Lcom/gionee/gsp/util/GnCommonUtil;->isNull(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2e

    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v1, :cond_2e

    .line 56
    const/4 v0, 0x0

    invoke-virtual {p4, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p4

    .line 58
    :cond_2e
    iput-object p4, p0, Lcom/gionee/gsp/data/GnLogInfo;->imsi:Ljava/lang/String;

    .line 59
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 4

    .prologue
    .line 63
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 64
    .local v0, "sb":Ljava/lang/StringBuffer;
    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 65
    const-string v1, "appId"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/gionee/gsp/data/GnLogInfo;->appId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 66
    const-string v1, "imsi"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/gionee/gsp/data/GnLogInfo;->imsi:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 67
    const-string v1, "operatorType"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget v2, p0, Lcom/gionee/gsp/data/GnLogInfo;->operatorType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 68
    const-string v1, "dataTime"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/gionee/gsp/data/GnLogInfo;->dataTime:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 71
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;

    .line 72
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 73
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
