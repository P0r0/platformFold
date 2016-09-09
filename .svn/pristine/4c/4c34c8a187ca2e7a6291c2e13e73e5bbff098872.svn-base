.class public Lcom/baidu/mtjstatsdk/BasicStoreToolsBase;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Ljava/lang/String;

.field private b:Landroid/content/SharedPreferences;

.field private c:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    const-string v0, "__Baidu_Stat_SDK_SendRem"

    iput-object v0, p0, Lcom/baidu/mtjstatsdk/BasicStoreToolsBase;->a:Ljava/lang/String;

    return-void
.end method

.method private a(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .registers 4

    .prologue
    .line 22
    iget-object v0, p0, Lcom/baidu/mtjstatsdk/BasicStoreToolsBase;->b:Landroid/content/SharedPreferences;

    if-nez v0, :cond_d

    .line 23
    const-string v0, "__Baidu_Stat_SDK_SendRem"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/mtjstatsdk/BasicStoreToolsBase;->b:Landroid/content/SharedPreferences;

    .line 26
    :cond_d
    iget-object v0, p0, Lcom/baidu/mtjstatsdk/BasicStoreToolsBase;->b:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method private b(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .registers 3

    .prologue
    .line 30
    iget-object v0, p0, Lcom/baidu/mtjstatsdk/BasicStoreToolsBase;->c:Landroid/content/SharedPreferences;

    if-nez v0, :cond_a

    .line 31
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/mtjstatsdk/BasicStoreToolsBase;->c:Landroid/content/SharedPreferences;

    .line 34
    :cond_a
    iget-object v0, p0, Lcom/baidu/mtjstatsdk/BasicStoreToolsBase;->c:Landroid/content/SharedPreferences;

    return-object v0
.end method


# virtual methods
.method public getBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z
    .registers 5

    .prologue
    .line 75
    invoke-direct {p0, p1}, Lcom/baidu/mtjstatsdk/BasicStoreToolsBase;->a(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, p2, p3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getInt(Landroid/content/Context;Ljava/lang/String;I)I
    .registers 5

    .prologue
    .line 83
    invoke-direct {p0, p1}, Lcom/baidu/mtjstatsdk/BasicStoreToolsBase;->a(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, p2, p3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getLong(Landroid/content/Context;Ljava/lang/String;J)J
    .registers 8

    .prologue
    .line 91
    invoke-direct {p0, p1}, Lcom/baidu/mtjstatsdk/BasicStoreToolsBase;->a(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, p2, p3, p4}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getSharedBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z
    .registers 5

    .prologue
    .line 63
    invoke-direct {p0, p1}, Lcom/baidu/mtjstatsdk/BasicStoreToolsBase;->b(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, p2, p3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getSharedInt(Landroid/content/Context;Ljava/lang/String;I)I
    .registers 5

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lcom/baidu/mtjstatsdk/BasicStoreToolsBase;->b(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, p2, p3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getSharedLong(Landroid/content/Context;Ljava/lang/String;J)J
    .registers 8

    .prologue
    .line 54
    invoke-direct {p0, p1}, Lcom/baidu/mtjstatsdk/BasicStoreToolsBase;->b(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, p2, p3, p4}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getSharedString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lcom/baidu/mtjstatsdk/BasicStoreToolsBase;->b(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, p2, p3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    .prologue
    .line 99
    invoke-direct {p0, p1}, Lcom/baidu/mtjstatsdk/BasicStoreToolsBase;->a(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, p2, p3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public putBoolean(Landroid/content/Context;Ljava/lang/String;Z)V
    .registers 5

    .prologue
    .line 79
    invoke-direct {p0, p1}, Lcom/baidu/mtjstatsdk/BasicStoreToolsBase;->a(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p2, p3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 80
    return-void
.end method

.method public putInt(Landroid/content/Context;Ljava/lang/String;I)V
    .registers 5

    .prologue
    .line 87
    invoke-direct {p0, p1}, Lcom/baidu/mtjstatsdk/BasicStoreToolsBase;->a(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p2, p3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 88
    return-void
.end method

.method public putLong(Landroid/content/Context;Ljava/lang/String;J)V
    .registers 6

    .prologue
    .line 95
    invoke-direct {p0, p1}, Lcom/baidu/mtjstatsdk/BasicStoreToolsBase;->a(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p2, p3, p4}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 96
    return-void
.end method

.method public putSharedBoolean(Landroid/content/Context;Ljava/lang/String;Z)V
    .registers 5

    .prologue
    .line 67
    invoke-direct {p0, p1}, Lcom/baidu/mtjstatsdk/BasicStoreToolsBase;->b(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p2, p3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 68
    return-void
.end method

.method public putSharedInt(Landroid/content/Context;Ljava/lang/String;I)V
    .registers 5

    .prologue
    .line 50
    invoke-direct {p0, p1}, Lcom/baidu/mtjstatsdk/BasicStoreToolsBase;->b(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p2, p3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 51
    return-void
.end method

.method public putSharedLong(Landroid/content/Context;Ljava/lang/String;J)V
    .registers 6

    .prologue
    .line 58
    invoke-direct {p0, p1}, Lcom/baidu/mtjstatsdk/BasicStoreToolsBase;->b(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p2, p3, p4}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 59
    return-void
.end method

.method public putSharedString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .prologue
    .line 42
    invoke-direct {p0, p1}, Lcom/baidu/mtjstatsdk/BasicStoreToolsBase;->b(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p2, p3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 43
    return-void
.end method

.method public putString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .prologue
    .line 103
    invoke-direct {p0, p1}, Lcom/baidu/mtjstatsdk/BasicStoreToolsBase;->a(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p2, p3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 104
    return-void
.end method

.method public removeShare(Landroid/content/Context;Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 71
    invoke-direct {p0, p1}, Lcom/baidu/mtjstatsdk/BasicStoreToolsBase;->b(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 72
    return-void
.end method

.method public removeString(Landroid/content/Context;Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 107
    invoke-direct {p0, p1}, Lcom/baidu/mtjstatsdk/BasicStoreToolsBase;->a(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 108
    return-void
.end method

.method public updateShareBoolean(Landroid/content/Intent;Landroid/app/Activity;Ljava/lang/String;)Z
    .registers 5

    .prologue
    .line 123
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/baidu/mtjstatsdk/BasicStoreToolsBase;->updateShareBoolean(Landroid/content/Intent;Landroid/app/Activity;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public updateShareBoolean(Landroid/content/Intent;Landroid/app/Activity;Ljava/lang/String;Z)Z
    .registers 7

    .prologue
    .line 128
    if-eqz p1, :cond_11

    .line 129
    invoke-virtual {p1, p3, p4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 130
    invoke-virtual {p0, p2, p3, p4}, Lcom/baidu/mtjstatsdk/BasicStoreToolsBase;->getSharedBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v1

    if-eq v0, v1, :cond_11

    .line 131
    invoke-virtual {p0, p2, p3, v0}, Lcom/baidu/mtjstatsdk/BasicStoreToolsBase;->putSharedBoolean(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 132
    const/4 v0, 0x1

    .line 135
    :goto_10
    return v0

    :cond_11
    const/4 v0, 0x0

    goto :goto_10
.end method

.method public updateShareInt(Landroid/content/Intent;Landroid/app/Activity;Ljava/lang/String;I)Z
    .registers 7

    .prologue
    .line 112
    if-eqz p1, :cond_11

    .line 113
    invoke-virtual {p1, p3, p4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 114
    invoke-virtual {p0, p2, p3, p4}, Lcom/baidu/mtjstatsdk/BasicStoreToolsBase;->getSharedInt(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v1

    if-eq v0, v1, :cond_11

    .line 115
    invoke-virtual {p0, p2, p3, v0}, Lcom/baidu/mtjstatsdk/BasicStoreToolsBase;->putSharedInt(Landroid/content/Context;Ljava/lang/String;I)V

    .line 116
    const/4 v0, 0x1

    .line 119
    :goto_10
    return v0

    :cond_11
    const/4 v0, 0x0

    goto :goto_10
.end method

.method public updateShareString(Landroid/content/Intent;Landroid/app/Activity;Ljava/lang/String;)Z
    .registers 7

    .prologue
    const/4 v1, 0x0

    .line 139
    if-eqz p1, :cond_23

    .line 140
    invoke-virtual {p1, p3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 142
    if-eqz v0, :cond_14

    .line 143
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 145
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_14

    move-object v0, v1

    .line 150
    :cond_14
    invoke-virtual {p0, p2, p3, v1}, Lcom/baidu/mtjstatsdk/BasicStoreToolsBase;->getSharedString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_23

    .line 151
    invoke-virtual {p0, p2, p3, v0}, Lcom/baidu/mtjstatsdk/BasicStoreToolsBase;->putSharedString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    const/4 v0, 0x1

    .line 155
    :goto_22
    return v0

    :cond_23
    const/4 v0, 0x0

    goto :goto_22
.end method
