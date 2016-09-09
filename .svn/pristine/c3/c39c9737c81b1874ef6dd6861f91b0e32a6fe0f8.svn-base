.class public Lcom/duoku/platform/download/utils/AppSimpleCache;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final CACHE_NAME:Ljava/lang/String; = ".dk.stars.cache"

.field public static final TYPE_BOOLEAN:B = 0x4t

.field public static final TYPE_FLOAT:B = 0x3t

.field public static final TYPE_INT:B = 0x1t

.field public static final TYPE_LONG:B = 0x2t

.field public static final TYPE_STRING:B = 0x5t

.field private static cache:Lcom/duoku/platform/download/utils/AppSimpleCache;

.field public static lock:[Ljava/lang/Byte;


# instance fields
.field private mDataCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private mPreferences:Landroid/content/SharedPreferences;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 18
    const/4 v0, 0x0

    sput-object v0, Lcom/duoku/platform/download/utils/AppSimpleCache;->cache:Lcom/duoku/platform/download/utils/AppSimpleCache;

    .line 24
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Byte;

    sput-object v0, Lcom/duoku/platform/download/utils/AppSimpleCache;->lock:[Ljava/lang/Byte;

    .line 30
    return-void
.end method

.method private constructor <init>()V
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object v0, p0, Lcom/duoku/platform/download/utils/AppSimpleCache;->mDataCache:Ljava/util/HashMap;

    .line 20
    iput-object v0, p0, Lcom/duoku/platform/download/utils/AppSimpleCache;->mPreferences:Landroid/content/SharedPreferences;

    .line 39
    iget-object v0, p0, Lcom/duoku/platform/download/utils/AppSimpleCache;->mDataCache:Ljava/util/HashMap;

    if-nez v0, :cond_13

    .line 41
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/duoku/platform/download/utils/AppSimpleCache;->mDataCache:Ljava/util/HashMap;

    .line 44
    :cond_13
    invoke-static {}, Lcom/duoku/platform/download/utils/AppUtil;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, ".dk.stars.cache"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/duoku/platform/download/utils/AppSimpleCache;->mPreferences:Landroid/content/SharedPreferences;

    .line 45
    return-void
.end method

.method public static Instance()Lcom/duoku/platform/download/utils/AppSimpleCache;
    .registers 1

    .prologue
    .line 108
    invoke-static {}, Lcom/duoku/platform/download/utils/AppSimpleCache;->checkCache()Z

    .line 110
    sget-object v0, Lcom/duoku/platform/download/utils/AppSimpleCache;->cache:Lcom/duoku/platform/download/utils/AppSimpleCache;

    return-object v0
.end method

.method private static checkCache()Z
    .registers 1

    .prologue
    .line 115
    sget-object v0, Lcom/duoku/platform/download/utils/AppSimpleCache;->cache:Lcom/duoku/platform/download/utils/AppSimpleCache;

    if-nez v0, :cond_d

    .line 117
    new-instance v0, Lcom/duoku/platform/download/utils/AppSimpleCache;

    invoke-direct {v0}, Lcom/duoku/platform/download/utils/AppSimpleCache;-><init>()V

    sput-object v0, Lcom/duoku/platform/download/utils/AppSimpleCache;->cache:Lcom/duoku/platform/download/utils/AppSimpleCache;

    .line 118
    const/4 v0, 0x0

    .line 121
    :goto_c
    return v0

    :cond_d
    const/4 v0, 0x1

    goto :goto_c
.end method

.method public static initialize(Lcom/duoku/platform/download/listener/OnCacheLoadedListener;)V
    .registers 2

    .prologue
    .line 80
    invoke-static {}, Lcom/duoku/platform/download/utils/AppSimpleCache;->checkCache()Z

    move-result v0

    if-nez v0, :cond_9

    .line 82
    invoke-static {p0}, Lcom/duoku/platform/download/utils/FileHelper;->getFromCache(Lcom/duoku/platform/download/listener/OnCacheLoadedListener;)V

    .line 84
    :cond_9
    return-void
.end method

.method public static reload(Lcom/duoku/platform/download/listener/OnCacheLoadedListener;)V
    .registers 1

    .prologue
    .line 88
    invoke-static {}, Lcom/duoku/platform/download/utils/AppSimpleCache;->checkCache()Z

    .line 90
    invoke-static {p0}, Lcom/duoku/platform/download/utils/FileHelper;->getFromCache(Lcom/duoku/platform/download/listener/OnCacheLoadedListener;)V

    .line 91
    return-void
.end method

.method private save(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 7

    .prologue
    .line 49
    invoke-static {p1}, Lcom/duoku/platform/download/utils/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1e

    if-eqz p2, :cond_1e

    .line 51
    iget-object v0, p0, Lcom/duoku/platform/download/utils/AppSimpleCache;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 53
    instance-of v1, p2, Ljava/lang/Integer;

    if-eqz v1, :cond_1f

    .line 55
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 74
    :cond_1b
    :goto_1b
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 76
    :cond_1e
    return-void

    .line 57
    :cond_1f
    instance-of v1, p2, Ljava/lang/Boolean;

    if-eqz v1, :cond_2d

    .line 59
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    goto :goto_1b

    .line 61
    :cond_2d
    instance-of v1, p2, Ljava/lang/Long;

    if-eqz v1, :cond_3b

    .line 63
    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-interface {v0, p1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    goto :goto_1b

    .line 65
    :cond_3b
    instance-of v1, p2, Ljava/lang/Float;

    if-eqz v1, :cond_49

    .line 67
    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    goto :goto_1b

    .line 69
    :cond_49
    instance-of v1, p2, Ljava/lang/String;

    if-eqz v1, :cond_1b

    .line 71
    check-cast p2, Ljava/lang/String;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_1b
.end method


# virtual methods
.method public clear()V
    .registers 3

    .prologue
    .line 95
    iget-object v0, p0, Lcom/duoku/platform/download/utils/AppSimpleCache;->mDataCache:Ljava/util/HashMap;

    if-eqz v0, :cond_d

    .line 97
    iget-object v1, p0, Lcom/duoku/platform/download/utils/AppSimpleCache;->mDataCache:Ljava/util/HashMap;

    monitor-enter v1

    .line 99
    :try_start_7
    iget-object v0, p0, Lcom/duoku/platform/download/utils/AppSimpleCache;->mDataCache:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 97
    monitor-exit v1
    :try_end_d
    .catchall {:try_start_7 .. :try_end_d} :catchall_11

    .line 103
    :cond_d
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/duoku/platform/download/utils/AppSimpleCache;->mDataCache:Ljava/util/HashMap;

    .line 104
    return-void

    .line 97
    :catchall_11
    move-exception v0

    :try_start_12
    monitor-exit v1
    :try_end_13
    .catchall {:try_start_12 .. :try_end_13} :catchall_11

    throw v0
.end method

.method public getBooleanCache(Ljava/lang/String;Z)Z
    .registers 4

    .prologue
    .line 196
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/duoku/platform/download/utils/AppSimpleCache;->getCache(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 198
    if-nez v0, :cond_d

    :goto_c
    return p2

    :cond_d
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    goto :goto_c
.end method

.method public getCache(Ljava/lang/String;)Ljava/lang/Object;
    .registers 4

    .prologue
    .line 156
    invoke-static {}, Lcom/duoku/platform/download/utils/AppSimpleCache;->checkCache()Z

    .line 158
    iget-object v0, p0, Lcom/duoku/platform/download/utils/AppSimpleCache;->mDataCache:Ljava/util/HashMap;

    if-eqz v0, :cond_28

    .line 160
    iget-object v1, p0, Lcom/duoku/platform/download/utils/AppSimpleCache;->mDataCache:Ljava/util/HashMap;

    monitor-enter v1

    .line 164
    :try_start_a
    iget-object v0, p0, Lcom/duoku/platform/download/utils/AppSimpleCache;->mDataCache:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/duoku/platform/download/utils/AppSimpleCache;->mDataCache:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_18
    monitor-exit v1

    .line 169
    :goto_19
    return-object v0

    .line 164
    :cond_1a
    iget-object v0, p0, Lcom/duoku/platform/download/utils/AppSimpleCache;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_18

    .line 160
    :catchall_25
    move-exception v0

    monitor-exit v1
    :try_end_27
    .catchall {:try_start_a .. :try_end_27} :catchall_25

    throw v0

    .line 169
    :cond_28
    const/4 v0, 0x0

    goto :goto_19
.end method

.method public getCache(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5

    .prologue
    .line 175
    invoke-static {}, Lcom/duoku/platform/download/utils/AppSimpleCache;->checkCache()Z

    .line 181
    iget-object v0, p0, Lcom/duoku/platform/download/utils/AppSimpleCache;->mDataCache:Ljava/util/HashMap;

    if-eqz v0, :cond_1b

    .line 183
    iget-object v1, p0, Lcom/duoku/platform/download/utils/AppSimpleCache;->mDataCache:Ljava/util/HashMap;

    monitor-enter v1

    .line 185
    :try_start_a
    invoke-virtual {p0, p1}, Lcom/duoku/platform/download/utils/AppSimpleCache;->hasCache(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_13

    move-object v0, p2

    :goto_11
    monitor-exit v1

    .line 190
    :goto_12
    return-object v0

    .line 185
    :cond_13
    invoke-virtual {p0, p1}, Lcom/duoku/platform/download/utils/AppSimpleCache;->getCache(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_11

    .line 183
    :catchall_18
    move-exception v0

    monitor-exit v1
    :try_end_1a
    .catchall {:try_start_a .. :try_end_1a} :catchall_18

    throw v0

    .line 190
    :cond_1b
    const/4 v0, 0x0

    goto :goto_12
.end method

.method public getIntCache(Ljava/lang/String;I)I
    .registers 4

    .prologue
    .line 204
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/duoku/platform/download/utils/AppSimpleCache;->getCache(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 206
    if-nez v0, :cond_d

    :goto_c
    return p2

    :cond_d
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p2

    goto :goto_c
.end method

.method public getLongCache(Ljava/lang/String;J)J
    .registers 6

    .prologue
    .line 212
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/duoku/platform/download/utils/AppSimpleCache;->getCache(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 214
    if-nez v0, :cond_d

    :goto_c
    return-wide p2

    :cond_d
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide p2

    goto :goto_c
.end method

.method public getStringCache(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .prologue
    .line 220
    invoke-virtual {p0, p1, p2}, Lcom/duoku/platform/download/utils/AppSimpleCache;->getCache(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 225
    if-nez v0, :cond_9

    :goto_8
    return-object p2

    :cond_9
    move-object p2, v0

    goto :goto_8
.end method

.method public hasCache(Ljava/lang/String;)Z
    .registers 5

    .prologue
    const/4 v0, 0x0

    .line 139
    invoke-static {}, Lcom/duoku/platform/download/utils/AppSimpleCache;->checkCache()Z

    .line 141
    iget-object v1, p0, Lcom/duoku/platform/download/utils/AppSimpleCache;->mDataCache:Ljava/util/HashMap;

    if-eqz v1, :cond_1c

    .line 143
    iget-object v1, p0, Lcom/duoku/platform/download/utils/AppSimpleCache;->mDataCache:Ljava/util/HashMap;

    monitor-enter v1

    .line 145
    :try_start_b
    iget-object v2, p0, Lcom/duoku/platform/download/utils/AppSimpleCache;->mDataCache:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1d

    iget-object v2, p0, Lcom/duoku/platform/download/utils/AppSimpleCache;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v2, p1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1d

    :goto_1b
    monitor-exit v1

    .line 150
    :cond_1c
    return v0

    .line 145
    :cond_1d
    const/4 v0, 0x1

    goto :goto_1b

    .line 143
    :catchall_1f
    move-exception v0

    monitor-exit v1
    :try_end_21
    .catchall {:try_start_b .. :try_end_21} :catchall_1f

    throw v0
.end method

.method public removeCache(Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 126
    invoke-static {}, Lcom/duoku/platform/download/utils/AppSimpleCache;->checkCache()Z

    .line 128
    iget-object v0, p0, Lcom/duoku/platform/download/utils/AppSimpleCache;->mDataCache:Ljava/util/HashMap;

    if-eqz v0, :cond_10

    .line 130
    iget-object v1, p0, Lcom/duoku/platform/download/utils/AppSimpleCache;->mDataCache:Ljava/util/HashMap;

    monitor-enter v1

    .line 132
    :try_start_a
    iget-object v0, p0, Lcom/duoku/platform/download/utils/AppSimpleCache;->mDataCache:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    monitor-exit v1

    .line 135
    :cond_10
    return-void

    .line 130
    :catchall_11
    move-exception v0

    monitor-exit v1
    :try_end_13
    .catchall {:try_start_a .. :try_end_13} :catchall_11

    throw v0
.end method

.method public saveCache(Ljava/lang/String;Ljava/lang/Object;Z)Z
    .registers 5

    .prologue
    .line 231
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/duoku/platform/download/utils/AppSimpleCache;->saveCache(Ljava/lang/String;Ljava/lang/Object;ZZ)Z

    move-result v0

    return v0
.end method

.method public declared-synchronized saveCache(Ljava/lang/String;Ljava/lang/Object;ZZ)Z
    .registers 8

    .prologue
    .line 236
    monitor-enter p0

    const/4 v0, 0x0

    .line 238
    if-eqz p1, :cond_6

    if-nez p2, :cond_11

    .line 240
    :cond_6
    :try_start_6
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Null Pointer catched while save cache."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_e
    .catchall {:try_start_6 .. :try_end_e} :catchall_e

    .line 236
    :catchall_e
    move-exception v0

    monitor-exit p0

    throw v0

    .line 243
    :cond_11
    :try_start_11
    invoke-virtual {p0, p1}, Lcom/duoku/platform/download/utils/AppSimpleCache;->hasCache(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_18

    .line 246
    const/4 v0, 0x1

    .line 249
    :cond_18
    invoke-static {}, Lcom/duoku/platform/download/utils/AppSimpleCache;->checkCache()Z

    .line 251
    if-eqz p4, :cond_23

    .line 253
    invoke-static {p2, p1}, Lcom/duoku/platform/download/utils/FileHelper;->saveToCache(Ljava/lang/Object;Ljava/lang/String;)V

    .line 254
    invoke-direct {p0, p1, p2}, Lcom/duoku/platform/download/utils/AppSimpleCache;->save(Ljava/lang/String;Ljava/lang/Object;)V

    .line 257
    :cond_23
    iget-object v1, p0, Lcom/duoku/platform/download/utils/AppSimpleCache;->mDataCache:Ljava/util/HashMap;

    if-nez v1, :cond_2e

    .line 259
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/duoku/platform/download/utils/AppSimpleCache;->mDataCache:Ljava/util/HashMap;

    .line 262
    :cond_2e
    iget-object v1, p0, Lcom/duoku/platform/download/utils/AppSimpleCache;->mDataCache:Ljava/util/HashMap;

    monitor-enter v1
    :try_end_31
    .catchall {:try_start_11 .. :try_end_31} :catchall_e

    .line 264
    if-nez p3, :cond_35

    if-nez v0, :cond_3a

    .line 266
    :cond_35
    :try_start_35
    iget-object v2, p0, Lcom/duoku/platform/download/utils/AppSimpleCache;->mDataCache:Ljava/util/HashMap;

    invoke-virtual {v2, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 262
    :cond_3a
    monitor-exit v1
    :try_end_3b
    .catchall {:try_start_35 .. :try_end_3b} :catchall_3d

    .line 270
    monitor-exit p0

    return v0

    .line 262
    :catchall_3d
    move-exception v0

    :try_start_3e
    monitor-exit v1
    :try_end_3f
    .catchall {:try_start_3e .. :try_end_3f} :catchall_3d

    :try_start_3f
    throw v0
    :try_end_40
    .catchall {:try_start_3f .. :try_end_40} :catchall_e
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 34
    iget-object v0, p0, Lcom/duoku/platform/download/utils/AppSimpleCache;->mDataCache:Ljava/util/HashMap;

    if-nez v0, :cond_7

    const-string v0, ""

    :goto_6
    return-object v0

    :cond_7
    iget-object v0, p0, Lcom/duoku/platform/download/utils/AppSimpleCache;->mDataCache:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_6
.end method
