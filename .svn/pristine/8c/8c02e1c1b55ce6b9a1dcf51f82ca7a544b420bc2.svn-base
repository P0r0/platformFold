.class public Lcom/huanju/data/b/c/b;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/huanju/data/net/d;


# instance fields
.field private a:Landroid/content/SharedPreferences;

.field private b:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/huanju/data/b/c/b;->a:Landroid/content/SharedPreferences;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/huanju/data/b/c/b;->b:Landroid/content/Context;

    iget-object v0, p0, Lcom/huanju/data/b/c/b;->b:Landroid/content/Context;

    const-string v1, "hj_datasdk_settings"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/huanju/data/b/c/b;->a:Landroid/content/SharedPreferences;

    return-void
.end method

.method private c()Z
    .registers 4

    iget-object v0, p0, Lcom/huanju/data/b/c/b;->a:Landroid/content/SharedPreferences;

    const-string v1, "hj_data_active"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public a()Z
    .registers 2

    invoke-direct {p0}, Lcom/huanju/data/b/c/b;->c()Z

    move-result v0

    if-nez v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public b()V
    .registers 4

    iget-object v0, p0, Lcom/huanju/data/b/c/b;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "hj_data_active"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method
