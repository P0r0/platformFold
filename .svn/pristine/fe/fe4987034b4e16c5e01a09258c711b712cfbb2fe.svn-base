.class public Lcom/huanju/data/b/d/b;
.super Ljava/lang/Object;


# static fields
.field private static final a:Lcom/huanju/data/a/b;


# instance fields
.field private b:Landroid/content/Context;

.field private c:Landroid/content/SharedPreferences;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, "HjCloudSwitcherControllor"

    invoke-static {v0}, Lcom/huanju/data/a/b;->a(Ljava/lang/String;)Lcom/huanju/data/a/b;

    move-result-object v0

    sput-object v0, Lcom/huanju/data/b/d/b;->a:Lcom/huanju/data/a/b;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/huanju/data/b/d/b;->c:Landroid/content/SharedPreferences;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/huanju/data/b/d/b;->b:Landroid/content/Context;

    iget-object v0, p0, Lcom/huanju/data/b/d/b;->b:Landroid/content/Context;

    const-string v1, "hj_datasdk_settings"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/huanju/data/b/d/b;->c:Landroid/content/SharedPreferences;

    return-void
.end method

.method private b()I
    .registers 4

    iget-object v0, p0, Lcom/huanju/data/b/d/b;->c:Landroid/content/SharedPreferences;

    const-string v1, "hj_host_type"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method


# virtual methods
.method public a(I)V
    .registers 4

    iget-object v0, p0, Lcom/huanju/data/b/d/b;->c:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "hj_host_type"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    invoke-virtual {p0}, Lcom/huanju/data/b/d/b;->a()Z

    move-result v0

    if-eqz v0, :cond_1f

    invoke-static {}, Lcom/huanju/data/a/f;->a()V

    sget-object v0, Lcom/huanju/data/b/d/b;->a:Lcom/huanju/data/a/b;

    const-string v1, "Get Command:Force Using SelfServer!!"

    invoke-virtual {v0, v1}, Lcom/huanju/data/a/b;->b(Ljava/lang/String;)V

    :goto_1e
    return-void

    :cond_1f
    sget-object v0, Lcom/huanju/data/b/d/b;->a:Lcom/huanju/data/a/b;

    const-string v1, "Get Command:Not Force Using SelfServer."

    invoke-virtual {v0, v1}, Lcom/huanju/data/a/b;->b(Ljava/lang/String;)V

    goto :goto_1e
.end method

.method public a()Z
    .registers 2

    invoke-direct {p0}, Lcom/huanju/data/b/d/b;->b()I

    move-result v0

    if-nez v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method
