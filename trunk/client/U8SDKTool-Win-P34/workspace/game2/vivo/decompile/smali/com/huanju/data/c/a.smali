.class public Lcom/huanju/data/c/a;
.super Ljava/lang/Object;


# static fields
.field private static f:Lcom/huanju/data/c/a;


# instance fields
.field private a:J

.field private b:F

.field private c:Z

.field private d:Landroid/content/SharedPreferences;

.field private e:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    sput-object v0, Lcom/huanju/data/c/a;->f:Lcom/huanju/data/c/a;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 5

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/32 v0, 0xa4cb800

    iput-wide v0, p0, Lcom/huanju/data/c/a;->a:J

    const/high16 v0, 0x3f000000    # 0.5f

    iput v0, p0, Lcom/huanju/data/c/a;->b:F

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/huanju/data/c/a;->c:Z

    iput-object v2, p0, Lcom/huanju/data/c/a;->d:Landroid/content/SharedPreferences;

    iput-object v2, p0, Lcom/huanju/data/c/a;->e:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/huanju/data/c/a;->e:Landroid/content/Context;

    invoke-direct {p0}, Lcom/huanju/data/c/a;->a()V

    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/huanju/data/c/a;
    .registers 3

    sget-object v0, Lcom/huanju/data/c/a;->f:Lcom/huanju/data/c/a;

    if-nez v0, :cond_13

    const-class v1, Lcom/huanju/data/c/a;

    monitor-enter v1

    :try_start_7
    sget-object v0, Lcom/huanju/data/c/a;->f:Lcom/huanju/data/c/a;

    if-nez v0, :cond_12

    new-instance v0, Lcom/huanju/data/c/a;

    invoke-direct {v0, p0}, Lcom/huanju/data/c/a;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/huanju/data/c/a;->f:Lcom/huanju/data/c/a;

    :cond_12
    monitor-exit v1
    :try_end_13
    .catchall {:try_start_7 .. :try_end_13} :catchall_16

    :cond_13
    sget-object v0, Lcom/huanju/data/c/a;->f:Lcom/huanju/data/c/a;

    return-object v0

    :catchall_16
    move-exception v0

    :try_start_17
    monitor-exit v1
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_16

    throw v0
.end method

.method private a()V
    .registers 6

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/huanju/data/c/a;->e:Landroid/content/Context;

    const-string v1, "hj_datasdk_settings"

    invoke-virtual {v0, v1, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/huanju/data/c/a;->d:Landroid/content/SharedPreferences;

    iget-object v0, p0, Lcom/huanju/data/c/a;->d:Landroid/content/SharedPreferences;

    const-string v1, "hj_newdata_update_probability"

    const/high16 v2, 0x3f000000    # 0.5f

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v0

    iput v0, p0, Lcom/huanju/data/c/a;->b:F

    iget-object v0, p0, Lcom/huanju/data/c/a;->d:Landroid/content/SharedPreferences;

    const-string v1, "hj_newdata_update_freq"

    const-wide/32 v2, 0xa4cb800

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/huanju/data/c/a;->a:J

    iget-object v0, p0, Lcom/huanju/data/c/a;->d:Landroid/content/SharedPreferences;

    const-string v1, "hj_newdata_update_api_is_used"

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/huanju/data/c/a;->c:Z

    return-void
.end method


# virtual methods
.method public a(I)V
    .registers 6

    mul-int/lit8 v0, p1, 0x3c

    mul-int/lit8 v0, v0, 0x3c

    mul-int/lit16 v0, v0, 0x3e8

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/huanju/data/c/a;->a:J

    iget-object v0, p0, Lcom/huanju/data/c/a;->e:Landroid/content/Context;

    const-string v1, "hj_datasdk_settings"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/huanju/data/c/a;->d:Landroid/content/SharedPreferences;

    iget-object v0, p0, Lcom/huanju/data/c/a;->d:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "hj_newdata_update_freq"

    iget-wide v2, p0, Lcom/huanju/data/c/a;->a:J

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method
