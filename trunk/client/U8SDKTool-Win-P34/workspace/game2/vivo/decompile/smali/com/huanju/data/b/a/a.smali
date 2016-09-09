.class public Lcom/huanju/data/b/a/a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/huanju/data/net/d;


# static fields
.field private static final a:Lcom/huanju/data/a/b;


# instance fields
.field private b:Landroid/content/SharedPreferences;

.field private c:Landroid/content/Context;

.field private d:I

.field private e:J

.field private f:J


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, "HjSendInstalledAppControllor"

    invoke-static {v0}, Lcom/huanju/data/a/b;->a(Ljava/lang/String;)Lcom/huanju/data/a/b;

    move-result-object v0

    sput-object v0, Lcom/huanju/data/b/a/a;->a:Lcom/huanju/data/a/b;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/huanju/data/b/a/a;->b:Landroid/content/SharedPreferences;

    iput-object v0, p0, Lcom/huanju/data/b/a/a;->c:Landroid/content/Context;

    const/4 v0, 0x0

    iput v0, p0, Lcom/huanju/data/b/a/a;->d:I

    const-wide/32 v0, 0x5265c00

    iput-wide v0, p0, Lcom/huanju/data/b/a/a;->e:J

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/huanju/data/b/a/a;->f:J

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/huanju/data/b/a/a;->c:Landroid/content/Context;

    invoke-direct {p0}, Lcom/huanju/data/b/a/a;->b()V

    return-void
.end method

.method private b()V
    .registers 5

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/huanju/data/b/a/a;->c:Landroid/content/Context;

    const-string v1, "hj_datasdk_settings"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/huanju/data/b/a/a;->b:Landroid/content/SharedPreferences;

    iget-object v0, p0, Lcom/huanju/data/b/a/a;->b:Landroid/content/SharedPreferences;

    const-string v1, "hj_upapps"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/huanju/data/b/a/a;->d:I

    iget-object v0, p0, Lcom/huanju/data/b/a/a;->b:Landroid/content/SharedPreferences;

    const-string v1, "hj_upapps_freq"

    const-wide/32 v2, 0x5265c00

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/huanju/data/b/a/a;->e:J

    iget-object v0, p0, Lcom/huanju/data/b/a/a;->b:Landroid/content/SharedPreferences;

    const-string v1, "hj_upapps_succtime"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/huanju/data/b/a/a;->f:J

    return-void
.end method

.method private c()Z
    .registers 7

    const/4 v0, 0x1

    iget v1, p0, Lcom/huanju/data/b/a/a;->d:I

    if-ne v1, v0, :cond_1e

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/huanju/data/b/a/a;->f:J

    cmp-long v1, v4, v2

    if-lez v1, :cond_14

    invoke-virtual {p0, v2, v3}, Lcom/huanju/data/b/a/a;->a(J)V

    :cond_12
    :goto_12
    const/4 v0, 0x0

    :goto_13
    return v0

    :cond_14
    iget-wide v4, p0, Lcom/huanju/data/b/a/a;->f:J

    sub-long/2addr v2, v4

    iget-wide v4, p0, Lcom/huanju/data/b/a/a;->e:J

    cmp-long v1, v2, v4

    if-lez v1, :cond_12

    goto :goto_13

    :cond_1e
    sget-object v0, Lcom/huanju/data/b/a/a;->a:Lcom/huanju/data/a/b;

    const-string v1, "switcher is closed."

    invoke-virtual {v0, v1}, Lcom/huanju/data/a/b;->e(Ljava/lang/String;)V

    goto :goto_12
.end method


# virtual methods
.method public a(I)V
    .registers 6

    mul-int/lit8 v0, p1, 0x3c

    mul-int/lit8 v0, v0, 0x3c

    mul-int/lit16 v0, v0, 0x3e8

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/huanju/data/b/a/a;->e:J

    iget-object v0, p0, Lcom/huanju/data/b/a/a;->c:Landroid/content/Context;

    const-string v1, "hj_datasdk_settings"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/huanju/data/b/a/a;->b:Landroid/content/SharedPreferences;

    iget-object v0, p0, Lcom/huanju/data/b/a/a;->b:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "hj_upapps_freq"

    iget-wide v2, p0, Lcom/huanju/data/b/a/a;->e:J

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public a(J)V
    .registers 6

    iput-wide p1, p0, Lcom/huanju/data/b/a/a;->f:J

    iget-object v0, p0, Lcom/huanju/data/b/a/a;->c:Landroid/content/Context;

    const-string v1, "hj_datasdk_settings"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/huanju/data/b/a/a;->b:Landroid/content/SharedPreferences;

    iget-object v0, p0, Lcom/huanju/data/b/a/a;->b:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "hj_upapps_succtime"

    invoke-interface {v0, v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public a()Z
    .registers 2

    invoke-direct {p0}, Lcom/huanju/data/b/a/a;->c()Z

    move-result v0

    return v0
.end method

.method public b(I)V
    .registers 5

    iput p1, p0, Lcom/huanju/data/b/a/a;->d:I

    iget-object v0, p0, Lcom/huanju/data/b/a/a;->c:Landroid/content/Context;

    const-string v1, "hj_datasdk_settings"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/huanju/data/b/a/a;->b:Landroid/content/SharedPreferences;

    iget-object v0, p0, Lcom/huanju/data/b/a/a;->b:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "hj_upapps"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method
