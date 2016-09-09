.class public final Lcom/baidu/android/pushservice/b;
.super Ljava/lang/Object;


# static fields
.field public static a:I

.field public static b:I

.field public static c:I

.field private static d:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/16 v0, 0x258

    sput v0, Lcom/baidu/android/pushservice/b;->a:I

    const/16 v0, 0x1e

    sput v0, Lcom/baidu/android/pushservice/b;->b:I

    const/4 v0, 0x3

    sput v0, Lcom/baidu/android/pushservice/b;->c:I

    const/4 v0, 0x1

    sput v0, Lcom/baidu/android/pushservice/b;->d:I

    return-void
.end method

.method public static a()S
    .registers 1

    const/16 v0, 0x31

    return v0
.end method

.method public static a(Landroid/content/Context;Z)V
    .registers 5

    const/16 v0, 0x31

    if-eqz p1, :cond_5

    const/4 v0, 0x0

    :cond_5
    const-string v1, "pst"

    const/4 v2, 0x4

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "com.baidu.push.nd_restart"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public static a(Landroid/content/Context;)Z
    .registers 2

    invoke-static {p0}, Lcom/baidu/android/pushservice/PushSettings;->b(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public static b()I
    .registers 4

    sget v0, Lcom/baidu/android/pushservice/b;->d:I

    if-eqz v0, :cond_18

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    const-wide/32 v2, 0x56d7ced2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_18

    const/4 v0, 0x0

    sput v0, Lcom/baidu/android/pushservice/b;->d:I

    :cond_18
    sget v0, Lcom/baidu/android/pushservice/b;->d:I

    return v0
.end method

.method public static b(Landroid/content/Context;Z)V
    .registers 5

    const-string v0, "pst"

    const/4 v1, 0x4

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    if-eqz p1, :cond_28

    const-string v0, "disabled"

    invoke-static {p0}, Lcom/baidu/android/pushservice/b;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/baidu/android/pushservice/b;->a(Landroid/content/Context;Z)V

    :cond_19
    const-string v0, "enabled"

    :goto_1b
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "s_e"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void

    :cond_28
    const-string v0, "disabled"

    goto :goto_1b
.end method

.method public static b(Landroid/content/Context;)Z
    .registers 4

    const/4 v0, 0x0

    const-string v1, "pst"

    const/4 v2, 0x4

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "com.baidu.push.nd_restart"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    const/16 v2, 0x31

    if-le v2, v1, :cond_13

    const/4 v0, 0x1

    :cond_13
    return v0
.end method

.method public static c(Landroid/content/Context;)Ljava/lang/String;
    .registers 4

    const-string v0, "pst"

    const/4 v1, 0x4

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "s_e"

    const-string v2, "default"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
