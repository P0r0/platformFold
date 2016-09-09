.class public Lcom/youju/statistics/c/b/h;
.super Ljava/lang/Object;


# static fields
.field private static volatile a:Lcom/youju/statistics/c/b/h;

.field private static final d:Ljava/lang/String;


# instance fields
.field private b:Ljava/lang/String;

.field private c:Landroid/content/Context;

.field private e:Landroid/content/SharedPreferences;

.field private f:Landroid/content/SharedPreferences$Editor;

.field private g:Z

.field private h:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private i:Lcom/youju/statistics/c/b/f;

.field private j:Lcom/youju/statistics/c/b/g;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    sput-object v0, Lcom/youju/statistics/c/b/h;->a:Lcom/youju/statistics/c/b/h;

    const-class v0, Lcom/youju/statistics/c/b/h;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/youju/statistics/c/b/h;->d:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 5

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/youju/statistics/c/b/h;->b:Ljava/lang/String;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/youju/statistics/c/b/h;->g:Z

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/youju/statistics/c/b/h;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Lcom/youju/statistics/c/b/f;

    invoke-direct {v0, p0, v2}, Lcom/youju/statistics/c/b/f;-><init>(Lcom/youju/statistics/c/b/h;Lcom/youju/statistics/c/b/c;)V

    iput-object v0, p0, Lcom/youju/statistics/c/b/h;->i:Lcom/youju/statistics/c/b/f;

    new-instance v0, Lcom/youju/statistics/c/b/g;

    invoke-direct {v0, p0, v2}, Lcom/youju/statistics/c/b/g;-><init>(Lcom/youju/statistics/c/b/h;Lcom/youju/statistics/c/b/c;)V

    iput-object v0, p0, Lcom/youju/statistics/c/b/h;->j:Lcom/youju/statistics/c/b/g;

    iput-object p1, p0, Lcom/youju/statistics/c/b/h;->c:Landroid/content/Context;

    invoke-direct {p0}, Lcom/youju/statistics/c/b/h;->b()V

    const-string v0, "youju_cell_info"

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/youju/statistics/c/b/h;->e:Landroid/content/SharedPreferences;

    iget-object v0, p0, Lcom/youju/statistics/c/b/h;->e:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iput-object v0, p0, Lcom/youju/statistics/c/b/h;->f:Landroid/content/SharedPreferences$Editor;

    return-void
.end method

.method private a(Landroid/telephony/gsm/GsmCellLocation;Ljava/lang/String;)Lcom/youju/statistics/c/b/b;
    .registers 8

    const/4 v2, -0x1

    :try_start_1
    invoke-static {p2}, Lcom/youju/statistics/c/b/h;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {p2}, Lcom/youju/statistics/c/b/h;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Landroid/telephony/gsm/GsmCellLocation;->getLac()I

    move-result v1

    invoke-virtual {p1}, Landroid/telephony/gsm/GsmCellLocation;->getCid()I

    move-result v0

    if-ne v1, v2, :cond_48

    if-ne v0, v2, :cond_48

    iget-object v0, p0, Lcom/youju/statistics/c/b/h;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/youju/statistics/a/n;->b(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getCellLocation()Landroid/telephony/CellLocation;

    move-result-object v0

    check-cast v0, Landroid/telephony/gsm/GsmCellLocation;

    invoke-virtual {v0}, Landroid/telephony/gsm/GsmCellLocation;->getLac()I

    move-result v1

    invoke-virtual {v0}, Landroid/telephony/gsm/GsmCellLocation;->getCid()I

    move-result v0

    move v2, v1

    move v1, v0

    :goto_2b
    new-instance v0, Lcom/youju/statistics/c/b/b;

    invoke-direct {v0}, Lcom/youju/statistics/c/b/b;-><init>()V

    invoke-virtual {v0, v3}, Lcom/youju/statistics/c/b/b;->d(Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Lcom/youju/statistics/c/b/b;->a(Ljava/lang/String;)V

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/youju/statistics/c/b/b;->b(Ljava/lang/String;)V

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/youju/statistics/c/b/b;->c(Ljava/lang/String;)V
    :try_end_44
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_44} :catch_45

    :goto_44
    return-object v0

    :catch_45
    move-exception v0

    const/4 v0, 0x0

    goto :goto_44

    :cond_48
    move v2, v1

    move v1, v0

    goto :goto_2b
.end method

.method private static a(Landroid/telephony/CellInfo;Ljava/lang/String;)Lcom/youju/statistics/c/b/d;
    .registers 5
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    instance-of v0, p0, Landroid/telephony/CellInfoGsm;

    if-eqz v0, :cond_10

    new-instance v0, Lcom/youju/statistics/c/b/b;

    check-cast p0, Landroid/telephony/CellInfoGsm;

    invoke-virtual {p0}, Landroid/telephony/CellInfoGsm;->getCellIdentity()Landroid/telephony/CellIdentityGsm;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/youju/statistics/c/b/b;-><init>(Landroid/telephony/CellIdentityGsm;)V

    :goto_f
    return-object v0

    :cond_10
    instance-of v0, p0, Landroid/telephony/CellInfoCdma;

    if-eqz v0, :cond_24

    new-instance v0, Lcom/youju/statistics/c/b/e;

    check-cast p0, Landroid/telephony/CellInfoCdma;

    invoke-virtual {p0}, Landroid/telephony/CellInfoCdma;->getCellIdentity()Landroid/telephony/CellIdentityCdma;

    move-result-object v1

    invoke-static {p1}, Lcom/youju/statistics/c/b/h;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/youju/statistics/c/b/e;-><init>(Landroid/telephony/CellIdentityCdma;Ljava/lang/String;)V

    goto :goto_f

    :cond_24
    instance-of v0, p0, Landroid/telephony/CellInfoLte;

    if-eqz v0, :cond_34

    new-instance v0, Lcom/youju/statistics/c/b/a;

    check-cast p0, Landroid/telephony/CellInfoLte;

    invoke-virtual {p0}, Landroid/telephony/CellInfoLte;->getCellIdentity()Landroid/telephony/CellIdentityLte;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/youju/statistics/c/b/a;-><init>(Landroid/telephony/CellIdentityLte;)V

    goto :goto_f

    :cond_34
    const/4 v0, 0x0

    goto :goto_f
.end method

.method private a(Landroid/telephony/CellLocation;Ljava/lang/String;)Lcom/youju/statistics/c/b/d;
    .registers 5

    const/4 v0, 0x0

    instance-of v1, p1, Landroid/telephony/gsm/GsmCellLocation;

    if-eqz v1, :cond_c

    move-object v0, p1

    check-cast v0, Landroid/telephony/gsm/GsmCellLocation;

    invoke-direct {p0, v0, p2}, Lcom/youju/statistics/c/b/h;->a(Landroid/telephony/gsm/GsmCellLocation;Ljava/lang/String;)Lcom/youju/statistics/c/b/b;

    move-result-object v0

    :cond_c
    instance-of v1, p1, Landroid/telephony/cdma/CdmaCellLocation;

    if-eqz v1, :cond_16

    check-cast p1, Landroid/telephony/cdma/CdmaCellLocation;

    invoke-direct {p0, p1, p2}, Lcom/youju/statistics/c/b/h;->a(Landroid/telephony/cdma/CdmaCellLocation;Ljava/lang/String;)Lcom/youju/statistics/c/b/e;

    move-result-object v0

    :cond_16
    return-object v0
.end method

.method private a(Ljava/util/List;Ljava/lang/String;)Lcom/youju/statistics/c/b/d;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/telephony/CellInfo;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lcom/youju/statistics/c/b/d;"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_17

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/CellInfo;

    if-eqz v0, :cond_4

    invoke-static {v0, p2}, Lcom/youju/statistics/c/b/h;->a(Landroid/telephony/CellInfo;Ljava/lang/String;)Lcom/youju/statistics/c/b/d;

    move-result-object v0

    :goto_16
    return-object v0

    :cond_17
    sget-object v0, Lcom/youju/statistics/c/b/h;->d:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getBaseStationInfo"

    invoke-static {v2}, Lcom/youju/statistics/a/s;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "all cellinfo is null "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/youju/statistics/a/s;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    goto :goto_16
.end method

.method private a(Landroid/telephony/cdma/CdmaCellLocation;Ljava/lang/String;)Lcom/youju/statistics/c/b/e;
    .registers 9

    const/4 v5, -0x1

    :try_start_1
    new-instance v1, Lcom/youju/statistics/c/b/e;

    invoke-direct {v1}, Lcom/youju/statistics/c/b/e;-><init>()V

    invoke-static {p2}, Lcom/youju/statistics/c/b/h;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Landroid/telephony/cdma/CdmaCellLocation;->getNetworkId()I

    move-result v3

    invoke-virtual {p1}, Landroid/telephony/cdma/CdmaCellLocation;->getBaseStationId()I

    move-result v2

    invoke-virtual {p1}, Landroid/telephony/cdma/CdmaCellLocation;->getSystemId()I

    move-result v0

    if-ne v3, v5, :cond_34

    if-ne v2, v5, :cond_34

    if-ne v0, v5, :cond_34

    iget-object v0, p0, Lcom/youju/statistics/c/b/h;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/youju/statistics/a/n;->b(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getCellLocation()Landroid/telephony/CellLocation;

    move-result-object v0

    check-cast v0, Landroid/telephony/cdma/CdmaCellLocation;

    invoke-virtual {v0}, Landroid/telephony/cdma/CdmaCellLocation;->getNetworkId()I

    move-result v3

    invoke-virtual {v0}, Landroid/telephony/cdma/CdmaCellLocation;->getBaseStationId()I

    move-result v2

    invoke-virtual {v0}, Landroid/telephony/cdma/CdmaCellLocation;->getSystemId()I

    move-result v0

    :cond_34
    invoke-virtual {v1, v4}, Lcom/youju/statistics/c/b/e;->d(Ljava/lang/String;)V

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/youju/statistics/c/b/e;->a(Ljava/lang/String;)V

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/youju/statistics/c/b/e;->b(Ljava/lang/String;)V

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/youju/statistics/c/b/e;->c(Ljava/lang/String;)V
    :try_end_4c
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_4c} :catch_4e

    move-object v0, v1

    :goto_4d
    return-object v0

    :catch_4e
    move-exception v0

    const/4 v0, 0x0

    goto :goto_4d
.end method

.method public static a(Landroid/content/Context;)Lcom/youju/statistics/c/b/h;
    .registers 2

    sget-object v0, Lcom/youju/statistics/c/b/h;->a:Lcom/youju/statistics/c/b/h;

    if-nez v0, :cond_7

    invoke-static {p0}, Lcom/youju/statistics/c/b/h;->c(Landroid/content/Context;)V

    :cond_7
    sget-object v0, Lcom/youju/statistics/c/b/h;->a:Lcom/youju/statistics/c/b/h;

    return-object v0
.end method

.method private static a(Landroid/net/wifi/WifiManager;)Ljava/lang/String;
    .registers 7

    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->getScanResults()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_d

    const-string v0, ""

    :cond_c
    :goto_c
    return-object v0

    :cond_d
    const-string v1, ""

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    const/4 v0, 0x0

    move v5, v0

    move-object v0, v1

    move v1, v5

    :goto_17
    if-ge v1, v4, :cond_2e

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/ScanResult;

    iget-object v2, v0, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    const-string v0, "00:00:00:00:00:00"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_29

    :cond_29
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    move-object v0, v2

    goto :goto_17

    :cond_2e
    invoke-static {v0}, Lcom/youju/statistics/a/n;->a(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_c

    const-string v0, ""

    goto :goto_c
.end method

.method private a(Landroid/telephony/CellLocation;)Ljava/lang/String;
    .registers 5

    if-nez p1, :cond_5

    :try_start_2
    const-string v0, ""

    :goto_4
    return-object v0

    :cond_5
    iget-object v0, p0, Lcom/youju/statistics/c/b/h;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/youju/statistics/a/n;->b(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/youju/statistics/c/b/h;->a(Landroid/telephony/TelephonyManager;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/youju/statistics/a/n;->a(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_36

    sget-object v0, Lcom/youju/statistics/c/b/h;->d:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getBaseStationInfoToUpload"

    invoke-static {v2}, Lcom/youju/statistics/a/s;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "operator is null "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/youju/statistics/a/s;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, ""

    goto :goto_4

    :cond_36
    invoke-direct {p0, p1, v0}, Lcom/youju/statistics/c/b/h;->a(Landroid/telephony/CellLocation;Ljava/lang/String;)Lcom/youju/statistics/c/b/d;

    move-result-object v0

    if-nez v0, :cond_3f

    const-string v0, ""

    goto :goto_4

    :cond_3f
    invoke-virtual {v0}, Lcom/youju/statistics/c/b/d;->toString()Ljava/lang/String;
    :try_end_42
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_42} :catch_44

    move-result-object v0

    goto :goto_4

    :catch_44
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const-string v0, ""

    goto :goto_4
.end method

.method private a(Landroid/telephony/TelephonyManager;)Ljava/lang/String;
    .registers 6

    invoke-static {}, Lcom/youju/statistics/a/n;->h()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/youju/statistics/a/n;->i()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Lcom/youju/statistics/c/b/h;->c(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2b

    invoke-static {v1}, Lcom/youju/statistics/c/b/h;->c(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2b

    :try_start_14
    invoke-virtual {p1}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1f

    :cond_1e
    :goto_1e
    return-object v0

    :cond_1f
    invoke-virtual {v2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_22} :catch_27

    move-result v2

    if-eqz v2, :cond_2b

    move-object v0, v1

    goto :goto_1e

    :catch_27
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2b
    invoke-static {v0}, Lcom/youju/statistics/c/b/h;->c(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1e

    invoke-static {v1}, Lcom/youju/statistics/c/b/h;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_39

    move-object v0, v1

    goto :goto_1e

    :cond_39
    const-string v0, ""

    goto :goto_1e
.end method

.method static synthetic a(Lcom/youju/statistics/c/b/h;Landroid/telephony/CellLocation;)Ljava/lang/String;
    .registers 3

    invoke-direct {p0, p1}, Lcom/youju/statistics/c/b/h;->a(Landroid/telephony/CellLocation;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/youju/statistics/c/b/h;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    iput-object p1, p0, Lcom/youju/statistics/c/b/h;->b:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic a(Lcom/youju/statistics/c/b/h;Ljava/util/List;)Ljava/lang/String;
    .registers 3

    invoke-direct {p0, p1}, Lcom/youju/statistics/c/b/h;->a(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private a(Ljava/util/List;)Ljava/lang/String;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/telephony/CellInfo;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    if-eqz p1, :cond_8

    :try_start_2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_b

    :cond_8
    const-string v0, ""

    :goto_a
    return-object v0

    :cond_b
    iget-object v0, p0, Lcom/youju/statistics/c/b/h;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/youju/statistics/a/n;->b(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/youju/statistics/c/b/h;->a(Landroid/telephony/TelephonyManager;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/youju/statistics/a/n;->a(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3c

    sget-object v0, Lcom/youju/statistics/c/b/h;->d:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getBaseStationInfoToUpload"

    invoke-static {v2}, Lcom/youju/statistics/a/s;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "operator is null "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/youju/statistics/a/s;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, ""

    goto :goto_a

    :cond_3c
    invoke-direct {p0, p1, v0}, Lcom/youju/statistics/c/b/h;->a(Ljava/util/List;Ljava/lang/String;)Lcom/youju/statistics/c/b/d;

    move-result-object v0

    if-nez v0, :cond_45

    const-string v0, ""

    goto :goto_a

    :cond_45
    invoke-virtual {v0}, Lcom/youju/statistics/c/b/d;->toString()Ljava/lang/String;
    :try_end_48
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_48} :catch_4a

    move-result-object v0

    goto :goto_a

    :catch_4a
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const-string v0, ""

    goto :goto_a
.end method

.method static synthetic a(Lcom/youju/statistics/c/b/h;)Z
    .registers 2

    invoke-direct {p0}, Lcom/youju/statistics/c/b/h;->d()Z

    move-result v0

    return v0
.end method

.method static synthetic a(Lcom/youju/statistics/c/b/h;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/youju/statistics/c/b/h;->g:Z

    return p1
.end method

.method public static b(Landroid/content/Context;)Ljava/lang/String;
    .registers 3

    :try_start_0
    const-string v0, "wifi"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v1

    if-nez v1, :cond_11

    const-string v0, ""

    :goto_10
    return-object v0

    :cond_11
    const-string v1, ""

    invoke-static {p0}, Lcom/youju/statistics/a/j;->f(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_22

    invoke-static {v0}, Lcom/youju/statistics/c/b/h;->b(Landroid/net/wifi/WifiManager;)Ljava/lang/String;

    move-result-object v0

    :goto_1d
    invoke-static {v0}, Lcom/youju/statistics/a/j;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_10

    :cond_22
    invoke-static {v0}, Lcom/youju/statistics/c/b/h;->a(Landroid/net/wifi/WifiManager;)Ljava/lang/String;
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_25} :catch_27

    move-result-object v0

    goto :goto_1d

    :catch_27
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const-string v0, ""

    goto :goto_10
.end method

.method private static b(Landroid/net/wifi/WifiManager;)Ljava/lang/String;
    .registers 3

    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    if-nez v0, :cond_9

    const-string v0, ""

    :cond_8
    :goto_8
    return-object v0

    :cond_9
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/youju/statistics/a/n;->a(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_8

    const-string v0, ""

    goto :goto_8
.end method

.method public static b(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    const/4 v0, 0x0

    const/4 v1, 0x3

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private b()V
    .registers 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InlinedApi"
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/youju/statistics/c/b/h;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_22

    iget-object v0, p0, Lcom/youju/statistics/c/b/h;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/youju/statistics/a/n;->b(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x11

    if-lt v1, v2, :cond_1b

    iget-object v1, p0, Lcom/youju/statistics/c/b/h;->i:Lcom/youju/statistics/c/b/f;

    const/16 v2, 0x400

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    :cond_1b
    iget-object v1, p0, Lcom/youju/statistics/c/b/h;->j:Lcom/youju/statistics/c/b/g;

    const/16 v2, 0x10

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_22} :catch_23

    :cond_22
    :goto_22
    return-void

    :catch_23
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_22
.end method

.method static synthetic b(Lcom/youju/statistics/c/b/h;)V
    .registers 1

    invoke-direct {p0}, Lcom/youju/statistics/c/b/h;->e()V

    return-void
.end method

.method private c()V
    .registers 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InlinedApi"
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/youju/statistics/c/b/h;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/youju/statistics/a/n;->b(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x11

    if-lt v1, v2, :cond_12

    iget-object v1, p0, Lcom/youju/statistics/c/b/h;->i:Lcom/youju/statistics/c/b/f;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    :cond_12
    iget-object v1, p0, Lcom/youju/statistics/c/b/h;->j:Lcom/youju/statistics/c/b/g;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_18} :catch_19

    :goto_18
    return-void

    :catch_19
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_18
.end method

.method private static declared-synchronized c(Landroid/content/Context;)V
    .registers 3

    const-class v1, Lcom/youju/statistics/c/b/h;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/youju/statistics/c/b/h;->a:Lcom/youju/statistics/c/b/h;

    if-nez v0, :cond_e

    new-instance v0, Lcom/youju/statistics/c/b/h;

    invoke-direct {v0, p0}, Lcom/youju/statistics/c/b/h;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/youju/statistics/c/b/h;->a:Lcom/youju/statistics/c/b/h;
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_10

    :cond_e
    monitor-exit v1

    return-void

    :catchall_10
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static synthetic c(Lcom/youju/statistics/c/b/h;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/youju/statistics/c/b/h;->g:Z

    return v0
.end method

.method private static c(Ljava/lang/String;)Z
    .registers 2

    const-string v0, "**"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, 0x0

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x1

    goto :goto_9
.end method

.method private d()Z
    .registers 3

    iget-object v0, p0, Lcom/youju/statistics/c/b/h;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/youju/statistics/a/n;->b(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v0

    const/4 v1, 0x5

    if-eq v0, v1, :cond_f

    const/4 v0, 0x1

    :goto_e
    return v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_e
.end method

.method private e()V
    .registers 4

    iget-object v0, p0, Lcom/youju/statistics/c/b/h;->e:Landroid/content/SharedPreferences;

    const-string v1, "key_cell_info"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/youju/statistics/c/b/h;->b:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_44

    iget-object v0, p0, Lcom/youju/statistics/c/b/h;->f:Landroid/content/SharedPreferences$Editor;

    const-string v1, "key_cell_info"

    iget-object v2, p0, Lcom/youju/statistics/c/b/h;->b:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    iget-object v0, p0, Lcom/youju/statistics/c/b/h;->f:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    sget-object v0, Lcom/youju/statistics/c/b/h;->d:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-static {v2}, Lcom/youju/statistics/a/s;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "new cell info is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/youju/statistics/c/b/h;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/youju/statistics/a/s;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_44
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/youju/statistics/c/b/h;->b:Ljava/lang/String;

    return-object v0
.end method

.method public a(Z)V
    .registers 3

    iget-object v0, p0, Lcom/youju/statistics/c/b/h;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    if-eqz p1, :cond_b

    invoke-direct {p0}, Lcom/youju/statistics/c/b/h;->b()V

    :goto_a
    return-void

    :cond_b
    invoke-direct {p0}, Lcom/youju/statistics/c/b/h;->c()V

    goto :goto_a
.end method
