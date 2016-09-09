.class public Lcom/baidu/android/pushservice/d/a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/android/pushservice/d/a$a;
    }
.end annotation


# instance fields
.field private a:Landroid/content/Context;

.field private final b:Ljava/util/concurrent/atomic/AtomicInteger;

.field private c:Landroid/database/sqlite/SQLiteDatabase;

.field private final d:Ljava/util/concurrent/locks/ReentrantLock;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lcom/baidu/android/pushservice/d/a;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/baidu/android/pushservice/d/a;->d:Ljava/util/concurrent/locks/ReentrantLock;

    return-void
.end method

.method public static a()Lcom/baidu/android/pushservice/d/a;
    .registers 1

    sget-object v0, Lcom/baidu/android/pushservice/d/a$a;->a:Lcom/baidu/android/pushservice/d/a;

    return-object v0
.end method

.method private a(Landroid/database/Cursor;II)Ljava/lang/String;
    .registers 10

    const/4 v2, 0x0

    const/4 v5, -0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_58

    :try_start_5
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    move v0, v2

    :cond_b
    :goto_b
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_50

    if-eq v5, p2, :cond_17

    add-int/lit8 v2, v2, 0x1

    if-lt v2, p2, :cond_b

    :cond_17
    invoke-direct {p0, p1}, Lcom/baidu/android/pushservice/d/a;->a(Landroid/database/Cursor;)Lorg/json/JSONObject;

    move-result-object v4

    if-ne v5, p3, :cond_43

    invoke-virtual {v3, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_20
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_20} :catch_21
    .catchall {:try_start_5 .. :try_end_20} :catchall_4b

    goto :goto_b

    :catch_21
    move-exception v0

    :try_start_22
    const-string v2, "DatabaseManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "error "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/baidu/android/pushservice/h/a;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3e
    .catchall {:try_start_22 .. :try_end_3e} :catchall_4b

    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    move-object v0, v1

    :goto_42
    return-object v0

    :cond_43
    add-int/lit8 v0, v0, 0x1

    if-gt v0, p3, :cond_50

    :try_start_47
    invoke-virtual {v3, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_4a
    .catch Lorg/json/JSONException; {:try_start_47 .. :try_end_4a} :catch_21
    .catchall {:try_start_47 .. :try_end_4a} :catchall_4b

    goto :goto_b

    :catchall_4b
    move-exception v0

    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_50
    :try_start_50
    invoke-virtual {v3}, Lorg/json/JSONArray;->toString()Ljava/lang/String;
    :try_end_53
    .catch Lorg/json/JSONException; {:try_start_50 .. :try_end_53} :catch_21
    .catchall {:try_start_50 .. :try_end_53} :catchall_4b

    move-result-object v0

    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    goto :goto_42

    :cond_58
    move-object v0, v1

    goto :goto_42
.end method

.method private a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Ljava/util/ArrayList;
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v8, 0x0

    const/4 v9, 0x0

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    if-eqz p1, :cond_80

    :try_start_9
    const-string v1, "subscribe"

    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v3, "host_channel"

    aput-object v3, v2, v0

    const-string v3, "appid=?"

    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object p2, v4, v0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p1

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_22} :catch_5a

    move-result-object v1

    :goto_23
    if-eqz v1, :cond_78

    :try_start_25
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_78

    const/4 v0, 0x0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_78

    const/4 v0, 0x0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_78

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_78

    const/4 v0, 0x0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v2, ":"

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    array-length v3, v2

    move v0, v9

    :goto_50
    if-ge v0, v3, :cond_78

    aget-object v4, v2, v0

    invoke-virtual {v10, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_57
    .catch Ljava/lang/Exception; {:try_start_25 .. :try_end_57} :catch_7e

    add-int/lit8 v0, v0, 0x1

    goto :goto_50

    :catch_5a
    move-exception v0

    move-object v1, v8

    :goto_5c
    const-string v2, "DatabaseManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "error "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/baidu/android/pushservice/h/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_78
    if-eqz v1, :cond_7d

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_7d
    return-object v10

    :catch_7e
    move-exception v0

    goto :goto_5c

    :cond_80
    move-object v1, v8

    goto :goto_23
.end method

.method private a(Landroid/database/Cursor;)Lorg/json/JSONObject;
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "msgid"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "appid"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "title"

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "content"

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "link"

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "status"

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    const-string v7, "type"

    invoke-interface {p1, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {p1, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    const-string v8, "time"

    invoke-interface {p1, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    invoke-interface {p1, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    const-string v10, "id"

    invoke-virtual {v0, v10, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "appid"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "title"

    invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "content"

    invoke-virtual {v0, v1, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "link"

    invoke-virtual {v0, v1, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "status"

    invoke-virtual {v0, v1, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "type"

    invoke-virtual {v0, v1, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "time"

    invoke-virtual {v0, v1, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    return-object v0
.end method


# virtual methods
.method public declared-synchronized a(ILjava/lang/String;)I
    .registers 13

    const/4 v8, -0x1

    const/4 v9, 0x0

    monitor-enter p0

    :try_start_3
    invoke-virtual {p0}, Lcom/baidu/android/pushservice/d/a;->b()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_49

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_10

    :try_start_a
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_d} :catch_ef
    .catchall {:try_start_a .. :try_end_d} :catchall_118

    move-result v2

    if-eqz v2, :cond_1b

    :cond_10
    if-eqz v9, :cond_15

    :try_start_12
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_15
    invoke-virtual {p0}, Lcom/baidu/android/pushservice/d/a;->c()V
    :try_end_18
    .catchall {:try_start_12 .. :try_end_18} :catchall_49

    move v0, v8

    :goto_19
    monitor-exit p0

    return v0

    :cond_1b
    :try_start_1b
    const-string v1, "0"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7a

    if-nez p1, :cond_4c

    const-string v1, "message"

    const/4 v2, 0x0

    const-string v3, "status=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_3b
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_3b} :catch_ef
    .catchall {:try_start_1b .. :try_end_3b} :catchall_118

    move-result-object v1

    :goto_3c
    :try_start_3c
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I
    :try_end_3f
    .catch Ljava/lang/Exception; {:try_start_3c .. :try_end_3f} :catch_125
    .catchall {:try_start_3c .. :try_end_3f} :catchall_122

    move-result v0

    if-eqz v1, :cond_45

    :try_start_42
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_45
    invoke-virtual {p0}, Lcom/baidu/android/pushservice/d/a;->c()V
    :try_end_48
    .catchall {:try_start_42 .. :try_end_48} :catchall_49

    goto :goto_19

    :catchall_49
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_4c
    :try_start_4c
    const-string v1, "message"

    const/4 v2, 0x0

    const-string v3, "status=? AND type=?"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    goto :goto_3c

    :cond_7a
    if-nez p1, :cond_aa

    const-string v1, "message"

    const/4 v2, 0x0

    const-string v3, "status=? AND appid=? "

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    goto :goto_3c

    :cond_aa
    const-string v1, "message"

    const/4 v2, 0x0

    const-string v3, "status=? AND appid=? AND type=?"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_ec
    .catch Ljava/lang/Exception; {:try_start_4c .. :try_end_ec} :catch_ef
    .catchall {:try_start_4c .. :try_end_ec} :catchall_118

    move-result-object v1

    goto/16 :goto_3c

    :catch_ef
    move-exception v0

    move-object v1, v9

    :goto_f1
    :try_start_f1
    const-string v2, "DatabaseManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "error "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/baidu/android/pushservice/h/a;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_10d
    .catchall {:try_start_f1 .. :try_end_10d} :catchall_122

    if-eqz v1, :cond_112

    :try_start_10f
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_112
    invoke-virtual {p0}, Lcom/baidu/android/pushservice/d/a;->c()V

    move v0, v8

    goto/16 :goto_19

    :catchall_118
    move-exception v0

    :goto_119
    if-eqz v9, :cond_11e

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_11e
    invoke-virtual {p0}, Lcom/baidu/android/pushservice/d/a;->c()V

    throw v0
    :try_end_122
    .catchall {:try_start_10f .. :try_end_122} :catchall_49

    :catchall_122
    move-exception v0

    move-object v9, v1

    goto :goto_119

    :catch_125
    move-exception v0

    goto :goto_f1
.end method

.method public declared-synchronized a(Ljava/lang/String;Ljava/lang/String;)I
    .registers 9

    const/4 v0, -0x1

    monitor-enter p0

    :try_start_2
    invoke-virtual {p0}, Lcom/baidu/android/pushservice/d/a;->b()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    if-nez v1, :cond_d

    invoke-virtual {p0}, Lcom/baidu/android/pushservice/d/a;->c()V
    :try_end_b
    .catchall {:try_start_2 .. :try_end_b} :catchall_25

    :goto_b
    monitor-exit p0

    return v0

    :cond_d
    :try_start_d
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_28

    const-string v2, "subscribe"

    const-string v3, "apikey=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    invoke-virtual {v1, v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_20} :catch_41
    .catchall {:try_start_d .. :try_end_20} :catchall_62

    move-result v0

    :goto_21
    :try_start_21
    invoke-virtual {p0}, Lcom/baidu/android/pushservice/d/a;->c()V
    :try_end_24
    .catchall {:try_start_21 .. :try_end_24} :catchall_25

    goto :goto_b

    :catchall_25
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_28
    :try_start_28
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3d

    const-string v2, "subscribe"

    const-string v3, "appid=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p2, v4, v5

    invoke-virtual {v1, v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_3b
    .catch Ljava/lang/Exception; {:try_start_28 .. :try_end_3b} :catch_41
    .catchall {:try_start_28 .. :try_end_3b} :catchall_62

    move-result v0

    goto :goto_21

    :cond_3d
    :try_start_3d
    invoke-virtual {p0}, Lcom/baidu/android/pushservice/d/a;->c()V
    :try_end_40
    .catchall {:try_start_3d .. :try_end_40} :catchall_25

    goto :goto_b

    :catch_41
    move-exception v1

    :try_start_42
    const-string v2, "DatabaseManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "unSubscribe "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/baidu/android/pushservice/h/a;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5e
    .catchall {:try_start_42 .. :try_end_5e} :catchall_62

    :try_start_5e
    invoke-virtual {p0}, Lcom/baidu/android/pushservice/d/a;->c()V

    goto :goto_b

    :catchall_62
    move-exception v0

    invoke-virtual {p0}, Lcom/baidu/android/pushservice/d/a;->c()V

    throw v0
    :try_end_67
    .catchall {:try_start_5e .. :try_end_67} :catchall_25
.end method

.method public declared-synchronized a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)J
    .registers 15

    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Lcom/baidu/android/pushservice/d/a;->b()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_6a

    move-result-object v0

    const/4 v8, 0x0

    if-eqz v0, :cond_e

    :try_start_8
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_b} :catch_75
    .catchall {:try_start_8 .. :try_end_b} :catchall_9f

    move-result v1

    if-eqz v1, :cond_1a

    :cond_e
    const-wide/16 v0, -0x1

    :try_start_10
    invoke-virtual {p0}, Lcom/baidu/android/pushservice/d/a;->c()V

    if-eqz v8, :cond_18

    invoke-interface {v8}, Landroid/database/Cursor;->close()V
    :try_end_18
    .catchall {:try_start_10 .. :try_end_18} :catchall_6a

    :cond_18
    :goto_18
    monitor-exit p0

    return-wide v0

    :cond_1a
    :try_start_1a
    new-instance v9, Landroid/content/ContentValues;

    invoke-direct {v9}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "appid"

    invoke-virtual {v9, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "apikey"

    invoke-virtual {v9, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "app_name"

    invoke-virtual {v9, v1, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "app_logo"

    invoke-virtual {v9, v1, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "app_info"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "appid"

    aput-object v4, v2, v3

    const-string v3, "appid=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_4b
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_4b} :catch_75
    .catchall {:try_start_1a .. :try_end_4b} :catchall_9f

    move-result-object v2

    :try_start_4c
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_6d

    const-string v1, "app_info"

    const-string v3, "appid=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    invoke-virtual {v0, v1, v9, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_5f
    .catch Ljava/lang/Exception; {:try_start_4c .. :try_end_5f} :catch_ac
    .catchall {:try_start_4c .. :try_end_5f} :catchall_a9

    move-result v0

    int-to-long v0, v0

    :goto_61
    :try_start_61
    invoke-virtual {p0}, Lcom/baidu/android/pushservice/d/a;->c()V

    if-eqz v2, :cond_18

    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_69
    .catchall {:try_start_61 .. :try_end_69} :catchall_6a

    goto :goto_18

    :catchall_6a
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_6d
    :try_start_6d
    const-string v1, "app_info"

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v9}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_73
    .catch Ljava/lang/Exception; {:try_start_6d .. :try_end_73} :catch_ac
    .catchall {:try_start_6d .. :try_end_73} :catchall_a9

    move-result-wide v0

    goto :goto_61

    :catch_75
    move-exception v0

    move-object v2, v8

    :goto_77
    :try_start_77
    const-string v1, "DatabaseManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "addAppInfo "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/baidu/android/pushservice/h/a;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_93
    .catchall {:try_start_77 .. :try_end_93} :catchall_a9

    const-wide/16 v0, -0x1

    :try_start_95
    invoke-virtual {p0}, Lcom/baidu/android/pushservice/d/a;->c()V

    if-eqz v2, :cond_18

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    goto/16 :goto_18

    :catchall_9f
    move-exception v0

    :goto_a0
    invoke-virtual {p0}, Lcom/baidu/android/pushservice/d/a;->c()V

    if-eqz v8, :cond_a8

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_a8
    throw v0
    :try_end_a9
    .catchall {:try_start_95 .. :try_end_a9} :catchall_6a

    :catchall_a9
    move-exception v0

    move-object v8, v2

    goto :goto_a0

    :catch_ac
    move-exception v0

    goto :goto_77
.end method

.method public declared-synchronized a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)J
    .registers 17

    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Lcom/baidu/android/pushservice/d/a;->b()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_c6

    move-result-object v0

    const/4 v8, 0x0

    if-eqz v0, :cond_e

    :try_start_8
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_b} :catch_d6
    .catchall {:try_start_8 .. :try_end_b} :catchall_100

    move-result v1

    if-eqz v1, :cond_1a

    :cond_e
    const-wide/16 v0, -0x1

    :try_start_10
    invoke-virtual {p0}, Lcom/baidu/android/pushservice/d/a;->c()V

    if-eqz v8, :cond_18

    invoke-interface {v8}, Landroid/database/Cursor;->close()V
    :try_end_18
    .catchall {:try_start_10 .. :try_end_18} :catchall_c6

    :cond_18
    :goto_18
    monitor-exit p0

    return-wide v0

    :cond_1a
    :try_start_1a
    new-instance v10, Landroid/content/ContentValues;

    invoke-direct {v10}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "appid"

    invoke-virtual {v10, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "apikey"

    invoke-virtual {v10, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "app_name"

    invoke-virtual {v10, v1, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "app_logo"

    invoke-virtual {v10, v1, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-string v1, "sub_time"

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v10, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v1, "is_bind"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v10, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    if-nez p5, :cond_10f

    const-string v9, "other"

    :goto_4e
    const-string v1, "subscribe"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "host_channel"

    aput-object v4, v2, v3

    const-string v3, "appid=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_66
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_66} :catch_d6
    .catchall {:try_start_1a .. :try_end_66} :catchall_100

    move-result-object v2

    :try_start_67
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_c9

    const/4 v1, 0x0

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_a8

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_a8

    const-string v3, ":"

    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    array-length v5, v4

    const/4 v1, 0x0

    move v3, v1

    move-object v1, v9

    :goto_84
    if-ge v3, v5, :cond_a8

    aget-object v6, v4, v3

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_a5

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v7, ":"

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_a5
    add-int/lit8 v3, v3, 0x1

    goto :goto_84

    :cond_a8
    const-string v3, "host_channel"

    invoke-virtual {v10, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "subscribe"

    const-string v3, "appid=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    invoke-virtual {v0, v1, v10, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_ba
    .catch Ljava/lang/Exception; {:try_start_67 .. :try_end_ba} :catch_10d
    .catchall {:try_start_67 .. :try_end_ba} :catchall_10b

    move-result v0

    int-to-long v0, v0

    :goto_bc
    :try_start_bc
    invoke-virtual {p0}, Lcom/baidu/android/pushservice/d/a;->c()V

    if-eqz v2, :cond_18

    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_c4
    .catchall {:try_start_bc .. :try_end_c4} :catchall_c6

    goto/16 :goto_18

    :catchall_c6
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_c9
    :try_start_c9
    const-string v1, "host_channel"

    invoke-virtual {v10, v1, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "subscribe"

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v10}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_d4
    .catch Ljava/lang/Exception; {:try_start_c9 .. :try_end_d4} :catch_10d
    .catchall {:try_start_c9 .. :try_end_d4} :catchall_10b

    move-result-wide v0

    goto :goto_bc

    :catch_d6
    move-exception v0

    move-object v2, v8

    :goto_d8
    :try_start_d8
    const-string v1, "DatabaseManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "subscribe "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/baidu/android/pushservice/h/a;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_f4
    .catchall {:try_start_d8 .. :try_end_f4} :catchall_10b

    const-wide/16 v0, -0x1

    :try_start_f6
    invoke-virtual {p0}, Lcom/baidu/android/pushservice/d/a;->c()V

    if-eqz v2, :cond_18

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    goto/16 :goto_18

    :catchall_100
    move-exception v0

    move-object v2, v8

    :goto_102
    invoke-virtual {p0}, Lcom/baidu/android/pushservice/d/a;->c()V

    if-eqz v2, :cond_10a

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_10a
    throw v0
    :try_end_10b
    .catchall {:try_start_f6 .. :try_end_10b} :catchall_c6

    :catchall_10b
    move-exception v0

    goto :goto_102

    :catch_10d
    move-exception v0

    goto :goto_d8

    :cond_10f
    move-object/from16 v9, p5

    goto/16 :goto_4e
.end method

.method public declared-synchronized a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)J
    .registers 15

    const-wide/16 v0, -0x1

    monitor-enter p0

    :try_start_3
    invoke-virtual {p0}, Lcom/baidu/android/pushservice/d/a;->b()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    if-nez v2, :cond_e

    invoke-virtual {p0}, Lcom/baidu/android/pushservice/d/a;->c()V
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_56

    :goto_c
    monitor-exit p0

    return-wide v0

    :cond_e
    :try_start_e
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    const-string v4, "msgid"

    invoke-virtual {v3, v4, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "appid"

    invoke-virtual {v3, v4, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "title"

    invoke-virtual {v3, v4, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "content"

    invoke-virtual {v3, v4, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "link"

    invoke-virtual {v3, v4, p5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "status"

    invoke-static {p7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v4, "type"

    invoke-static {p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-string v6, "time"

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v6, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v4, "message"

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5, v3}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_51
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_51} :catch_59
    .catchall {:try_start_e .. :try_end_51} :catchall_7a

    move-result-wide v0

    :try_start_52
    invoke-virtual {p0}, Lcom/baidu/android/pushservice/d/a;->c()V
    :try_end_55
    .catchall {:try_start_52 .. :try_end_55} :catchall_56

    goto :goto_c

    :catchall_56
    move-exception v0

    monitor-exit p0

    throw v0

    :catch_59
    move-exception v2

    :try_start_5a
    const-string v3, "DatabaseManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "error "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/baidu/android/pushservice/h/a;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_76
    .catchall {:try_start_5a .. :try_end_76} :catchall_7a

    :try_start_76
    invoke-virtual {p0}, Lcom/baidu/android/pushservice/d/a;->c()V

    goto :goto_c

    :catchall_7a
    move-exception v0

    invoke-virtual {p0}, Lcom/baidu/android/pushservice/d/a;->c()V

    throw v0
    :try_end_7f
    .catchall {:try_start_76 .. :try_end_7f} :catchall_56
.end method

.method public declared-synchronized a(Ljava/util/ArrayList;)Ljava/lang/String;
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    const/4 v10, 0x0

    monitor-enter p0

    :try_start_2
    invoke-virtual {p0}, Lcom/baidu/android/pushservice/d/a;->b()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    if-eqz v1, :cond_a

    if-nez p1, :cond_10

    :cond_a
    invoke-virtual {p0}, Lcom/baidu/android/pushservice/d/a;->c()V
    :try_end_d
    .catchall {:try_start_2 .. :try_end_d} :catchall_ed

    move-object v1, v10

    :goto_e
    monitor-exit p0

    return-object v1

    :cond_10
    :try_start_10
    new-instance v11, Lorg/json/JSONArray;

    invoke-direct {v11}, Lorg/json/JSONArray;-><init>()V

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_f7

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :cond_1f
    :goto_1f
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_f7

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Ljava/lang/String;

    move-object v9, v0

    const-string v2, "subscribe"

    const/4 v3, 0x0

    const-string v4, "appid=?"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v9, v5, v6

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V
    :try_end_44
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_44} :catch_9a
    .catchall {:try_start_10 .. :try_end_44} :catchall_e8

    :try_start_44
    const-string v4, "appid"

    invoke-virtual {v2, v4, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_bd

    const-string v4, "app_name"

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "app_logo"

    invoke-interface {v3, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v3, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "apikey"

    invoke-interface {v3, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v3, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    const-string v7, "is_bind"

    invoke-interface {v3, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v3, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    const-string v8, "found"

    const/4 v9, 0x1

    invoke-virtual {v2, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v8, "app_name"

    invoke-virtual {v2, v8, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v4, "app_logo"

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v4, "api_key"

    invoke-virtual {v2, v4, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v4, "is_bind"

    invoke-virtual {v2, v4, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    :goto_91
    invoke-virtual {v11, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_94
    .catch Lorg/json/JSONException; {:try_start_44 .. :try_end_94} :catch_c4
    .catchall {:try_start_44 .. :try_end_94} :catchall_f0

    if-eqz v3, :cond_1f

    :try_start_96
    invoke-interface {v3}, Landroid/database/Cursor;->close()V
    :try_end_99
    .catch Ljava/lang/Exception; {:try_start_96 .. :try_end_99} :catch_9a
    .catchall {:try_start_96 .. :try_end_99} :catchall_e8

    goto :goto_1f

    :catch_9a
    move-exception v1

    :try_start_9b
    const-string v2, "DatabaseManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "error "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/baidu/android/pushservice/h/a;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_b7
    .catchall {:try_start_9b .. :try_end_b7} :catchall_e8

    :try_start_b7
    invoke-virtual {p0}, Lcom/baidu/android/pushservice/d/a;->c()V
    :try_end_ba
    .catchall {:try_start_b7 .. :try_end_ba} :catchall_ed

    move-object v1, v10

    goto/16 :goto_e

    :cond_bd
    :try_start_bd
    const-string v4, "found"

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_c3
    .catch Lorg/json/JSONException; {:try_start_bd .. :try_end_c3} :catch_c4
    .catchall {:try_start_bd .. :try_end_c3} :catchall_f0

    goto :goto_91

    :catch_c4
    move-exception v2

    :try_start_c5
    const-string v4, "DatabaseManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "error "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/baidu/android/pushservice/h/a;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_e1
    .catchall {:try_start_c5 .. :try_end_e1} :catchall_f0

    if-eqz v3, :cond_1f

    :try_start_e3
    invoke-interface {v3}, Landroid/database/Cursor;->close()V
    :try_end_e6
    .catch Ljava/lang/Exception; {:try_start_e3 .. :try_end_e6} :catch_9a
    .catchall {:try_start_e3 .. :try_end_e6} :catchall_e8

    goto/16 :goto_1f

    :catchall_e8
    move-exception v1

    :try_start_e9
    invoke-virtual {p0}, Lcom/baidu/android/pushservice/d/a;->c()V

    throw v1
    :try_end_ed
    .catchall {:try_start_e9 .. :try_end_ed} :catchall_ed

    :catchall_ed
    move-exception v1

    monitor-exit p0

    throw v1

    :catchall_f0
    move-exception v1

    if-eqz v3, :cond_f6

    :try_start_f3
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    :cond_f6
    throw v1

    :cond_f7
    invoke-virtual {v11}, Lorg/json/JSONArray;->toString()Ljava/lang/String;
    :try_end_fa
    .catch Ljava/lang/Exception; {:try_start_f3 .. :try_end_fa} :catch_9a
    .catchall {:try_start_f3 .. :try_end_fa} :catchall_e8

    move-result-object v1

    :try_start_fb
    invoke-virtual {p0}, Lcom/baidu/android/pushservice/d/a;->c()V
    :try_end_fe
    .catchall {:try_start_fb .. :try_end_fe} :catchall_ed

    goto/16 :goto_e
.end method

.method public declared-synchronized a(Ljava/lang/String;I)Ljava/util/ArrayList;
    .registers 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Lcom/baidu/android/pushservice/d/a;->b()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p1

    invoke-direct {p0, v1, v0}, Lcom/baidu/android/pushservice/d/a;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Ljava/util/ArrayList;
    :try_end_14
    .catchall {:try_start_1 .. :try_end_14} :catchall_c9

    move-result-object v12

    const/4 v10, 0x0

    :try_start_16
    const-string v4, "msg_switch=?"

    const/4 v2, 0x1

    new-array v5, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "0"

    aput-object v3, v5, v2

    if-eqz v1, :cond_38

    const-string v2, "register"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "channel"

    aput-object v7, v3, v6

    const/4 v6, 0x1

    const-string v7, "pkg_name"

    aput-object v7, v3, v6

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_37
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_37} :catch_e2
    .catchall {:try_start_16 .. :try_end_37} :catchall_bf

    move-result-object v10

    :cond_38
    const/4 v2, 0x0

    if-eqz v10, :cond_e5

    :cond_3b
    :goto_3b
    :try_start_3b
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_cc

    const-string v2, "pkg_name"

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    const-string v2, "channel"

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    const-string v4, "pkg_name=? AND app_id=?"

    const/4 v2, 0x2

    new-array v5, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v13, v5, v2

    const/4 v2, 0x1

    aput-object p1, v5, v2

    const-string v2, "blacklist"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "type"

    aput-object v7, v3, v6

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_87

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    if-eqz v3, :cond_3b

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    move/from16 v0, p2

    if-eq v3, v0, :cond_3b

    :cond_87
    invoke-virtual {v12, v14}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_ba

    invoke-virtual {v9, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_90
    .catch Ljava/lang/Exception; {:try_start_3b .. :try_end_90} :catch_91
    .catchall {:try_start_3b .. :try_end_90} :catchall_bf

    goto :goto_3b

    :catch_91
    move-exception v1

    move-object v2, v10

    :goto_93
    :try_start_93
    const-string v3, "DatabaseManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "error "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/baidu/android/pushservice/h/a;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_af
    .catchall {:try_start_93 .. :try_end_af} :catchall_df

    :try_start_af
    invoke-virtual {p0}, Lcom/baidu/android/pushservice/d/a;->c()V

    if-eqz v2, :cond_b7

    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_b7
    .catchall {:try_start_af .. :try_end_b7} :catchall_c9

    :cond_b7
    move-object v1, v9

    :goto_b8
    monitor-exit p0

    return-object v1

    :cond_ba
    :try_start_ba
    invoke-virtual {v11, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_bd
    .catch Ljava/lang/Exception; {:try_start_ba .. :try_end_bd} :catch_91
    .catchall {:try_start_ba .. :try_end_bd} :catchall_bf

    goto/16 :goto_3b

    :catchall_bf
    move-exception v1

    :goto_c0
    :try_start_c0
    invoke-virtual {p0}, Lcom/baidu/android/pushservice/d/a;->c()V

    if-eqz v10, :cond_c8

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    :cond_c8
    throw v1
    :try_end_c9
    .catchall {:try_start_c0 .. :try_end_c9} :catchall_c9

    :catchall_c9
    move-exception v1

    monitor-exit p0

    throw v1

    :cond_cc
    move-object v1, v2

    :goto_cd
    :try_start_cd
    invoke-virtual {v9, v11}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    if-eqz v1, :cond_d5

    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_d5
    .catch Ljava/lang/Exception; {:try_start_cd .. :try_end_d5} :catch_91
    .catchall {:try_start_cd .. :try_end_d5} :catchall_bf

    :cond_d5
    :try_start_d5
    invoke-virtual {p0}, Lcom/baidu/android/pushservice/d/a;->c()V

    if-eqz v10, :cond_dd

    invoke-interface {v10}, Landroid/database/Cursor;->close()V
    :try_end_dd
    .catchall {:try_start_d5 .. :try_end_dd} :catchall_c9

    :cond_dd
    move-object v1, v9

    goto :goto_b8

    :catchall_df
    move-exception v1

    move-object v10, v2

    goto :goto_c0

    :catch_e2
    move-exception v1

    move-object v2, v10

    goto :goto_93

    :cond_e5
    move-object v1, v2

    goto :goto_cd
.end method

.method public declared-synchronized a(Ljava/lang/String;IZII)Ljava/util/HashMap;
    .registers 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "IZII)",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Lcom/baidu/android/pushservice/d/a;->b()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    const/4 v11, 0x0

    if-eqz v2, :cond_e

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_aa

    move-result v3

    if-eqz v3, :cond_11

    :cond_e
    const/4 v2, 0x0

    :cond_f
    :goto_f
    monitor-exit p0

    return-object v2

    :cond_11
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v12, 0x0

    :try_start_14
    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    const-string v3, "0"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c5

    if-nez p2, :cond_6a

    if-eqz p3, :cond_32

    const-string v5, "status=?"

    const/4 v3, 0x1

    new-array v6, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v6, v3

    :cond_32
    :goto_32
    const-string v3, "message"

    const/4 v4, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string v9, "time DESC"

    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_3c
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_3c} :catch_81
    .catchall {:try_start_14 .. :try_end_3c} :catchall_bb

    move-result-object v3

    if-ltz p5, :cond_167

    :try_start_3f
    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v2

    sub-int v2, v2, p4

    sub-int v2, v2, p5

    if-lez v2, :cond_15d

    const/4 v2, 0x1

    :goto_4a
    move/from16 v0, p4

    move/from16 v1, p5

    invoke-direct {p0, v3, v0, v1}, Lcom/baidu/android/pushservice/d/a;->a(Landroid/database/Cursor;II)Ljava/lang/String;

    move-result-object v4

    const-string v5, "msg"

    invoke-virtual {v10, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "ismore"

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_60
    .catch Ljava/lang/Exception; {:try_start_3f .. :try_end_60} :catch_164
    .catchall {:try_start_3f .. :try_end_60} :catchall_160

    :try_start_60
    invoke-virtual {p0}, Lcom/baidu/android/pushservice/d/a;->c()V

    if-eqz v3, :cond_68

    invoke-interface {v3}, Landroid/database/Cursor;->close()V
    :try_end_68
    .catchall {:try_start_60 .. :try_end_68} :catchall_aa

    :cond_68
    move-object v2, v10

    goto :goto_f

    :cond_6a
    if-eqz p3, :cond_ad

    :try_start_6c
    const-string v5, "status=? AND type = ?"

    const/4 v3, 0x2

    new-array v6, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v6, v3

    const/4 v3, 0x1

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v6, v3
    :try_end_80
    .catch Ljava/lang/Exception; {:try_start_6c .. :try_end_80} :catch_81
    .catchall {:try_start_6c .. :try_end_80} :catchall_bb

    goto :goto_32

    :catch_81
    move-exception v2

    move-object v3, v11

    :goto_83
    :try_start_83
    const-string v4, "DatabaseManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "error "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/baidu/android/pushservice/h/a;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_9f
    .catchall {:try_start_83 .. :try_end_9f} :catchall_160

    const/4 v2, 0x0

    :try_start_a0
    invoke-virtual {p0}, Lcom/baidu/android/pushservice/d/a;->c()V

    if-eqz v3, :cond_f

    invoke-interface {v3}, Landroid/database/Cursor;->close()V
    :try_end_a8
    .catchall {:try_start_a0 .. :try_end_a8} :catchall_aa

    goto/16 :goto_f

    :catchall_aa
    move-exception v2

    monitor-exit p0

    throw v2

    :cond_ad
    :try_start_ad
    const-string v5, "type = ?"

    const/4 v3, 0x1

    new-array v6, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v6, v3
    :try_end_b9
    .catch Ljava/lang/Exception; {:try_start_ad .. :try_end_b9} :catch_81
    .catchall {:try_start_ad .. :try_end_b9} :catchall_bb

    goto/16 :goto_32

    :catchall_bb
    move-exception v2

    :goto_bc
    :try_start_bc
    invoke-virtual {p0}, Lcom/baidu/android/pushservice/d/a;->c()V

    if-eqz v11, :cond_c4

    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    :cond_c4
    throw v2
    :try_end_c5
    .catchall {:try_start_bc .. :try_end_c5} :catchall_aa

    :cond_c5
    if-nez p2, :cond_10b

    if-eqz p3, :cond_ee

    :try_start_c9
    const-string v5, "appid = ? AND status =? "

    const/4 v3, 0x2

    new-array v6, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, ""

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v6, v3

    const/4 v3, 0x1

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v6, v3

    goto/16 :goto_32

    :cond_ee
    const-string v5, "appid = ?"

    const/4 v3, 0x1

    new-array v6, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, ""

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v6, v3

    goto/16 :goto_32

    :cond_10b
    if-eqz p3, :cond_139

    const-string v5, "appid = ? AND status=? AND type = ?"

    const/4 v3, 0x3

    new-array v6, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, ""

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v6, v3

    const/4 v3, 0x1

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v6, v3

    const/4 v3, 0x2

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v6, v3

    goto/16 :goto_32

    :cond_139
    const-string v5, "appid = ? AND type = ?"

    const/4 v3, 0x2

    new-array v6, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, ""

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v6, v3

    const/4 v3, 0x1

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v6, v3
    :try_end_15b
    .catch Ljava/lang/Exception; {:try_start_c9 .. :try_end_15b} :catch_81
    .catchall {:try_start_c9 .. :try_end_15b} :catchall_bb

    goto/16 :goto_32

    :cond_15d
    const/4 v2, 0x0

    goto/16 :goto_4a

    :catchall_160
    move-exception v2

    move-object v11, v3

    goto/16 :goto_bc

    :catch_164
    move-exception v2

    goto/16 :goto_83

    :cond_167
    move v2, v12

    goto/16 :goto_4a
.end method

.method public a(Landroid/content/Context;)V
    .registers 2

    iput-object p1, p0, Lcom/baidu/android/pushservice/d/a;->a:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/baidu/android/pushservice/d/a;->d()V

    return-void
.end method

.method public declared-synchronized a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 14

    const/4 v8, 0x0

    monitor-enter p0

    :try_start_2
    invoke-virtual {p0}, Lcom/baidu/android/pushservice/d/a;->b()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_13

    invoke-virtual {p0}, Lcom/baidu/android/pushservice/d/a;->c()V

    if-eqz v8, :cond_11

    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_11
    .catchall {:try_start_2 .. :try_end_11} :catchall_22

    :cond_11
    :goto_11
    monitor-exit p0

    return-void

    :cond_13
    if-eqz p1, :cond_19

    if-eqz p2, :cond_19

    if-nez p3, :cond_25

    :cond_19
    :try_start_19
    invoke-virtual {p0}, Lcom/baidu/android/pushservice/d/a;->c()V

    if-eqz v8, :cond_11

    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_21
    .catchall {:try_start_19 .. :try_end_21} :catchall_22

    goto :goto_11

    :catchall_22
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_25
    :try_start_25
    new-instance v9, Landroid/content/ContentValues;

    invoke-direct {v9}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "noti_id"

    invoke-virtual {v9, v1, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "app_id"

    invoke-virtual {v9, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "msg_id"

    invoke-virtual {v9, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "time_stamp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "notification"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "noti_id"

    aput-object v4, v2, v3

    const-string v3, "noti_id=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p3, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_6d
    .catch Ljava/lang/Exception; {:try_start_25 .. :try_end_6d} :catch_c7
    .catchall {:try_start_25 .. :try_end_6d} :catchall_ba

    move-result-object v1

    if-eqz v1, :cond_8c

    :try_start_70
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_8c

    const-string v2, "notification"

    const-string v3, "noti_id=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p3, v4, v5

    invoke-virtual {v0, v2, v9, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_83
    .catch Ljava/lang/Exception; {:try_start_70 .. :try_end_83} :catch_93
    .catchall {:try_start_70 .. :try_end_83} :catchall_c4

    :goto_83
    :try_start_83
    invoke-virtual {p0}, Lcom/baidu/android/pushservice/d/a;->c()V

    if-eqz v1, :cond_11

    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_8b
    .catchall {:try_start_83 .. :try_end_8b} :catchall_22

    goto :goto_11

    :cond_8c
    :try_start_8c
    const-string v2, "notification"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v9}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_92
    .catch Ljava/lang/Exception; {:try_start_8c .. :try_end_92} :catch_93
    .catchall {:try_start_8c .. :try_end_92} :catchall_c4

    goto :goto_83

    :catch_93
    move-exception v0

    :goto_94
    :try_start_94
    const-string v2, "DatabaseManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "error "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/baidu/android/pushservice/h/a;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_b0
    .catchall {:try_start_94 .. :try_end_b0} :catchall_c4

    :try_start_b0
    invoke-virtual {p0}, Lcom/baidu/android/pushservice/d/a;->c()V

    if-eqz v1, :cond_11

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto/16 :goto_11

    :catchall_ba
    move-exception v0

    :goto_bb
    invoke-virtual {p0}, Lcom/baidu/android/pushservice/d/a;->c()V

    if-eqz v8, :cond_c3

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_c3
    throw v0
    :try_end_c4
    .catchall {:try_start_b0 .. :try_end_c4} :catchall_22

    :catchall_c4
    move-exception v0

    move-object v8, v1

    goto :goto_bb

    :catch_c7
    move-exception v0

    move-object v1, v8

    goto :goto_94
.end method

.method public declared-synchronized a(Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 11

    const/4 v0, 0x1

    const/4 v1, 0x0

    monitor-enter p0

    :try_start_3
    invoke-virtual {p0}, Lcom/baidu/android/pushservice/d/a;->b()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    const/4 v3, 0x0

    if-nez v2, :cond_14

    if-eqz v3, :cond_f

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    :cond_f
    invoke-virtual {p0}, Lcom/baidu/android/pushservice/d/a;->c()V
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_40

    :goto_12
    monitor-exit p0

    return-void

    :cond_14
    :try_start_14
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    if-eqz p3, :cond_43

    :goto_1b
    const-string v1, "is_bind"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v4, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_45

    const-string v0, "subscribe"

    const-string v1, "apikey=?"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object p1, v5, v6

    invoke-virtual {v2, v0, v4, v1, v5}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_37
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_37} :catch_59
    .catchall {:try_start_14 .. :try_end_37} :catchall_7f

    :cond_37
    :goto_37
    if-eqz v3, :cond_3c

    :try_start_39
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    :cond_3c
    invoke-virtual {p0}, Lcom/baidu/android/pushservice/d/a;->c()V
    :try_end_3f
    .catchall {:try_start_39 .. :try_end_3f} :catchall_40

    goto :goto_12

    :catchall_40
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_43
    move v0, v1

    goto :goto_1b

    :cond_45
    :try_start_45
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_37

    const-string v0, "subscribe"

    const-string v1, "appid=?"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object p2, v5, v6

    invoke-virtual {v2, v0, v4, v1, v5}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_58
    .catch Ljava/lang/Exception; {:try_start_45 .. :try_end_58} :catch_59
    .catchall {:try_start_45 .. :try_end_58} :catchall_7f

    goto :goto_37

    :catch_59
    move-exception v0

    :try_start_5a
    const-string v1, "DatabaseManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateBindState "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/baidu/android/pushservice/h/a;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_76
    .catchall {:try_start_5a .. :try_end_76} :catchall_7f

    if-eqz v3, :cond_7b

    :try_start_78
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    :cond_7b
    invoke-virtual {p0}, Lcom/baidu/android/pushservice/d/a;->c()V

    goto :goto_12

    :catchall_7f
    move-exception v0

    if-eqz v3, :cond_85

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    :cond_85
    invoke-virtual {p0}, Lcom/baidu/android/pushservice/d/a;->c()V

    throw v0
    :try_end_89
    .catchall {:try_start_78 .. :try_end_89} :catchall_40
.end method

.method public declared-synchronized a(Ljava/util/List;Ljava/util/List;)V
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const/16 v12, 0xb

    const/4 v10, 0x0

    monitor-enter p0

    :try_start_4
    invoke-virtual {p0}, Lcom/baidu/android/pushservice/d/a;->b()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    iget-object v2, p0, Lcom/baidu/android/pushservice/d/a;->a:Landroid/content/Context;

    const-string v3, "notification"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Landroid/app/NotificationManager;

    move-object v9, v0

    if-nez v1, :cond_1b

    invoke-virtual {p0}, Lcom/baidu/android/pushservice/d/a;->c()V
    :try_end_19
    .catchall {:try_start_4 .. :try_end_19} :catchall_98

    :goto_19
    monitor-exit p0

    return-void

    :cond_1b
    if-eqz p1, :cond_d4

    :try_start_1d
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_d4

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_27
    :goto_27
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_164

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Ljava/lang/String;

    move-object v6, v0
    :try_end_35
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_35} :catch_77
    .catchall {:try_start_1d .. :try_end_35} :catchall_c7

    :try_start_35
    const-string v2, "notification"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "noti_id"

    aput-object v5, v3, v4

    const-string v4, "msg_id=?"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v7, 0x0

    aput-object v6, v5, v7

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_4d
    .catch Ljava/lang/Exception; {:try_start_35 .. :try_end_4d} :catch_172
    .catchall {:try_start_35 .. :try_end_4d} :catchall_cc

    move-result-object v3

    :try_start_4e
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_71

    const/4 v2, 0x0

    invoke-interface {v3, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v4, v12, :cond_9b

    invoke-static {v2}, Lcom/baidu/android/pushservice/util/q;->c(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v9, v2, v4}, Landroid/app/NotificationManager;->cancel(Ljava/lang/String;I)V

    :goto_64
    const-string v4, "notification"

    const-string v5, "noti_id=?"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    aput-object v2, v6, v7

    invoke-virtual {v1, v4, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_71
    .catch Ljava/lang/Exception; {:try_start_4e .. :try_end_71} :catch_a3
    .catchall {:try_start_4e .. :try_end_71} :catchall_16f

    :cond_71
    if-eqz v3, :cond_27

    :try_start_73
    invoke-interface {v3}, Landroid/database/Cursor;->close()V
    :try_end_76
    .catch Ljava/lang/Exception; {:try_start_73 .. :try_end_76} :catch_77
    .catchall {:try_start_73 .. :try_end_76} :catchall_c7

    goto :goto_27

    :catch_77
    move-exception v1

    :try_start_78
    const-string v2, "DatabaseManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "error "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/baidu/android/pushservice/h/a;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_94
    .catchall {:try_start_78 .. :try_end_94} :catchall_c7

    :try_start_94
    invoke-virtual {p0}, Lcom/baidu/android/pushservice/d/a;->c()V
    :try_end_97
    .catchall {:try_start_94 .. :try_end_97} :catchall_98

    goto :goto_19

    :catchall_98
    move-exception v1

    monitor-exit p0

    throw v1

    :cond_9b
    :try_start_9b
    invoke-static {v2}, Lcom/baidu/android/pushservice/util/q;->c(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v9, v4}, Landroid/app/NotificationManager;->cancel(I)V
    :try_end_a2
    .catch Ljava/lang/Exception; {:try_start_9b .. :try_end_a2} :catch_a3
    .catchall {:try_start_9b .. :try_end_a2} :catchall_16f

    goto :goto_64

    :catch_a3
    move-exception v2

    :goto_a4
    :try_start_a4
    const-string v4, "DatabaseManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "error "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/baidu/android/pushservice/h/a;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_c0
    .catchall {:try_start_a4 .. :try_end_c0} :catchall_16f

    if-eqz v3, :cond_27

    :try_start_c2
    invoke-interface {v3}, Landroid/database/Cursor;->close()V
    :try_end_c5
    .catch Ljava/lang/Exception; {:try_start_c2 .. :try_end_c5} :catch_77
    .catchall {:try_start_c2 .. :try_end_c5} :catchall_c7

    goto/16 :goto_27

    :catchall_c7
    move-exception v1

    :try_start_c8
    invoke-virtual {p0}, Lcom/baidu/android/pushservice/d/a;->c()V

    throw v1
    :try_end_cc
    .catchall {:try_start_c8 .. :try_end_cc} :catchall_98

    :catchall_cc
    move-exception v1

    move-object v3, v10

    :goto_ce
    if-eqz v3, :cond_d3

    :try_start_d0
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    :cond_d3
    throw v1

    :cond_d4
    if-eqz p2, :cond_164

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_164

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_e0
    :goto_e0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_164

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Ljava/lang/String;

    move-object v6, v0
    :try_end_ee
    .catch Ljava/lang/Exception; {:try_start_d0 .. :try_end_ee} :catch_77
    .catchall {:try_start_d0 .. :try_end_ee} :catchall_c7

    :try_start_ee
    const-string v2, "notification"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "noti_id"

    aput-object v5, v3, v4

    const-string v4, "app_id=?"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v7, 0x0

    aput-object v6, v5, v7

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_106
    .catch Ljava/lang/Exception; {:try_start_ee .. :try_end_106} :catch_16c
    .catchall {:try_start_ee .. :try_end_106} :catchall_169

    move-result-object v3

    :goto_107
    :try_start_107
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_15d

    const/4 v2, 0x0

    invoke-interface {v3, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v4, v12, :cond_14e

    invoke-static {v2}, Lcom/baidu/android/pushservice/util/q;->c(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v9, v2, v4}, Landroid/app/NotificationManager;->cancel(Ljava/lang/String;I)V

    :goto_11d
    const-string v4, "notification"

    const-string v5, "noti_id=?"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    aput-object v2, v6, v7

    invoke-virtual {v1, v4, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_12a
    .catch Ljava/lang/Exception; {:try_start_107 .. :try_end_12a} :catch_12b
    .catchall {:try_start_107 .. :try_end_12a} :catchall_156

    goto :goto_107

    :catch_12b
    move-exception v2

    :goto_12c
    :try_start_12c
    const-string v4, "DatabaseManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "error "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/baidu/android/pushservice/h/a;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_148
    .catchall {:try_start_12c .. :try_end_148} :catchall_156

    if-eqz v3, :cond_e0

    :try_start_14a
    invoke-interface {v3}, Landroid/database/Cursor;->close()V
    :try_end_14d
    .catch Ljava/lang/Exception; {:try_start_14a .. :try_end_14d} :catch_77
    .catchall {:try_start_14a .. :try_end_14d} :catchall_c7

    goto :goto_e0

    :cond_14e
    :try_start_14e
    invoke-static {v2}, Lcom/baidu/android/pushservice/util/q;->c(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v9, v4}, Landroid/app/NotificationManager;->cancel(I)V
    :try_end_155
    .catch Ljava/lang/Exception; {:try_start_14e .. :try_end_155} :catch_12b
    .catchall {:try_start_14e .. :try_end_155} :catchall_156

    goto :goto_11d

    :catchall_156
    move-exception v1

    :goto_157
    if-eqz v3, :cond_15c

    :try_start_159
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    :cond_15c
    throw v1

    :cond_15d
    if-eqz v3, :cond_e0

    invoke-interface {v3}, Landroid/database/Cursor;->close()V
    :try_end_162
    .catch Ljava/lang/Exception; {:try_start_159 .. :try_end_162} :catch_77
    .catchall {:try_start_159 .. :try_end_162} :catchall_c7

    goto/16 :goto_e0

    :cond_164
    :try_start_164
    invoke-virtual {p0}, Lcom/baidu/android/pushservice/d/a;->c()V
    :try_end_167
    .catchall {:try_start_164 .. :try_end_167} :catchall_98

    goto/16 :goto_19

    :catchall_169
    move-exception v1

    move-object v3, v10

    goto :goto_157

    :catch_16c
    move-exception v2

    move-object v3, v10

    goto :goto_12c

    :catchall_16f
    move-exception v1

    goto/16 :goto_ce

    :catch_172
    move-exception v2

    move-object v3, v10

    goto/16 :goto_a4
.end method

.method public declared-synchronized a(Ljava/lang/String;)Z
    .registers 13

    const/4 v8, 0x1

    const/4 v10, 0x0

    const/4 v9, 0x0

    monitor-enter p0

    :try_start_4
    invoke-virtual {p0}, Lcom/baidu/android/pushservice/d/a;->b()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_15

    if-eqz v10, :cond_10

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_10
    invoke-virtual {p0}, Lcom/baidu/android/pushservice/d/a;->c()V
    :try_end_13
    .catchall {:try_start_4 .. :try_end_13} :catchall_d2

    :goto_13
    monitor-exit p0

    return v9

    :cond_15
    :try_start_15
    const-string v1, "subscribe"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "apikey"

    aput-object v4, v2, v3

    const-string v3, "app_logo=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_4b

    const/4 v1, 0x0

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_3c
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_3c} :catch_ab
    .catchall {:try_start_15 .. :try_end_3c} :catchall_d5

    move-result v1

    if-nez v1, :cond_4b

    move v0, v8

    move-object v1, v10

    :goto_41
    if-eqz v1, :cond_46

    :try_start_43
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_46
    invoke-virtual {p0}, Lcom/baidu/android/pushservice/d/a;->c()V
    :try_end_49
    .catchall {:try_start_43 .. :try_end_49} :catchall_d2

    move v9, v0

    goto :goto_13

    :cond_4b
    :try_start_4b
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    const-string v1, "weak_subscribe"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "apikey"

    aput-object v4, v2, v3

    const-string v3, "app_logo=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_7b

    const/4 v1, 0x0

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_7b

    move v0, v8

    move-object v1, v10

    goto :goto_41

    :cond_7b
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    const-string v1, "app_info"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "apikey"

    aput-object v4, v2, v3

    const-string v3, "app_logo=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_96
    .catch Ljava/lang/Exception; {:try_start_4b .. :try_end_96} :catch_ab
    .catchall {:try_start_4b .. :try_end_96} :catchall_d5

    move-result-object v0

    :try_start_97
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_e7

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_a5
    .catch Ljava/lang/Exception; {:try_start_97 .. :try_end_a5} :catch_e3
    .catchall {:try_start_97 .. :try_end_a5} :catchall_df

    move-result v1

    if-nez v1, :cond_e7

    move-object v1, v0

    move v0, v8

    goto :goto_41

    :catch_ab
    move-exception v0

    :goto_ac
    :try_start_ac
    const-string v1, "DatabaseManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isLightAppInfoGeted "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/baidu/android/pushservice/h/a;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_c8
    .catchall {:try_start_ac .. :try_end_c8} :catchall_d5

    if-eqz v10, :cond_cd

    :try_start_ca
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    :cond_cd
    invoke-virtual {p0}, Lcom/baidu/android/pushservice/d/a;->c()V
    :try_end_d0
    .catchall {:try_start_ca .. :try_end_d0} :catchall_d2

    goto/16 :goto_13

    :catchall_d2
    move-exception v0

    monitor-exit p0

    throw v0

    :catchall_d5
    move-exception v0

    :goto_d6
    if-eqz v10, :cond_db

    :try_start_d8
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    :cond_db
    invoke-virtual {p0}, Lcom/baidu/android/pushservice/d/a;->c()V

    throw v0
    :try_end_df
    .catchall {:try_start_d8 .. :try_end_df} :catchall_d2

    :catchall_df
    move-exception v1

    move-object v10, v0

    move-object v0, v1

    goto :goto_d6

    :catch_e3
    move-exception v1

    move-object v10, v0

    move-object v0, v1

    goto :goto_ac

    :cond_e7
    move-object v1, v0

    move v0, v9

    goto/16 :goto_41
.end method

.method public declared-synchronized a(Ljava/lang/String;Ljava/lang/String;I)Z
    .registers 12

    const/4 v0, 0x1

    const/4 v1, 0x0

    monitor-enter p0

    :try_start_3
    invoke-virtual {p0}, Lcom/baidu/android/pushservice/d/a;->b()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_22

    move-result-object v2

    if-nez v2, :cond_b

    :goto_9
    monitor-exit p0

    return v1

    :cond_b
    :try_start_b
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_17

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_25

    :cond_17
    const-string v0, "DatabaseManager"

    const-string v2, "addBlackList appid or pkgName can not be null"

    invoke-static {v0, v2}, Lcom/baidu/android/pushservice/h/a;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_1e} :catch_5c
    .catchall {:try_start_b .. :try_end_1e} :catchall_7d

    :try_start_1e
    invoke-virtual {p0}, Lcom/baidu/android/pushservice/d/a;->c()V
    :try_end_21
    .catchall {:try_start_1e .. :try_end_21} :catchall_22

    goto :goto_9

    :catchall_22
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_25
    :try_start_25
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    const-string v4, "app_id"

    invoke-virtual {v3, v4, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "pkg_name"

    invoke-virtual {v3, v4, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "type"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v4, "blacklist"

    const-string v5, "app_id=? AND pkg_name=?"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    aput-object p1, v6, v7

    const/4 v7, 0x1

    aput-object p2, v6, v7

    invoke-virtual {v2, v4, v3, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_4d
    .catch Ljava/lang/Exception; {:try_start_25 .. :try_end_4d} :catch_5c
    .catchall {:try_start_25 .. :try_end_4d} :catchall_7d

    move-result v2

    int-to-long v2, v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_5a

    :goto_55
    :try_start_55
    invoke-virtual {p0}, Lcom/baidu/android/pushservice/d/a;->c()V
    :try_end_58
    .catchall {:try_start_55 .. :try_end_58} :catchall_22

    move v1, v0

    goto :goto_9

    :cond_5a
    move v0, v1

    goto :goto_55

    :catch_5c
    move-exception v0

    :try_start_5d
    const-string v2, "DatabaseManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "error "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/baidu/android/pushservice/h/a;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_79
    .catchall {:try_start_5d .. :try_end_79} :catchall_7d

    :try_start_79
    invoke-virtual {p0}, Lcom/baidu/android/pushservice/d/a;->c()V

    goto :goto_9

    :catchall_7d
    move-exception v0

    invoke-virtual {p0}, Lcom/baidu/android/pushservice/d/a;->c()V

    throw v0
    :try_end_82
    .catchall {:try_start_79 .. :try_end_82} :catchall_22
.end method

.method public declared-synchronized a(Ljava/lang/String;Z)Z
    .registers 11

    const/4 v0, 0x1

    const/4 v1, 0x0

    monitor-enter p0

    :try_start_3
    invoke-virtual {p0}, Lcom/baidu/android/pushservice/d/a;->b()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_1c

    move-result-object v2

    if-nez v2, :cond_b

    :goto_9
    monitor-exit p0

    return v1

    :cond_b
    :try_start_b
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1f

    const-string v0, "DatabaseManager"

    const-string v2, "setAppMsgReceiveStatus pkgName can not be null"

    invoke-static {v0, v2}, Lcom/baidu/android/pushservice/h/a;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_18} :catch_50
    .catchall {:try_start_b .. :try_end_18} :catchall_73

    :try_start_18
    invoke-virtual {p0}, Lcom/baidu/android/pushservice/d/a;->c()V
    :try_end_1b
    .catchall {:try_start_18 .. :try_end_1b} :catchall_1c

    goto :goto_9

    :catchall_1c
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_1f
    :try_start_1f
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    if-eqz p2, :cond_45

    const-string v4, "msg_switch"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :goto_30
    const-string v4, "register"

    const-string v5, "pkg_name=?"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    aput-object p1, v6, v7

    invoke-virtual {v2, v4, v3, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_3d
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_3d} :catch_50
    .catchall {:try_start_1f .. :try_end_3d} :catchall_73

    move-result v2

    if-lez v2, :cond_71

    :goto_40
    :try_start_40
    invoke-virtual {p0}, Lcom/baidu/android/pushservice/d/a;->c()V
    :try_end_43
    .catchall {:try_start_40 .. :try_end_43} :catchall_1c

    move v1, v0

    goto :goto_9

    :cond_45
    :try_start_45
    const-string v4, "msg_switch"

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V
    :try_end_4f
    .catch Ljava/lang/Exception; {:try_start_45 .. :try_end_4f} :catch_50
    .catchall {:try_start_45 .. :try_end_4f} :catchall_73

    goto :goto_30

    :catch_50
    move-exception v0

    :try_start_51
    const-string v2, "DatabaseManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "error "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/baidu/android/pushservice/h/a;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6d
    .catchall {:try_start_51 .. :try_end_6d} :catchall_73

    :try_start_6d
    invoke-virtual {p0}, Lcom/baidu/android/pushservice/d/a;->c()V

    goto :goto_9

    :cond_71
    move v0, v1

    goto :goto_40

    :catchall_73
    move-exception v0

    invoke-virtual {p0}, Lcom/baidu/android/pushservice/d/a;->c()V

    throw v0
    :try_end_78
    .catchall {:try_start_6d .. :try_end_78} :catchall_1c
.end method

.method public declared-synchronized b(ILjava/lang/String;)I
    .registers 16

    const/4 v8, -0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    monitor-enter p0

    :try_start_4
    invoke-virtual {p0}, Lcom/baidu/android/pushservice/d/a;->b()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_7
    .catchall {:try_start_4 .. :try_end_7} :catchall_9c

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_11

    :try_start_b
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_e} :catch_b0
    .catchall {:try_start_b .. :try_end_e} :catchall_154

    move-result v2

    if-eqz v2, :cond_22

    :cond_11
    if-eqz v9, :cond_1c

    :try_start_13
    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_1c

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_1c
    invoke-virtual {p0}, Lcom/baidu/android/pushservice/d/a;->c()V
    :try_end_1f
    .catchall {:try_start_13 .. :try_end_1f} :catchall_9c

    move v0, v8

    :goto_20
    monitor-exit p0

    return v0

    :cond_22
    :try_start_22
    new-instance v11, Landroid/content/ContentValues;

    invoke-direct {v11}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "status"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v11, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "0"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9f

    const-string v3, "status=?"

    const/4 v1, 0x1

    new-array v4, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v4, v1

    :goto_46
    const-string v1, "message"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "msgid"

    aput-object v6, v2, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_56
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_56} :catch_b0
    .catchall {:try_start_22 .. :try_end_56} :catchall_154

    move-result-object v1

    :try_start_57
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    if-eqz v1, :cond_b5

    :goto_5e
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_b5

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_6c
    .catch Ljava/lang/Exception; {:try_start_57 .. :try_end_6c} :catch_6d
    .catchall {:try_start_57 .. :try_end_6c} :catchall_165

    goto :goto_5e

    :catch_6d
    move-exception v0

    move-object v2, v1

    move-object v1, v0

    move v0, v8

    :goto_71
    :try_start_71
    const-string v3, "DatabaseManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "error "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/baidu/android/pushservice/h/a;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_8d
    .catchall {:try_start_71 .. :try_end_8d} :catchall_167

    if-eqz v2, :cond_98

    :try_start_8f
    invoke-interface {v2}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_98

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_98
    invoke-virtual {p0}, Lcom/baidu/android/pushservice/d/a;->c()V
    :try_end_9b
    .catchall {:try_start_8f .. :try_end_9b} :catchall_9c

    goto :goto_20

    :catchall_9c
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_9f
    :try_start_9f
    const-string v3, "status=? AND appid=?"

    const/4 v1, 0x2

    new-array v4, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v4, v1

    const/4 v1, 0x1

    aput-object p2, v4, v1
    :try_end_af
    .catch Ljava/lang/Exception; {:try_start_9f .. :try_end_af} :catch_b0
    .catchall {:try_start_9f .. :try_end_af} :catchall_154

    goto :goto_46

    :catch_b0
    move-exception v0

    move-object v1, v0

    move-object v2, v9

    move v0, v8

    goto :goto_71

    :cond_b5
    :try_start_b5
    const-string v2, "0"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_100

    if-nez p1, :cond_e5

    const-string v2, "message"

    const-string v4, "status=?"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, 0x1

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v0, v2, v11, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_d1
    .catch Ljava/lang/Exception; {:try_start_b5 .. :try_end_d1} :catch_6d
    .catchall {:try_start_b5 .. :try_end_d1} :catchall_165

    move-result v2

    :goto_d2
    if-ne v2, v8, :cond_14d

    move v0, v10

    :goto_d5
    if-eqz v1, :cond_e0

    :try_start_d7
    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_e0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_e0
    invoke-virtual {p0}, Lcom/baidu/android/pushservice/d/a;->c()V
    :try_end_e3
    .catchall {:try_start_d7 .. :try_end_e3} :catchall_9c

    goto/16 :goto_20

    :cond_e5
    :try_start_e5
    const-string v2, "message"

    const-string v4, "status=? AND type=?"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, 0x1

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v0, v2, v11, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    goto :goto_d2

    :cond_100
    if-nez p1, :cond_124

    const-string v2, "message"

    const-string v4, "appid=?"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, ""

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v0, v2, v11, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    goto :goto_d2

    :cond_124
    const-string v2, "message"

    const-string v4, "appid=? AND type=?"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, ""

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v0, v2, v11, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_14b
    .catch Ljava/lang/Exception; {:try_start_e5 .. :try_end_14b} :catch_6d
    .catchall {:try_start_e5 .. :try_end_14b} :catchall_165

    move-result v2

    goto :goto_d2

    :cond_14d
    if-lez v2, :cond_171

    :try_start_14f
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I
    :try_end_152
    .catch Ljava/lang/Exception; {:try_start_14f .. :try_end_152} :catch_16a
    .catchall {:try_start_14f .. :try_end_152} :catchall_165

    move-result v0

    goto :goto_d5

    :catchall_154
    move-exception v0

    move-object v1, v9

    :goto_156
    if-eqz v1, :cond_161

    :try_start_158
    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_161

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_161
    invoke-virtual {p0}, Lcom/baidu/android/pushservice/d/a;->c()V

    throw v0
    :try_end_165
    .catchall {:try_start_158 .. :try_end_165} :catchall_9c

    :catchall_165
    move-exception v0

    goto :goto_156

    :catchall_167
    move-exception v0

    move-object v1, v2

    goto :goto_156

    :catch_16a
    move-exception v0

    move-object v12, v0

    move v0, v2

    move-object v2, v1

    move-object v1, v12

    goto/16 :goto_71

    :cond_171
    move v0, v2

    goto/16 :goto_d5
.end method

.method public declared-synchronized b(Ljava/util/ArrayList;)I
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    const/4 v10, 0x1

    const/4 v2, -0x1

    monitor-enter p0

    :try_start_3
    invoke-virtual {p0}, Lcom/baidu/android/pushservice/d/a;->b()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    if-eqz v3, :cond_b

    if-nez p1, :cond_11

    :cond_b
    invoke-virtual {p0}, Lcom/baidu/android/pushservice/d/a;->c()V
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_52

    move v1, v2

    :goto_f
    monitor-exit p0

    return v1

    :cond_11
    :try_start_11
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_4e

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1f
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4e

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    const-string v6, "status"

    const/4 v7, 0x0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v6, "message"

    const-string v7, "msgid=?"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    aput-object v0, v8, v9

    invoke-virtual {v3, v6, v5, v7, v8}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_47
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_47} :catch_55
    .catchall {:try_start_11 .. :try_end_47} :catchall_77

    move-result v0

    if-eq v0, v10, :cond_7c

    add-int/lit8 v0, v1, -0x1

    :goto_4c
    move v1, v0

    goto :goto_1f

    :cond_4e
    :try_start_4e
    invoke-virtual {p0}, Lcom/baidu/android/pushservice/d/a;->c()V
    :try_end_51
    .catchall {:try_start_4e .. :try_end_51} :catchall_52

    goto :goto_f

    :catchall_52
    move-exception v0

    monitor-exit p0

    throw v0

    :catch_55
    move-exception v0

    :try_start_56
    const-string v1, "DatabaseManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "error "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/baidu/android/pushservice/h/a;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_72
    .catchall {:try_start_56 .. :try_end_72} :catchall_77

    :try_start_72
    invoke-virtual {p0}, Lcom/baidu/android/pushservice/d/a;->c()V

    move v1, v2

    goto :goto_f

    :catchall_77
    move-exception v0

    invoke-virtual {p0}, Lcom/baidu/android/pushservice/d/a;->c()V

    throw v0
    :try_end_7c
    .catchall {:try_start_72 .. :try_end_7c} :catchall_52

    :cond_7c
    move v0, v1

    goto :goto_4c
.end method

.method public declared-synchronized b()Landroid/database/sqlite/SQLiteDatabase;
    .registers 3

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/baidu/android/pushservice/d/a;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_12

    iget-object v0, p0, Lcom/baidu/android/pushservice/d/a;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/baidu/android/pushservice/d/b;->a(Landroid/content/Context;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/android/pushservice/d/a;->c:Landroid/database/sqlite/SQLiteDatabase;

    :cond_12
    iget-object v0, p0, Lcom/baidu/android/pushservice/d/a;->c:Landroid/database/sqlite/SQLiteDatabase;
    :try_end_14
    .catchall {:try_start_1 .. :try_end_14} :catchall_16

    monitor-exit p0

    return-object v0

    :catchall_16
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized b(Ljava/lang/String;)Z
    .registers 16

    const/4 v10, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    monitor-enter p0

    :try_start_4
    invoke-virtual {p0}, Lcom/baidu/android/pushservice/d/a;->b()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_16

    if-eqz v8, :cond_10

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_10
    invoke-virtual {p0}, Lcom/baidu/android/pushservice/d/a;->c()V
    :try_end_13
    .catchall {:try_start_4 .. :try_end_13} :catchall_160

    move v0, v9

    :goto_14
    monitor-exit p0

    return v0

    :cond_16
    :try_start_16
    const-string v1, "subscribe"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "host_channel"

    aput-object v4, v2, v3

    const-string v3, "appid=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    const-string v11, ""

    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_3c

    const/4 v1, 0x0

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    :cond_3c
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_16b

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    const-string v1, "weak_subscribe"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "host_channel"

    aput-object v4, v2, v3

    const-string v3, "appid=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_16b

    const/4 v1, 0x0

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_68
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_68} :catch_12e
    .catchall {:try_start_16 .. :try_end_68} :catchall_156

    move-result-object v1

    move-object v2, v1

    move-object v1, v8

    :goto_6b
    :try_start_6b
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_169

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v12

    array-length v13, v12
    :try_end_7d
    .catch Ljava/lang/Exception; {:try_start_6b .. :try_end_7d} :catch_166
    .catchall {:try_start_6b .. :try_end_7d} :catchall_163

    move v11, v9

    move-object v8, v1

    :goto_7f
    if-ge v11, v13, :cond_122

    :try_start_81
    aget-object v5, v12, v11

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    const-string v1, "register"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "pkg_name"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "msg_switch"

    aput-object v4, v2, v3

    const-string v3, "channel=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_11d

    const-string v1, "pkg_name"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_11d

    const-string v2, "com.baidu.searchbox"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_ca

    const-string v2, "com.baidu.voiceassistant"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_11d

    :cond_ca
    iget-object v0, p0, Lcom/baidu/android/pushservice/d/a;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;
    :try_end_cf
    .catch Ljava/lang/Exception; {:try_start_81 .. :try_end_cf} :catch_12e
    .catchall {:try_start_81 .. :try_end_cf} :catchall_156

    move-result-object v0

    const/4 v2, 0x1

    :try_start_d1
    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    const v1, 0x1002908

    if-le v0, v1, :cond_ff

    const-string v1, "DatabaseManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " lightapp msg blocked by searchbox "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/baidu/android/pushservice/h/a;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_f4
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_d1 .. :try_end_f4} :catch_10a
    .catch Ljava/lang/Exception; {:try_start_d1 .. :try_end_f4} :catch_12e
    .catchall {:try_start_d1 .. :try_end_f4} :catchall_156

    if-eqz v8, :cond_f9

    :try_start_f6
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_f9
    invoke-virtual {p0}, Lcom/baidu/android/pushservice/d/a;->c()V

    move v0, v10

    goto/16 :goto_14

    :cond_ff
    if-eqz v8, :cond_104

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_104
    invoke-virtual {p0}, Lcom/baidu/android/pushservice/d/a;->c()V
    :try_end_107
    .catchall {:try_start_f6 .. :try_end_107} :catchall_160

    move v0, v9

    goto/16 :goto_14

    :catch_10a
    move-exception v0

    :try_start_10b
    const-string v0, "DatabaseManager"

    const-string v1, " searchbox not found "

    invoke-static {v0, v1}, Lcom/baidu/android/pushservice/h/a;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_112
    .catch Ljava/lang/Exception; {:try_start_10b .. :try_end_112} :catch_12e
    .catchall {:try_start_10b .. :try_end_112} :catchall_156

    if-eqz v8, :cond_117

    :try_start_114
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_117
    invoke-virtual {p0}, Lcom/baidu/android/pushservice/d/a;->c()V

    move v0, v9

    goto/16 :goto_14

    :cond_11d
    add-int/lit8 v1, v11, 0x1

    move v11, v1

    goto/16 :goto_7f

    :cond_122
    move-object v0, v8

    :goto_123
    if-eqz v0, :cond_128

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_128
    invoke-virtual {p0}, Lcom/baidu/android/pushservice/d/a;->c()V
    :try_end_12b
    .catchall {:try_start_114 .. :try_end_12b} :catchall_160

    move v0, v9

    goto/16 :goto_14

    :catch_12e
    move-exception v0

    :goto_12f
    :try_start_12f
    const-string v1, "DatabaseManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isLightAppSubscribedByApiKey "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/baidu/android/pushservice/h/a;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_14b
    .catchall {:try_start_12f .. :try_end_14b} :catchall_156

    if-eqz v8, :cond_150

    :try_start_14d
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_150
    invoke-virtual {p0}, Lcom/baidu/android/pushservice/d/a;->c()V

    move v0, v9

    goto/16 :goto_14

    :catchall_156
    move-exception v0

    :goto_157
    if-eqz v8, :cond_15c

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_15c
    invoke-virtual {p0}, Lcom/baidu/android/pushservice/d/a;->c()V

    throw v0
    :try_end_160
    .catchall {:try_start_14d .. :try_end_160} :catchall_160

    :catchall_160
    move-exception v0

    monitor-exit p0

    throw v0

    :catchall_163
    move-exception v0

    move-object v8, v1

    goto :goto_157

    :catch_166
    move-exception v0

    move-object v8, v1

    goto :goto_12f

    :cond_169
    move-object v0, v1

    goto :goto_123

    :cond_16b
    move-object v2, v11

    move-object v1, v8

    goto/16 :goto_6b
.end method

.method public declared-synchronized b(Ljava/lang/String;I)Z
    .registers 14

    const/4 v10, 0x1

    const/4 v9, 0x0

    const/4 v8, 0x0

    monitor-enter p0

    :try_start_4
    invoke-virtual {p0}, Lcom/baidu/android/pushservice/d/a;->b()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_7
    .catchall {:try_start_4 .. :try_end_7} :catchall_b5

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_11

    :try_start_b
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_e} :catch_b8
    .catchall {:try_start_b .. :try_end_e} :catchall_e1

    move-result v2

    if-eqz v2, :cond_1c

    :cond_11
    :try_start_11
    invoke-virtual {p0}, Lcom/baidu/android/pushservice/d/a;->c()V

    if-eqz v9, :cond_19

    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_19
    .catchall {:try_start_11 .. :try_end_19} :catchall_b5

    :cond_19
    move v0, v8

    :cond_1a
    :goto_1a
    monitor-exit p0

    return v0

    :cond_1c
    :try_start_1c
    const-string v1, "subscribe"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "host_channel"

    aput-object v4, v2, v3

    const-string v3, "appid=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_34
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_34} :catch_b8
    .catchall {:try_start_1c .. :try_end_34} :catchall_e1

    move-result-object v9

    :try_start_35
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_f6

    const/4 v1, 0x0

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_f6

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_f6

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v2, v1

    if-lez v2, :cond_f6

    const/4 v2, 0x0

    aget-object v5, v1, v2

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    const-string v1, "register"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "pkg_name"

    aput-object v4, v2, v3

    const-string v3, "channel=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_f6

    const/4 v1, 0x0

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    const/4 v2, 0x2

    new-array v4, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v4, v2

    const/4 v2, 0x1

    aput-object v1, v4, v2

    const-string v1, "blacklist"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v5, "type"

    aput-object v5, v2, v3

    const-string v3, "app_id=? AND pkg_name=? "

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_99
    .catch Ljava/lang/Exception; {:try_start_35 .. :try_end_99} :catch_ee
    .catchall {:try_start_35 .. :try_end_99} :catchall_e1

    move-result-object v1

    :try_start_9a
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_f3

    const/4 v0, 0x0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_a4
    .catch Ljava/lang/Exception; {:try_start_9a .. :try_end_a4} :catch_f1
    .catchall {:try_start_9a .. :try_end_a4} :catchall_eb

    move-result v0

    if-eq v0, p2, :cond_a9

    if-nez v0, :cond_f3

    :cond_a9
    move-object v9, v1

    move v0, v10

    :goto_ab
    :try_start_ab
    invoke-virtual {p0}, Lcom/baidu/android/pushservice/d/a;->c()V

    if-eqz v9, :cond_1a

    invoke-interface {v9}, Landroid/database/Cursor;->close()V
    :try_end_b3
    .catchall {:try_start_ab .. :try_end_b3} :catchall_b5

    goto/16 :goto_1a

    :catchall_b5
    move-exception v0

    monitor-exit p0

    throw v0

    :catch_b8
    move-exception v0

    move-object v1, v9

    :goto_ba
    :try_start_ba
    const-string v2, "DatabaseManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "error "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/baidu/android/pushservice/h/a;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_d6
    .catchall {:try_start_ba .. :try_end_d6} :catchall_eb

    :try_start_d6
    invoke-virtual {p0}, Lcom/baidu/android/pushservice/d/a;->c()V

    if-eqz v1, :cond_de

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_de
    move v0, v8

    goto/16 :goto_1a

    :catchall_e1
    move-exception v0

    :goto_e2
    invoke-virtual {p0}, Lcom/baidu/android/pushservice/d/a;->c()V

    if-eqz v9, :cond_ea

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_ea
    throw v0
    :try_end_eb
    .catchall {:try_start_d6 .. :try_end_eb} :catchall_b5

    :catchall_eb
    move-exception v0

    move-object v9, v1

    goto :goto_e2

    :catch_ee
    move-exception v0

    move-object v1, v9

    goto :goto_ba

    :catch_f1
    move-exception v0

    goto :goto_ba

    :cond_f3
    move-object v9, v1

    move v0, v8

    goto :goto_ab

    :cond_f6
    move v0, v8

    goto :goto_ab
.end method

.method public declared-synchronized b(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 9

    const/4 v0, 0x0

    monitor-enter p0

    :try_start_2
    invoke-virtual {p0}, Lcom/baidu/android/pushservice/d/a;->b()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_5
    .catchall {:try_start_2 .. :try_end_5} :catchall_21

    move-result-object v1

    if-nez v1, :cond_a

    :goto_8
    monitor-exit p0

    return v0

    :cond_a
    :try_start_a
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_16

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_24

    :cond_16
    const-string v1, "DatabaseManager"

    const-string v2, "register pkgName or channel can not be null"

    invoke-static {v1, v2}, Lcom/baidu/android/pushservice/h/a;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_1d} :catch_6a
    .catchall {:try_start_a .. :try_end_1d} :catchall_8c

    :try_start_1d
    invoke-virtual {p0}, Lcom/baidu/android/pushservice/d/a;->c()V
    :try_end_20
    .catchall {:try_start_1d .. :try_end_20} :catchall_21

    goto :goto_8

    :catchall_21
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_24
    :try_start_24
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    const-string v2, "pkg_name"

    invoke-virtual {v4, v2, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "channel"

    invoke-virtual {v4, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "msg_count"

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v4, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v2, "msg_switch"

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v4, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-string v5, "reg_time"

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v4, v5, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-wide/16 v2, -0x1

    if-eqz v1, :cond_5f

    const-string v2, "register"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_5e
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_5e} :catch_6a
    .catchall {:try_start_24 .. :try_end_5e} :catchall_8c

    move-result-wide v2

    :cond_5f
    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-lez v1, :cond_66

    const/4 v0, 0x1

    :cond_66
    :try_start_66
    invoke-virtual {p0}, Lcom/baidu/android/pushservice/d/a;->c()V
    :try_end_69
    .catchall {:try_start_66 .. :try_end_69} :catchall_21

    goto :goto_8

    :catch_6a
    move-exception v1

    :try_start_6b
    const-string v2, "DatabaseManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "error "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/baidu/android/pushservice/h/a;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_87
    .catchall {:try_start_6b .. :try_end_87} :catchall_8c

    :try_start_87
    invoke-virtual {p0}, Lcom/baidu/android/pushservice/d/a;->c()V

    goto/16 :goto_8

    :catchall_8c
    move-exception v0

    invoke-virtual {p0}, Lcom/baidu/android/pushservice/d/a;->c()V

    throw v0
    :try_end_91
    .catchall {:try_start_87 .. :try_end_91} :catchall_21
.end method

.method public declared-synchronized b(Ljava/lang/String;Ljava/lang/String;I)Z
    .registers 10

    const/4 v0, 0x0

    monitor-enter p0

    :try_start_2
    invoke-virtual {p0}, Lcom/baidu/android/pushservice/d/a;->b()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_5
    .catchall {:try_start_2 .. :try_end_5} :catchall_48

    move-result-object v1

    :try_start_6
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_12

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1e

    :cond_12
    const-string v1, "DatabaseManager"

    const-string v2, "addBlackList appid or pkgName can not be null"

    invoke-static {v1, v2}, Lcom/baidu/android/pushservice/h/a;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_19} :catch_4b
    .catchall {:try_start_6 .. :try_end_19} :catchall_6c

    :try_start_19
    invoke-virtual {p0}, Lcom/baidu/android/pushservice/d/a;->c()V
    :try_end_1c
    .catchall {:try_start_19 .. :try_end_1c} :catchall_48

    :goto_1c
    monitor-exit p0

    return v0

    :cond_1e
    :try_start_1e
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    const-string v3, "app_id"

    invoke-virtual {v2, v3, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "pkg_name"

    invoke-virtual {v2, v3, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "type"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v3, "blacklist"

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4, v2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_3c
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_3c} :catch_4b
    .catchall {:try_start_1e .. :try_end_3c} :catchall_6c

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-lez v1, :cond_44

    const/4 v0, 0x1

    :cond_44
    :try_start_44
    invoke-virtual {p0}, Lcom/baidu/android/pushservice/d/a;->c()V
    :try_end_47
    .catchall {:try_start_44 .. :try_end_47} :catchall_48

    goto :goto_1c

    :catchall_48
    move-exception v0

    monitor-exit p0

    throw v0

    :catch_4b
    move-exception v1

    :try_start_4c
    const-string v2, "DatabaseManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "error "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/baidu/android/pushservice/h/a;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_68
    .catchall {:try_start_4c .. :try_end_68} :catchall_6c

    :try_start_68
    invoke-virtual {p0}, Lcom/baidu/android/pushservice/d/a;->c()V

    goto :goto_1c

    :catchall_6c
    move-exception v0

    invoke-virtual {p0}, Lcom/baidu/android/pushservice/d/a;->c()V

    throw v0
    :try_end_71
    .catchall {:try_start_68 .. :try_end_71} :catchall_48
.end method

.method public declared-synchronized b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 15

    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Lcom/baidu/android/pushservice/d/a;->b()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_7d

    move-result-object v0

    if-nez v0, :cond_a

    const/4 v0, 0x0

    :goto_8
    monitor-exit p0

    return v0

    :cond_a
    :try_start_a
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_16

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1f

    :cond_16
    const-string v0, "DatabaseManager"

    const-string v1, "register pkgName or channel can not be null"

    invoke-static {v0, v1}, Lcom/baidu/android/pushservice/h/a;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1d
    .catchall {:try_start_a .. :try_end_1d} :catchall_7d

    const/4 v0, 0x0

    goto :goto_8

    :cond_1f
    const/4 v8, 0x0

    const-wide/16 v2, -0x1

    :try_start_22
    new-instance v9, Landroid/content/ContentValues;

    invoke-direct {v9}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "pkg_name"

    invoke-virtual {v9, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "channel"

    invoke-virtual {v9, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "host_name"

    invoke-virtual {v9, v1, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "host_version"

    invoke-virtual {v9, v1, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_e5

    const-string v1, "register"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "pkg_name"

    aput-object v4, v2, v3

    const-string v3, "pkg_name=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p2, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_55
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_55} :catch_ad
    .catchall {:try_start_22 .. :try_end_55} :catchall_d6

    move-result-object v1

    :try_start_56
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_80

    const-string v2, "register"

    const-string v3, "pkg_name=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p2, v4, v5

    invoke-virtual {v0, v2, v9, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_69
    .catch Ljava/lang/Exception; {:try_start_56 .. :try_end_69} :catch_e3
    .catchall {:try_start_56 .. :try_end_69} :catchall_e1

    move-result v0

    int-to-long v2, v0

    move-object v8, v1

    move-wide v0, v2

    :goto_6d
    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_ab

    const/4 v0, 0x1

    :goto_74
    if-eqz v8, :cond_79

    :try_start_76
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_79
    invoke-virtual {p0}, Lcom/baidu/android/pushservice/d/a;->c()V
    :try_end_7c
    .catchall {:try_start_76 .. :try_end_7c} :catchall_7d

    goto :goto_8

    :catchall_7d
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_80
    :try_start_80
    const-string v2, "msg_count"

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v9, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v2, "msg_switch"

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v9, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-string v4, "reg_time"

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v9, v4, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v2, "register"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v9}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_a7
    .catch Ljava/lang/Exception; {:try_start_80 .. :try_end_a7} :catch_e3
    .catchall {:try_start_80 .. :try_end_a7} :catchall_e1

    move-result-wide v2

    move-object v8, v1

    move-wide v0, v2

    goto :goto_6d

    :cond_ab
    const/4 v0, 0x0

    goto :goto_74

    :catch_ad
    move-exception v0

    move-object v1, v8

    :goto_af
    :try_start_af
    const-string v2, "DatabaseManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "error "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/baidu/android/pushservice/h/a;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_cb
    .catchall {:try_start_af .. :try_end_cb} :catchall_e1

    const/4 v0, 0x0

    if-eqz v1, :cond_d1

    :try_start_ce
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_d1
    invoke-virtual {p0}, Lcom/baidu/android/pushservice/d/a;->c()V

    goto/16 :goto_8

    :catchall_d6
    move-exception v0

    move-object v1, v8

    :goto_d8
    if-eqz v1, :cond_dd

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_dd
    invoke-virtual {p0}, Lcom/baidu/android/pushservice/d/a;->c()V

    throw v0
    :try_end_e1
    .catchall {:try_start_ce .. :try_end_e1} :catchall_7d

    :catchall_e1
    move-exception v0

    goto :goto_d8

    :catch_e3
    move-exception v0

    goto :goto_af

    :cond_e5
    move-wide v0, v2

    goto :goto_6d
.end method

.method public declared-synchronized c(ILjava/lang/String;)I
    .registers 10

    const/4 v1, 0x0

    const/4 v0, -0x1

    monitor-enter p0

    :try_start_3
    invoke-virtual {p0}, Lcom/baidu/android/pushservice/d/a;->b()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_34

    move-result-object v3

    if-eqz v3, :cond_f

    :try_start_9
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_c} :catch_55
    .catchall {:try_start_9 .. :try_end_c} :catchall_99

    move-result v2

    if-eqz v2, :cond_14

    :cond_f
    :try_start_f
    invoke-virtual {p0}, Lcom/baidu/android/pushservice/d/a;->c()V
    :try_end_12
    .catchall {:try_start_f .. :try_end_12} :catchall_34

    :goto_12
    monitor-exit p0

    return v0

    :cond_14
    :try_start_14
    const-string v2, "0"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_37

    if-eqz p1, :cond_9e

    const-string v2, "type = ?"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v1, v4

    :goto_2a
    const-string v4, "message"

    invoke-virtual {v3, v4, v2, v1}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_2f
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_2f} :catch_55
    .catchall {:try_start_14 .. :try_end_2f} :catchall_99

    move-result v0

    :try_start_30
    invoke-virtual {p0}, Lcom/baidu/android/pushservice/d/a;->c()V
    :try_end_33
    .catchall {:try_start_30 .. :try_end_33} :catchall_34

    goto :goto_12

    :catchall_34
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_37
    if-nez p1, :cond_76

    :try_start_39
    const-string v2, "appid = ?"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v4, 0x0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v1, v4
    :try_end_54
    .catch Ljava/lang/Exception; {:try_start_39 .. :try_end_54} :catch_55
    .catchall {:try_start_39 .. :try_end_54} :catchall_99

    goto :goto_2a

    :catch_55
    move-exception v1

    :try_start_56
    const-string v2, "DatabaseManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "error "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/baidu/android/pushservice/h/a;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_72
    .catchall {:try_start_56 .. :try_end_72} :catchall_99

    :try_start_72
    invoke-virtual {p0}, Lcom/baidu/android/pushservice/d/a;->c()V
    :try_end_75
    .catchall {:try_start_72 .. :try_end_75} :catchall_34

    goto :goto_12

    :cond_76
    :try_start_76
    const-string v2, "appid= ? AND type = ?"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v4, 0x0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v1, v4

    const/4 v4, 0x1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v1, v4
    :try_end_98
    .catch Ljava/lang/Exception; {:try_start_76 .. :try_end_98} :catch_55
    .catchall {:try_start_76 .. :try_end_98} :catchall_99

    goto :goto_2a

    :catchall_99
    move-exception v0

    :try_start_9a
    invoke-virtual {p0}, Lcom/baidu/android/pushservice/d/a;->c()V

    throw v0
    :try_end_9e
    .catchall {:try_start_9a .. :try_end_9e} :catchall_34

    :cond_9e
    move-object v2, v1

    goto :goto_2a
.end method

.method public declared-synchronized c(Ljava/util/ArrayList;)I
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    const/4 v8, 0x1

    const/4 v1, 0x0

    monitor-enter p0

    :try_start_3
    invoke-virtual {p0}, Lcom/baidu/android/pushservice/d/a;->b()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    const/4 v0, -0x1

    if-eqz v2, :cond_c

    if-nez p1, :cond_11

    :cond_c
    invoke-virtual {p0}, Lcom/baidu/android/pushservice/d/a;->c()V
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_40

    :goto_f
    monitor-exit p0

    return v0

    :cond_11
    :try_start_11
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_3b

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1b
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3b

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v4, "message"

    const-string v5, "msgid=?"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    aput-object v0, v6, v7

    invoke-virtual {v2, v4, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_34
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_34} :catch_43
    .catchall {:try_start_11 .. :try_end_34} :catchall_67

    move-result v0

    if-ne v8, v0, :cond_6c

    add-int/lit8 v0, v1, 0x1

    :goto_39
    move v1, v0

    goto :goto_1b

    :cond_3b
    move v0, v1

    :try_start_3c
    invoke-virtual {p0}, Lcom/baidu/android/pushservice/d/a;->c()V
    :try_end_3f
    .catchall {:try_start_3c .. :try_end_3f} :catchall_40

    goto :goto_f

    :catchall_40
    move-exception v0

    monitor-exit p0

    throw v0

    :catch_43
    move-exception v0

    move-object v9, v0

    move v0, v1

    move-object v1, v9

    :try_start_47
    const-string v2, "DatabaseManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "error "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/baidu/android/pushservice/h/a;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_63
    .catchall {:try_start_47 .. :try_end_63} :catchall_67

    :try_start_63
    invoke-virtual {p0}, Lcom/baidu/android/pushservice/d/a;->c()V

    goto :goto_f

    :catchall_67
    move-exception v0

    invoke-virtual {p0}, Lcom/baidu/android/pushservice/d/a;->c()V

    throw v0
    :try_end_6c
    .catchall {:try_start_63 .. :try_end_6c} :catchall_40

    :cond_6c
    move v0, v1

    goto :goto_39
.end method

.method public declared-synchronized c()V
    .registers 5

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/baidu/android/pushservice/d/a;->d:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    iget-object v0, p0, Lcom/baidu/android/pushservice/d/a;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v0

    if-nez v0, :cond_17

    iget-object v0, p0, Lcom/baidu/android/pushservice/d/a;->c:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/baidu/android/pushservice/d/a;->c:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_17} :catch_1e
    .catchall {:try_start_1 .. :try_end_17} :catchall_44

    :cond_17
    :try_start_17
    iget-object v0, p0, Lcom/baidu/android/pushservice/d/a;->d:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V
    :try_end_1c
    .catchall {:try_start_17 .. :try_end_1c} :catchall_41

    :goto_1c
    monitor-exit p0

    return-void

    :catch_1e
    move-exception v0

    :try_start_1f
    const-string v1, "DatabaseManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "error : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/baidu/android/pushservice/h/a;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3b
    .catchall {:try_start_1f .. :try_end_3b} :catchall_44

    :try_start_3b
    iget-object v0, p0, Lcom/baidu/android/pushservice/d/a;->d:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V
    :try_end_40
    .catchall {:try_start_3b .. :try_end_40} :catchall_41

    goto :goto_1c

    :catchall_41
    move-exception v0

    monitor-exit p0

    throw v0

    :catchall_44
    move-exception v0

    :try_start_45
    iget-object v1, p0, Lcom/baidu/android/pushservice/d/a;->d:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
    :try_end_4b
    .catchall {:try_start_45 .. :try_end_4b} :catchall_41
.end method

.method public declared-synchronized c(Ljava/lang/String;)Z
    .registers 13

    const/4 v8, 0x1

    const/4 v10, 0x0

    const/4 v9, 0x0

    monitor-enter p0

    :try_start_4
    invoke-virtual {p0}, Lcom/baidu/android/pushservice/d/a;->b()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_7
    .catchall {:try_start_4 .. :try_end_7} :catchall_43

    move-result-object v0

    if-nez v0, :cond_c

    :cond_a
    :goto_a
    monitor-exit p0

    return v9

    :cond_c
    :try_start_c
    const-string v1, "register"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "pkg_name"

    aput-object v4, v2, v3

    const-string v3, "pkg_name=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_24} :catch_46
    .catchall {:try_start_c .. :try_end_24} :catchall_6d

    move-result-object v1

    if-eqz v1, :cond_3a

    :try_start_27
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_27 .. :try_end_2a} :catch_7a
    .catchall {:try_start_27 .. :try_end_2a} :catchall_78

    move-result v0

    if-lez v0, :cond_38

    move v0, v8

    :goto_2e
    :try_start_2e
    invoke-virtual {p0}, Lcom/baidu/android/pushservice/d/a;->c()V

    if-eqz v1, :cond_36

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_36
    move v9, v0

    goto :goto_a

    :cond_38
    move v0, v9

    goto :goto_2e

    :cond_3a
    invoke-virtual {p0}, Lcom/baidu/android/pushservice/d/a;->c()V

    if-eqz v1, :cond_a

    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_42
    .catchall {:try_start_2e .. :try_end_42} :catchall_43

    goto :goto_a

    :catchall_43
    move-exception v0

    monitor-exit p0

    throw v0

    :catch_46
    move-exception v0

    move-object v1, v10

    :goto_48
    :try_start_48
    const-string v2, "DatabaseManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "error "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/baidu/android/pushservice/h/a;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_64
    .catchall {:try_start_48 .. :try_end_64} :catchall_78

    :try_start_64
    invoke-virtual {p0}, Lcom/baidu/android/pushservice/d/a;->c()V

    if-eqz v1, :cond_a

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_a

    :catchall_6d
    move-exception v0

    move-object v1, v10

    :goto_6f
    invoke-virtual {p0}, Lcom/baidu/android/pushservice/d/a;->c()V

    if-eqz v1, :cond_77

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_77
    throw v0
    :try_end_78
    .catchall {:try_start_64 .. :try_end_78} :catchall_43

    :catchall_78
    move-exception v0

    goto :goto_6f

    :catch_7a
    move-exception v0

    goto :goto_48
.end method

.method public declared-synchronized c(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 14

    const/4 v8, 0x1

    const/4 v10, 0x0

    const/4 v9, 0x0

    monitor-enter p0

    :try_start_4
    invoke-virtual {p0}, Lcom/baidu/android/pushservice/d/a;->b()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_7
    .catchall {:try_start_4 .. :try_end_7} :catchall_46

    move-result-object v0

    if-nez v0, :cond_c

    :goto_a
    monitor-exit p0

    return v9

    :cond_c
    :try_start_c
    const-string v1, "blacklist"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "app_id"

    aput-object v4, v2, v3

    const-string v3, "app_id=? AND pkg_name=?"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x1

    aput-object p2, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_27} :catch_49
    .catchall {:try_start_c .. :try_end_27} :catchall_70

    move-result-object v1

    if-eqz v1, :cond_3d

    :try_start_2a
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I
    :try_end_2d
    .catch Ljava/lang/Exception; {:try_start_2a .. :try_end_2d} :catch_7d
    .catchall {:try_start_2a .. :try_end_2d} :catchall_7b

    move-result v0

    if-lez v0, :cond_3b

    move v0, v8

    :goto_31
    if-eqz v1, :cond_36

    :try_start_33
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_36
    invoke-virtual {p0}, Lcom/baidu/android/pushservice/d/a;->c()V

    move v9, v0

    goto :goto_a

    :cond_3b
    move v0, v9

    goto :goto_31

    :cond_3d
    if-eqz v1, :cond_42

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_42
    invoke-virtual {p0}, Lcom/baidu/android/pushservice/d/a;->c()V
    :try_end_45
    .catchall {:try_start_33 .. :try_end_45} :catchall_46

    goto :goto_a

    :catchall_46
    move-exception v0

    monitor-exit p0

    throw v0

    :catch_49
    move-exception v0

    move-object v1, v10

    :goto_4b
    :try_start_4b
    const-string v2, "DatabaseManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "error "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/baidu/android/pushservice/h/a;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_67
    .catchall {:try_start_4b .. :try_end_67} :catchall_7b

    if-eqz v1, :cond_6c

    :try_start_69
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_6c
    invoke-virtual {p0}, Lcom/baidu/android/pushservice/d/a;->c()V

    goto :goto_a

    :catchall_70
    move-exception v0

    move-object v1, v10

    :goto_72
    if-eqz v1, :cond_77

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_77
    invoke-virtual {p0}, Lcom/baidu/android/pushservice/d/a;->c()V

    throw v0
    :try_end_7b
    .catchall {:try_start_69 .. :try_end_7b} :catchall_46

    :catchall_7b
    move-exception v0

    goto :goto_72

    :catch_7d
    move-exception v0

    goto :goto_4b
.end method

.method public declared-synchronized d()V
    .registers 13

    const/4 v10, 0x0

    monitor-enter p0

    :try_start_2
    invoke-virtual {p0}, Lcom/baidu/android/pushservice/d/a;->b()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_5
    .catchall {:try_start_2 .. :try_end_5} :catchall_b7

    move-result-object v0

    if-nez v0, :cond_a

    :goto_8
    monitor-exit p0

    return-void

    :cond_a
    :try_start_a
    const-string v1, "message"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "count(*)"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_1c} :catch_151
    .catchall {:try_start_a .. :try_end_1c} :catchall_141

    move-result-object v8

    if-eqz v8, :cond_c0

    :try_start_1f
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_c0

    const/4 v1, 0x0

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    const/16 v2, 0x7d0

    if-le v1, v2, :cond_c0

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    const-string v1, "message"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "appid"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "count(*)"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-string v5, "appid"

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_49
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_49} :catch_155
    .catchall {:try_start_1f .. :try_end_49} :catchall_149

    move-result-object v9

    :cond_4a
    :goto_4a
    :try_start_4a
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_ba

    const-string v1, "message"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "time"

    aput-object v4, v2, v3

    const-string v3, "appid =? "

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-interface {v9, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "time DESC"

    const/4 v8, 0x0

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    const/16 v1, 0x31

    invoke-interface {v10, v1}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v1

    if-eqz v1, :cond_4a

    const-string v1, "message"

    const-string v2, "appid=? AND time<?"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-interface {v9, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-interface {v10, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_92
    .catch Ljava/lang/Exception; {:try_start_4a .. :try_end_92} :catch_93
    .catchall {:try_start_4a .. :try_end_92} :catchall_14c

    goto :goto_4a

    :catch_93
    move-exception v0

    move-object v1, v9

    :goto_95
    :try_start_95
    const-string v2, "DatabaseManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "checkDB E: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/baidu/android/pushservice/h/a;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_ad
    .catchall {:try_start_95 .. :try_end_ad} :catchall_14f

    if-eqz v1, :cond_b2

    :try_start_af
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_b2
    :goto_b2
    invoke-virtual {p0}, Lcom/baidu/android/pushservice/d/a;->c()V
    :try_end_b5
    .catchall {:try_start_af .. :try_end_b5} :catchall_b7

    goto/16 :goto_8

    :catchall_b7
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_ba
    if-eqz v10, :cond_bf

    :try_start_bc
    invoke-interface {v10}, Landroid/database/Cursor;->close()V
    :try_end_bf
    .catch Ljava/lang/Exception; {:try_start_bc .. :try_end_bf} :catch_93
    .catchall {:try_start_bc .. :try_end_bf} :catchall_14c

    :cond_bf
    move-object v8, v9

    :cond_c0
    :try_start_c0
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    const-string v1, "weak_subscribe"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "count(*)"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_d5
    .catch Ljava/lang/Exception; {:try_start_c0 .. :try_end_d5} :catch_155
    .catchall {:try_start_c0 .. :try_end_d5} :catchall_149

    move-result-object v1

    if-eqz v1, :cond_112

    :try_start_d8
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_112

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    const/16 v3, 0x3e8

    if-le v2, v3, :cond_112

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    const-string v2, "weak_subscribe"

    const-string v3, "sub_time<?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    const-wide/32 v10, -0x3083a800

    sub-long/2addr v8, v10

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v0, v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    :cond_112
    const-string v2, "notification"

    const-string v3, "time_stamp<?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    const-wide/32 v10, 0xf731400

    sub-long/2addr v8, v10

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v0, v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_13a
    .catch Ljava/lang/Exception; {:try_start_d8 .. :try_end_13a} :catch_159
    .catchall {:try_start_d8 .. :try_end_13a} :catchall_14f

    if-eqz v1, :cond_b2

    :try_start_13c
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto/16 :goto_b2

    :catchall_141
    move-exception v0

    move-object v1, v10

    :goto_143
    if-eqz v1, :cond_148

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_148
    throw v0
    :try_end_149
    .catchall {:try_start_13c .. :try_end_149} :catchall_b7

    :catchall_149
    move-exception v0

    move-object v1, v8

    goto :goto_143

    :catchall_14c
    move-exception v0

    move-object v1, v9

    goto :goto_143

    :catchall_14f
    move-exception v0

    goto :goto_143

    :catch_151
    move-exception v0

    move-object v1, v10

    goto/16 :goto_95

    :catch_155
    move-exception v0

    move-object v1, v8

    goto/16 :goto_95

    :catch_159
    move-exception v0

    goto/16 :goto_95
.end method

.method public declared-synchronized d(Ljava/util/ArrayList;)V
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const/4 v10, 0x0

    const/4 v12, 0x0

    monitor-enter p0

    :try_start_3
    invoke-virtual {p0}, Lcom/baidu/android/pushservice/d/a;->b()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_6e

    move-result-object v1

    if-nez v1, :cond_b

    :cond_9
    :goto_9
    monitor-exit p0

    return-void

    :cond_b
    move v11, v12

    :goto_c
    :try_start_c
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v11, v2, :cond_65

    invoke-virtual {p1, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Ljava/lang/String;

    move-object v9, v0

    const-string v2, "register"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "msg_count"

    aput-object v5, v3, v4

    const-string v4, "pkg_name=?"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v9, v5, v6

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_32
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_32} :catch_a5
    .catchall {:try_start_c .. :try_end_32} :catchall_a2

    move-result-object v2

    :try_start_33
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_a8

    const-string v3, "msg_count"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    :goto_43
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    const-string v5, "msg_count"

    add-int/lit8 v3, v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v4, v5, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v3, "register"

    const-string v5, "pkg_name=?"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    aput-object v9, v6, v7

    invoke-virtual {v1, v3, v4, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_60
    .catch Ljava/lang/Exception; {:try_start_33 .. :try_end_60} :catch_71
    .catchall {:try_start_33 .. :try_end_60} :catchall_98

    add-int/lit8 v3, v11, 0x1

    move v11, v3

    move-object v10, v2

    goto :goto_c

    :cond_65
    :try_start_65
    invoke-virtual {p0}, Lcom/baidu/android/pushservice/d/a;->c()V

    if-eqz v10, :cond_9

    invoke-interface {v10}, Landroid/database/Cursor;->close()V
    :try_end_6d
    .catchall {:try_start_65 .. :try_end_6d} :catchall_6e

    goto :goto_9

    :catchall_6e
    move-exception v1

    monitor-exit p0

    throw v1

    :catch_71
    move-exception v1

    :goto_72
    :try_start_72
    const-string v3, "DatabaseManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "error "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/baidu/android/pushservice/h/a;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_8e
    .catchall {:try_start_72 .. :try_end_8e} :catchall_98

    :try_start_8e
    invoke-virtual {p0}, Lcom/baidu/android/pushservice/d/a;->c()V

    if-eqz v2, :cond_9

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    goto/16 :goto_9

    :catchall_98
    move-exception v1

    :goto_99
    invoke-virtual {p0}, Lcom/baidu/android/pushservice/d/a;->c()V

    if-eqz v2, :cond_a1

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_a1
    throw v1
    :try_end_a2
    .catchall {:try_start_8e .. :try_end_a2} :catchall_6e

    :catchall_a2
    move-exception v1

    move-object v2, v10

    goto :goto_99

    :catch_a5
    move-exception v1

    move-object v2, v10

    goto :goto_72

    :cond_a8
    move v3, v12

    goto :goto_43
.end method

.method public declared-synchronized d(Ljava/lang/String;)Z
    .registers 10

    const/4 v0, 0x1

    const/4 v1, 0x0

    monitor-enter p0

    :try_start_3
    invoke-virtual {p0}, Lcom/baidu/android/pushservice/d/a;->b()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_1c

    move-result-object v4

    if-nez v4, :cond_b

    :goto_9
    monitor-exit p0

    return v1

    :cond_b
    :try_start_b
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1f

    const-string v0, "DatabaseManager"

    const-string v2, "updateRegister pkgName can not be null"

    invoke-static {v0, v2}, Lcom/baidu/android/pushservice/h/a;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_18} :catch_51
    .catchall {:try_start_b .. :try_end_18} :catchall_72

    :try_start_18
    invoke-virtual {p0}, Lcom/baidu/android/pushservice/d/a;->c()V
    :try_end_1b
    .catchall {:try_start_18 .. :try_end_1b} :catchall_1c

    goto :goto_9

    :catchall_1c
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_1f
    :try_start_1f
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-string v6, "reg_time"

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v5, v6, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-wide/16 v2, -0x1

    if-eqz v4, :cond_44

    const-string v2, "register"

    const-string v3, "pkg_name=?"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    aput-object p1, v6, v7

    invoke-virtual {v4, v2, v5, v3, v6}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_42
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_42} :catch_51
    .catchall {:try_start_1f .. :try_end_42} :catchall_72

    move-result v2

    int-to-long v2, v2

    :cond_44
    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_4f

    :goto_4a
    :try_start_4a
    invoke-virtual {p0}, Lcom/baidu/android/pushservice/d/a;->c()V
    :try_end_4d
    .catchall {:try_start_4a .. :try_end_4d} :catchall_1c

    move v1, v0

    goto :goto_9

    :cond_4f
    move v0, v1

    goto :goto_4a

    :catch_51
    move-exception v0

    :try_start_52
    const-string v2, "DatabaseManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "error "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/baidu/android/pushservice/h/a;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6e
    .catchall {:try_start_52 .. :try_end_6e} :catchall_72

    :try_start_6e
    invoke-virtual {p0}, Lcom/baidu/android/pushservice/d/a;->c()V

    goto :goto_9

    :catchall_72
    move-exception v0

    invoke-virtual {p0}, Lcom/baidu/android/pushservice/d/a;->c()V

    throw v0
    :try_end_77
    .catchall {:try_start_6e .. :try_end_77} :catchall_1c
.end method

.method public declared-synchronized d(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 10

    const/4 v0, 0x1

    const/4 v1, 0x0

    monitor-enter p0

    :try_start_3
    invoke-virtual {p0}, Lcom/baidu/android/pushservice/d/a;->b()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_22

    move-result-object v2

    if-nez v2, :cond_b

    :goto_9
    monitor-exit p0

    return v1

    :cond_b
    :try_start_b
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_17

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_25

    :cond_17
    const-string v0, "DatabaseManager"

    const-string v2, "deleteBlackList appid or pkgName can not be null"

    invoke-static {v0, v2}, Lcom/baidu/android/pushservice/h/a;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_1e} :catch_3f
    .catchall {:try_start_b .. :try_end_1e} :catchall_60

    :try_start_1e
    invoke-virtual {p0}, Lcom/baidu/android/pushservice/d/a;->c()V
    :try_end_21
    .catchall {:try_start_1e .. :try_end_21} :catchall_22

    goto :goto_9

    :catchall_22
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_25
    :try_start_25
    const-string v3, "blacklist"

    const-string v4, "app_id = ? AND pkg_name =?"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object p1, v5, v6

    const/4 v6, 0x1

    aput-object p2, v5, v6

    invoke-virtual {v2, v3, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_35
    .catch Ljava/lang/Exception; {:try_start_25 .. :try_end_35} :catch_3f
    .catchall {:try_start_25 .. :try_end_35} :catchall_60

    move-result v2

    if-lez v2, :cond_3d

    :goto_38
    :try_start_38
    invoke-virtual {p0}, Lcom/baidu/android/pushservice/d/a;->c()V
    :try_end_3b
    .catchall {:try_start_38 .. :try_end_3b} :catchall_22

    move v1, v0

    goto :goto_9

    :cond_3d
    move v0, v1

    goto :goto_38

    :catch_3f
    move-exception v0

    :try_start_40
    const-string v2, "DatabaseManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "error "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/baidu/android/pushservice/h/a;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5c
    .catchall {:try_start_40 .. :try_end_5c} :catchall_60

    :try_start_5c
    invoke-virtual {p0}, Lcom/baidu/android/pushservice/d/a;->c()V

    goto :goto_9

    :catchall_60
    move-exception v0

    invoke-virtual {p0}, Lcom/baidu/android/pushservice/d/a;->c()V

    throw v0
    :try_end_65
    .catchall {:try_start_5c .. :try_end_65} :catchall_22
.end method

.method public declared-synchronized e()Ljava/lang/String;
    .registers 11

    const/4 v8, 0x0

    monitor-enter p0

    :try_start_2
    invoke-virtual {p0}, Lcom/baidu/android/pushservice/d/a;->b()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_14

    if-eqz v8, :cond_e

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_e
    invoke-virtual {p0}, Lcom/baidu/android/pushservice/d/a;->c()V
    :try_end_11
    .catchall {:try_start_2 .. :try_end_11} :catchall_b5

    move-object v0, v8

    :goto_12
    monitor-exit p0

    return-object v0

    :cond_14
    :try_start_14
    new-instance v9, Lorg/json/JSONArray;

    invoke-direct {v9}, Lorg/json/JSONArray;-><init>()V

    const-string v1, "subscribe"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_24
    .catch Lorg/json/JSONException; {:try_start_14 .. :try_end_24} :catch_c5
    .catchall {:try_start_14 .. :try_end_24} :catchall_b8

    move-result-object v1

    :goto_25
    :try_start_25
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_a7

    const-string v0, "appid"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v2, "app_name"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "app_logo"

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "apikey"

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "is_bind"

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    const-string v7, "appid"

    invoke-virtual {v6, v7, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "app_name"

    invoke-virtual {v6, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "app_logo"

    invoke-virtual {v6, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "api_key"

    invoke-virtual {v6, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "is_bind"

    invoke-virtual {v6, v0, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    invoke-virtual {v9, v6}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_7e
    .catch Lorg/json/JSONException; {:try_start_25 .. :try_end_7e} :catch_7f
    .catchall {:try_start_25 .. :try_end_7e} :catchall_c3

    goto :goto_25

    :catch_7f
    move-exception v0

    :goto_80
    :try_start_80
    const-string v2, "DatabaseManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getSubscribedApps "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/baidu/android/pushservice/h/a;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_9c
    .catchall {:try_start_80 .. :try_end_9c} :catchall_c3

    if-eqz v1, :cond_a1

    :try_start_9e
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_a1
    invoke-virtual {p0}, Lcom/baidu/android/pushservice/d/a;->c()V
    :try_end_a4
    .catchall {:try_start_9e .. :try_end_a4} :catchall_b5

    move-object v0, v8

    goto/16 :goto_12

    :cond_a7
    :try_start_a7
    invoke-virtual {v9}, Lorg/json/JSONArray;->toString()Ljava/lang/String;
    :try_end_aa
    .catch Lorg/json/JSONException; {:try_start_a7 .. :try_end_aa} :catch_7f
    .catchall {:try_start_a7 .. :try_end_aa} :catchall_c3

    move-result-object v0

    if-eqz v1, :cond_b0

    :try_start_ad
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_b0
    invoke-virtual {p0}, Lcom/baidu/android/pushservice/d/a;->c()V
    :try_end_b3
    .catchall {:try_start_ad .. :try_end_b3} :catchall_b5

    goto/16 :goto_12

    :catchall_b5
    move-exception v0

    monitor-exit p0

    throw v0

    :catchall_b8
    move-exception v0

    move-object v1, v8

    :goto_ba
    if-eqz v1, :cond_bf

    :try_start_bc
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_bf
    invoke-virtual {p0}, Lcom/baidu/android/pushservice/d/a;->c()V

    throw v0
    :try_end_c3
    .catchall {:try_start_bc .. :try_end_c3} :catchall_b5

    :catchall_c3
    move-exception v0

    goto :goto_ba

    :catch_c5
    move-exception v0

    move-object v1, v8

    goto :goto_80
.end method

.method public declared-synchronized e(Ljava/lang/String;)Ljava/lang/String;
    .registers 11

    const/4 v8, 0x0

    monitor-enter p0

    :try_start_2
    invoke-virtual {p0}, Lcom/baidu/android/pushservice/d/a;->b()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_5
    .catchall {:try_start_2 .. :try_end_5} :catchall_4c

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_f

    :try_start_9
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_c} :catch_59
    .catchall {:try_start_9 .. :try_end_c} :catchall_80

    move-result v2

    if-eqz v2, :cond_1a

    :cond_f
    if-eqz v8, :cond_14

    :try_start_11
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_14
    invoke-virtual {p0}, Lcom/baidu/android/pushservice/d/a;->c()V
    :try_end_17
    .catchall {:try_start_11 .. :try_end_17} :catchall_4c

    move-object v0, v8

    :goto_18
    monitor-exit p0

    return-object v0

    :cond_1a
    :try_start_1a
    const-string v1, "register"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "pkg_name"

    aput-object v4, v2, v3

    const-string v3, "channel= ? "

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_32
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_32} :catch_59
    .catchall {:try_start_1a .. :try_end_32} :catchall_80

    move-result-object v1

    :try_start_33
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_4f

    const-string v0, "pkg_name"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_42
    .catch Ljava/lang/Exception; {:try_start_33 .. :try_end_42} :catch_8d
    .catchall {:try_start_33 .. :try_end_42} :catchall_8b

    move-result-object v0

    if-eqz v1, :cond_48

    :try_start_45
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_48
    invoke-virtual {p0}, Lcom/baidu/android/pushservice/d/a;->c()V
    :try_end_4b
    .catchall {:try_start_45 .. :try_end_4b} :catchall_4c

    goto :goto_18

    :catchall_4c
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_4f
    if-eqz v1, :cond_54

    :try_start_51
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_54
    invoke-virtual {p0}, Lcom/baidu/android/pushservice/d/a;->c()V
    :try_end_57
    .catchall {:try_start_51 .. :try_end_57} :catchall_4c

    :goto_57
    move-object v0, v8

    goto :goto_18

    :catch_59
    move-exception v0

    move-object v1, v8

    :goto_5b
    :try_start_5b
    const-string v2, "DatabaseManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "error "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/baidu/android/pushservice/h/a;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_77
    .catchall {:try_start_5b .. :try_end_77} :catchall_8b

    if-eqz v1, :cond_7c

    :try_start_79
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_7c
    invoke-virtual {p0}, Lcom/baidu/android/pushservice/d/a;->c()V

    goto :goto_57

    :catchall_80
    move-exception v0

    move-object v1, v8

    :goto_82
    if-eqz v1, :cond_87

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_87
    invoke-virtual {p0}, Lcom/baidu/android/pushservice/d/a;->c()V

    throw v0
    :try_end_8b
    .catchall {:try_start_79 .. :try_end_8b} :catchall_4c

    :catchall_8b
    move-exception v0

    goto :goto_82

    :catch_8d
    move-exception v0

    goto :goto_5b
.end method

.method public declared-synchronized e(Ljava/lang/String;Ljava/lang/String;)V
    .registers 13

    const/4 v8, 0x0

    monitor-enter p0

    :try_start_2
    invoke-virtual {p0}, Lcom/baidu/android/pushservice/d/a;->b()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_5
    .catchall {:try_start_2 .. :try_end_5} :catchall_58

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_f

    :try_start_9
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_c} :catch_5b
    .catchall {:try_start_9 .. :try_end_c} :catchall_82

    move-result v2

    if-eqz v2, :cond_19

    :cond_f
    :try_start_f
    invoke-virtual {p0}, Lcom/baidu/android/pushservice/d/a;->c()V

    if-eqz v8, :cond_17

    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_17
    .catchall {:try_start_f .. :try_end_17} :catchall_58

    :cond_17
    :goto_17
    monitor-exit p0

    return-void

    :cond_19
    :try_start_19
    new-instance v9, Landroid/content/ContentValues;

    invoke-direct {v9}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "subscribe"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "shortcut_by"

    aput-object v4, v2, v3

    const-string v3, "apikey=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_36
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_36} :catch_5b
    .catchall {:try_start_19 .. :try_end_36} :catchall_82

    move-result-object v1

    :try_start_37
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_4f

    const-string v2, "shortcut_by"

    invoke-virtual {v9, v2, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "subscribe"

    const-string v3, "apikey=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    invoke-virtual {v0, v2, v9, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_4f
    .catch Ljava/lang/Exception; {:try_start_37 .. :try_end_4f} :catch_8f
    .catchall {:try_start_37 .. :try_end_4f} :catchall_8d

    :cond_4f
    :try_start_4f
    invoke-virtual {p0}, Lcom/baidu/android/pushservice/d/a;->c()V

    if-eqz v1, :cond_17

    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_57
    .catchall {:try_start_4f .. :try_end_57} :catchall_58

    goto :goto_17

    :catchall_58
    move-exception v0

    monitor-exit p0

    throw v0

    :catch_5b
    move-exception v0

    move-object v1, v8

    :goto_5d
    :try_start_5d
    const-string v2, "DatabaseManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "error "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/baidu/android/pushservice/h/a;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_79
    .catchall {:try_start_5d .. :try_end_79} :catchall_8d

    :try_start_79
    invoke-virtual {p0}, Lcom/baidu/android/pushservice/d/a;->c()V

    if-eqz v1, :cond_17

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_17

    :catchall_82
    move-exception v0

    move-object v1, v8

    :goto_84
    invoke-virtual {p0}, Lcom/baidu/android/pushservice/d/a;->c()V

    if-eqz v1, :cond_8c

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_8c
    throw v0
    :try_end_8d
    .catchall {:try_start_79 .. :try_end_8d} :catchall_58

    :catchall_8d
    move-exception v0

    goto :goto_84

    :catch_8f
    move-exception v0

    goto :goto_5d
.end method

.method public declared-synchronized f(Ljava/lang/String;)Lcom/baidu/android/pushservice/i/h;
    .registers 12

    const/4 v8, 0x0

    monitor-enter p0

    :try_start_2
    invoke-virtual {p0}, Lcom/baidu/android/pushservice/d/a;->b()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_5
    .catchall {:try_start_2 .. :try_end_5} :catchall_91

    move-result-object v0

    if-eqz v0, :cond_b1

    :try_start_8
    const-string v1, "register"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "channel"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "host_name"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, "host_version"

    aput-object v4, v2, v3

    const-string v3, "pkg_name=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_2a} :catch_68
    .catchall {:try_start_8 .. :try_end_2a} :catchall_94

    move-result-object v1

    :goto_2b
    if-eqz v1, :cond_af

    :try_start_2d
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_af

    new-instance v2, Lcom/baidu/android/pushservice/i/h;

    invoke-direct {v2}, Lcom/baidu/android/pushservice/i/h;-><init>()V
    :try_end_38
    .catch Ljava/lang/Exception; {:try_start_2d .. :try_end_38} :catch_a4
    .catchall {:try_start_2d .. :try_end_38} :catchall_9f

    :try_start_38
    const-string v0, "channel"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/baidu/android/pushservice/i/h;->a(Ljava/lang/String;)V

    const-string v0, "host_name"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/baidu/android/pushservice/i/h;->a:Ljava/lang/String;

    const-string v0, "host_version"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/baidu/android/pushservice/i/h;->b:Ljava/lang/String;
    :try_end_5d
    .catch Ljava/lang/Exception; {:try_start_38 .. :try_end_5d} :catch_a9
    .catchall {:try_start_38 .. :try_end_5d} :catchall_9f

    move-object v0, v2

    :goto_5e
    :try_start_5e
    invoke-virtual {p0}, Lcom/baidu/android/pushservice/d/a;->c()V

    if-eqz v1, :cond_66

    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_66
    .catchall {:try_start_5e .. :try_end_66} :catchall_91

    :cond_66
    :goto_66
    monitor-exit p0

    return-object v0

    :catch_68
    move-exception v0

    move-object v1, v0

    move-object v2, v8

    move-object v0, v8

    :goto_6c
    :try_start_6c
    const-string v3, "DatabaseManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "error "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/baidu/android/pushservice/h/a;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_88
    .catchall {:try_start_6c .. :try_end_88} :catchall_a1

    :try_start_88
    invoke-virtual {p0}, Lcom/baidu/android/pushservice/d/a;->c()V

    if-eqz v2, :cond_66

    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_90
    .catchall {:try_start_88 .. :try_end_90} :catchall_91

    goto :goto_66

    :catchall_91
    move-exception v0

    monitor-exit p0

    throw v0

    :catchall_94
    move-exception v0

    move-object v1, v8

    :goto_96
    :try_start_96
    invoke-virtual {p0}, Lcom/baidu/android/pushservice/d/a;->c()V

    if-eqz v1, :cond_9e

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_9e
    throw v0
    :try_end_9f
    .catchall {:try_start_96 .. :try_end_9f} :catchall_91

    :catchall_9f
    move-exception v0

    goto :goto_96

    :catchall_a1
    move-exception v0

    move-object v1, v2

    goto :goto_96

    :catch_a4
    move-exception v0

    move-object v2, v1

    move-object v1, v0

    move-object v0, v8

    goto :goto_6c

    :catch_a9
    move-exception v0

    move-object v9, v0

    move-object v0, v2

    move-object v2, v1

    move-object v1, v9

    goto :goto_6c

    :cond_af
    move-object v0, v8

    goto :goto_5e

    :cond_b1
    move-object v1, v8

    goto/16 :goto_2b
.end method

.method public declared-synchronized f()Ljava/util/ArrayList;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v8, 0x0

    monitor-enter p0

    :try_start_2
    invoke-virtual {p0}, Lcom/baidu/android/pushservice/d/a;->b()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_14

    if-eqz v8, :cond_e

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_e
    invoke-virtual {p0}, Lcom/baidu/android/pushservice/d/a;->c()V
    :try_end_11
    .catchall {:try_start_2 .. :try_end_11} :catchall_70

    move-object v0, v8

    :goto_12
    monitor-exit p0

    return-object v0

    :cond_14
    :try_start_14
    const-string v1, "subscribe"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "appid"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_26} :catch_80
    .catchall {:try_start_14 .. :try_end_26} :catchall_73

    move-result-object v1

    :try_start_27
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :goto_2c
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_67

    const-string v2, "appid"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_3f
    .catch Ljava/lang/Exception; {:try_start_27 .. :try_end_3f} :catch_40
    .catchall {:try_start_27 .. :try_end_3f} :catchall_7e

    goto :goto_2c

    :catch_40
    move-exception v0

    :goto_41
    :try_start_41
    const-string v2, "DatabaseManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "error "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/baidu/android/pushservice/h/a;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5d
    .catchall {:try_start_41 .. :try_end_5d} :catchall_7e

    if-eqz v1, :cond_62

    :try_start_5f
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_62
    invoke-virtual {p0}, Lcom/baidu/android/pushservice/d/a;->c()V

    move-object v0, v8

    goto :goto_12

    :cond_67
    if-eqz v1, :cond_6c

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_6c
    invoke-virtual {p0}, Lcom/baidu/android/pushservice/d/a;->c()V
    :try_end_6f
    .catchall {:try_start_5f .. :try_end_6f} :catchall_70

    goto :goto_12

    :catchall_70
    move-exception v0

    monitor-exit p0

    throw v0

    :catchall_73
    move-exception v0

    move-object v1, v8

    :goto_75
    if-eqz v1, :cond_7a

    :try_start_77
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_7a
    invoke-virtual {p0}, Lcom/baidu/android/pushservice/d/a;->c()V

    throw v0
    :try_end_7e
    .catchall {:try_start_77 .. :try_end_7e} :catchall_70

    :catchall_7e
    move-exception v0

    goto :goto_75

    :catch_80
    move-exception v0

    move-object v1, v8

    goto :goto_41
.end method

.method public declared-synchronized f(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .registers 13

    const/4 v8, 0x0

    monitor-enter p0

    const/4 v0, 0x3

    :try_start_3
    new-array v9, v0, [Ljava/lang/String;

    invoke-virtual {p0}, Lcom/baidu/android/pushservice/d/a;->b()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_17

    invoke-virtual {p0}, Lcom/baidu/android/pushservice/d/a;->c()V

    if-eqz v8, :cond_14

    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_de

    :cond_14
    move-object v0, v8

    :goto_15
    monitor-exit p0

    return-object v0

    :cond_17
    :try_start_17
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_77

    const-string v1, "subscribe"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "app_name"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "shortcut_by"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, "appid"

    aput-object v4, v2, v3

    const-string v3, "apikey=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    :goto_40
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_6d

    const/4 v0, 0x0

    const-string v1, "app_name"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v9, v0

    const/4 v0, 0x1

    const-string v1, "shortcut_by"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v9, v0

    const/4 v0, 0x2

    const-string v1, "appid"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v9, v0
    :try_end_6d
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_6d} :catch_ac
    .catchall {:try_start_17 .. :try_end_6d} :catchall_d4

    :cond_6d
    :try_start_6d
    invoke-virtual {p0}, Lcom/baidu/android/pushservice/d/a;->c()V

    if-eqz v8, :cond_75

    invoke-interface {v8}, Landroid/database/Cursor;->close()V
    :try_end_75
    .catchall {:try_start_6d .. :try_end_75} :catchall_de

    :cond_75
    move-object v0, v9

    goto :goto_15

    :cond_77
    :try_start_77
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_a1

    const-string v1, "subscribe"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "app_name"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "shortcut_by"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, "appid"

    aput-object v4, v2, v3

    const-string v3, "appid=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p2, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_9f
    .catch Ljava/lang/Exception; {:try_start_77 .. :try_end_9f} :catch_ac
    .catchall {:try_start_77 .. :try_end_9f} :catchall_d4

    move-result-object v8

    goto :goto_40

    :cond_a1
    :try_start_a1
    invoke-virtual {p0}, Lcom/baidu/android/pushservice/d/a;->c()V

    if-eqz v8, :cond_a9

    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_a9
    .catchall {:try_start_a1 .. :try_end_a9} :catchall_de

    :cond_a9
    move-object v0, v8

    goto/16 :goto_15

    :catch_ac
    move-exception v0

    :try_start_ad
    const-string v1, "DatabaseManager"

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

    invoke-static {v1, v0}, Lcom/baidu/android/pushservice/h/a;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_c9
    .catchall {:try_start_ad .. :try_end_c9} :catchall_d4

    :try_start_c9
    invoke-virtual {p0}, Lcom/baidu/android/pushservice/d/a;->c()V

    if-eqz v8, :cond_d1

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_d1
    move-object v0, v9

    goto/16 :goto_15

    :catchall_d4
    move-exception v0

    invoke-virtual {p0}, Lcom/baidu/android/pushservice/d/a;->c()V

    if-eqz v8, :cond_dd

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_dd
    throw v0
    :try_end_de
    .catchall {:try_start_c9 .. :try_end_de} :catchall_de

    :catchall_de
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized g(Ljava/lang/String;)Ljava/lang/String;
    .registers 11

    const/4 v8, 0x0

    monitor-enter p0

    :try_start_2
    invoke-virtual {p0}, Lcom/baidu/android/pushservice/d/a;->b()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    if-eqz v0, :cond_e

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_b
    .catchall {:try_start_2 .. :try_end_b} :catchall_3e

    move-result v1

    if-eqz v1, :cond_11

    :cond_e
    move-object v0, v8

    :cond_f
    :goto_f
    monitor-exit p0

    return-object v0

    :cond_11
    :try_start_11
    const-string v3, "channel=?"

    const/4 v1, 0x1

    new-array v4, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v4, v1

    const-string v1, "register"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "pkg_name"

    aput-object v6, v2, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_29} :catch_4b
    .catchall {:try_start_11 .. :try_end_29} :catchall_72

    move-result-object v1

    :try_start_2a
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_41

    const/4 v0, 0x0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_34
    .catch Ljava/lang/Exception; {:try_start_2a .. :try_end_34} :catch_7f
    .catchall {:try_start_2a .. :try_end_34} :catchall_7d

    move-result-object v0

    :try_start_35
    invoke-virtual {p0}, Lcom/baidu/android/pushservice/d/a;->c()V

    if-eqz v1, :cond_f

    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_3d
    .catchall {:try_start_35 .. :try_end_3d} :catchall_3e

    goto :goto_f

    :catchall_3e
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_41
    :try_start_41
    invoke-virtual {p0}, Lcom/baidu/android/pushservice/d/a;->c()V

    if-eqz v1, :cond_49

    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_49
    .catchall {:try_start_41 .. :try_end_49} :catchall_3e

    :cond_49
    :goto_49
    move-object v0, v8

    goto :goto_f

    :catch_4b
    move-exception v0

    move-object v1, v8

    :goto_4d
    :try_start_4d
    const-string v2, "DatabaseManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "error "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/baidu/android/pushservice/h/a;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_69
    .catchall {:try_start_4d .. :try_end_69} :catchall_7d

    :try_start_69
    invoke-virtual {p0}, Lcom/baidu/android/pushservice/d/a;->c()V

    if-eqz v1, :cond_49

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_49

    :catchall_72
    move-exception v0

    move-object v1, v8

    :goto_74
    invoke-virtual {p0}, Lcom/baidu/android/pushservice/d/a;->c()V

    if-eqz v1, :cond_7c

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_7c
    throw v0
    :try_end_7d
    .catchall {:try_start_69 .. :try_end_7d} :catchall_3e

    :catchall_7d
    move-exception v0

    goto :goto_74

    :catch_7f
    move-exception v0

    goto :goto_4d
.end method

.method public declared-synchronized g()Ljava/util/HashMap;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    const/4 v8, 0x0

    monitor-enter p0

    :try_start_2
    invoke-virtual {p0}, Lcom/baidu/android/pushservice/d/a;->b()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V
    :try_end_b
    .catchall {:try_start_2 .. :try_end_b} :catchall_89

    if-eqz v0, :cond_91

    :try_start_d
    const-string v1, "register"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "pkg_name"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "msg_switch"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "reg_time DESC"

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_25} :catch_8e
    .catchall {:try_start_d .. :try_end_25} :catchall_7e

    move-result-object v1

    :goto_26
    if-eqz v1, :cond_74

    :cond_28
    :goto_28
    :try_start_28
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_74

    const-string v0, "pkg_name"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    const-string v2, "msg_switch"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    if-nez v2, :cond_28

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v9, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4b
    .catch Ljava/lang/Exception; {:try_start_28 .. :try_end_4b} :catch_4c
    .catchall {:try_start_28 .. :try_end_4b} :catchall_8c

    goto :goto_28

    :catch_4c
    move-exception v0

    :goto_4d
    :try_start_4d
    const-string v2, "DatabaseManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "error "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/baidu/android/pushservice/h/a;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_69
    .catchall {:try_start_4d .. :try_end_69} :catchall_8c

    :try_start_69
    invoke-virtual {p0}, Lcom/baidu/android/pushservice/d/a;->c()V

    if-eqz v1, :cond_71

    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_71
    .catchall {:try_start_69 .. :try_end_71} :catchall_89

    :cond_71
    move-object v0, v8

    :goto_72
    monitor-exit p0

    return-object v0

    :cond_74
    :try_start_74
    invoke-virtual {p0}, Lcom/baidu/android/pushservice/d/a;->c()V

    if-eqz v1, :cond_7c

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_7c
    move-object v0, v9

    goto :goto_72

    :catchall_7e
    move-exception v0

    move-object v1, v8

    :goto_80
    invoke-virtual {p0}, Lcom/baidu/android/pushservice/d/a;->c()V

    if-eqz v1, :cond_88

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_88
    throw v0
    :try_end_89
    .catchall {:try_start_74 .. :try_end_89} :catchall_89

    :catchall_89
    move-exception v0

    monitor-exit p0

    throw v0

    :catchall_8c
    move-exception v0

    goto :goto_80

    :catch_8e
    move-exception v0

    move-object v1, v8

    goto :goto_4d

    :cond_91
    move-object v1, v8

    goto :goto_26
.end method

.method public declared-synchronized h(Ljava/lang/String;)I
    .registers 12

    const/4 v9, 0x0

    const/4 v8, -0x1

    monitor-enter p0

    :try_start_3
    invoke-virtual {p0}, Lcom/baidu/android/pushservice/d/a;->b()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_56

    move-result-object v0

    if-nez v0, :cond_c

    move v0, v8

    :cond_a
    :goto_a
    monitor-exit p0

    return v0

    :cond_c
    const/4 v1, 0x0

    :try_start_d
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_24

    const-string v0, "DatabaseManager"

    const-string v2, "getNewMsgNum pkgName can not be null"

    invoke-static {v0, v2}, Lcom/baidu/android/pushservice/h/a;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_1a} :catch_63
    .catchall {:try_start_d .. :try_end_1a} :catchall_8b

    :try_start_1a
    invoke-virtual {p0}, Lcom/baidu/android/pushservice/d/a;->c()V

    if-eqz v9, :cond_22

    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_22
    .catchall {:try_start_1a .. :try_end_22} :catchall_56

    :cond_22
    move v0, v8

    goto :goto_a

    :cond_24
    :try_start_24
    const-string v1, "register"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "msg_count"

    aput-object v4, v2, v3

    const-string v3, "pkg_name=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_3c
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_3c} :catch_63
    .catchall {:try_start_24 .. :try_end_3c} :catchall_8b

    move-result-object v1

    :try_start_3d
    const-string v0, "msg_count"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_59

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_4c
    .catch Ljava/lang/Exception; {:try_start_3d .. :try_end_4c} :catch_98
    .catchall {:try_start_3d .. :try_end_4c} :catchall_96

    move-result v0

    :try_start_4d
    invoke-virtual {p0}, Lcom/baidu/android/pushservice/d/a;->c()V

    if-eqz v1, :cond_a

    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_55
    .catchall {:try_start_4d .. :try_end_55} :catchall_56

    goto :goto_a

    :catchall_56
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_59
    :try_start_59
    invoke-virtual {p0}, Lcom/baidu/android/pushservice/d/a;->c()V

    if-eqz v1, :cond_61

    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_61
    .catchall {:try_start_59 .. :try_end_61} :catchall_56

    :cond_61
    move v0, v8

    goto :goto_a

    :catch_63
    move-exception v0

    move-object v1, v9

    :goto_65
    :try_start_65
    const-string v2, "DatabaseManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "error "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/baidu/android/pushservice/h/a;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_81
    .catchall {:try_start_65 .. :try_end_81} :catchall_96

    :try_start_81
    invoke-virtual {p0}, Lcom/baidu/android/pushservice/d/a;->c()V

    if-eqz v1, :cond_89

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_89
    move v0, v8

    goto :goto_a

    :catchall_8b
    move-exception v0

    move-object v1, v9

    :goto_8d
    invoke-virtual {p0}, Lcom/baidu/android/pushservice/d/a;->c()V

    if-eqz v1, :cond_95

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_95
    throw v0
    :try_end_96
    .catchall {:try_start_81 .. :try_end_96} :catchall_56

    :catchall_96
    move-exception v0

    goto :goto_8d

    :catch_98
    move-exception v0

    goto :goto_65
.end method

.method public declared-synchronized i(Ljava/lang/String;)Z
    .registers 10

    const/4 v0, 0x1

    const/4 v1, 0x0

    monitor-enter p0

    :try_start_3
    invoke-virtual {p0}, Lcom/baidu/android/pushservice/d/a;->b()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_1c

    move-result-object v2

    if-nez v2, :cond_b

    :goto_9
    monitor-exit p0

    return v1

    :cond_b
    :try_start_b
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1f

    const-string v0, "DatabaseManager"

    const-string v2, "clearNewMsgNum pkgName can not be null"

    invoke-static {v0, v2}, Lcom/baidu/android/pushservice/h/a;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_18} :catch_45
    .catchall {:try_start_b .. :try_end_18} :catchall_66

    :try_start_18
    invoke-virtual {p0}, Lcom/baidu/android/pushservice/d/a;->c()V
    :try_end_1b
    .catchall {:try_start_18 .. :try_end_1b} :catchall_1c

    goto :goto_9

    :catchall_1c
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_1f
    :try_start_1f
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    const-string v4, "msg_count"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v4, "register"

    const-string v5, "pkg_name=?"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    aput-object p1, v6, v7

    invoke-virtual {v2, v4, v3, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_3b
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_3b} :catch_45
    .catchall {:try_start_1f .. :try_end_3b} :catchall_66

    move-result v2

    if-lez v2, :cond_43

    :goto_3e
    :try_start_3e
    invoke-virtual {p0}, Lcom/baidu/android/pushservice/d/a;->c()V
    :try_end_41
    .catchall {:try_start_3e .. :try_end_41} :catchall_1c

    move v1, v0

    goto :goto_9

    :cond_43
    move v0, v1

    goto :goto_3e

    :catch_45
    move-exception v0

    :try_start_46
    const-string v2, "DatabaseManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "error "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/baidu/android/pushservice/h/a;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_62
    .catchall {:try_start_46 .. :try_end_62} :catchall_66

    :try_start_62
    invoke-virtual {p0}, Lcom/baidu/android/pushservice/d/a;->c()V

    goto :goto_9

    :catchall_66
    move-exception v0

    invoke-virtual {p0}, Lcom/baidu/android/pushservice/d/a;->c()V

    throw v0
    :try_end_6b
    .catchall {:try_start_62 .. :try_end_6b} :catchall_1c
.end method

.method public declared-synchronized j(Ljava/lang/String;)Ljava/util/HashMap;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    const/4 v8, 0x0

    monitor-enter p0

    :try_start_2
    invoke-virtual {p0}, Lcom/baidu/android/pushservice/d/a;->b()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V
    :try_end_b
    .catchall {:try_start_2 .. :try_end_b} :catchall_8f

    :try_start_b
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_73

    if-eqz v0, :cond_9c

    const-string v1, "blacklist"

    const/4 v2, 0x0

    const-string v3, "app_id = ? "

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_24} :catch_99
    .catchall {:try_start_b .. :try_end_24} :catchall_85

    move-result-object v0

    :goto_25
    if-eqz v0, :cond_7b

    :goto_27
    :try_start_27
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_7b

    const-string v1, "pkg_name"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    const-string v2, "type"

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v9, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_48
    .catch Ljava/lang/Exception; {:try_start_27 .. :try_end_48} :catch_49
    .catchall {:try_start_27 .. :try_end_48} :catchall_92

    goto :goto_27

    :catch_49
    move-exception v1

    move-object v10, v1

    move-object v1, v0

    move-object v0, v10

    :goto_4d
    :try_start_4d
    const-string v2, "DatabaseManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "error "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/baidu/android/pushservice/h/a;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_69
    .catchall {:try_start_4d .. :try_end_69} :catchall_96

    :try_start_69
    invoke-virtual {p0}, Lcom/baidu/android/pushservice/d/a;->c()V

    if-eqz v1, :cond_71

    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_71
    .catchall {:try_start_69 .. :try_end_71} :catchall_8f

    :cond_71
    :goto_71
    monitor-exit p0

    return-object v8

    :cond_73
    :try_start_73
    const-string v0, "DatabaseManager"

    const-string v1, "getBlackList appid can not be null"

    invoke-static {v0, v1}, Lcom/baidu/android/pushservice/h/a;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7a
    .catch Ljava/lang/Exception; {:try_start_73 .. :try_end_7a} :catch_99
    .catchall {:try_start_73 .. :try_end_7a} :catchall_85

    move-object v0, v8

    :cond_7b
    :try_start_7b
    invoke-virtual {p0}, Lcom/baidu/android/pushservice/d/a;->c()V

    if-eqz v0, :cond_83

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_83
    move-object v8, v9

    goto :goto_71

    :catchall_85
    move-exception v0

    :goto_86
    invoke-virtual {p0}, Lcom/baidu/android/pushservice/d/a;->c()V

    if-eqz v8, :cond_8e

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_8e
    throw v0
    :try_end_8f
    .catchall {:try_start_7b .. :try_end_8f} :catchall_8f

    :catchall_8f
    move-exception v0

    monitor-exit p0

    throw v0

    :catchall_92
    move-exception v1

    move-object v8, v0

    move-object v0, v1

    goto :goto_86

    :catchall_96
    move-exception v0

    move-object v8, v1

    goto :goto_86

    :catch_99
    move-exception v0

    move-object v1, v8

    goto :goto_4d

    :cond_9c
    move-object v0, v8

    goto :goto_25
.end method

.method public k(Ljava/lang/String;)Ljava/lang/String;
    .registers 12

    const/4 v9, 0x0

    invoke-virtual {p0}, Lcom/baidu/android/pushservice/d/a;->b()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    if-eqz v0, :cond_f

    if-eqz p1, :cond_f

    :try_start_9
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_c} :catch_94
    .catchall {:try_start_9 .. :try_end_c} :catchall_bc

    move-result v1

    if-eqz v1, :cond_18

    :cond_f
    if-eqz v9, :cond_14

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_14
    invoke-virtual {p0}, Lcom/baidu/android/pushservice/d/a;->c()V

    :goto_17
    return-object v9

    :cond_18
    :try_start_18
    const-string v1, "subscribe"

    const/4 v2, 0x0

    const-string v3, "appid=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_29} :catch_94
    .catchall {:try_start_18 .. :try_end_29} :catchall_bc

    move-result-object v8

    :try_start_2a
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_46

    const-string v0, "app_logo"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_39
    .catch Ljava/lang/Exception; {:try_start_2a .. :try_end_39} :catch_cd
    .catchall {:try_start_2a .. :try_end_39} :catchall_c7

    move-result-object v0

    move-object v1, v0

    move-object v0, v8

    :goto_3c
    if-eqz v0, :cond_41

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_41
    invoke-virtual {p0}, Lcom/baidu/android/pushservice/d/a;->c()V

    move-object v9, v1

    goto :goto_17

    :cond_46
    :try_start_46
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    const-string v1, "weak_subscribe"

    const/4 v2, 0x0

    const-string v3, "appid=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_6e

    const-string v0, "app_logo"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    move-object v0, v8

    goto :goto_3c

    :cond_6e
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    const-string v1, "app_info"

    const/4 v2, 0x0

    const-string v3, "appid=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_82
    .catch Ljava/lang/Exception; {:try_start_46 .. :try_end_82} :catch_cd
    .catchall {:try_start_46 .. :try_end_82} :catchall_c7

    move-result-object v0

    :try_start_83
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_d3

    const-string v1, "app_logo"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_92
    .catch Ljava/lang/Exception; {:try_start_83 .. :try_end_92} :catch_cf
    .catchall {:try_start_83 .. :try_end_92} :catchall_c9

    move-result-object v1

    goto :goto_3c

    :catch_94
    move-exception v0

    move-object v8, v9

    :goto_96
    :try_start_96
    const-string v1, "DatabaseManager"

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

    invoke-static {v1, v0}, Lcom/baidu/android/pushservice/h/a;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_b2
    .catchall {:try_start_96 .. :try_end_b2} :catchall_c7

    if-eqz v8, :cond_b7

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_b7
    invoke-virtual {p0}, Lcom/baidu/android/pushservice/d/a;->c()V

    goto/16 :goto_17

    :catchall_bc
    move-exception v0

    move-object v8, v9

    :goto_be
    if-eqz v8, :cond_c3

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_c3
    invoke-virtual {p0}, Lcom/baidu/android/pushservice/d/a;->c()V

    throw v0

    :catchall_c7
    move-exception v0

    goto :goto_be

    :catchall_c9
    move-exception v1

    move-object v8, v0

    move-object v0, v1

    goto :goto_be

    :catch_cd
    move-exception v0

    goto :goto_96

    :catch_cf
    move-exception v1

    move-object v8, v0

    move-object v0, v1

    goto :goto_96

    :cond_d3
    move-object v1, v9

    goto/16 :goto_3c
.end method

.method public declared-synchronized l(Ljava/lang/String;)Ljava/lang/String;
    .registers 12

    const/4 v8, 0x0

    monitor-enter p0

    :try_start_2
    invoke-virtual {p0}, Lcom/baidu/android/pushservice/d/a;->b()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const/4 v1, 0x0

    new-instance v9, Lorg/json/JSONArray;

    invoke-direct {v9}, Lorg/json/JSONArray;-><init>()V

    if-nez v0, :cond_19

    invoke-virtual {p0}, Lcom/baidu/android/pushservice/d/a;->c()V

    if-eqz v8, :cond_16

    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_16
    .catchall {:try_start_2 .. :try_end_16} :catchall_cf

    :cond_16
    move-object v0, v8

    :cond_17
    :goto_17
    monitor-exit p0

    return-object v0

    :cond_19
    if-eqz p1, :cond_a2

    :try_start_1b
    const-string v1, "blacklist"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "app_id"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "pkg_name"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, "type"

    aput-object v4, v2, v3

    const-string v3, "pkg_name=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_3d
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_3d} :catch_df
    .catchall {:try_start_1b .. :try_end_3d} :catchall_d2

    move-result-object v1

    :goto_3e
    :try_start_3e
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_c1

    const-string v0, "app_id"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v2, "pkg_name"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "type"

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    const-string v5, "appid"

    invoke-virtual {v4, v5, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "pkg_name"

    invoke-virtual {v4, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "msg_type"

    invoke-virtual {v4, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    invoke-virtual {v9, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_79
    .catch Ljava/lang/Exception; {:try_start_3e .. :try_end_79} :catch_7a
    .catchall {:try_start_3e .. :try_end_79} :catchall_dd

    goto :goto_3e

    :catch_7a
    move-exception v0

    :goto_7b
    :try_start_7b
    const-string v2, "DatabaseManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "error "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/baidu/android/pushservice/h/a;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_97
    .catchall {:try_start_7b .. :try_end_97} :catchall_dd

    :try_start_97
    invoke-virtual {p0}, Lcom/baidu/android/pushservice/d/a;->c()V

    if-eqz v1, :cond_9f

    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_9f
    .catchall {:try_start_97 .. :try_end_9f} :catchall_cf

    :cond_9f
    move-object v0, v8

    goto/16 :goto_17

    :cond_a2
    :try_start_a2
    const-string v1, "blacklist"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "app_id"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "pkg_name"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, "type"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_be
    .catch Ljava/lang/Exception; {:try_start_a2 .. :try_end_be} :catch_df
    .catchall {:try_start_a2 .. :try_end_be} :catchall_d2

    move-result-object v1

    goto/16 :goto_3e

    :cond_c1
    :try_start_c1
    invoke-virtual {v9}, Lorg/json/JSONArray;->toString()Ljava/lang/String;
    :try_end_c4
    .catch Ljava/lang/Exception; {:try_start_c1 .. :try_end_c4} :catch_7a
    .catchall {:try_start_c1 .. :try_end_c4} :catchall_dd

    move-result-object v0

    :try_start_c5
    invoke-virtual {p0}, Lcom/baidu/android/pushservice/d/a;->c()V

    if-eqz v1, :cond_17

    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_cd
    .catchall {:try_start_c5 .. :try_end_cd} :catchall_cf

    goto/16 :goto_17

    :catchall_cf
    move-exception v0

    monitor-exit p0

    throw v0

    :catchall_d2
    move-exception v0

    move-object v1, v8

    :goto_d4
    :try_start_d4
    invoke-virtual {p0}, Lcom/baidu/android/pushservice/d/a;->c()V

    if-eqz v1, :cond_dc

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_dc
    throw v0
    :try_end_dd
    .catchall {:try_start_d4 .. :try_end_dd} :catchall_cf

    :catchall_dd
    move-exception v0

    goto :goto_d4

    :catch_df
    move-exception v0

    move-object v1, v8

    goto :goto_7b
.end method
