.class public Lcom/ta/utdid2/core/persistent/PersistentConfiguration;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final KEY_TIMESTAMP:Ljava/lang/String; = "t"

.field private static final KEY_TIMESTAMP2:Ljava/lang/String; = "t2"


# instance fields
.field private mCanRead:Z

.field private mCanWrite:Z

.field private mConfigName:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mEditor:Landroid/content/SharedPreferences$Editor;

.field private mFolderName:Ljava/lang/String;

.field private mIsLessMode:Z

.field private mIsSafety:Z

.field private mMyEditor:Lcom/ta/utdid2/core/persistent/MySharedPreferences$MyEditor;

.field private mMySP:Lcom/ta/utdid2/core/persistent/MySharedPreferences;

.field private mSp:Landroid/content/SharedPreferences;

.field private mTxf:Lcom/ta/utdid2/core/persistent/TransactionXMLFile;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZZ)V
    .registers 16

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    const-string v0, ""

    iput-object v0, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mConfigName:Ljava/lang/String;

    .line 21
    const-string v0, ""

    iput-object v0, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mFolderName:Ljava/lang/String;

    .line 22
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mIsSafety:Z

    .line 23
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mCanRead:Z

    .line 24
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mCanWrite:Z

    .line 25
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mSp:Landroid/content/SharedPreferences;

    .line 26
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mMySP:Lcom/ta/utdid2/core/persistent/MySharedPreferences;

    .line 27
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mEditor:Landroid/content/SharedPreferences$Editor;

    .line 28
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mMyEditor:Lcom/ta/utdid2/core/persistent/MySharedPreferences$MyEditor;

    .line 29
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mContext:Landroid/content/Context;

    .line 30
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mTxf:Lcom/ta/utdid2/core/persistent/TransactionXMLFile;

    .line 31
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mIsLessMode:Z

    .line 35
    iput-boolean p4, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mIsSafety:Z

    .line 36
    iput-boolean p5, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mIsLessMode:Z

    .line 37
    iput-object p3, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mConfigName:Ljava/lang/String;

    .line 38
    iput-object p2, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mFolderName:Ljava/lang/String;

    .line 39
    iput-object p1, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mContext:Landroid/content/Context;

    .line 40
    const-wide/16 v0, 0x0

    .line 41
    const-wide/16 v4, 0x0

    .line 42
    if-eqz p1, :cond_4a

    .line 43
    const/4 v0, 0x0

    invoke-virtual {p1, p3, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mSp:Landroid/content/SharedPreferences;

    .line 45
    iget-object v0, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mSp:Landroid/content/SharedPreferences;

    const-string v1, "t"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 47
    :cond_4a
    const/4 v2, 0x0

    .line 49
    :try_start_4b
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;
    :try_end_4e
    .catch Ljava/lang/Exception; {:try_start_4b .. :try_end_4e} :catch_f4

    move-result-object v2

    .line 53
    :goto_4f
    invoke-static {v2}, Lcom/ta/utdid2/android/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_10a

    .line 54
    const-string v3, "mounted"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_fa

    .line 57
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mCanWrite:Z

    iput-boolean v2, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mCanRead:Z

    .line 66
    :goto_62
    iget-boolean v2, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mCanRead:Z

    if-nez v2, :cond_6a

    iget-boolean v2, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mCanWrite:Z

    if-eqz v2, :cond_1f3

    .line 67
    :cond_6a
    if-eqz p1, :cond_1f3

    .line 68
    invoke-static {p2}, Lcom/ta/utdid2/android/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1f3

    .line 69
    invoke-direct {p0, p2}, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->getTransactionXMLFile(Ljava/lang/String;)Lcom/ta/utdid2/core/persistent/TransactionXMLFile;

    move-result-object v2

    iput-object v2, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mTxf:Lcom/ta/utdid2/core/persistent/TransactionXMLFile;

    .line 70
    iget-object v2, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mTxf:Lcom/ta/utdid2/core/persistent/TransactionXMLFile;

    if-eqz v2, :cond_1f3

    .line 72
    :try_start_7c
    iget-object v2, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mTxf:Lcom/ta/utdid2/core/persistent/TransactionXMLFile;

    const/4 v3, 0x0

    invoke-virtual {v2, p3, v3}, Lcom/ta/utdid2/core/persistent/TransactionXMLFile;->getMySharedPreferences(Ljava/lang/String;I)Lcom/ta/utdid2/core/persistent/MySharedPreferences;

    move-result-object v2

    iput-object v2, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mMySP:Lcom/ta/utdid2/core/persistent/MySharedPreferences;

    .line 75
    iget-object v2, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mMySP:Lcom/ta/utdid2/core/persistent/MySharedPreferences;

    const-string v3, "t"

    const-wide/16 v6, 0x0

    invoke-interface {v2, v3, v6, v7}, Lcom/ta/utdid2/core/persistent/MySharedPreferences;->getLong(Ljava/lang/String;J)J
    :try_end_8e
    .catch Ljava/lang/Exception; {:try_start_7c .. :try_end_8e} :catch_1e0

    move-result-wide v2

    .line 76
    if-nez p5, :cond_13e

    .line 77
    cmp-long v4, v0, v2

    if-lez v4, :cond_111

    .line 79
    :try_start_95
    iget-object v4, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mSp:Landroid/content/SharedPreferences;

    iget-object v5, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mMySP:Lcom/ta/utdid2/core/persistent/MySharedPreferences;

    invoke-direct {p0, v4, v5}, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->copySPToMySP(Landroid/content/SharedPreferences;Lcom/ta/utdid2/core/persistent/MySharedPreferences;)V

    .line 80
    iget-object v4, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mTxf:Lcom/ta/utdid2/core/persistent/TransactionXMLFile;

    const/4 v5, 0x0

    invoke-virtual {v4, p3, v5}, Lcom/ta/utdid2/core/persistent/TransactionXMLFile;->getMySharedPreferences(Ljava/lang/String;I)Lcom/ta/utdid2/core/persistent/MySharedPreferences;

    move-result-object v4

    iput-object v4, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mMySP:Lcom/ta/utdid2/core/persistent/MySharedPreferences;
    :try_end_a5
    .catch Ljava/lang/Exception; {:try_start_95 .. :try_end_a5} :catch_1e6

    move-wide v4, v0

    move-wide v0, v2

    .line 131
    :goto_a7
    cmp-long v2, v4, v0

    if-nez v2, :cond_b7

    const-wide/16 v2, 0x0

    cmp-long v2, v4, v2

    if-nez v2, :cond_f3

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_f3

    .line 132
    :cond_b7
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 133
    iget-boolean v6, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mIsLessMode:Z

    if-eqz v6, :cond_cf

    iget-boolean v6, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mIsLessMode:Z

    if-eqz v6, :cond_f3

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-nez v4, :cond_f3

    const-wide/16 v4, 0x0

    cmp-long v0, v0, v4

    if-nez v0, :cond_f3

    .line 135
    :cond_cf
    iget-object v0, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mSp:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_e1

    .line 136
    iget-object v0, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mSp:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 137
    const-string v1, "t2"

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 138
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 141
    :cond_e1
    :try_start_e1
    iget-object v0, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mMySP:Lcom/ta/utdid2/core/persistent/MySharedPreferences;

    if-eqz v0, :cond_f3

    .line 142
    iget-object v0, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mMySP:Lcom/ta/utdid2/core/persistent/MySharedPreferences;

    invoke-interface {v0}, Lcom/ta/utdid2/core/persistent/MySharedPreferences;->edit()Lcom/ta/utdid2/core/persistent/MySharedPreferences$MyEditor;

    move-result-object v0

    .line 143
    const-string v1, "t2"

    invoke-interface {v0, v1, v2, v3}, Lcom/ta/utdid2/core/persistent/MySharedPreferences$MyEditor;->putLong(Ljava/lang/String;J)Lcom/ta/utdid2/core/persistent/MySharedPreferences$MyEditor;

    .line 144
    invoke-interface {v0}, Lcom/ta/utdid2/core/persistent/MySharedPreferences$MyEditor;->commit()Z
    :try_end_f3
    .catch Ljava/lang/Exception; {:try_start_e1 .. :try_end_f3} :catch_1dd

    .line 151
    :cond_f3
    :goto_f3
    return-void

    .line 50
    :catch_f4
    move-exception v3

    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_4f

    .line 58
    :cond_fa
    const-string v3, "mounted_ro"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10a

    .line 60
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mCanRead:Z

    .line 61
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mCanWrite:Z

    goto/16 :goto_62

    .line 63
    :cond_10a
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mCanWrite:Z

    iput-boolean v2, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mCanRead:Z

    goto/16 :goto_62

    .line 83
    :cond_111
    cmp-long v4, v0, v2

    if-gez v4, :cond_126

    .line 85
    :try_start_115
    iget-object v4, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mMySP:Lcom/ta/utdid2/core/persistent/MySharedPreferences;

    iget-object v5, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mSp:Landroid/content/SharedPreferences;

    invoke-direct {p0, v4, v5}, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->copyMySPToSP(Lcom/ta/utdid2/core/persistent/MySharedPreferences;Landroid/content/SharedPreferences;)V

    .line 86
    const/4 v4, 0x0

    invoke-virtual {p1, p3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    iput-object v4, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mSp:Landroid/content/SharedPreferences;

    move-wide v4, v0

    move-wide v0, v2

    goto :goto_a7

    .line 88
    :cond_126
    cmp-long v4, v0, v2

    if-nez v4, :cond_1ef

    .line 89
    iget-object v4, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mSp:Landroid/content/SharedPreferences;

    iget-object v5, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mMySP:Lcom/ta/utdid2/core/persistent/MySharedPreferences;

    invoke-direct {p0, v4, v5}, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->copySPToMySP(Landroid/content/SharedPreferences;Lcom/ta/utdid2/core/persistent/MySharedPreferences;)V

    .line 90
    iget-object v4, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mTxf:Lcom/ta/utdid2/core/persistent/TransactionXMLFile;

    const/4 v5, 0x0

    invoke-virtual {v4, p3, v5}, Lcom/ta/utdid2/core/persistent/TransactionXMLFile;->getMySharedPreferences(Ljava/lang/String;I)Lcom/ta/utdid2/core/persistent/MySharedPreferences;

    move-result-object v4

    iput-object v4, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mMySP:Lcom/ta/utdid2/core/persistent/MySharedPreferences;

    move-wide v4, v0

    move-wide v0, v2

    goto/16 :goto_a7

    .line 95
    :cond_13e
    iget-object v4, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mSp:Landroid/content/SharedPreferences;

    const-string v5, "t2"

    const-wide/16 v6, 0x0

    invoke-interface {v4, v5, v6, v7}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J
    :try_end_147
    .catch Ljava/lang/Exception; {:try_start_115 .. :try_end_147} :catch_1e6

    move-result-wide v4

    .line 96
    :try_start_148
    iget-object v0, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mMySP:Lcom/ta/utdid2/core/persistent/MySharedPreferences;

    const-string v1, "t2"

    const-wide/16 v6, 0x0

    invoke-interface {v0, v1, v6, v7}, Lcom/ta/utdid2/core/persistent/MySharedPreferences;->getLong(Ljava/lang/String;J)J
    :try_end_151
    .catch Ljava/lang/Exception; {:try_start_148 .. :try_end_151} :catch_1eb

    move-result-wide v0

    .line 97
    cmp-long v2, v4, v0

    if-gez v2, :cond_171

    const-wide/16 v2, 0x0

    cmp-long v2, v4, v2

    if-lez v2, :cond_171

    .line 99
    :try_start_15c
    iget-object v2, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mSp:Landroid/content/SharedPreferences;

    iget-object v3, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mMySP:Lcom/ta/utdid2/core/persistent/MySharedPreferences;

    invoke-direct {p0, v2, v3}, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->copySPToMySP(Landroid/content/SharedPreferences;Lcom/ta/utdid2/core/persistent/MySharedPreferences;)V

    .line 100
    iget-object v2, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mTxf:Lcom/ta/utdid2/core/persistent/TransactionXMLFile;

    const/4 v3, 0x0

    invoke-virtual {v2, p3, v3}, Lcom/ta/utdid2/core/persistent/TransactionXMLFile;->getMySharedPreferences(Ljava/lang/String;I)Lcom/ta/utdid2/core/persistent/MySharedPreferences;

    move-result-object v2

    iput-object v2, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mMySP:Lcom/ta/utdid2/core/persistent/MySharedPreferences;

    goto/16 :goto_a7

    :catch_16e
    move-exception v2

    goto/16 :goto_a7

    .line 103
    :cond_171
    cmp-long v2, v4, v0

    if-lez v2, :cond_18b

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_18b

    .line 105
    iget-object v2, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mMySP:Lcom/ta/utdid2/core/persistent/MySharedPreferences;

    iget-object v3, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mSp:Landroid/content/SharedPreferences;

    invoke-direct {p0, v2, v3}, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->copyMySPToSP(Lcom/ta/utdid2/core/persistent/MySharedPreferences;Landroid/content/SharedPreferences;)V

    .line 106
    const/4 v2, 0x0

    invoke-virtual {p1, p3, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    iput-object v2, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mSp:Landroid/content/SharedPreferences;

    goto/16 :goto_a7

    .line 108
    :cond_18b
    const-wide/16 v2, 0x0

    cmp-long v2, v4, v2

    if-nez v2, :cond_1a7

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_1a7

    .line 109
    iget-object v2, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mMySP:Lcom/ta/utdid2/core/persistent/MySharedPreferences;

    iget-object v3, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mSp:Landroid/content/SharedPreferences;

    invoke-direct {p0, v2, v3}, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->copyMySPToSP(Lcom/ta/utdid2/core/persistent/MySharedPreferences;Landroid/content/SharedPreferences;)V

    .line 110
    const/4 v2, 0x0

    invoke-virtual {p1, p3, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    iput-object v2, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mSp:Landroid/content/SharedPreferences;

    goto/16 :goto_a7

    .line 112
    :cond_1a7
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_1c5

    const-wide/16 v2, 0x0

    cmp-long v2, v4, v2

    if-lez v2, :cond_1c5

    .line 113
    iget-object v2, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mSp:Landroid/content/SharedPreferences;

    iget-object v3, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mMySP:Lcom/ta/utdid2/core/persistent/MySharedPreferences;

    invoke-direct {p0, v2, v3}, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->copySPToMySP(Landroid/content/SharedPreferences;Lcom/ta/utdid2/core/persistent/MySharedPreferences;)V

    .line 114
    iget-object v2, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mTxf:Lcom/ta/utdid2/core/persistent/TransactionXMLFile;

    const/4 v3, 0x0

    invoke-virtual {v2, p3, v3}, Lcom/ta/utdid2/core/persistent/TransactionXMLFile;->getMySharedPreferences(Ljava/lang/String;I)Lcom/ta/utdid2/core/persistent/MySharedPreferences;

    move-result-object v2

    iput-object v2, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mMySP:Lcom/ta/utdid2/core/persistent/MySharedPreferences;

    goto/16 :goto_a7

    .line 117
    :cond_1c5
    cmp-long v2, v4, v0

    if-nez v2, :cond_1d9

    .line 118
    iget-object v2, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mSp:Landroid/content/SharedPreferences;

    iget-object v3, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mMySP:Lcom/ta/utdid2/core/persistent/MySharedPreferences;

    invoke-direct {p0, v2, v3}, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->copySPToMySP(Landroid/content/SharedPreferences;Lcom/ta/utdid2/core/persistent/MySharedPreferences;)V

    .line 119
    iget-object v2, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mTxf:Lcom/ta/utdid2/core/persistent/TransactionXMLFile;

    const/4 v3, 0x0

    invoke-virtual {v2, p3, v3}, Lcom/ta/utdid2/core/persistent/TransactionXMLFile;->getMySharedPreferences(Ljava/lang/String;I)Lcom/ta/utdid2/core/persistent/MySharedPreferences;

    move-result-object v2

    iput-object v2, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mMySP:Lcom/ta/utdid2/core/persistent/MySharedPreferences;
    :try_end_1d9
    .catch Ljava/lang/Exception; {:try_start_15c .. :try_end_1d9} :catch_16e

    :cond_1d9
    move-wide v2, v4

    :goto_1da
    move-wide v4, v2

    .line 126
    goto/16 :goto_a7

    :catch_1dd
    move-exception v0

    goto/16 :goto_f3

    :catch_1e0
    move-exception v2

    move-wide v8, v4

    move-wide v4, v0

    move-wide v0, v8

    goto/16 :goto_a7

    :catch_1e6
    move-exception v4

    move-wide v4, v0

    move-wide v0, v2

    goto/16 :goto_a7

    :catch_1eb
    move-exception v0

    move-wide v0, v2

    goto/16 :goto_a7

    :cond_1ef
    move-wide v8, v2

    move-wide v2, v0

    move-wide v0, v8

    goto :goto_1da

    :cond_1f3
    move-wide v8, v4

    move-wide v4, v0

    move-wide v0, v8

    goto/16 :goto_a7
.end method

.method private checkSDCardXMLFile()Z
    .registers 2

    .prologue
    .line 232
    iget-object v0, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mMySP:Lcom/ta/utdid2/core/persistent/MySharedPreferences;

    if-eqz v0, :cond_10

    .line 233
    iget-object v0, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mMySP:Lcom/ta/utdid2/core/persistent/MySharedPreferences;

    invoke-interface {v0}, Lcom/ta/utdid2/core/persistent/MySharedPreferences;->checkFile()Z

    move-result v0

    .line 234
    if-nez v0, :cond_f

    .line 235
    invoke-virtual {p0}, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->commit()Z

    .line 239
    :cond_f
    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method

.method private copyMySPToSP(Lcom/ta/utdid2/core/persistent/MySharedPreferences;Landroid/content/SharedPreferences;)V
    .registers 9

    .prologue
    .line 204
    if-eqz p1, :cond_74

    if-eqz p2, :cond_74

    .line 205
    invoke-interface {p2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 206
    if-eqz v2, :cond_74

    .line 207
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    .line 208
    invoke-interface {p1}, Lcom/ta/utdid2/core/persistent/MySharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 209
    :cond_19
    :goto_19
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_71

    .line 210
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 211
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 212
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    .line 213
    instance-of v4, v0, Ljava/lang/String;

    if-eqz v4, :cond_39

    .line 214
    check-cast v0, Ljava/lang/String;

    invoke-interface {v2, v1, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_19

    .line 215
    :cond_39
    instance-of v4, v0, Ljava/lang/Integer;

    if-eqz v4, :cond_47

    .line 216
    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-interface {v2, v1, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    goto :goto_19

    .line 217
    :cond_47
    instance-of v4, v0, Ljava/lang/Long;

    if-eqz v4, :cond_55

    .line 218
    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-interface {v2, v1, v4, v5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    goto :goto_19

    .line 219
    :cond_55
    instance-of v4, v0, Ljava/lang/Float;

    if-eqz v4, :cond_63

    .line 220
    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-interface {v2, v1, v0}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    goto :goto_19

    .line 221
    :cond_63
    instance-of v4, v0, Ljava/lang/Boolean;

    if-eqz v4, :cond_19

    .line 222
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-interface {v2, v1, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    goto :goto_19

    .line 226
    :cond_71
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 229
    :cond_74
    return-void
.end method

.method private copySPToMySP(Landroid/content/SharedPreferences;Lcom/ta/utdid2/core/persistent/MySharedPreferences;)V
    .registers 9

    .prologue
    .line 176
    if-eqz p1, :cond_74

    if-eqz p2, :cond_74

    .line 177
    invoke-interface {p2}, Lcom/ta/utdid2/core/persistent/MySharedPreferences;->edit()Lcom/ta/utdid2/core/persistent/MySharedPreferences$MyEditor;

    move-result-object v2

    .line 178
    if-eqz v2, :cond_74

    .line 179
    invoke-interface {v2}, Lcom/ta/utdid2/core/persistent/MySharedPreferences$MyEditor;->clear()Lcom/ta/utdid2/core/persistent/MySharedPreferences$MyEditor;

    .line 180
    invoke-interface {p1}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 181
    :cond_19
    :goto_19
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_71

    .line 182
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 183
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 184
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    .line 185
    instance-of v4, v0, Ljava/lang/String;

    if-eqz v4, :cond_39

    .line 186
    check-cast v0, Ljava/lang/String;

    invoke-interface {v2, v1, v0}, Lcom/ta/utdid2/core/persistent/MySharedPreferences$MyEditor;->putString(Ljava/lang/String;Ljava/lang/String;)Lcom/ta/utdid2/core/persistent/MySharedPreferences$MyEditor;

    goto :goto_19

    .line 187
    :cond_39
    instance-of v4, v0, Ljava/lang/Integer;

    if-eqz v4, :cond_47

    .line 188
    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-interface {v2, v1, v0}, Lcom/ta/utdid2/core/persistent/MySharedPreferences$MyEditor;->putInt(Ljava/lang/String;I)Lcom/ta/utdid2/core/persistent/MySharedPreferences$MyEditor;

    goto :goto_19

    .line 189
    :cond_47
    instance-of v4, v0, Ljava/lang/Long;

    if-eqz v4, :cond_55

    .line 190
    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-interface {v2, v1, v4, v5}, Lcom/ta/utdid2/core/persistent/MySharedPreferences$MyEditor;->putLong(Ljava/lang/String;J)Lcom/ta/utdid2/core/persistent/MySharedPreferences$MyEditor;

    goto :goto_19

    .line 191
    :cond_55
    instance-of v4, v0, Ljava/lang/Float;

    if-eqz v4, :cond_63

    .line 192
    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-interface {v2, v1, v0}, Lcom/ta/utdid2/core/persistent/MySharedPreferences$MyEditor;->putFloat(Ljava/lang/String;F)Lcom/ta/utdid2/core/persistent/MySharedPreferences$MyEditor;

    goto :goto_19

    .line 193
    :cond_63
    instance-of v4, v0, Ljava/lang/Boolean;

    if-eqz v4, :cond_19

    .line 194
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-interface {v2, v1, v0}, Lcom/ta/utdid2/core/persistent/MySharedPreferences$MyEditor;->putBoolean(Ljava/lang/String;Z)Lcom/ta/utdid2/core/persistent/MySharedPreferences$MyEditor;

    goto :goto_19

    .line 198
    :cond_71
    invoke-interface {v2}, Lcom/ta/utdid2/core/persistent/MySharedPreferences$MyEditor;->commit()Z

    .line 201
    :cond_74
    return-void
.end method

.method private getRootFolder(Ljava/lang/String;)Ljava/io/File;
    .registers 7

    .prologue
    .line 163
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    .line 164
    if-eqz v1, :cond_2d

    .line 165
    new-instance v0, Ljava/io/File;

    const-string v2, "%s%s%s"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v3, v4

    const/4 v1, 0x1

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    aput-object v4, v3, v1

    const/4 v1, 0x2

    aput-object p1, v3, v1

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 167
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_2c

    .line 168
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 172
    :cond_2c
    :goto_2c
    return-object v0

    :cond_2d
    const/4 v0, 0x0

    goto :goto_2c
.end method

.method private getTransactionXMLFile(Ljava/lang/String;)Lcom/ta/utdid2/core/persistent/TransactionXMLFile;
    .registers 4

    .prologue
    .line 154
    invoke-direct {p0, p1}, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->getRootFolder(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 155
    if-eqz v0, :cond_14

    .line 156
    new-instance v1, Lcom/ta/utdid2/core/persistent/TransactionXMLFile;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/ta/utdid2/core/persistent/TransactionXMLFile;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mTxf:Lcom/ta/utdid2/core/persistent/TransactionXMLFile;

    .line 157
    iget-object v0, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mTxf:Lcom/ta/utdid2/core/persistent/TransactionXMLFile;

    .line 159
    :goto_13
    return-object v0

    :cond_14
    const/4 v0, 0x0

    goto :goto_13
.end method

.method private initEditor()V
    .registers 2

    .prologue
    .line 243
    iget-object v0, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mEditor:Landroid/content/SharedPreferences$Editor;

    if-nez v0, :cond_10

    iget-object v0, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mSp:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_10

    .line 244
    iget-object v0, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mSp:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iput-object v0, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mEditor:Landroid/content/SharedPreferences$Editor;

    .line 246
    :cond_10
    iget-boolean v0, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mCanWrite:Z

    if-eqz v0, :cond_24

    iget-object v0, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mMyEditor:Lcom/ta/utdid2/core/persistent/MySharedPreferences$MyEditor;

    if-nez v0, :cond_24

    iget-object v0, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mMySP:Lcom/ta/utdid2/core/persistent/MySharedPreferences;

    if-eqz v0, :cond_24

    .line 247
    iget-object v0, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mMySP:Lcom/ta/utdid2/core/persistent/MySharedPreferences;

    invoke-interface {v0}, Lcom/ta/utdid2/core/persistent/MySharedPreferences;->edit()Lcom/ta/utdid2/core/persistent/MySharedPreferences$MyEditor;

    move-result-object v0

    iput-object v0, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mMyEditor:Lcom/ta/utdid2/core/persistent/MySharedPreferences$MyEditor;

    .line 249
    :cond_24
    invoke-direct {p0}, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->checkSDCardXMLFile()Z

    .line 250
    return-void
.end method


# virtual methods
.method public clear()V
    .registers 5

    .prologue
    .line 355
    invoke-direct {p0}, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->initEditor()V

    .line 356
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 357
    iget-object v2, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mEditor:Landroid/content/SharedPreferences$Editor;

    if-eqz v2, :cond_17

    .line 358
    iget-object v2, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    .line 359
    iget-object v2, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mEditor:Landroid/content/SharedPreferences$Editor;

    const-string v3, "t"

    invoke-interface {v2, v3, v0, v1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 361
    :cond_17
    iget-object v2, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mMyEditor:Lcom/ta/utdid2/core/persistent/MySharedPreferences$MyEditor;

    if-eqz v2, :cond_27

    .line 362
    iget-object v2, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mMyEditor:Lcom/ta/utdid2/core/persistent/MySharedPreferences$MyEditor;

    invoke-interface {v2}, Lcom/ta/utdid2/core/persistent/MySharedPreferences$MyEditor;->clear()Lcom/ta/utdid2/core/persistent/MySharedPreferences$MyEditor;

    .line 363
    iget-object v2, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mMyEditor:Lcom/ta/utdid2/core/persistent/MySharedPreferences$MyEditor;

    const-string v3, "t"

    invoke-interface {v2, v3, v0, v1}, Lcom/ta/utdid2/core/persistent/MySharedPreferences$MyEditor;->putLong(Ljava/lang/String;J)Lcom/ta/utdid2/core/persistent/MySharedPreferences$MyEditor;

    .line 365
    :cond_27
    return-void
.end method

.method public commit()Z
    .registers 7

    .prologue
    const/4 v1, 0x0

    .line 368
    const/4 v0, 0x1

    .line 369
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 370
    iget-object v4, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mEditor:Landroid/content/SharedPreferences$Editor;

    if-eqz v4, :cond_22

    .line 371
    iget-boolean v4, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mIsLessMode:Z

    if-nez v4, :cond_19

    .line 372
    iget-object v4, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mSp:Landroid/content/SharedPreferences;

    if-eqz v4, :cond_19

    .line 373
    iget-object v4, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mEditor:Landroid/content/SharedPreferences$Editor;

    const-string v5, "t"

    invoke-interface {v4, v5, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 376
    :cond_19
    iget-object v2, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v2

    if-nez v2, :cond_22

    move v0, v1

    .line 380
    :cond_22
    iget-object v2, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mSp:Landroid/content/SharedPreferences;

    if-eqz v2, :cond_34

    .line 381
    iget-object v2, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mContext:Landroid/content/Context;

    if-eqz v2, :cond_34

    .line 382
    iget-object v2, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mConfigName:Ljava/lang/String;

    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    iput-object v2, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mSp:Landroid/content/SharedPreferences;

    .line 386
    :cond_34
    const/4 v2, 0x0

    .line 388
    :try_start_35
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;
    :try_end_38
    .catch Ljava/lang/Exception; {:try_start_35 .. :try_end_38} :catch_92

    move-result-object v2

    .line 392
    :goto_39
    invoke-static {v2}, Lcom/ta/utdid2/android/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_91

    .line 393
    const-string v3, "mounted"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6e

    .line 394
    iget-object v3, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mMySP:Lcom/ta/utdid2/core/persistent/MySharedPreferences;

    if-nez v3, :cond_9f

    .line 395
    iget-object v3, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mFolderName:Ljava/lang/String;

    invoke-direct {p0, v3}, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->getTransactionXMLFile(Ljava/lang/String;)Lcom/ta/utdid2/core/persistent/TransactionXMLFile;

    move-result-object v3

    .line 397
    if-eqz v3, :cond_6e

    .line 398
    iget-object v4, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mConfigName:Ljava/lang/String;

    invoke-virtual {v3, v4, v1}, Lcom/ta/utdid2/core/persistent/TransactionXMLFile;->getMySharedPreferences(Ljava/lang/String;I)Lcom/ta/utdid2/core/persistent/MySharedPreferences;

    move-result-object v1

    iput-object v1, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mMySP:Lcom/ta/utdid2/core/persistent/MySharedPreferences;

    .line 400
    iget-boolean v1, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mIsLessMode:Z

    if-nez v1, :cond_97

    .line 401
    iget-object v1, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mSp:Landroid/content/SharedPreferences;

    iget-object v3, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mMySP:Lcom/ta/utdid2/core/persistent/MySharedPreferences;

    invoke-direct {p0, v1, v3}, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->copySPToMySP(Landroid/content/SharedPreferences;Lcom/ta/utdid2/core/persistent/MySharedPreferences;)V

    .line 405
    :goto_66
    iget-object v1, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mMySP:Lcom/ta/utdid2/core/persistent/MySharedPreferences;

    invoke-interface {v1}, Lcom/ta/utdid2/core/persistent/MySharedPreferences;->edit()Lcom/ta/utdid2/core/persistent/MySharedPreferences$MyEditor;

    move-result-object v1

    iput-object v1, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mMyEditor:Lcom/ta/utdid2/core/persistent/MySharedPreferences$MyEditor;

    .line 415
    :cond_6e
    :goto_6e
    const-string v1, "mounted"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_82

    const-string v1, "mounted_ro"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_91

    iget-object v1, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mMySP:Lcom/ta/utdid2/core/persistent/MySharedPreferences;

    if-eqz v1, :cond_91

    .line 420
    :cond_82
    :try_start_82
    iget-object v1, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mTxf:Lcom/ta/utdid2/core/persistent/TransactionXMLFile;

    if-eqz v1, :cond_91

    .line 421
    iget-object v1, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mTxf:Lcom/ta/utdid2/core/persistent/TransactionXMLFile;

    iget-object v2, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mConfigName:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/ta/utdid2/core/persistent/TransactionXMLFile;->getMySharedPreferences(Ljava/lang/String;I)Lcom/ta/utdid2/core/persistent/MySharedPreferences;

    move-result-object v1

    iput-object v1, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mMySP:Lcom/ta/utdid2/core/persistent/MySharedPreferences;
    :try_end_91
    .catch Ljava/lang/Exception; {:try_start_82 .. :try_end_91} :catch_ad

    .line 429
    :cond_91
    :goto_91
    return v0

    .line 389
    :catch_92
    move-exception v3

    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_39

    .line 403
    :cond_97
    iget-object v1, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mMySP:Lcom/ta/utdid2/core/persistent/MySharedPreferences;

    iget-object v3, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mSp:Landroid/content/SharedPreferences;

    invoke-direct {p0, v1, v3}, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->copyMySPToSP(Lcom/ta/utdid2/core/persistent/MySharedPreferences;Landroid/content/SharedPreferences;)V

    goto :goto_66

    .line 408
    :cond_9f
    iget-object v3, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mMyEditor:Lcom/ta/utdid2/core/persistent/MySharedPreferences$MyEditor;

    if-eqz v3, :cond_6e

    .line 409
    iget-object v3, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mMyEditor:Lcom/ta/utdid2/core/persistent/MySharedPreferences$MyEditor;

    invoke-interface {v3}, Lcom/ta/utdid2/core/persistent/MySharedPreferences$MyEditor;->commit()Z

    move-result v3

    if-nez v3, :cond_6e

    move v0, v1

    .line 410
    goto :goto_6e

    :catch_ad
    move-exception v1

    goto :goto_91
.end method

.method public getAll()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "*>;"
        }
    .end annotation

    .prologue
    .line 487
    invoke-direct {p0}, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->checkSDCardXMLFile()Z

    .line 488
    iget-object v0, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mSp:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_e

    .line 489
    iget-object v0, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mSp:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v0

    .line 493
    :goto_d
    return-object v0

    .line 490
    :cond_e
    iget-object v0, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mMySP:Lcom/ta/utdid2/core/persistent/MySharedPreferences;

    if-eqz v0, :cond_19

    .line 491
    iget-object v0, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mMySP:Lcom/ta/utdid2/core/persistent/MySharedPreferences;

    invoke-interface {v0}, Lcom/ta/utdid2/core/persistent/MySharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v0

    goto :goto_d

    .line 493
    :cond_19
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public getBoolean(Ljava/lang/String;)Z
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 477
    invoke-direct {p0}, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->checkSDCardXMLFile()Z

    .line 478
    iget-object v1, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mSp:Landroid/content/SharedPreferences;

    if-eqz v1, :cond_f

    .line 479
    iget-object v1, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mSp:Landroid/content/SharedPreferences;

    invoke-interface {v1, p1, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 483
    :cond_e
    :goto_e
    return v0

    .line 480
    :cond_f
    iget-object v1, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mMySP:Lcom/ta/utdid2/core/persistent/MySharedPreferences;

    if-eqz v1, :cond_e

    .line 481
    iget-object v1, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mMySP:Lcom/ta/utdid2/core/persistent/MySharedPreferences;

    invoke-interface {v1, p1, v0}, Lcom/ta/utdid2/core/persistent/MySharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    goto :goto_e
.end method

.method public getFloat(Ljava/lang/String;)F
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 467
    invoke-direct {p0}, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->checkSDCardXMLFile()Z

    .line 468
    iget-object v1, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mSp:Landroid/content/SharedPreferences;

    if-eqz v1, :cond_f

    .line 469
    iget-object v1, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mSp:Landroid/content/SharedPreferences;

    invoke-interface {v1, p1, v0}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v0

    .line 473
    :cond_e
    :goto_e
    return v0

    .line 470
    :cond_f
    iget-object v1, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mMySP:Lcom/ta/utdid2/core/persistent/MySharedPreferences;

    if-eqz v1, :cond_e

    .line 471
    iget-object v1, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mMySP:Lcom/ta/utdid2/core/persistent/MySharedPreferences;

    invoke-interface {v1, p1, v0}, Lcom/ta/utdid2/core/persistent/MySharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v0

    goto :goto_e
.end method

.method public getInt(Ljava/lang/String;)I
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 447
    invoke-direct {p0}, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->checkSDCardXMLFile()Z

    .line 448
    iget-object v1, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mSp:Landroid/content/SharedPreferences;

    if-eqz v1, :cond_f

    .line 449
    iget-object v1, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mSp:Landroid/content/SharedPreferences;

    invoke-interface {v1, p1, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 453
    :cond_e
    :goto_e
    return v0

    .line 450
    :cond_f
    iget-object v1, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mMySP:Lcom/ta/utdid2/core/persistent/MySharedPreferences;

    if-eqz v1, :cond_e

    .line 451
    iget-object v1, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mMySP:Lcom/ta/utdid2/core/persistent/MySharedPreferences;

    invoke-interface {v1, p1, v0}, Lcom/ta/utdid2/core/persistent/MySharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    goto :goto_e
.end method

.method public getLong(Ljava/lang/String;)J
    .registers 5

    .prologue
    const-wide/16 v0, 0x0

    .line 457
    invoke-direct {p0}, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->checkSDCardXMLFile()Z

    .line 458
    iget-object v2, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mSp:Landroid/content/SharedPreferences;

    if-eqz v2, :cond_10

    .line 459
    iget-object v2, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mSp:Landroid/content/SharedPreferences;

    invoke-interface {v2, p1, v0, v1}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 463
    :cond_f
    :goto_f
    return-wide v0

    .line 460
    :cond_10
    iget-object v2, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mMySP:Lcom/ta/utdid2/core/persistent/MySharedPreferences;

    if-eqz v2, :cond_f

    .line 461
    iget-object v2, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mMySP:Lcom/ta/utdid2/core/persistent/MySharedPreferences;

    invoke-interface {v2, p1, v0, v1}, Lcom/ta/utdid2/core/persistent/MySharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    goto :goto_f
.end method

.method public getString(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .prologue
    .line 433
    invoke-direct {p0}, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->checkSDCardXMLFile()Z

    .line 434
    iget-object v0, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mSp:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_16

    .line 435
    iget-object v0, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mSp:Landroid/content/SharedPreferences;

    const-string v1, ""

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 436
    invoke-static {v0}, Lcom/ta/utdid2/android/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_16

    .line 443
    :goto_15
    return-object v0

    .line 440
    :cond_16
    iget-object v0, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mMySP:Lcom/ta/utdid2/core/persistent/MySharedPreferences;

    if-eqz v0, :cond_23

    .line 441
    iget-object v0, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mMySP:Lcom/ta/utdid2/core/persistent/MySharedPreferences;

    const-string v1, ""

    invoke-interface {v0, p1, v1}, Lcom/ta/utdid2/core/persistent/MySharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_15

    .line 443
    :cond_23
    const-string v0, ""

    goto :goto_15
.end method

.method public putBoolean(Ljava/lang/String;Z)V
    .registers 4

    .prologue
    .line 277
    invoke-static {p1}, Lcom/ta/utdid2/android/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_23

    const-string v0, "t"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_23

    .line 278
    invoke-direct {p0}, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->initEditor()V

    .line 279
    iget-object v0, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mEditor:Landroid/content/SharedPreferences$Editor;

    if-eqz v0, :cond_1a

    .line 280
    iget-object v0, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 282
    :cond_1a
    iget-object v0, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mMyEditor:Lcom/ta/utdid2/core/persistent/MySharedPreferences$MyEditor;

    if-eqz v0, :cond_23

    .line 283
    iget-object v0, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mMyEditor:Lcom/ta/utdid2/core/persistent/MySharedPreferences$MyEditor;

    invoke-interface {v0, p1, p2}, Lcom/ta/utdid2/core/persistent/MySharedPreferences$MyEditor;->putBoolean(Ljava/lang/String;Z)Lcom/ta/utdid2/core/persistent/MySharedPreferences$MyEditor;

    .line 286
    :cond_23
    return-void
.end method

.method public putFloat(Ljava/lang/String;F)V
    .registers 4

    .prologue
    .line 289
    invoke-static {p1}, Lcom/ta/utdid2/android/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_23

    const-string v0, "t"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_23

    .line 290
    invoke-direct {p0}, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->initEditor()V

    .line 291
    iget-object v0, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mEditor:Landroid/content/SharedPreferences$Editor;

    if-eqz v0, :cond_1a

    .line 292
    iget-object v0, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    .line 294
    :cond_1a
    iget-object v0, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mMyEditor:Lcom/ta/utdid2/core/persistent/MySharedPreferences$MyEditor;

    if-eqz v0, :cond_23

    .line 295
    iget-object v0, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mMyEditor:Lcom/ta/utdid2/core/persistent/MySharedPreferences$MyEditor;

    invoke-interface {v0, p1, p2}, Lcom/ta/utdid2/core/persistent/MySharedPreferences$MyEditor;->putFloat(Ljava/lang/String;F)Lcom/ta/utdid2/core/persistent/MySharedPreferences$MyEditor;

    .line 298
    :cond_23
    return-void
.end method

.method public putInt(Ljava/lang/String;I)V
    .registers 4

    .prologue
    .line 253
    invoke-static {p1}, Lcom/ta/utdid2/android/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_23

    const-string v0, "t"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_23

    .line 254
    invoke-direct {p0}, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->initEditor()V

    .line 255
    iget-object v0, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mEditor:Landroid/content/SharedPreferences$Editor;

    if-eqz v0, :cond_1a

    .line 256
    iget-object v0, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 258
    :cond_1a
    iget-object v0, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mMyEditor:Lcom/ta/utdid2/core/persistent/MySharedPreferences$MyEditor;

    if-eqz v0, :cond_23

    .line 259
    iget-object v0, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mMyEditor:Lcom/ta/utdid2/core/persistent/MySharedPreferences$MyEditor;

    invoke-interface {v0, p1, p2}, Lcom/ta/utdid2/core/persistent/MySharedPreferences$MyEditor;->putInt(Ljava/lang/String;I)Lcom/ta/utdid2/core/persistent/MySharedPreferences$MyEditor;

    .line 262
    :cond_23
    return-void
.end method

.method public putLong(Ljava/lang/String;J)V
    .registers 6

    .prologue
    .line 265
    invoke-static {p1}, Lcom/ta/utdid2/android/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_23

    const-string v0, "t"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_23

    .line 266
    invoke-direct {p0}, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->initEditor()V

    .line 267
    iget-object v0, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mEditor:Landroid/content/SharedPreferences$Editor;

    if-eqz v0, :cond_1a

    .line 268
    iget-object v0, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0, p1, p2, p3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 270
    :cond_1a
    iget-object v0, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mMyEditor:Lcom/ta/utdid2/core/persistent/MySharedPreferences$MyEditor;

    if-eqz v0, :cond_23

    .line 271
    iget-object v0, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mMyEditor:Lcom/ta/utdid2/core/persistent/MySharedPreferences$MyEditor;

    invoke-interface {v0, p1, p2, p3}, Lcom/ta/utdid2/core/persistent/MySharedPreferences$MyEditor;->putLong(Ljava/lang/String;J)Lcom/ta/utdid2/core/persistent/MySharedPreferences$MyEditor;

    .line 274
    :cond_23
    return-void
.end method

.method public putString(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 301
    invoke-static {p1}, Lcom/ta/utdid2/android/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_23

    const-string v0, "t"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_23

    .line 302
    invoke-direct {p0}, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->initEditor()V

    .line 303
    iget-object v0, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mEditor:Landroid/content/SharedPreferences$Editor;

    if-eqz v0, :cond_1a

    .line 304
    iget-object v0, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 306
    :cond_1a
    iget-object v0, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mMyEditor:Lcom/ta/utdid2/core/persistent/MySharedPreferences$MyEditor;

    if-eqz v0, :cond_23

    .line 307
    iget-object v0, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mMyEditor:Lcom/ta/utdid2/core/persistent/MySharedPreferences$MyEditor;

    invoke-interface {v0, p1, p2}, Lcom/ta/utdid2/core/persistent/MySharedPreferences$MyEditor;->putString(Ljava/lang/String;Ljava/lang/String;)Lcom/ta/utdid2/core/persistent/MySharedPreferences$MyEditor;

    .line 310
    :cond_23
    return-void
.end method

.method public reload()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 325
    iget-object v0, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mSp:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_13

    .line 326
    iget-object v0, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_13

    .line 327
    iget-object v0, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mConfigName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mSp:Landroid/content/SharedPreferences;

    .line 331
    :cond_13
    const/4 v0, 0x0

    .line 333
    :try_start_14
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_17} :catch_42

    move-result-object v0

    .line 337
    :goto_18
    invoke-static {v0}, Lcom/ta/utdid2/android/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_41

    .line 338
    const-string v1, "mounted"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_32

    const-string v1, "mounted_ro"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_41

    iget-object v0, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mMySP:Lcom/ta/utdid2/core/persistent/MySharedPreferences;

    if-eqz v0, :cond_41

    .line 343
    :cond_32
    :try_start_32
    iget-object v0, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mTxf:Lcom/ta/utdid2/core/persistent/TransactionXMLFile;

    if-eqz v0, :cond_41

    .line 344
    iget-object v0, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mTxf:Lcom/ta/utdid2/core/persistent/TransactionXMLFile;

    iget-object v1, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mConfigName:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/ta/utdid2/core/persistent/TransactionXMLFile;->getMySharedPreferences(Ljava/lang/String;I)Lcom/ta/utdid2/core/persistent/MySharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mMySP:Lcom/ta/utdid2/core/persistent/MySharedPreferences;
    :try_end_41
    .catch Ljava/lang/Exception; {:try_start_32 .. :try_end_41} :catch_47

    .line 352
    :cond_41
    :goto_41
    return-void

    .line 334
    :catch_42
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_18

    :catch_47
    move-exception v0

    goto :goto_41
.end method

.method public remove(Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 313
    invoke-static {p1}, Lcom/ta/utdid2/android/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_23

    const-string v0, "t"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_23

    .line 314
    invoke-direct {p0}, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->initEditor()V

    .line 315
    iget-object v0, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mEditor:Landroid/content/SharedPreferences$Editor;

    if-eqz v0, :cond_1a

    .line 316
    iget-object v0, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0, p1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 318
    :cond_1a
    iget-object v0, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mMyEditor:Lcom/ta/utdid2/core/persistent/MySharedPreferences$MyEditor;

    if-eqz v0, :cond_23

    .line 319
    iget-object v0, p0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->mMyEditor:Lcom/ta/utdid2/core/persistent/MySharedPreferences$MyEditor;

    invoke-interface {v0, p1}, Lcom/ta/utdid2/core/persistent/MySharedPreferences$MyEditor;->remove(Ljava/lang/String;)Lcom/ta/utdid2/core/persistent/MySharedPreferences$MyEditor;

    .line 322
    :cond_23
    return-void
.end method
