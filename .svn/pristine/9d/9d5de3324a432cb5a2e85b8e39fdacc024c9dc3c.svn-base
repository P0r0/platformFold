.class public Lcom/youju/statistics/c/g;
.super Ljava/lang/Object;


# static fields
.field private static volatile c:Lcom/youju/statistics/c/g;


# instance fields
.field private a:Landroid/content/SharedPreferences;

.field private b:Landroid/content/SharedPreferences$Editor;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    sput-object v0, Lcom/youju/statistics/c/g;->c:Lcom/youju/statistics/c/g;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "youju_sdk_pre"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/youju/statistics/c/g;->a:Landroid/content/SharedPreferences;

    iget-object v0, p0, Lcom/youju/statistics/c/g;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iput-object v0, p0, Lcom/youju/statistics/c/g;->b:Landroid/content/SharedPreferences$Editor;

    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/youju/statistics/c/g;
    .registers 2

    sget-object v0, Lcom/youju/statistics/c/g;->c:Lcom/youju/statistics/c/g;

    if-nez v0, :cond_7

    invoke-static {p0}, Lcom/youju/statistics/c/g;->b(Landroid/content/Context;)V

    :cond_7
    sget-object v0, Lcom/youju/statistics/c/g;->c:Lcom/youju/statistics/c/g;

    return-object v0
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    const-string v0, "-1"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    :goto_8
    return-void

    :cond_9
    iget-object v0, p0, Lcom/youju/statistics/c/g;->b:Landroid/content/SharedPreferences$Editor;

    invoke-direct {p0, p1}, Lcom/youju/statistics/c/g;->i(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_8
.end method

.method private static declared-synchronized b(Landroid/content/Context;)V
    .registers 3

    const-class v1, Lcom/youju/statistics/c/g;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/youju/statistics/c/g;->c:Lcom/youju/statistics/c/g;

    if-nez v0, :cond_e

    new-instance v0, Lcom/youju/statistics/c/g;

    invoke-direct {v0, p0}, Lcom/youju/statistics/c/g;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/youju/statistics/c/g;->c:Lcom/youju/statistics/c/g;
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

.method private g(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "youju_key_position_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private h(Ljava/lang/String;)I
    .registers 4

    const/4 v0, 0x3

    const-string v1, "session"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    const/4 v0, 0x0

    :cond_a
    :goto_a
    return v0

    :cond_b
    const-string v1, "app_event"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_15

    const/4 v0, 0x1

    goto :goto_a

    :cond_15
    const-string v1, "error_report"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    const-string v1, "activity"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    const/4 v0, 0x2

    goto :goto_a
.end method

.method private i(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "max_id_gotten_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a()I
    .registers 7

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/youju/statistics/c/g;->a:Landroid/content/SharedPreferences;

    const-string v2, "upload_by_gprs_time"

    const-wide/16 v4, 0x0

    invoke-interface {v1, v2, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/youju/statistics/a/n;->b(J)Z

    move-result v1

    if-eqz v1, :cond_19

    iget-object v1, p0, Lcom/youju/statistics/c/g;->a:Landroid/content/SharedPreferences;

    const-string v2, "uploaded_bytes_today"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    :cond_19
    return v0
.end method

.method public a(I)V
    .registers 6

    invoke-virtual {p0}, Lcom/youju/statistics/c/g;->a()I

    move-result v0

    add-int/2addr v0, p1

    const-string v1, "PreferenceOperator"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateUploadedSizeByGprsToday"

    invoke-static {v3}, Lcom/youju/statistics/a/s;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " save gprs size = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/youju/statistics/a/s;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/youju/statistics/c/g;->b:Landroid/content/SharedPreferences$Editor;

    const-string v2, "uploaded_bytes_today"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/youju/statistics/c/g;->b:Landroid/content/SharedPreferences$Editor;

    const-string v3, "upload_by_gprs_time"

    invoke-interface {v2, v3, v0, v1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    iget-object v0, p0, Lcom/youju/statistics/c/g;->b:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public a(J)V
    .registers 6

    iget-object v0, p0, Lcom/youju/statistics/c/g;->b:Landroid/content/SharedPreferences$Editor;

    const-string v1, "time_previous_upload"

    invoke-interface {v0, v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    iget-object v0, p0, Lcom/youju/statistics/c/g;->b:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .registers 4

    iget-object v0, p0, Lcom/youju/statistics/c/g;->b:Landroid/content/SharedPreferences$Editor;

    const-string v1, "GNKey_public_info_md5_code"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    iget-object v0, p0, Lcom/youju/statistics/c/g;->b:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public a(Ljava/util/HashMap;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_8
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    iget-object v3, p0, Lcom/youju/statistics/c/g;->b:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/youju/statistics/c/g;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-interface {v3, v1, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    goto :goto_8

    :cond_2e
    iget-object v0, p0, Lcom/youju/statistics/c/g;->b:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public a(Ljava/util/Map;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_8
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_24

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v1, v0}, Lcom/youju/statistics/c/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_8

    :cond_24
    iget-object v0, p0, Lcom/youju/statistics/c/g;->b:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public b()Ljava/lang/String;
    .registers 4

    iget-object v0, p0, Lcom/youju/statistics/c/g;->a:Landroid/content/SharedPreferences;

    const-string v1, "GNKey_public_info_md5_code"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public b(J)V
    .registers 6

    iget-object v0, p0, Lcom/youju/statistics/c/g;->b:Landroid/content/SharedPreferences$Editor;

    const-string v1, "youju_key_session_interval_time"

    invoke-interface {v0, v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    iget-object v0, p0, Lcom/youju/statistics/c/g;->b:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .registers 4

    iget-object v0, p0, Lcom/youju/statistics/c/g;->b:Landroid/content/SharedPreferences$Editor;

    const-string v1, "GNKey_last_activity_name"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    iget-object v0, p0, Lcom/youju/statistics/c/g;->b:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public b(Ljava/util/Map;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "activity"

    const-string v1, "activity"

    invoke-virtual {p0, v1}, Lcom/youju/statistics/c/g;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "session"

    const-string v1, "session"

    invoke-virtual {p0, v1}, Lcom/youju/statistics/c/g;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "app_event"

    const-string v1, "app_event"

    invoke-virtual {p0, v1}, Lcom/youju/statistics/c/g;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "error_report"

    const-string v1, "error_report"

    invoke-virtual {p0, v1}, Lcom/youju/statistics/c/g;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public c(Ljava/lang/String;)I
    .registers 5

    iget-object v0, p0, Lcom/youju/statistics/c/g;->a:Landroid/content/SharedPreferences;

    invoke-direct {p0, p1}, Lcom/youju/statistics/c/g;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1}, Lcom/youju/statistics/c/g;->h(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public c()J
    .registers 5

    iget-object v0, p0, Lcom/youju/statistics/c/g;->a:Landroid/content/SharedPreferences;

    const-string v1, "time_previous_upload"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public c(J)V
    .registers 6

    iget-object v0, p0, Lcom/youju/statistics/c/g;->b:Landroid/content/SharedPreferences$Editor;

    const-string v1, "youju_key_event_session_start_time"

    invoke-interface {v0, v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    iget-object v0, p0, Lcom/youju/statistics/c/g;->b:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public d()Ljava/lang/String;
    .registers 4

    iget-object v0, p0, Lcom/youju/statistics/c/g;->a:Landroid/content/SharedPreferences;

    const-string v1, "GNKey_last_activity_name"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public d(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    iget-object v0, p0, Lcom/youju/statistics/c/g;->a:Landroid/content/SharedPreferences;

    invoke-direct {p0, p1}, Lcom/youju/statistics/c/g;->i(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "-1"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public e()Ljava/lang/String;
    .registers 4

    iget-object v0, p0, Lcom/youju/statistics/c/g;->a:Landroid/content/SharedPreferences;

    const-string v1, "youju_key_current_page_info"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public e(Ljava/lang/String;)V
    .registers 4

    iget-object v0, p0, Lcom/youju/statistics/c/g;->b:Landroid/content/SharedPreferences$Editor;

    invoke-direct {p0, p1}, Lcom/youju/statistics/c/g;->i(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    iget-object v0, p0, Lcom/youju/statistics/c/g;->b:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public f()J
    .registers 5

    iget-object v0, p0, Lcom/youju/statistics/c/g;->a:Landroid/content/SharedPreferences;

    const-string v1, "youju_key_session_interval_time"

    const-wide/16 v2, 0x7530

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public f(Ljava/lang/String;)V
    .registers 4

    iget-object v0, p0, Lcom/youju/statistics/c/g;->b:Landroid/content/SharedPreferences$Editor;

    const-string v1, "youju_key_current_page_info"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    iget-object v0, p0, Lcom/youju/statistics/c/g;->b:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public g()J
    .registers 5

    iget-object v0, p0, Lcom/youju/statistics/c/g;->a:Landroid/content/SharedPreferences;

    const-string v1, "youju_key_event_session_start_time"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public h()V
    .registers 3

    iget-object v0, p0, Lcom/youju/statistics/c/g;->b:Landroid/content/SharedPreferences$Editor;

    const-string v1, "youju_key_event_session_start_time"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    iget-object v0, p0, Lcom/youju/statistics/c/g;->b:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method
