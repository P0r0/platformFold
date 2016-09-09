.class public final enum Lcom/baidu/sapi2/utils/enums/Domain;
.super Ljava/lang/Enum;
.source "Domain.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/baidu/sapi2/utils/enums/Domain;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum DOMAIN_ONLINE:Lcom/baidu/sapi2/utils/enums/Domain;

.field public static final enum DOMAIN_QA:Lcom/baidu/sapi2/utils/enums/Domain;

.field public static final enum DOMAIN_RD:Lcom/baidu/sapi2/utils/enums/Domain;

.field private static final synthetic g:[Lcom/baidu/sapi2/utils/enums/Domain;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Z


# direct methods
.method static constructor <clinit>()V
    .registers 13

    .prologue
    const/4 v12, 0x2

    const/4 v11, 0x1

    const/4 v2, 0x0

    .line 10
    new-instance v0, Lcom/baidu/sapi2/utils/enums/Domain;

    const-string v1, "DOMAIN_ONLINE"

    const-string v3, "http://passport.baidu.com"

    const-string v4, "http://wappass.baidu.com"

    const-string v5, "https://openapi.baidu.com"

    const-string v6, "http://wappass.bdimg.com"

    const-string v7, "http://himg.baidu.com"

    invoke-direct/range {v0 .. v7}, Lcom/baidu/sapi2/utils/enums/Domain;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/baidu/sapi2/utils/enums/Domain;->DOMAIN_ONLINE:Lcom/baidu/sapi2/utils/enums/Domain;

    .line 16
    new-instance v3, Lcom/baidu/sapi2/utils/enums/Domain;

    const-string v4, "DOMAIN_RD"

    const-string v6, "http://passport.rdtest.baidu.com"

    const-string v7, "http://passport.rdtest.baidu.com:8000"

    const-string v8, "http://dbl-dev-rd23.vm.baidu.com:8080"

    const-string v9, "http://passport.rdtest.baidu.com:8000"

    const-string v10, "http://passport.baidu.com"

    move v5, v11

    invoke-direct/range {v3 .. v10}, Lcom/baidu/sapi2/utils/enums/Domain;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v3, Lcom/baidu/sapi2/utils/enums/Domain;->DOMAIN_RD:Lcom/baidu/sapi2/utils/enums/Domain;

    .line 22
    new-instance v3, Lcom/baidu/sapi2/utils/enums/Domain;

    const-string v4, "DOMAIN_QA"

    const-string v6, "http://passport.qatest.baidu.com"

    const-string v7, "http://wappass.qatest.baidu.com"

    const-string v8, "http://db-infbk-online-17.db01.baidu.com:8080"

    const-string v9, "http://wappass.qatest.baidu.com"

    const-string v10, "http://passport.baidu.com"

    move v5, v12

    invoke-direct/range {v3 .. v10}, Lcom/baidu/sapi2/utils/enums/Domain;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v3, Lcom/baidu/sapi2/utils/enums/Domain;->DOMAIN_QA:Lcom/baidu/sapi2/utils/enums/Domain;

    .line 6
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/baidu/sapi2/utils/enums/Domain;

    sget-object v1, Lcom/baidu/sapi2/utils/enums/Domain;->DOMAIN_ONLINE:Lcom/baidu/sapi2/utils/enums/Domain;

    aput-object v1, v0, v2

    sget-object v1, Lcom/baidu/sapi2/utils/enums/Domain;->DOMAIN_RD:Lcom/baidu/sapi2/utils/enums/Domain;

    aput-object v1, v0, v11

    sget-object v1, Lcom/baidu/sapi2/utils/enums/Domain;->DOMAIN_QA:Lcom/baidu/sapi2/utils/enums/Domain;

    aput-object v1, v0, v12

    sput-object v0, Lcom/baidu/sapi2/utils/enums/Domain;->g:[Lcom/baidu/sapi2/utils/enums/Domain;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 8
    .param p3, "url"    # Ljava/lang/String;
    .param p4, "wap"    # Ljava/lang/String;
    .param p5, "deviceUrl"    # Ljava/lang/String;
    .param p6, "configUrl"    # Ljava/lang/String;
    .param p7, "portraitUrl"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 34
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 35
    iput-object p3, p0, Lcom/baidu/sapi2/utils/enums/Domain;->a:Ljava/lang/String;

    .line 36
    iput-object p4, p0, Lcom/baidu/sapi2/utils/enums/Domain;->b:Ljava/lang/String;

    .line 37
    iput-object p5, p0, Lcom/baidu/sapi2/utils/enums/Domain;->c:Ljava/lang/String;

    .line 38
    iput-object p6, p0, Lcom/baidu/sapi2/utils/enums/Domain;->d:Ljava/lang/String;

    .line 39
    iput-object p7, p0, Lcom/baidu/sapi2/utils/enums/Domain;->e:Ljava/lang/String;

    .line 40
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/baidu/sapi2/utils/enums/Domain;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 6
    const-class v0, Lcom/baidu/sapi2/utils/enums/Domain;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/baidu/sapi2/utils/enums/Domain;

    return-object v0
.end method

.method public static values()[Lcom/baidu/sapi2/utils/enums/Domain;
    .registers 1

    .prologue
    .line 6
    sget-object v0, Lcom/baidu/sapi2/utils/enums/Domain;->g:[Lcom/baidu/sapi2/utils/enums/Domain;

    invoke-virtual {v0}, [Lcom/baidu/sapi2/utils/enums/Domain;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/baidu/sapi2/utils/enums/Domain;

    return-object v0
.end method


# virtual methods
.method public forceHttps(Z)Lcom/baidu/sapi2/utils/enums/Domain;
    .registers 2
    .param p1, "forceHttps"    # Z

    .prologue
    .line 75
    iput-boolean p1, p0, Lcom/baidu/sapi2/utils/enums/Domain;->f:Z

    .line 76
    return-object p0
.end method

.method public getConfigUrl()Ljava/lang/String;
    .registers 2

    .prologue
    .line 61
    iget-object v0, p0, Lcom/baidu/sapi2/utils/enums/Domain;->d:Ljava/lang/String;

    return-object v0
.end method

.method public getDeviceUrl()Ljava/lang/String;
    .registers 2

    .prologue
    .line 57
    iget-object v0, p0, Lcom/baidu/sapi2/utils/enums/Domain;->c:Ljava/lang/String;

    return-object v0
.end method

.method public getPortraitUrl()Ljava/lang/String;
    .registers 2

    .prologue
    .line 65
    iget-object v0, p0, Lcom/baidu/sapi2/utils/enums/Domain;->e:Ljava/lang/String;

    return-object v0
.end method

.method public getURL()Ljava/lang/String;
    .registers 4

    .prologue
    .line 43
    iget-boolean v0, p0, Lcom/baidu/sapi2/utils/enums/Domain;->f:Z

    if-eqz v0, :cond_f

    .line 44
    iget-object v0, p0, Lcom/baidu/sapi2/utils/enums/Domain;->a:Ljava/lang/String;

    const-string v1, "http://"

    const-string v2, "https://"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 46
    :goto_e
    return-object v0

    :cond_f
    iget-object v0, p0, Lcom/baidu/sapi2/utils/enums/Domain;->a:Ljava/lang/String;

    goto :goto_e
.end method

.method public getWap()Ljava/lang/String;
    .registers 4

    .prologue
    .line 50
    iget-boolean v0, p0, Lcom/baidu/sapi2/utils/enums/Domain;->f:Z

    if-eqz v0, :cond_f

    .line 51
    iget-object v0, p0, Lcom/baidu/sapi2/utils/enums/Domain;->b:Ljava/lang/String;

    const-string v1, "http://"

    const-string v2, "https://"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 53
    :goto_e
    return-object v0

    :cond_f
    iget-object v0, p0, Lcom/baidu/sapi2/utils/enums/Domain;->b:Ljava/lang/String;

    goto :goto_e
.end method
