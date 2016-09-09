.class public Lcom/ta/utdid2/aid/AidManager;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final NUM_DAY_OUT_OF_DATE:I = 0x1

.field private static final TAG:Ljava/lang/String;

.field private static sAidManager:Lcom/ta/utdid2/aid/AidManager;


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 22
    const/4 v0, 0x0

    sput-object v0, Lcom/ta/utdid2/aid/AidManager;->sAidManager:Lcom/ta/utdid2/aid/AidManager;

    .line 23
    const-class v0, Lcom/ta/utdid2/aid/AidManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ta/utdid2/aid/AidManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 2

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lcom/ta/utdid2/aid/AidManager;->mContext:Landroid/content/Context;

    .line 39
    return-void
.end method

.method private declared-synchronized genAidValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    .prologue
    .line 91
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/ta/utdid2/aid/AidManager;->mContext:Landroid/content/Context;

    if-nez v0, :cond_10

    .line 92
    sget-object v0, Lcom/ta/utdid2/aid/AidManager;->TAG:Ljava/lang/String;

    const-string v1, "no context!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    const-string v0, ""
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_30

    .line 104
    :goto_e
    monitor-exit p0

    return-object v0

    .line 96
    :cond_10
    :try_start_10
    const-string v0, ""

    .line 98
    iget-object v1, p0, Lcom/ta/utdid2/aid/AidManager;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/ta/utdid2/android/utils/NetworkUtils;->isConnected(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2a

    .line 99
    iget-object v0, p0, Lcom/ta/utdid2/aid/AidManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/ta/utdid2/aid/AidRequester;->getInstance(Landroid/content/Context;)Lcom/ta/utdid2/aid/AidRequester;

    move-result-object v0

    .line 100
    iget-object v1, p0, Lcom/ta/utdid2/aid/AidManager;->mContext:Landroid/content/Context;

    invoke-static {v1, p1, p2}, Lcom/ta/utdid2/aid/AidStorageController;->getAidValueFromSP(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, p2, p3, v1}, Lcom/ta/utdid2/aid/AidRequester;->postRest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 102
    :cond_2a
    iget-object v1, p0, Lcom/ta/utdid2/aid/AidManager;->mContext:Landroid/content/Context;

    invoke-static {v1, p1, v0, p2}, Lcom/ta/utdid2/aid/AidStorageController;->setAidValueToSP(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2f
    .catchall {:try_start_10 .. :try_end_2f} :catchall_30

    goto :goto_e

    .line 91
    :catchall_30
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/ta/utdid2/aid/AidManager;
    .registers 3

    .prologue
    .line 30
    const-class v1, Lcom/ta/utdid2/aid/AidManager;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/ta/utdid2/aid/AidManager;->sAidManager:Lcom/ta/utdid2/aid/AidManager;

    if-nez v0, :cond_e

    .line 31
    new-instance v0, Lcom/ta/utdid2/aid/AidManager;

    invoke-direct {v0, p0}, Lcom/ta/utdid2/aid/AidManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/ta/utdid2/aid/AidManager;->sAidManager:Lcom/ta/utdid2/aid/AidManager;

    .line 34
    :cond_e
    sget-object v0, Lcom/ta/utdid2/aid/AidManager;->sAidManager:Lcom/ta/utdid2/aid/AidManager;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v1

    return-object v0

    .line 30
    :catchall_12
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 9

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 70
    iget-object v0, p0, Lcom/ta/utdid2/aid/AidManager;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_12

    invoke-static {p1}, Lcom/ta/utdid2/android/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_12

    invoke-static {p2}, Lcom/ta/utdid2/android/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_50

    .line 71
    :cond_12
    sget-object v3, Lcom/ta/utdid2/aid/AidManager;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v4, "mContext:"

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/ta/utdid2/aid/AidManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "; has appName:"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {p1}, Lcom/ta/utdid2/android/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4c

    move v0, v1

    :goto_2e
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "; has token:"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p2}, Lcom/ta/utdid2/android/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_4e

    :goto_3e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    const-string v0, ""

    .line 85
    :cond_4b
    :goto_4b
    return-object v0

    :cond_4c
    move v0, v2

    .line 71
    goto :goto_2e

    :cond_4e
    move v1, v2

    goto :goto_3e

    .line 77
    :cond_50
    iget-object v0, p0, Lcom/ta/utdid2/aid/AidManager;->mContext:Landroid/content/Context;

    invoke-static {v0, p1, p2}, Lcom/ta/utdid2/aid/AidStorageController;->getAidValueFromSP(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 78
    invoke-static {v0}, Lcom/ta/utdid2/android/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_68

    iget-object v2, p0, Lcom/ta/utdid2/aid/AidManager;->mContext:Landroid/content/Context;

    invoke-static {v2, p1, p2}, Lcom/ta/utdid2/aid/AidStorageController;->getAidGenTimeFromSP(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v2

    invoke-static {v2, v3, v1}, Lcom/ta/utdid2/android/utils/TimeUtils;->isUpToDate(JI)Z

    move-result v1

    if-nez v1, :cond_4b

    .line 82
    :cond_68
    iget-object v1, p0, Lcom/ta/utdid2/aid/AidManager;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/ta/utdid2/android/utils/NetworkUtils;->isConnected(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_4b

    .line 83
    invoke-direct {p0, p1, p2, p3}, Lcom/ta/utdid2/aid/AidManager;->genAidValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_4b
.end method

.method public requestAid(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/ut/device/AidCallback;)V
    .registers 11

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 42
    if-nez p4, :cond_c

    .line 43
    sget-object v0, Lcom/ta/utdid2/aid/AidManager;->TAG:Ljava/lang/String;

    const-string v1, "callback is null!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    :goto_b
    return-void

    .line 45
    :cond_c
    iget-object v0, p0, Lcom/ta/utdid2/aid/AidManager;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_1c

    invoke-static {p1}, Lcom/ta/utdid2/android/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1c

    invoke-static {p2}, Lcom/ta/utdid2/android/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_69

    .line 46
    :cond_1c
    sget-object v3, Lcom/ta/utdid2/aid/AidManager;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v4, "mContext:"

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/ta/utdid2/aid/AidManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "; callback:"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "; has appName:"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {p1}, Lcom/ta/utdid2/android/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_65

    move v0, v1

    :goto_42
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "; has token:"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p2}, Lcom/ta/utdid2/android/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_67

    :goto_52
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    const/16 v0, 0x3ea

    const-string v1, ""

    invoke-interface {p4, v0, v1}, Lcom/ut/device/AidCallback;->onAidEventChanged(ILjava/lang/String;)V

    goto :goto_b

    :cond_65
    move v0, v2

    .line 46
    goto :goto_42

    :cond_67
    move v1, v2

    goto :goto_52

    .line 52
    :cond_69
    iget-object v0, p0, Lcom/ta/utdid2/aid/AidManager;->mContext:Landroid/content/Context;

    invoke-static {v0, p1, p2}, Lcom/ta/utdid2/aid/AidStorageController;->getAidValueFromSP(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 55
    invoke-static {v4}, Lcom/ta/utdid2/android/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_87

    iget-object v0, p0, Lcom/ta/utdid2/aid/AidManager;->mContext:Landroid/content/Context;

    invoke-static {v0, p1, p2}, Lcom/ta/utdid2/aid/AidStorageController;->getAidGenTimeFromSP(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v2

    invoke-static {v2, v3, v1}, Lcom/ta/utdid2/android/utils/TimeUtils;->isUpToDate(JI)Z

    move-result v0

    if-eqz v0, :cond_87

    .line 57
    const/16 v0, 0x3e9

    invoke-interface {p4, v0, v4}, Lcom/ut/device/AidCallback;->onAidEventChanged(ILjava/lang/String;)V

    goto :goto_b

    .line 59
    :cond_87
    iget-object v0, p0, Lcom/ta/utdid2/aid/AidManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/ta/utdid2/android/utils/NetworkUtils;->isConnected(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_9e

    .line 60
    iget-object v0, p0, Lcom/ta/utdid2/aid/AidManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/ta/utdid2/aid/AidRequester;->getInstance(Landroid/content/Context;)Lcom/ta/utdid2/aid/AidRequester;

    move-result-object v0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    .line 61
    invoke-virtual/range {v0 .. v5}, Lcom/ta/utdid2/aid/AidRequester;->postRestAsync(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/ut/device/AidCallback;)V

    goto/16 :goto_b

    .line 63
    :cond_9e
    const/16 v0, 0x3eb

    invoke-interface {p4, v0, v4}, Lcom/ut/device/AidCallback;->onAidEventChanged(ILjava/lang/String;)V

    goto/16 :goto_b
.end method