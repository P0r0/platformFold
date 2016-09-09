.class public Lcom/baidu/android/pushservice/util/PushADProvider;
.super Landroid/content/ContentProvider;


# instance fields
.field a:Landroid/database/sqlite/SQLiteDatabase;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .registers 5

    const/4 v0, 0x0

    return v0
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .registers 3

    const/4 v0, 0x0

    return-object v0
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .registers 4

    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()Z
    .registers 8

    const/4 v6, 0x1

    const/16 v2, 0xa

    :try_start_3
    invoke-virtual {p0}, Lcom/baidu/android/pushservice/util/PushADProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/android/pushservice/util/m;->c(Landroid/content/Context;)Lcom/baidu/android/pushservice/i/l;

    move-result-object v0

    if-eqz v0, :cond_44

    invoke-virtual {v0}, Lcom/baidu/android/pushservice/i/l;->c()I

    move-result v1

    if-ne v1, v2, :cond_44

    invoke-virtual {v0}, Lcom/baidu/android/pushservice/i/l;->e()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-lez v1, :cond_44

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "pushadclientinfo  = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/baidu/android/pushservice/i/l;->f()Lcom/baidu/android/pushservice/i/k;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/android/pushservice/i/k;->a()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/baidu/android/pushservice/util/PushADProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baidu/android/pushservice/util/q;->a(Ljava/lang/String;Landroid/content/Context;)V

    :goto_43
    return v6

    :cond_44
    new-instance v0, Lcom/baidu/android/pushservice/i/k;

    invoke-direct {v0}, Lcom/baidu/android/pushservice/i/k;-><init>()V

    const/4 v1, 0x0

    iput v1, v0, Lcom/baidu/android/pushservice/i/k;->a:I

    const/16 v1, 0xa

    iput v1, v0, Lcom/baidu/android/pushservice/i/k;->b:I

    const/16 v1, 0xa

    iput v1, v0, Lcom/baidu/android/pushservice/i/k;->c:I

    const/4 v1, 0x0

    iput v1, v0, Lcom/baidu/android/pushservice/i/k;->d:I

    invoke-static {}, Lcom/baidu/android/pushservice/util/q;->c()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/baidu/android/pushservice/i/k;->e:J

    invoke-virtual {p0}, Lcom/baidu/android/pushservice/util/PushADProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/baidu/android/pushservice/util/m;->a(Landroid/content/Context;Lcom/baidu/android/pushservice/i/k;)J

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "pushadclientinfo  = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/baidu/android/pushservice/i/k;->a()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/baidu/android/pushservice/util/PushADProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baidu/android/pushservice/util/q;->a(Ljava/lang/String;Landroid/content/Context;)V
    :try_end_86
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_86} :catch_87

    goto :goto_43

    :catch_87
    move-exception v0

    const-string v1, "PushADProvider"

    invoke-static {v1, v0}, Lcom/baidu/android/pushservice/h/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_43
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .registers 15

    const/4 v8, 0x0

    :try_start_1
    invoke-virtual {p0}, Lcom/baidu/android/pushservice/util/PushADProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/android/pushservice/util/m;->a(Landroid/content/Context;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/android/pushservice/util/PushADProvider;->a:Landroid/database/sqlite/SQLiteDatabase;

    iget-object v0, p0, Lcom/baidu/android/pushservice/util/PushADProvider;->a:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_55

    iget-object v0, p0, Lcom/baidu/android/pushservice/util/PushADProvider;->a:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "PushADInfo"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_55

    const-string v1, "PushADProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "return contentprovider Cursor : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/baidu/android/pushservice/h/a;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_37
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_37} :catch_38

    :goto_37
    return-object v0

    :catch_38
    move-exception v0

    const-string v1, "PushADProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "error "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/baidu/android/pushservice/h/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    :cond_55
    move-object v0, v8

    goto :goto_37
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .registers 6

    const/4 v0, 0x0

    return v0
.end method
