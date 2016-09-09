.class public Lcom/bestpay/db/BestPayDao;
.super Ljava/lang/Object;
.source "BestPayDao.java"


# static fields
.field public static final COUNT:Ljava/lang/String; = "count(0)"

.field public static final FIELD_DT:Ljava/lang/String; = "dt"

.field public static final FIELD_KEY_INDEX:Ljava/lang/String; = "key_index"

.field public static final FIELD_KEY_TID:Ljava/lang/String; = "key_tid"

.field public static final FIELD_TID:Ljava/lang/String; = "tid"

.field public static final TABLE_NAME:Ljava/lang/String; = "account"

.field private static bestPayDao:Lcom/bestpay/db/BestPayDao;


# instance fields
.field private mHelper:Lcom/bestpay/db/BestPaySqliteHelper;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    invoke-static {p1}, Lcom/bestpay/db/BestPaySqliteHelper;->getInstance(Landroid/content/Context;)Lcom/bestpay/db/BestPaySqliteHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/bestpay/db/BestPayDao;->mHelper:Lcom/bestpay/db/BestPaySqliteHelper;

    .line 33
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/bestpay/db/BestPayDao;
    .registers 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 25
    sget-object v0, Lcom/bestpay/db/BestPayDao;->bestPayDao:Lcom/bestpay/db/BestPayDao;

    if-nez v0, :cond_b

    .line 26
    new-instance v0, Lcom/bestpay/db/BestPayDao;

    invoke-direct {v0, p0}, Lcom/bestpay/db/BestPayDao;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/bestpay/db/BestPayDao;->bestPayDao:Lcom/bestpay/db/BestPayDao;

    .line 28
    :cond_b
    sget-object v0, Lcom/bestpay/db/BestPayDao;->bestPayDao:Lcom/bestpay/db/BestPayDao;

    return-object v0
.end method


# virtual methods
.method public getLastAccount()Lcom/bestpay/db/AccountInfo;
    .registers 11

    .prologue
    .line 70
    const/4 v8, 0x0

    .line 71
    .local v8, "info":Lcom/bestpay/db/AccountInfo;
    iget-object v0, p0, Lcom/bestpay/db/BestPayDao;->mHelper:Lcom/bestpay/db/BestPaySqliteHelper;

    invoke-virtual {v0}, Lcom/bestpay/db/BestPaySqliteHelper;->open()V

    .line 72
    const/4 v6, 0x0

    .line 74
    .local v6, "cursor":Landroid/database/Cursor;
    :try_start_7
    iget-object v0, p0, Lcom/bestpay/db/BestPayDao;->mHelper:Lcom/bestpay/db/BestPaySqliteHelper;

    const-string v1, "account"

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "tid"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    .line 75
    const-string v4, "key_index"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, "key_tid"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const-string v4, "dt"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-string v5, "dt desc limit 0,1"

    .line 74
    invoke-virtual/range {v0 .. v5}, Lcom/bestpay/db/BestPaySqliteHelper;->findAll(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 77
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_5b

    .line 78
    new-instance v9, Lcom/bestpay/db/AccountInfo;

    invoke-direct {v9}, Lcom/bestpay/db/AccountInfo;-><init>()V
    :try_end_35
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_35} :catch_61
    .catchall {:try_start_7 .. :try_end_35} :catchall_6b

    .line 79
    .end local v8    # "info":Lcom/bestpay/db/AccountInfo;
    .local v9, "info":Lcom/bestpay/db/AccountInfo;
    const/4 v0, 0x0

    :try_start_36
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Lcom/bestpay/db/AccountInfo;->setTid(Ljava/lang/String;)V

    .line 80
    const/4 v0, 0x1

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Lcom/bestpay/db/AccountInfo;->setKey_index(Ljava/lang/String;)V

    .line 81
    const/4 v0, 0x2

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Lcom/bestpay/db/AccountInfo;->setKey_tid(Ljava/lang/String;)V

    .line 82
    new-instance v0, Ljava/util/Date;

    const/4 v1, 0x3

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v9, v0}, Lcom/bestpay/db/AccountInfo;->setDt(Ljava/util/Date;)V
    :try_end_5a
    .catch Ljava/lang/Exception; {:try_start_36 .. :try_end_5a} :catch_75
    .catchall {:try_start_36 .. :try_end_5a} :catchall_72

    move-object v8, v9

    .line 87
    .end local v9    # "info":Lcom/bestpay/db/AccountInfo;
    .restart local v8    # "info":Lcom/bestpay/db/AccountInfo;
    :cond_5b
    if-eqz v6, :cond_60

    .line 88
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 91
    :cond_60
    :goto_60
    return-object v8

    .line 84
    :catch_61
    move-exception v7

    .line 85
    .local v7, "e":Ljava/lang/Exception;
    :goto_62
    :try_start_62
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_65
    .catchall {:try_start_62 .. :try_end_65} :catchall_6b

    .line 87
    if-eqz v6, :cond_60

    .line 88
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_60

    .line 86
    .end local v7    # "e":Ljava/lang/Exception;
    :catchall_6b
    move-exception v0

    .line 87
    :goto_6c
    if-eqz v6, :cond_71

    .line 88
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 90
    :cond_71
    throw v0

    .line 86
    .end local v8    # "info":Lcom/bestpay/db/AccountInfo;
    .restart local v9    # "info":Lcom/bestpay/db/AccountInfo;
    :catchall_72
    move-exception v0

    move-object v8, v9

    .end local v9    # "info":Lcom/bestpay/db/AccountInfo;
    .restart local v8    # "info":Lcom/bestpay/db/AccountInfo;
    goto :goto_6c

    .line 84
    .end local v8    # "info":Lcom/bestpay/db/AccountInfo;
    .restart local v9    # "info":Lcom/bestpay/db/AccountInfo;
    :catch_75
    move-exception v7

    move-object v8, v9

    .end local v9    # "info":Lcom/bestpay/db/AccountInfo;
    .restart local v8    # "info":Lcom/bestpay/db/AccountInfo;
    goto :goto_62
.end method

.method public uptOrInsert(Lcom/bestpay/db/AccountInfo;)V
    .registers 11
    .param p1, "info"    # Lcom/bestpay/db/AccountInfo;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/bestpay/db/BestPayDao;->mHelper:Lcom/bestpay/db/BestPaySqliteHelper;

    invoke-virtual {v0}, Lcom/bestpay/db/BestPaySqliteHelper;->open()V

    .line 44
    :try_start_5
    new-instance v8, Landroid/content/ContentValues;

    invoke-direct {v8}, Landroid/content/ContentValues;-><init>()V

    .line 45
    .local v8, "values":Landroid/content/ContentValues;
    iget-object v0, p0, Lcom/bestpay/db/BestPayDao;->mHelper:Lcom/bestpay/db/BestPaySqliteHelper;

    const-string v1, "account"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "count(0)"

    aput-object v4, v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "tid="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/bestpay/db/AccountInfo;->getTid()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/bestpay/db/BestPaySqliteHelper;->findAll(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 46
    .local v6, "cursor":Landroid/database/Cursor;
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_74

    .line 47
    const-string v0, "key_index"

    invoke-virtual {p1}, Lcom/bestpay/db/AccountInfo;->getKey_index()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    const-string v0, "key_tid"

    invoke-virtual {p1}, Lcom/bestpay/db/AccountInfo;->getKey_tid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    const-string v0, "dt"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v8, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 50
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-lez v0, :cond_78

    .line 51
    iget-object v0, p0, Lcom/bestpay/db/BestPayDao;->mHelper:Lcom/bestpay/db/BestPaySqliteHelper;

    const-string v1, "account"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "tid"

    aput-object v4, v2, v3

    .line 52
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {p1}, Lcom/bestpay/db/AccountInfo;->getTid()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    .line 51
    invoke-virtual {v0, v1, v2, v3, v8}, Lcom/bestpay/db/BestPaySqliteHelper;->update(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Z

    .line 58
    :cond_74
    :goto_74
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 62
    .end local v6    # "cursor":Landroid/database/Cursor;
    .end local v8    # "values":Landroid/content/ContentValues;
    :goto_77
    return-void

    .line 54
    .restart local v6    # "cursor":Landroid/database/Cursor;
    .restart local v8    # "values":Landroid/content/ContentValues;
    :cond_78
    const-string v0, "tid"

    invoke-virtual {p1}, Lcom/bestpay/db/AccountInfo;->getTid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    iget-object v0, p0, Lcom/bestpay/db/BestPayDao;->mHelper:Lcom/bestpay/db/BestPaySqliteHelper;

    const-string v1, "account"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v8}, Lcom/bestpay/db/BestPaySqliteHelper;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_89
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_89} :catch_8a

    goto :goto_74

    .line 59
    .end local v6    # "cursor":Landroid/database/Cursor;
    .end local v8    # "values":Landroid/content/ContentValues;
    :catch_8a
    move-exception v7

    .line 60
    .local v7, "e":Ljava/lang/Exception;
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_77
.end method
