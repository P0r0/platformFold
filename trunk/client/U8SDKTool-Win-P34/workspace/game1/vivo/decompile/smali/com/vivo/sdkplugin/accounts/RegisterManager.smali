.class public Lcom/vivo/sdkplugin/accounts/RegisterManager;
.super Ljava/lang/Object;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Landroid/content/SharedPreferences$Editor;

.field private c:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vivo/sdkplugin/accounts/RegisterManager;->a:Landroid/content/Context;

    iget-object v0, p0, Lcom/vivo/sdkplugin/accounts/RegisterManager;->a:Landroid/content/Context;

    const-string v1, "VivoRegister"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/vivo/sdkplugin/accounts/RegisterManager;->c:Landroid/content/SharedPreferences;

    iget-object v0, p0, Lcom/vivo/sdkplugin/accounts/RegisterManager;->c:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iput-object v0, p0, Lcom/vivo/sdkplugin/accounts/RegisterManager;->b:Landroid/content/SharedPreferences$Editor;

    return-void
.end method


# virtual methods
.method public cleanSp()V
    .registers 2

    iget-object v0, p0, Lcom/vivo/sdkplugin/accounts/RegisterManager;->b:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    iget-object v0, p0, Lcom/vivo/sdkplugin/accounts/RegisterManager;->b:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public getTimeByUser(Ljava/lang/String;)J
    .registers 6

    iget-object v0, p0, Lcom/vivo/sdkplugin/accounts/RegisterManager;->c:Landroid/content/SharedPreferences;

    const-wide/16 v2, 0x0

    invoke-interface {v0, p1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getUserSysTime(Ljava/lang/String;)J
    .registers 6

    iget-object v0, p0, Lcom/vivo/sdkplugin/accounts/RegisterManager;->c:Landroid/content/SharedPreferences;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "_sys_time"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public setUserAndTime(Ljava/lang/String;J)V
    .registers 6

    iget-object v0, p0, Lcom/vivo/sdkplugin/accounts/RegisterManager;->b:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0, p1, p2, p3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    iget-object v0, p0, Lcom/vivo/sdkplugin/accounts/RegisterManager;->b:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public setUserSysTime(Ljava/lang/String;J)V
    .registers 8

    iget-object v0, p0, Lcom/vivo/sdkplugin/accounts/RegisterManager;->b:Landroid/content/SharedPreferences$Editor;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "_sys_time"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p2, p3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    iget-object v0, p0, Lcom/vivo/sdkplugin/accounts/RegisterManager;->b:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method
