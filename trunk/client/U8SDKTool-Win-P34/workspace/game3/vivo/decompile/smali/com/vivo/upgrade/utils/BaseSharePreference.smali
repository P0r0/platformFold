.class public Lcom/vivo/upgrade/utils/BaseSharePreference;
.super Ljava/lang/Object;
.source "BaseSharePreference.java"


# instance fields
.field private mSharePreferences:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public clear()V
    .registers 2

    .prologue
    .line 99
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vivo/upgrade/utils/BaseSharePreference;->mSharePreferences:Landroid/content/SharedPreferences;

    .line 100
    return-void
.end method

.method public getBoolean(Ljava/lang/String;Z)Z
    .registers 6
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defValue"    # Z

    .prologue
    .line 64
    iget-object v0, p0, Lcom/vivo/upgrade/utils/BaseSharePreference;->mSharePreferences:Landroid/content/SharedPreferences;

    if-nez v0, :cond_11

    .line 65
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "SharedPreferences is not init"

    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    invoke-direct {v0, v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 67
    :cond_11
    iget-object v0, p0, Lcom/vivo/upgrade/utils/BaseSharePreference;->mSharePreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getInt(Ljava/lang/String;I)I
    .registers 6
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defValue"    # I

    .prologue
    .line 71
    iget-object v0, p0, Lcom/vivo/upgrade/utils/BaseSharePreference;->mSharePreferences:Landroid/content/SharedPreferences;

    if-nez v0, :cond_11

    .line 72
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "SharedPreferences is not init"

    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    invoke-direct {v0, v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 74
    :cond_11
    iget-object v0, p0, Lcom/vivo/upgrade/utils/BaseSharePreference;->mSharePreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getLong(Ljava/lang/String;J)J
    .registers 8
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defValue"    # J

    .prologue
    .line 78
    iget-object v0, p0, Lcom/vivo/upgrade/utils/BaseSharePreference;->mSharePreferences:Landroid/content/SharedPreferences;

    if-nez v0, :cond_11

    .line 79
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "SharedPreferences is not init"

    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    invoke-direct {v0, v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 81
    :cond_11
    iget-object v0, p0, Lcom/vivo/upgrade/utils/BaseSharePreference;->mSharePreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1, p2, p3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getSharedPreferences()Landroid/content/SharedPreferences;
    .registers 2

    .prologue
    .line 25
    iget-object v0, p0, Lcom/vivo/upgrade/utils/BaseSharePreference;->mSharePreferences:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method public getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defValue"    # Ljava/lang/String;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/vivo/upgrade/utils/BaseSharePreference;->mSharePreferences:Landroid/content/SharedPreferences;

    if-nez v0, :cond_11

    .line 58
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "SharedPreferences is not init"

    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    invoke-direct {v0, v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 60
    :cond_11
    iget-object v0, p0, Lcom/vivo/upgrade/utils/BaseSharePreference;->mSharePreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected init(Landroid/content/Context;Ljava/lang/String;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "sharedFileName"    # Ljava/lang/String;

    .prologue
    .line 16
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 17
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "sharedFileName can\'t be null"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 20
    :cond_e
    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/vivo/upgrade/utils/BaseSharePreference;->mSharePreferences:Landroid/content/SharedPreferences;

    .line 22
    return-void
.end method

.method public putBoolean(Ljava/lang/String;Z)V
    .registers 5
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Z

    .prologue
    .line 51
    iget-object v1, p0, Lcom/vivo/upgrade/utils/BaseSharePreference;->mSharePreferences:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 52
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 53
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 54
    return-void
.end method

.method public putInt(Ljava/lang/String;I)V
    .registers 5
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # I

    .prologue
    .line 37
    iget-object v1, p0, Lcom/vivo/upgrade/utils/BaseSharePreference;->mSharePreferences:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 38
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 39
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 40
    return-void
.end method

.method public putLong(Ljava/lang/String;J)V
    .registers 6
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # J

    .prologue
    .line 44
    iget-object v1, p0, Lcom/vivo/upgrade/utils/BaseSharePreference;->mSharePreferences:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 45
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0, p1, p2, p3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 46
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 47
    return-void
.end method

.method public putString(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 30
    iget-object v1, p0, Lcom/vivo/upgrade/utils/BaseSharePreference;->mSharePreferences:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 31
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 32
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 33
    return-void
.end method

.method public remove(Ljava/lang/String;)V
    .registers 6
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 86
    iget-object v1, p0, Lcom/vivo/upgrade/utils/BaseSharePreference;->mSharePreferences:Landroid/content/SharedPreferences;

    if-nez v1, :cond_11

    .line 87
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "SharedPreferences is not init"

    new-instance v3, Ljava/lang/Throwable;

    invoke-direct {v3}, Ljava/lang/Throwable;-><init>()V

    invoke-direct {v1, v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 90
    :cond_11
    iget-object v1, p0, Lcom/vivo/upgrade/utils/BaseSharePreference;->mSharePreferences:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 91
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    iget-object v1, p0, Lcom/vivo/upgrade/utils/BaseSharePreference;->mSharePreferences:Landroid/content/SharedPreferences;

    invoke-interface {v1, p1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_25

    .line 92
    invoke-interface {v0, p1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 93
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 95
    :cond_25
    return-void
.end method
