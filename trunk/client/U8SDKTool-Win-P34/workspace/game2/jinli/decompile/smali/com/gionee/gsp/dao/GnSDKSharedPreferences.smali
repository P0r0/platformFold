.class public Lcom/gionee/gsp/dao/GnSDKSharedPreferences;
.super Ljava/lang/Object;
.source "GnSDKSharedPreferences.java"


# static fields
.field private static PRESENT_EVENT:Ljava/lang/String; = null

.field public static final SHARED_PREFERENCES:Ljava/lang/String; = "gsp"

.field public static final TAG:Ljava/lang/String; = "GnSDKSharedPreferences"

.field private static sPaySharedPreferences:Lcom/gionee/gsp/dao/GnSDKSharedPreferences;


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 25
    const-string v0, "present_event"

    sput-object v0, Lcom/gionee/gsp/dao/GnSDKSharedPreferences;->PRESENT_EVENT:Ljava/lang/String;

    .line 29
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/gionee/gsp/dao/GnSDKSharedPreferences;->mContext:Landroid/content/Context;

    .line 34
    return-void
.end method

.method private getApplicationContext()Landroid/content/Context;
    .registers 2

    .prologue
    .line 44
    iget-object v0, p0, Lcom/gionee/gsp/dao/GnSDKSharedPreferences;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/gionee/gsp/dao/GnSDKSharedPreferences;
    .registers 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 37
    const-class v1, Lcom/gionee/gsp/dao/GnSDKSharedPreferences;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/gionee/gsp/dao/GnSDKSharedPreferences;->sPaySharedPreferences:Lcom/gionee/gsp/dao/GnSDKSharedPreferences;

    if-nez v0, :cond_e

    .line 38
    new-instance v0, Lcom/gionee/gsp/dao/GnSDKSharedPreferences;

    invoke-direct {v0, p0}, Lcom/gionee/gsp/dao/GnSDKSharedPreferences;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/gionee/gsp/dao/GnSDKSharedPreferences;->sPaySharedPreferences:Lcom/gionee/gsp/dao/GnSDKSharedPreferences;

    .line 40
    :cond_e
    sget-object v0, Lcom/gionee/gsp/dao/GnSDKSharedPreferences;->sPaySharedPreferences:Lcom/gionee/gsp/dao/GnSDKSharedPreferences;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v1

    return-object v0

    .line 37
    :catchall_12
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private getSharedPreferences()Landroid/content/SharedPreferences;
    .registers 5

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/gionee/gsp/dao/GnSDKSharedPreferences;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "gsp"

    .line 49
    const/4 v3, 0x0

    .line 48
    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 50
    .local v0, "preference":Landroid/content/SharedPreferences;
    return-object v0
.end method

.method private getSharedPreferencesBoolean(Ljava/lang/String;Z)Z
    .registers 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defValue"    # Z

    .prologue
    .line 62
    invoke-direct {p0}, Lcom/gionee/gsp/dao/GnSDKSharedPreferences;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private getSharedPreferencesString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defValue"    # Ljava/lang/String;

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/gionee/gsp/dao/GnSDKSharedPreferences;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private setSharedPreferencesBoolean(Ljava/lang/String;Z)V
    .registers 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Z

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/gionee/gsp/dao/GnSDKSharedPreferences;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 67
    return-void
.end method

.method private setSharedPreferencesString(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/gionee/gsp/dao/GnSDKSharedPreferences;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 59
    return-void
.end method


# virtual methods
.method public getPresentEeventTimestamp()Ljava/lang/String;
    .registers 6

    .prologue
    .line 78
    invoke-direct {p0}, Lcom/gionee/gsp/dao/GnSDKSharedPreferences;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v2

    .line 79
    .local v2, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Boolean;>;"
    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 80
    .local v0, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Boolean;>;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 81
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v3, ""

    .line 82
    .local v3, "timestamp":Ljava/lang/String;
    :goto_17
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_32

    .line 85
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_31

    .line 86
    invoke-static {}, Ljava/util/Collections;->reverseOrder()Ljava/util/Comparator;

    move-result-object v4

    invoke-static {v1, v4}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 87
    const/4 v4, 0x0

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "timestamp":Ljava/lang/String;
    check-cast v3, Ljava/lang/String;

    .line 89
    .restart local v3    # "timestamp":Ljava/lang/String;
    :cond_31
    return-object v3

    .line 83
    :cond_32
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_17
.end method

.method public hasPresentEevent()Z
    .registers 3

    .prologue
    .line 74
    invoke-virtual {p0}, Lcom/gionee/gsp/dao/GnSDKSharedPreferences;->getPresentEeventTimestamp()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/gionee/gsp/dao/GnSDKSharedPreferences;->getSharedPreferencesBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public setPresentEevent(Ljava/lang/String;Z)V
    .registers 3
    .param p1, "presentEevent"    # Ljava/lang/String;
    .param p2, "newPresentEevent"    # Z

    .prologue
    .line 96
    invoke-direct {p0, p1, p2}, Lcom/gionee/gsp/dao/GnSDKSharedPreferences;->setSharedPreferencesBoolean(Ljava/lang/String;Z)V

    .line 97
    return-void
.end method
