.class public Lcom/youju/statistics/c/c/c;
.super Ljava/lang/Object;


# static fields
.field private static volatile a:Lcom/youju/statistics/c/c/c;


# instance fields
.field private b:Landroid/content/SharedPreferences;

.field private c:Landroid/content/SharedPreferences$Editor;

.field private d:Lcom/youju/statistics/c/d/d;

.field private e:Lcom/youju/statistics/c/c/d;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/youju/statistics/c/c/a;

    invoke-direct {v0, p0}, Lcom/youju/statistics/c/c/a;-><init>(Lcom/youju/statistics/c/c/c;)V

    iput-object v0, p0, Lcom/youju/statistics/c/c/c;->d:Lcom/youju/statistics/c/d/d;

    const-string v0, "youju_config"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/youju/statistics/c/c/c;->b:Landroid/content/SharedPreferences;

    iget-object v0, p0, Lcom/youju/statistics/c/c/c;->b:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iput-object v0, p0, Lcom/youju/statistics/c/c/c;->c:Landroid/content/SharedPreferences$Editor;

    invoke-virtual {p0}, Lcom/youju/statistics/c/c/c;->c()Lcom/youju/statistics/c/c/d;

    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/youju/statistics/c/c/c;
    .registers 2

    sget-object v0, Lcom/youju/statistics/c/c/c;->a:Lcom/youju/statistics/c/c/c;

    if-nez v0, :cond_7

    invoke-static {p0}, Lcom/youju/statistics/c/c/c;->b(Landroid/content/Context;)V

    :cond_7
    sget-object v0, Lcom/youju/statistics/c/c/c;->a:Lcom/youju/statistics/c/c/c;

    return-object v0
.end method

.method static synthetic a(Lcom/youju/statistics/c/c/c;Lcom/youju/statistics/c/c/d;)Lcom/youju/statistics/c/c/d;
    .registers 2

    iput-object p1, p0, Lcom/youju/statistics/c/c/c;->e:Lcom/youju/statistics/c/c/d;

    return-object p1
.end method

.method private a(Lcom/youju/statistics/c/c/d;)V
    .registers 5

    iget-object v0, p0, Lcom/youju/statistics/c/c/c;->c:Landroid/content/SharedPreferences$Editor;

    const-string v1, "cfg_ver_num"

    invoke-virtual {p1}, Lcom/youju/statistics/c/c/d;->a()I

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    iget-object v0, p0, Lcom/youju/statistics/c/c/c;->c:Landroid/content/SharedPreferences$Editor;

    const-string v1, "cfg_min_flow_upload_once_wifi"

    invoke-virtual {p1}, Lcom/youju/statistics/c/c/d;->b()I

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    iget-object v0, p0, Lcom/youju/statistics/c/c/c;->c:Landroid/content/SharedPreferences$Editor;

    const-string v1, "cfg_wifi_max_upload_size"

    invoke-virtual {p1}, Lcom/youju/statistics/c/c/d;->c()I

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    iget-object v0, p0, Lcom/youju/statistics/c/c/c;->c:Landroid/content/SharedPreferences$Editor;

    const-string v1, "cfg_min_flow_upload_once_mobile"

    invoke-virtual {p1}, Lcom/youju/statistics/c/c/d;->d()I

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    iget-object v0, p0, Lcom/youju/statistics/c/c/c;->c:Landroid/content/SharedPreferences$Editor;

    const-string v1, "cfg_gprs_max_upload_size"

    invoke-virtual {p1}, Lcom/youju/statistics/c/c/d;->e()I

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    iget-object v0, p0, Lcom/youju/statistics/c/c/c;->c:Landroid/content/SharedPreferences$Editor;

    const-string v1, "cfg_table_max_number"

    invoke-virtual {p1}, Lcom/youju/statistics/c/c/d;->g()I

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    iget-object v0, p0, Lcom/youju/statistics/c/c/c;->c:Landroid/content/SharedPreferences$Editor;

    const-string v1, "cfg_appevent_count_when_check_upload"

    invoke-virtual {p1}, Lcom/youju/statistics/c/c/d;->i()I

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    iget-object v0, p0, Lcom/youju/statistics/c/c/c;->c:Landroid/content/SharedPreferences$Editor;

    const-string v1, "cfg_enable_statistics_activity"

    invoke-virtual {p1}, Lcom/youju/statistics/c/c/d;->k()I

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    iget-object v0, p0, Lcom/youju/statistics/c/c/c;->c:Landroid/content/SharedPreferences$Editor;

    const-string v1, "cfg_max_database_store"

    invoke-virtual {p1}, Lcom/youju/statistics/c/c/d;->f()I

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    iget-object v0, p0, Lcom/youju/statistics/c/c/c;->c:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method private static declared-synchronized b(Landroid/content/Context;)V
    .registers 3

    const-class v1, Lcom/youju/statistics/c/c/c;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/youju/statistics/c/c/c;->a:Lcom/youju/statistics/c/c/c;

    if-nez v0, :cond_e

    new-instance v0, Lcom/youju/statistics/c/c/c;

    invoke-direct {v0, p0}, Lcom/youju/statistics/c/c/c;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/youju/statistics/c/c/c;->a:Lcom/youju/statistics/c/c/c;
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_10

    :cond_e
    monitor-exit v1

    return-void

    :catchall_10
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static synthetic b(Lcom/youju/statistics/c/c/c;Lcom/youju/statistics/c/c/d;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/youju/statistics/c/c/c;->a(Lcom/youju/statistics/c/c/d;)V

    return-void
.end method

.method private d()I
    .registers 4

    iget-object v0, p0, Lcom/youju/statistics/c/c/c;->b:Landroid/content/SharedPreferences;

    const-string v1, "cfg_max_database_store"

    const/4 v2, 0x5

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private e()I
    .registers 4

    iget-object v0, p0, Lcom/youju/statistics/c/c/c;->b:Landroid/content/SharedPreferences;

    const-string v1, "cfg_wifi_max_upload_size"

    const/high16 v2, 0x500000

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private f()I
    .registers 4

    iget-object v0, p0, Lcom/youju/statistics/c/c/c;->b:Landroid/content/SharedPreferences;

    const-string v1, "cfg_min_flow_upload_once_wifi"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private g()I
    .registers 4

    iget-object v0, p0, Lcom/youju/statistics/c/c/c;->b:Landroid/content/SharedPreferences;

    const-string v1, "cfg_min_flow_upload_once_mobile"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private h()I
    .registers 4

    iget-object v0, p0, Lcom/youju/statistics/c/c/c;->b:Landroid/content/SharedPreferences;

    const-string v1, "cfg_gprs_max_upload_size"

    const/high16 v2, 0x500000

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private i()I
    .registers 4

    iget-object v0, p0, Lcom/youju/statistics/c/c/c;->b:Landroid/content/SharedPreferences;

    const-string v1, "cfg_table_max_number"

    const/16 v2, 0x1388

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private j()I
    .registers 4

    iget-object v0, p0, Lcom/youju/statistics/c/c/c;->b:Landroid/content/SharedPreferences;

    const-string v1, "cfg_appevent_count_when_check_upload"

    const/4 v2, 0x3

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private k()I
    .registers 4

    iget-object v0, p0, Lcom/youju/statistics/c/c/c;->b:Landroid/content/SharedPreferences;

    const-string v1, "cfg_enable_statistics_activity"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method


# virtual methods
.method public a()I
    .registers 4

    iget-object v0, p0, Lcom/youju/statistics/c/c/c;->b:Landroid/content/SharedPreferences;

    const-string v1, "cfg_ver_num"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public b()V
    .registers 4

    new-instance v0, Lcom/youju/statistics/b/m;

    iget-object v1, p0, Lcom/youju/statistics/c/c/c;->d:Lcom/youju/statistics/c/d/d;

    iget-object v2, p0, Lcom/youju/statistics/c/c/c;->e:Lcom/youju/statistics/c/c/d;

    invoke-virtual {v2}, Lcom/youju/statistics/c/c/d;->a()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/youju/statistics/b/m;-><init>(Lcom/youju/statistics/c/d/d;I)V

    invoke-virtual {v0}, Lcom/youju/statistics/b/m;->run()V

    return-void
.end method

.method public c()Lcom/youju/statistics/c/c/d;
    .registers 3

    iget-object v0, p0, Lcom/youju/statistics/c/c/c;->e:Lcom/youju/statistics/c/c/d;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/youju/statistics/c/c/c;->e:Lcom/youju/statistics/c/c/d;

    :goto_6
    return-object v0

    :cond_7
    new-instance v0, Lcom/youju/statistics/c/c/d;

    invoke-direct {v0}, Lcom/youju/statistics/c/c/d;-><init>()V

    iput-object v0, p0, Lcom/youju/statistics/c/c/c;->e:Lcom/youju/statistics/c/c/d;

    iget-object v0, p0, Lcom/youju/statistics/c/c/c;->e:Lcom/youju/statistics/c/c/d;

    invoke-virtual {p0}, Lcom/youju/statistics/c/c/c;->a()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/youju/statistics/c/c/d;->a(I)V

    iget-object v0, p0, Lcom/youju/statistics/c/c/c;->e:Lcom/youju/statistics/c/c/d;

    invoke-direct {p0}, Lcom/youju/statistics/c/c/c;->j()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/youju/statistics/c/c/d;->h(I)V

    iget-object v0, p0, Lcom/youju/statistics/c/c/c;->e:Lcom/youju/statistics/c/c/d;

    invoke-direct {p0}, Lcom/youju/statistics/c/c/c;->k()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/youju/statistics/c/c/d;->i(I)V

    iget-object v0, p0, Lcom/youju/statistics/c/c/c;->e:Lcom/youju/statistics/c/c/d;

    invoke-direct {p0}, Lcom/youju/statistics/c/c/c;->h()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/youju/statistics/c/c/d;->e(I)V

    iget-object v0, p0, Lcom/youju/statistics/c/c/c;->e:Lcom/youju/statistics/c/c/d;

    invoke-direct {p0}, Lcom/youju/statistics/c/c/c;->g()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/youju/statistics/c/c/d;->d(I)V

    iget-object v0, p0, Lcom/youju/statistics/c/c/c;->e:Lcom/youju/statistics/c/c/d;

    invoke-direct {p0}, Lcom/youju/statistics/c/c/c;->e()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/youju/statistics/c/c/d;->c(I)V

    iget-object v0, p0, Lcom/youju/statistics/c/c/c;->e:Lcom/youju/statistics/c/c/d;

    invoke-direct {p0}, Lcom/youju/statistics/c/c/c;->f()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/youju/statistics/c/c/d;->b(I)V

    iget-object v0, p0, Lcom/youju/statistics/c/c/c;->e:Lcom/youju/statistics/c/c/d;

    invoke-direct {p0}, Lcom/youju/statistics/c/c/c;->i()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/youju/statistics/c/c/d;->g(I)V

    iget-object v0, p0, Lcom/youju/statistics/c/c/c;->e:Lcom/youju/statistics/c/c/d;

    invoke-direct {p0}, Lcom/youju/statistics/c/c/c;->d()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/youju/statistics/c/c/d;->f(I)V

    iget-object v0, p0, Lcom/youju/statistics/c/c/c;->e:Lcom/youju/statistics/c/c/d;

    goto :goto_6
.end method
